# Full-Stack Patterns Reference

React (Vite) + FastAPI + Neon PostgreSQL patterns for MVP scaffolding.

---

## FastAPI Application Structure

### Main App (`backend/app/main.py`)

```python
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import auth, projects
from app.db import engine

app = FastAPI(title="MVP API", version="0.1.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],  # Vite dev server
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(auth.router, prefix="/api/auth", tags=["auth"])
app.include_router(projects.router, prefix="/api/projects", tags=["projects"])

@app.get("/api/health")
async def health():
    return {"status": "ok"}
```

### Pydantic Models (`backend/app/models/project.py`)

```python
from pydantic import BaseModel, Field
from datetime import datetime
from typing import Optional

class ProjectCreate(BaseModel):
    name: str = Field(min_length=1, max_length=100)
    description: Optional[str] = Field(None, max_length=500)

class ProjectResponse(BaseModel):
    id: str
    name: str
    description: Optional[str]
    user_id: str
    created_at: datetime
    updated_at: datetime
```

### Router Pattern (`backend/app/routers/projects.py`)

```python
from fastapi import APIRouter, Depends, HTTPException
from app.auth import get_current_user
from app.db import get_db
from app.models.project import ProjectCreate, ProjectResponse

router = APIRouter()

@router.get("/", response_model=list[ProjectResponse])
async def list_projects(user=Depends(get_current_user), db=Depends(get_db)):
    rows = await db.fetch(
        "SELECT * FROM projects WHERE user_id = $1 ORDER BY created_at DESC",
        user["id"]
    )
    return rows

@router.post("/", response_model=ProjectResponse, status_code=201)
async def create_project(
    body: ProjectCreate,
    user=Depends(get_current_user),
    db=Depends(get_db)
):
    row = await db.fetchrow(
        """INSERT INTO projects (name, description, user_id)
           VALUES ($1, $2, $3) RETURNING *""",
        body.name, body.description, user["id"]
    )
    return row

@router.delete("/{project_id}", status_code=204)
async def delete_project(project_id: str, user=Depends(get_current_user), db=Depends(get_db)):
    result = await db.execute(
        "DELETE FROM projects WHERE id = $1 AND user_id = $2",
        project_id, user["id"]
    )
    if result == "DELETE 0":
        raise HTTPException(status_code=404, detail="Project not found")
```

---

## Neon PostgreSQL Setup

### Connection via asyncpg (`backend/app/db.py`)

```python
import asyncpg
import os

pool = None

async def get_pool():
    global pool
    if pool is None:
        pool = await asyncpg.create_pool(
            os.environ["DATABASE_URL"],
            min_size=2,
            max_size=10,
        )
    return pool

async def get_db():
    pool = await get_pool()
    async with pool.acquire() as conn:
        yield conn
```

### Schema via Neon MCP

Use Neon MCP `run_sql` tool to create tables:

```sql
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    display_name TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE projects (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    description TEXT,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_projects_user ON projects(user_id);
```

### Seed Data

```sql
INSERT INTO users (email, password_hash, display_name)
VALUES ('demo@example.com', crypt('password123', gen_salt('bf')), 'Demo User')
ON CONFLICT (email) DO NOTHING;
```

### Neon Free Tier Benefits
- Unlimited projects (one per MVP)
- 0.5 GB storage per project
- Serverless auto-suspend (saves costs)
- Branching for dev/staging environments
- Connection pooling built-in

---

## JWT Authentication

### Auth Module (`backend/app/auth.py`)

```python
from fastapi import Depends, HTTPException, status
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from jose import jwt, JWTError
from passlib.context import CryptContext
from datetime import datetime, timedelta
import os

SECRET_KEY = os.environ["JWT_SECRET"]
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 60

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
security = HTTPBearer()

def hash_password(password: str) -> str:
    return pwd_context.hash(password)

def verify_password(plain: str, hashed: str) -> bool:
    return pwd_context.verify(plain, hashed)

def create_access_token(user_id: str) -> str:
    expire = datetime.utcnow() + timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    return jwt.encode({"sub": user_id, "exp": expire}, SECRET_KEY, algorithm=ALGORITHM)

async def get_current_user(
    credentials: HTTPAuthorizationCredentials = Depends(security),
    db=Depends(get_db)
):
    try:
        payload = jwt.decode(credentials.credentials, SECRET_KEY, algorithms=[ALGORITHM])
        user_id = payload.get("sub")
        if user_id is None:
            raise HTTPException(status_code=401, detail="Invalid token")
    except JWTError:
        raise HTTPException(status_code=401, detail="Invalid token")

    user = await db.fetchrow("SELECT * FROM users WHERE id = $1", user_id)
    if user is None:
        raise HTTPException(status_code=401, detail="User not found")
    return dict(user)
```

### Auth Router (`backend/app/routers/auth.py`)

```python
from fastapi import APIRouter, HTTPException, Depends
from app.auth import hash_password, verify_password, create_access_token
from app.db import get_db
from pydantic import BaseModel, EmailStr

router = APIRouter()

class SignupRequest(BaseModel):
    email: EmailStr
    password: str = Field(min_length=8)
    display_name: str | None = None

class LoginRequest(BaseModel):
    email: EmailStr
    password: str

class TokenResponse(BaseModel):
    access_token: str
    token_type: str = "bearer"

@router.post("/signup", response_model=TokenResponse, status_code=201)
async def signup(body: SignupRequest, db=Depends(get_db)):
    existing = await db.fetchrow("SELECT id FROM users WHERE email = $1", body.email)
    if existing:
        raise HTTPException(status_code=409, detail="Email already registered")
    user = await db.fetchrow(
        """INSERT INTO users (email, password_hash, display_name)
           VALUES ($1, $2, $3) RETURNING id""",
        body.email, hash_password(body.password), body.display_name
    )
    return {"access_token": create_access_token(str(user["id"]))}

@router.post("/login", response_model=TokenResponse)
async def login(body: LoginRequest, db=Depends(get_db)):
    user = await db.fetchrow("SELECT * FROM users WHERE email = $1", body.email)
    if not user or not verify_password(body.password, user["password_hash"]):
        raise HTTPException(status_code=401, detail="Invalid credentials")
    return {"access_token": create_access_token(str(user["id"]))}
```

---

## React Frontend Patterns

### API Client (`frontend/src/api/client.ts`)

```typescript
const API_BASE = import.meta.env.VITE_API_URL || "http://localhost:8000/api";

async function apiFetch<T>(path: string, options?: RequestInit): Promise<T> {
  const token = localStorage.getItem("token");
  const res = await fetch(`${API_BASE}${path}`, {
    ...options,
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...options?.headers,
    },
  });
  if (!res.ok) {
    const error = await res.json().catch(() => ({ detail: "Request failed" }));
    throw new Error(error.detail || `HTTP ${res.status}`);
  }
  return res.json();
}

export const api = {
  get: <T>(path: string) => apiFetch<T>(path),
  post: <T>(path: string, body: unknown) =>
    apiFetch<T>(path, { method: "POST", body: JSON.stringify(body) }),
  delete: (path: string) =>
    apiFetch(path, { method: "DELETE" }),
};
```

### Tanstack Query Hook Pattern (`frontend/src/api/projects.ts`)

```typescript
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { api } from "./client";

interface Project {
  id: string;
  name: string;
  description: string | null;
  created_at: string;
}

export function useProjects() {
  return useQuery({
    queryKey: ["projects"],
    queryFn: () => api.get<Project[]>("/projects"),
  });
}

export function useCreateProject() {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (data: { name: string; description?: string }) =>
      api.post<Project>("/projects", data),
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ["projects"] }),
  });
}
```

### Protected Route Pattern

```tsx
import { Navigate, Outlet } from "react-router-dom";

function ProtectedRoute() {
  const token = localStorage.getItem("token");
  if (!token) return <Navigate to="/login" replace />;
  return <Outlet />;
}
```

---

## Deployment

### Backend Dockerfile

```dockerfile
FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./app ./app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
```

### docker-compose.yml (Local Dev)

```yaml
version: "3.8"
services:
  backend:
    build: ./backend
    ports:
      - "8000:8000"
    env_file: ./backend/.env
    volumes:
      - ./backend:/app

  frontend:
    build: ./frontend
    ports:
      - "5173:5173"
    volumes:
      - ./frontend:/app
      - /app/node_modules
```

### requirements.txt

```
fastapi>=0.110.0
uvicorn[standard]>=0.27.0
asyncpg>=0.29.0
python-jose[cryptography]>=3.3.0
passlib[bcrypt]>=1.7.4
pydantic[email]>=2.5.0
python-dotenv>=1.0.0
```

### .env.example

```
DATABASE_URL=postgresql://user:pass@ep-xxx.us-east-2.aws.neon.tech/dbname?sslmode=require
JWT_SECRET=change-me-to-a-random-string
CORS_ORIGINS=http://localhost:5173
```

---

## Project Scaffold Checklist

- [ ] Neon project created via MCP with database and tables
- [ ] `.env.example` with DATABASE_URL, JWT_SECRET, CORS_ORIGINS
- [ ] README with setup steps for both frontend and backend
- [ ] Seed data loaded via Neon MCP
- [ ] JWT auth working (signup + login + protected routes)
- [ ] CORS configured for frontend origin
- [ ] Health check endpoint (`GET /api/health`)
- [ ] Basic error handling in frontend (error boundaries, toast notifications)
- [ ] Loading states for async operations
- [ ] Dockerfile for backend deployment

---

## Failure Modes

| Pitfall | Cause | Fix |
|---------|-------|-----|
| Hardcoded secrets | DB URL or JWT secret in source | Use `.env` + `.env.example`; add `.env` to `.gitignore` |
| CORS errors | Frontend origin not in allowed list | Add `http://localhost:5173` to CORS middleware |
| Neon connection timeout | Serverless cold start | Use connection pooling; Neon auto-wakes in ~500ms |
| N+1 queries | Fetching related data in loops | Use JOINs or batch queries in SQL |
| JWT token expired | No refresh mechanism | Add refresh token endpoint or auto-redirect to login |
| Missing auth middleware | Forgot `Depends(get_current_user)` | Apply to all protected routers |
| Overscoped MVP | 15 features instead of 5 | Push back — max 5 core features |
| No loading states | User sees blank screen while fetching | Use Tanstack Query's `isLoading` + skeleton components |
| No seed data | Every dev starts with empty database | Create seed SQL and run via Neon MCP |
| SSL connection error | Neon requires SSL | Add `?sslmode=require` to DATABASE_URL |
