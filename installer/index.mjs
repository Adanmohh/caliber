#!/usr/bin/env node

import { readFileSync, writeFileSync, existsSync, mkdirSync } from "fs";
import { join } from "path";
import { homedir } from "os";
import { createInterface } from "readline";

const MARKETPLACE_REPO = "Adanmohh/organtic";
const MARKETPLACE_NAME = "organtic";

const PLUGINS = [
  {
    name: "validate",
    desc: "Validate ideas",
    experts: 3,
    agents: "Value Mapper, Business Modeler, Experiment Designer",
  },
  {
    name: "build",
    desc: "Build strategy",
    experts: 5,
    agents: "Product Strategist, Brand Strategist, Growth Designer, Spec Writer, Product Designer",
  },
  {
    name: "launch",
    desc: "Go-to-market",
    experts: 7,
    agents: "Offer Designer, Copywriter, Funnel Architect, Growth Auditor, Media Planner, SEO Strategist, AI Search Optimizer",
  },
  {
    name: "craft",
    desc: "Build deliverables",
    experts: 4,
    agents: "Landing Page Builder, MVP Scaffolder, Component Designer, Tester",
  },
  {
    name: "document",
    desc: "Write documents",
    experts: 2,
    agents: "Business Writer, Pitch Deck Writer",
  },
  {
    name: "present",
    desc: "Create presentations",
    experts: 1,
    agents: "Slide Designer",
  },
  {
    name: "studio",
    desc: "Produce videos",
    experts: 3,
    agents: "Demo Producer, Clip Maker, Content Creator",
  },
  {
    name: "pipeline",
    desc: "Pipeline orchestrator",
    experts: null,
    agents: "Chains 15 strategy experts across validate > build > launch",
  },
];

// ---------------------------------------------------------------------------
// Gradient & styling utilities
// ---------------------------------------------------------------------------

function makeGradient(chalk, steps) {
  const colors = [
    [16, 185, 129],  // #10b981 green
    [6, 182, 212],   // #06b6d4 cyan
    [59, 130, 246],  // #3b82f6 blue
  ];

  const result = [];
  for (let i = 0; i < steps; i++) {
    const t = steps === 1 ? 0 : i / (steps - 1);
    let r, g, b;
    if (t <= 0.5) {
      const lt = t * 2;
      r = Math.round(colors[0][0] + (colors[1][0] - colors[0][0]) * lt);
      g = Math.round(colors[0][1] + (colors[1][1] - colors[0][1]) * lt);
      b = Math.round(colors[0][2] + (colors[1][2] - colors[0][2]) * lt);
    } else {
      const lt = (t - 0.5) * 2;
      r = Math.round(colors[1][0] + (colors[2][0] - colors[1][0]) * lt);
      g = Math.round(colors[1][1] + (colors[2][1] - colors[1][1]) * lt);
      b = Math.round(colors[1][2] + (colors[2][2] - colors[1][2]) * lt);
    }
    result.push(chalk.rgb(r, g, b));
  }
  return result;
}

function gradientText(chalk, text) {
  const colors = makeGradient(chalk, text.length);
  return text.split("").map((ch, i) => colors[i](ch)).join("");
}

function gradientLine(chalk, text, width) {
  const colors = makeGradient(chalk, width);
  return text.split("").map((ch, i) => {
    const ci = Math.min(i, width - 1);
    return colors[ci](ch);
  }).join("");
}

function pad(str, len) {
  const visible = stripAnsi(str);
  const diff = len - visible.length;
  return diff > 0 ? str + " ".repeat(diff) : str;
}

function stripAnsi(str) {
  return str.replace(/\x1b\[[0-9;]*m/g, "");
}

// ---------------------------------------------------------------------------
// Box drawing
// ---------------------------------------------------------------------------

function box(chalk, lines, { title = "", width = 48, borderColor = null } = {}) {
  const bc = borderColor || ((s) => gradientLine(chalk, s, width + 2));
  const inner = width;

  const topLeft = bc("\u256d");
  const topRight = bc("\u256e");
  const botLeft = bc("\u2570");
  const botRight = bc("\u256f");
  const horiz = (len) => bc("\u2500".repeat(len));
  const vert = bc("\u2502");

  const out = [];

  if (title) {
    const titleStr = ` ${title} `;
    const remaining = inner - titleStr.length;
    out.push(`  ${topLeft}${horiz(1)}${bc(titleStr)}${horiz(remaining - 1)}${topRight}`);
  } else {
    out.push(`  ${topLeft}${horiz(inner)}${topRight}`);
  }

  for (const line of lines) {
    out.push(`  ${vert}${pad(line, inner)}${vert}`);
  }

  out.push(`  ${botLeft}${horiz(inner)}${botRight}`);
  return out.join("\n");
}

// ---------------------------------------------------------------------------
// Settings.json management
// ---------------------------------------------------------------------------

function getSettingsPath() {
  return join(homedir(), ".claude", "settings.json");
}

function readSettings() {
  const path = getSettingsPath();
  if (!existsSync(path)) return {};
  try {
    return JSON.parse(readFileSync(path, "utf-8"));
  } catch {
    return {};
  }
}

function writeSettings(settings) {
  const dir = join(homedir(), ".claude");
  if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
  writeFileSync(getSettingsPath(), JSON.stringify(settings, null, 2) + "\n");
}

function installPlugins(selected) {
  const settings = readSettings();

  // Add marketplace
  if (!settings.extraKnownMarketplaces) {
    settings.extraKnownMarketplaces = {};
  }
  settings.extraKnownMarketplaces[MARKETPLACE_NAME] = {
    source: {
      source: "github",
      repo: MARKETPLACE_REPO,
    },
  };

  // Enable selected plugins
  if (!settings.enabledPlugins) {
    settings.enabledPlugins = {};
  }
  for (const plugin of selected) {
    settings.enabledPlugins[`${plugin.name}@${MARKETPLACE_NAME}`] = true;
  }

  writeSettings(settings);
  return true;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  const chalk = (await import("chalk")).default;
  const { default: ora } = await import("ora");

  const W = 48;
  const dim = chalk.dim;
  const bold = chalk.bold.white;
  const green = chalk.rgb(16, 185, 129);
  const cyan = chalk.rgb(6, 182, 212);
  const red = chalk.rgb(239, 68, 68);

  // ── Banner ──────────────────────────────────────────────────────────────

  const dots = gradientText(chalk, "\u25cf \u25cf \u25cf \u25cf \u25cf \u25cf \u25cf \u25cf \u25cf \u25cf");
  const title = gradientText(chalk, "O R G A N T I C");

  const banner = box(chalk, [
    "",
    `   ${dots}`,
    `   ${title}`,
    "",
    `   ${dim("The AI-native organization.")}`,
    `   ${dim("25 experts from idea to launch.")}`,
    "",
  ], { width: W });

  console.log();
  console.log(banner);
  console.log();

  // ── Pipeline Map ────────────────────────────────────────────────────────

  console.log(box(chalk, [
    "",
    `  ${bold("validate")} ${dim("\u2500\u2500\u25b6")} ${bold("build")} ${dim("\u2500\u2500\u25b6")} ${bold("launch")}`,
    `  ${dim("3 experts")}    ${dim("5 experts")}   ${dim("7 experts")}`,
    "",
  ], { title: "Strategy Pipeline", width: W }));

  console.log(box(chalk, [
    "",
    `  ${bold("craft")}    ${bold("document")}    ${bold("present")}    ${bold("studio")}`,
    `  ${dim("4 agents")}  ${dim("2 agents")}    ${dim("1 agent")}     ${dim("3 agents")}`,
    "",
  ], { title: "Execution", width: W }));

  console.log(box(chalk, [
    "",
    `  ${bold("pipeline")} ${dim("\u2014 chains all 15 strategy experts")}`,
    "",
  ], { title: "Orchestration", width: W }));

  console.log();

  // ── Selection Menu ──────────────────────────────────────────────────────

  console.log(`  ${gradientText(chalk, "Select plugins to install:")}`);
  console.log();

  console.log(`  ${dim("Strategy Pipeline:")}`);
  PLUGINS.slice(0, 3).forEach((p, i) => {
    console.log(`    ${cyan(`[${i + 1}]`)} ${bold(p.name)}  ${dim(`${p.experts} experts \u2014 ${p.agents}`)}`);
  });

  console.log();
  console.log(`  ${dim("Execution:")}`);
  PLUGINS.slice(3, 7).forEach((p, i) => {
    console.log(`    ${cyan(`[${i + 4}]`)} ${bold(p.name)}  ${dim(`${p.experts} agent${p.experts > 1 ? "s" : ""} \u2014 ${p.agents}`)}`);
  });

  console.log();
  console.log(`  ${dim("Orchestration:")}`);
  console.log(`    ${cyan("[8]")} ${bold("pipeline")}  ${dim(PLUGINS[7].agents)}`);

  console.log();
  console.log(`    ${green("[A]")} ${bold("All plugins")} ${dim("(recommended)")}`);
  console.log(`    ${green("[S]")} ${bold("Strategy only")} ${dim("(validate + build + launch + pipeline)")}`);
  console.log();

  // ── User Selection ────────────────────────────────────────────────────

  const rl = createInterface({ input: process.stdin, output: process.stdout });
  const choice = await new Promise((resolve) => {
    rl.question(`  ${cyan("\u276f")} Your choice (1-8, A, S, comma-separated): `, resolve);
  });
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
    console.log(`\n  ${dim("No plugins selected. Exiting.")}`);
    process.exit(0);
  }

  console.log();

  // ── Install ───────────────────────────────────────────────────────────

  const spinner = ora({
    text: `Installing ${selected.length} plugin${selected.length > 1 ? "s" : ""} to ~/.claude/settings.json...`,
    color: "cyan",
  }).start();

  try {
    installPlugins(selected);
    spinner.succeed(
      `${bold(`${selected.length} plugins`)} ${dim("installed to")} ${dim("~/.claude/settings.json")}`
    );
  } catch (err) {
    spinner.fail(red(`Failed: ${err.message}`));
    console.log();
    console.log(`  ${dim("Try manual install — add to ~/.claude/settings.json:")}`);
    console.log(`  ${dim(`"extraKnownMarketplaces": { "${MARKETPLACE_NAME}": { "source": { "source": "github", "repo": "${MARKETPLACE_REPO}" } } }`)}`);
    process.exit(1);
  }

  console.log();

  // ── Installed Plugins List ────────────────────────────────────────────

  for (const plugin of selected) {
    const label = plugin.experts
      ? `${plugin.experts} expert${plugin.experts > 1 ? "s" : ""}`
      : "orchestrator";
    console.log(`  ${green("\u2713")} ${bold(plugin.name)} ${dim(`\u2014 ${label}`)}`);
  }

  console.log();

  // ── Getting Started Card ──────────────────────────────────────────────

  const cyanBorder = (s) => cyan(s);

  console.log(box(chalk, [
    "",
    `  ${dim("Start Claude Code:")}     ${bold("claude")}`,
    `  ${dim("Run full pipeline:")}     ${bold("/pipeline:run")} ${dim("Idea")}`,
    `  ${dim("Autonomous mode:")}       ${bold("--autonomous")}`,
    `  ${dim("Single expert:")}         ${bold("/value-mapper")} ${dim("Idea")}`,
    "",
    `  ${dim("Cross-session memory:")}`,
    `  ${bold("/plugin install claude-mem@thedotmack")}`,
    "",
  ], { title: "Getting Started", width: W, borderColor: cyanBorder }));

  console.log();
}

main().catch(console.error);
