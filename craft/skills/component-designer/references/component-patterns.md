# Component Patterns Reference

Deep reference for CVA variant components, compound patterns, accessibility requirements, dark mode, Storybook stories, and common failure modes.

---

## CVA (Class Variance Authority) Pattern

### Full Button Component

```tsx
import { forwardRef, type ButtonHTMLAttributes } from "react";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/lib/utils"; // clsx + twMerge wrapper

const buttonVariants = cva(
  // Base classes (always applied)
  "inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50",
  {
    variants: {
      intent: {
        primary:
          "bg-blue-600 text-white hover:bg-blue-700 focus-visible:ring-blue-500 dark:bg-blue-500 dark:hover:bg-blue-600",
        secondary:
          "bg-gray-100 text-gray-900 hover:bg-gray-200 focus-visible:ring-gray-400 dark:bg-gray-800 dark:text-gray-100 dark:hover:bg-gray-700",
        danger:
          "bg-red-600 text-white hover:bg-red-700 focus-visible:ring-red-500 dark:bg-red-500 dark:hover:bg-red-600",
        ghost:
          "hover:bg-gray-100 text-gray-700 dark:text-gray-300 dark:hover:bg-gray-800",
        link:
          "text-blue-600 underline-offset-4 hover:underline dark:text-blue-400",
      },
      size: {
        sm: "h-8 px-3 text-sm gap-1.5",
        md: "h-10 px-4 text-sm gap-2",
        lg: "h-12 px-6 text-base gap-2.5",
        icon: "h-10 w-10",
      },
    },
    defaultVariants: {
      intent: "primary",
      size: "md",
    },
  }
);

interface ButtonProps
  extends ButtonHTMLAttributes<HTMLButtonElement>,
    VariantProps<typeof buttonVariants> {
  /** Show loading spinner and disable interaction */
  isLoading?: boolean;
}

const Button = forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, intent, size, isLoading, children, disabled, ...props }, ref) => {
    return (
      <button
        ref={ref}
        className={cn(buttonVariants({ intent, size }), className)}
        disabled={disabled || isLoading}
        aria-busy={isLoading || undefined}
        {...props}
      >
        {isLoading && (
          <svg className="h-4 w-4 animate-spin" viewBox="0 0 24 24" fill="none">
            <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
            <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
          </svg>
        )}
        {children}
      </button>
    );
  }
);
Button.displayName = "Button";

export { Button, buttonVariants };
export type { ButtonProps };
```

### Key Pattern Rules
- Always use `cn()` (clsx + tailwind-merge) to merge `className` prop -- allows consumers to override styles
- Always `forwardRef` -- parent components need ref access for focus management and portals
- Export both the component and the `variants` function -- allows reuse in other components (e.g., link styled as button)
- `VariantProps<typeof variants>` auto-generates the prop types from the variant definition

---

## Compound Component Pattern

### Card with Sub-Components

```tsx
import { createContext, useContext, forwardRef, type HTMLAttributes, type ReactNode } from "react";
import { cn } from "@/lib/utils";

interface CardContextValue {
  variant: "default" | "outlined" | "elevated";
}

const CardContext = createContext<CardContextValue>({ variant: "default" });

const cardVariants: Record<string, string> = {
  default: "rounded-lg border border-gray-200 bg-white dark:border-gray-800 dark:bg-gray-950",
  outlined: "rounded-lg border-2 border-gray-300 bg-transparent dark:border-gray-700",
  elevated: "rounded-lg bg-white shadow-lg dark:bg-gray-950",
};

const Card = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement> & { variant?: CardContextValue["variant"] }>(
  ({ className, variant = "default", children, ...props }, ref) => (
    <CardContext.Provider value={{ variant }}>
      <div ref={ref} className={cn(cardVariants[variant], className)} {...props}>
        {children}
      </div>
    </CardContext.Provider>
  )
);

const CardHeader = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement>>(
  ({ className, ...props }, ref) => (
    <div ref={ref} className={cn("flex flex-col space-y-1.5 p-6 pb-0", className)} {...props} />
  )
);

const CardBody = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement>>(
  ({ className, ...props }, ref) => (
    <div ref={ref} className={cn("p-6", className)} {...props} />
  )
);

const CardFooter = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement>>(
  ({ className, ...props }, ref) => (
    <div ref={ref} className={cn("flex items-center p-6 pt-0", className)} {...props} />
  )
);

Card.displayName = "Card";
CardHeader.displayName = "CardHeader";
CardBody.displayName = "CardBody";
CardFooter.displayName = "CardFooter";

export { Card, CardHeader, CardBody, CardFooter };
```

Usage: `<Card variant="elevated"><CardHeader>...</CardHeader><CardBody>...</CardBody></Card>`

---

## Accessibility Checklist

| Element | Required ARIA | Keyboard | Focus |
|---------|--------------|----------|-------|
| Button | `aria-label` if icon-only; `aria-busy` when loading; `aria-disabled` vs `disabled` | Enter/Space to activate | Visible focus ring (2px offset) |
| Link | `aria-current="page"` for active nav link; external links get `aria-label` with context | Enter to follow | Underline on focus or visible ring |
| Modal | `role="dialog"`, `aria-modal="true"`, `aria-labelledby` pointing to title | Escape to close; trap focus inside | Auto-focus first interactive element on open |
| Dropdown | `role="menu"`, items get `role="menuitem"`, `aria-expanded` on trigger | Arrow keys to navigate, Escape to close, Enter to select | Highlight current item, return focus to trigger on close |
| Tabs | `role="tablist"`, tabs get `role="tab"`, panels get `role="tabpanel"`, `aria-selected` | Arrow keys between tabs, Tab to panel content | Active tab visually distinct + focus ring |
| Toggle/Switch | `role="switch"`, `aria-checked` | Space to toggle | Visible state change + focus ring |
| Input | `aria-describedby` for help text, `aria-invalid` + `aria-errormessage` for errors | Tab to focus | Border change on focus, error state visually distinct |
| Checkbox | `aria-checked` (true/false/mixed for indeterminate) | Space to toggle | Visible check mark + focus ring |
| Tooltip | `role="tooltip"`, trigger gets `aria-describedby` | Appear on focus (not just hover), Escape to dismiss | Do not trap focus |
| Alert | `role="alert"` or `role="status"` for non-critical | None (announced automatically) | Not focusable unless dismissible |

### Non-Negotiable Rules
1. Never use `outline: none` without a replacement focus indicator
2. Color must never be the only way to communicate state (add icons, text, or patterns)
3. All interactive elements must be reachable via Tab key
4. Touch targets minimum 44x44px (WCAG 2.5.8)
5. Animations must respect `prefers-reduced-motion`

---

## Dark Mode Implementation

### Strategy 1: Tailwind `dark:` Modifier (Recommended)

```tsx
// tailwind.config.ts
export default {
  darkMode: "class", // Toggle via class on <html>
  // ...
};

// Toggle function
function toggleDarkMode() {
  document.documentElement.classList.toggle("dark");
  localStorage.setItem("theme", document.documentElement.classList.contains("dark") ? "dark" : "light");
}

// Init on page load (prevent flash)
// Place in <head> as blocking script:
// <script>
//   if (localStorage.theme === 'dark' || (!localStorage.theme && matchMedia('(prefers-color-scheme: dark)').matches)) {
//     document.documentElement.classList.add('dark');
//   }
// </script>
```

### Strategy 2: CSS Custom Properties (For Complex Theming)

```css
:root {
  --color-bg-surface: #ffffff;
  --color-bg-elevated: #f9fafb;
  --color-text-primary: #111827;
  --color-text-secondary: #6b7280;
  --color-border-default: #e5e7eb;
  --color-accent: #2563eb;
}

.dark {
  --color-bg-surface: #0a0a0a;
  --color-bg-elevated: #171717;
  --color-text-primary: #f5f5f5;
  --color-text-secondary: #a3a3a3;
  --color-border-default: #262626;
  --color-accent: #3b82f6;
}
```

### Color Token Naming Convention

| Token | Light Value | Dark Value | Usage |
|-------|------------|------------|-------|
| `bg-surface` | white | gray-950 | Page and card backgrounds |
| `bg-elevated` | gray-50 | gray-900 | Cards, popovers, dropdowns |
| `bg-muted` | gray-100 | gray-800 | Subtle backgrounds, hover states |
| `text-primary` | gray-900 | gray-100 | Headings, body text |
| `text-secondary` | gray-500 | gray-400 | Descriptions, help text |
| `border-default` | gray-200 | gray-800 | Card borders, dividers |
| `accent` | blue-600 | blue-500 | Primary actions, links |
| `destructive` | red-600 | red-500 | Delete actions, error states |

Rule: Never hardcode colors in components. Always reference tokens so dark mode is automatic.

---

## Storybook Story Pattern

```tsx
import type { Meta, StoryObj } from "@storybook/react";
import { Button } from "./Button";

const meta: Meta<typeof Button> = {
  title: "UI/Button",
  component: Button,
  tags: ["autodocs"],
  argTypes: {
    intent: { control: "select", options: ["primary", "secondary", "danger", "ghost", "link"] },
    size: { control: "select", options: ["sm", "md", "lg", "icon"] },
    isLoading: { control: "boolean" },
    disabled: { control: "boolean" },
  },
};
export default meta;
type Story = StoryObj<typeof Button>;

export const Default: Story = {
  args: { children: "Button" },
};

export const AllIntents: Story = {
  render: () => (
    <div className="flex gap-3">
      <Button intent="primary">Primary</Button>
      <Button intent="secondary">Secondary</Button>
      <Button intent="danger">Danger</Button>
      <Button intent="ghost">Ghost</Button>
      <Button intent="link">Link</Button>
    </div>
  ),
};

export const AllSizes: Story = {
  render: () => (
    <div className="flex items-center gap-3">
      <Button size="sm">Small</Button>
      <Button size="md">Medium</Button>
      <Button size="lg">Large</Button>
    </div>
  ),
};

export const Loading: Story = {
  args: { children: "Saving...", isLoading: true },
};
```

### Story Conventions
- One `Default` story with minimal args (shows the component out of the box)
- One story per variant axis (`AllIntents`, `AllSizes`)
- One story for each interactive state (`Loading`, `Disabled`)
- Use `tags: ["autodocs"]` to auto-generate documentation
- Add `play` functions for interaction tests when behavior is complex

---

## Common Components Quick Reference

| Component | Variants | Key Props | A11y |
|-----------|----------|-----------|------|
| Button | intent (primary/secondary/danger/ghost/link), size (sm/md/lg/icon) | `isLoading`, `disabled`, `asChild` | `aria-busy` when loading, visible focus ring |
| Input | size (sm/md/lg), state (default/error/success) | `label`, `helperText`, `error` | `aria-invalid`, `aria-describedby` for error/help |
| Select | size (sm/md/lg) | `options`, `placeholder`, `value`, `onChange` | `role="listbox"`, arrow key navigation |
| Modal | size (sm/md/lg/full) | `open`, `onClose`, `title` | Focus trap, `aria-modal`, Escape to close |
| Card | variant (default/outlined/elevated) | `children` via compound pattern | Semantic HTML (`article` when appropriate) |
| Badge | intent (default/success/warning/danger/info), size (sm/md) | `children` | Use `aria-label` for icon-only badges |
| Avatar | size (xs/sm/md/lg/xl) | `src`, `alt`, `fallback` | Always provide `alt` text |
| Tooltip | side (top/right/bottom/left) | `content`, `delayMs` | `role="tooltip"`, `aria-describedby`, show on focus |
| Tabs | variant (underline/pills/enclosed) | `items`, `activeTab`, `onChange` | `role="tablist"`, arrow key navigation |
| Alert | intent (info/success/warning/error) | `title`, `description`, `onDismiss` | `role="alert"` for errors, `role="status"` for info |

---

## Failure Modes

| Pitfall | Cause | Fix |
|---------|-------|-----|
| Missing focus indicator | `outline: none` or `outline-none` without replacement | Always pair with `focus-visible:ring-2 focus-visible:ring-offset-2` |
| No keyboard support | Click handlers without key handlers on non-button elements | Use semantic `<button>` or add `onKeyDown` for Enter/Space; never put onClick on `<div>` |
| Color-only state indication | Error shown only by red border, no text or icon | Add error text below field + error icon; use `aria-invalid` |
| Fixed pixel font sizes | `font-size: 14px` ignores user's browser zoom setting | Use `rem` units; `text-sm` in Tailwind = `0.875rem` |
| No dark mode | Hardcoded colors like `bg-white text-gray-900` | Use semantic tokens or always add `dark:` counterparts |
| Missing ref forwarding | Component wraps `<button>` but does not forward ref | Always use `forwardRef`; parent may need ref for focus management or tooltips |
| CSS specificity wars | Tailwind classes overridden by global styles or other utilities | Use `cn()` (tailwind-merge) to deduplicate conflicting classes |
| No loading state | Button submits but gives no feedback | Add `isLoading` prop with spinner + `disabled` + `aria-busy` |
| Missing TypeScript generics | Select/Combobox uses `any` for value type | Use generics: `Select<T>` with `value: T`, `onChange: (v: T) => void` |
| Inaccessible tooltips | Tooltip only shows on hover, invisible to keyboard/screen reader | Show on focus via `onFocus`/`onBlur`; link with `aria-describedby`; allow Escape to dismiss |
