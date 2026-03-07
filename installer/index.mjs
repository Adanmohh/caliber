#!/usr/bin/env node

import { execSync } from "child_process";
import { createInterface } from "readline";

const MARKETPLACE_REPO = "Adanmohh/caliber";
const MARKETPLACE_NAME = "caliber";

const PLUGINS = [
  {
    name: "validate",
    desc: "Validate ideas (3 experts: Value Mapper, Business Modeler, Experiment Designer)",
  },
  {
    name: "build",
    desc: "Build strategy (5 experts: Product Strategist, Brand Strategist, Growth Designer, Spec Writer, Product Designer)",
  },
  {
    name: "launch",
    desc: "Go-to-market (7 experts: Offer Designer, Copywriter, Funnel Architect, Growth Auditor, Media Planner, SEO Strategist, AI Search Optimizer)",
  },
  {
    name: "craft",
    desc: "Build deliverables (4 agents: Landing Page Builder, MVP Scaffolder, Component Designer, Tester)",
  },
  {
    name: "document",
    desc: "Write documents (2 agents: Business Writer, Pitch Deck Writer)",
  },
  {
    name: "present",
    desc: "Create presentations (1 agent: Slide Designer)",
  },
  {
    name: "studio",
    desc: "Produce videos (3 agents: Demo Producer, Clip Maker, Content Creator)",
  },
  {
    name: "pipeline",
    desc: "Pipeline orchestrator (chains 15 experts across validate > build > launch with autonomous mode)",
  },
];

const rl = createInterface({ input: process.stdin, output: process.stdout });
const ask = (q) => new Promise((r) => rl.question(q, r));

function run(cmd) {
  try {
    execSync(cmd, { stdio: "inherit" });
    return true;
  } catch {
    return false;
  }
}

async function main() {
  console.log(`
╔══════════════════════════════════════════════════╗
║              Caliber Installer                   ║
║     25 AI experts for business strategy          ║
║     validate > build > launch + execute          ║
╚══════════════════════════════════════════════════╝
`);

  // Check claude CLI
  try {
    execSync("claude --version", { stdio: "pipe" });
  } catch {
    console.error("Error: Claude Code CLI not found. Install it first:");
    console.error("  npm install -g @anthropic-ai/claude-code");
    process.exit(1);
  }

  // Step 1: Add marketplace
  console.log("Adding Caliber marketplace...\n");
  if (!run(`claude plugin marketplace add ${MARKETPLACE_REPO}`)) {
    console.log(
      "Note: Marketplace may already be added, or add it manually:"
    );
    console.log(`  claude plugin marketplace add ${MARKETPLACE_REPO}\n`);
  }

  console.log("\nAvailable plugins:\n");
  console.log("  Strategy Pipeline:");
  PLUGINS.slice(0, 3).forEach((p, i) => {
    console.log(`    [${i + 1}] ${p.name} — ${p.desc}`);
  });
  console.log("\n  Execution:");
  PLUGINS.slice(3, 7).forEach((p, i) => {
    console.log(`    [${i + 4}] ${p.name} — ${p.desc}`);
  });
  console.log("\n  Orchestration:");
  console.log(`    [8] ${PLUGINS[7].name} — ${PLUGINS[7].desc}`);
  console.log(`\n  [A] All plugins (recommended)`);
  console.log(`  [S] Strategy only (validate + build + launch + pipeline)`);
  console.log();

  const choice = await ask(
    "Which plugins to install? (1-8, A for all, S for strategy, comma-separated): "
  );
  rl.close();

  let selected;
  const c = choice.trim().toLowerCase();
  if (c === "a" || c === "") {
    selected = PLUGINS;
  } else if (c === "s") {
    selected = PLUGINS.filter((p) =>
      ["validate", "build", "launch", "pipeline"].includes(p.name)
    );
  } else {
    const indices = choice
      .split(",")
      .map((s) => parseInt(s.trim()) - 1)
      .filter((i) => i >= 0 && i < PLUGINS.length);
    selected = indices.map((i) => PLUGINS[i]);
  }

  if (selected.length === 0) {
    console.log("No plugins selected. Exiting.");
    process.exit(0);
  }

  console.log(`\nInstalling ${selected.length} plugin(s)...\n`);

  let installed = 0;
  for (const plugin of selected) {
    console.log(`→ Installing ${plugin.name}...`);
    const ok = run(
      `claude plugin install ${plugin.name}@${MARKETPLACE_NAME}`
    );
    if (ok) {
      installed++;
      console.log(`  ✓ ${plugin.name} installed\n`);
    } else {
      console.log(
        `  ✗ ${plugin.name} failed — try manually:\n    claude plugin install ${plugin.name}@${MARKETPLACE_NAME}\n`
      );
    }
  }

  console.log(`\nDone! ${installed}/${selected.length} plugins installed.`);

  if (selected.some((p) => p.name === "pipeline")) {
    console.log(`
To run the full pipeline:
  claude
  > /pipeline:run My business idea

Autonomous mode (research-driven):
  > /pipeline:run My business idea --autonomous

To run a single expert:
  > /value-mapper My SaaS product for freelancers
  > /landing-page Build from our strategy outputs
`);
  }

  // Suggest claude-mem
  console.log(`Optional: Install claude-mem for cross-session memory:`);
  console.log(`  claude plugin install claude-mem\n`);
}

main().catch(console.error);
