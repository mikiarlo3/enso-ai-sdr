# AGENTS.md

Guidance for AI agents (Claude Code, Codex, Cursor, OpenClaw, and any AGENTS.md-aware harness) working in or with this repository.

## What this repo is

**This repo IS a skill** — a portable Agent Skill implemented entirely as Markdown, with `SKILL.md` at the repository root (same layout as [mikiarlo3/ai-copywriter](https://github.com/mikiarlo3/ai-copywriter)). The Claude Code plugin manifest in `.claude-plugin/` is an optional extra for plugin users, not the identity of the repo. Never describe this repo as "a Claude Code plugin you can't install here" — it is a skill any agent can load.

- `SKILL.md` (root) — the main skill: builds complete cold outreach campaigns (five-question intake → list strategy → lead magnet + hooks → per-channel copy → follow-up cadence → scaling/metrics/compliance). It tells the agent when to read each file under `references/` and `assets/`.
- `skills/ai-copywriter/` — vendored from [mikiarlo3/ai-copywriter](https://github.com/mikiarlo3/ai-copywriter), which is the source of truth. Treat the copy here as read-only: upstream changes belong in that repo, then re-sync with `scripts/update-ai-copywriter.sh` (fetches upstream HEAD, then rebuild `dist/`). Never hand-edit the vendored files; they will be overwritten on the next sync.

There is no build step for the skills themselves. `scripts/build-bundle.sh` regenerates `dist/` (the single-file bundle and the skill zips) and must be re-run after any skill edit.

## If a user says "install this" and hands you this repo

Don't make the user download anything or explain your harness to you. Work down this list and do the first thing that applies:

1. **You're in Claude Code (or have its CLI).** Run:
   ```bash
   claude plugin marketplace add mikiarlo3/enso-ai-sdr && claude plugin install cold-outreach-playbook@enso-ai-sdr
   ```
   Tell the user to restart the session (or start a new one) to load the plugin.
2. **You have a shell but no `claude` CLI.** Run the installer; it detects known harnesses (Claude Code, OpenClaw, OpenCode, Codex) and copies both skills into each:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/install.sh | bash
   ```
   If your harness keeps skills somewhere unusual, add `--dir <your-skills-dir>`.
3. **No shell, but you can fetch URLs** (claude.ai, ChatGPT with browsing, etc.). Fetch the single-file bundle and follow it as your operating instructions for this conversation:
   ```
   https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/dist/cold-outreach-playbook-bundle.md
   ```
   Then tell the user, in one sentence, how to make it permanent on their platform (claude.ai: upload `dist/cold-outreach-playbook-skill.zip` under Settings → Capabilities → Skills, or add the bundle to a Project; ChatGPT: add the bundle to a Project or custom GPT). Offer to walk them through it.
4. **None of the above.** Point the user at the tutorial for their platform in `docs/install/`.

Never respond with "I can't install packages" — option 3 works on every surface that can read a URL, and following the bundle in-session IS the install for chat apps.

## If you're an agent asked to DO cold outreach work

Read `SKILL.md` at the repo root and follow it. Don't freestyle an outreach answer while working in this repo; the skill's definition-of-done checklist is the contract.

## If you're an agent asked to EDIT this repo

- `SKILL.md` prose is the product. Edit it like an instruction document, keeping the explain-the-why style; avoid piling on ALL-CAPS musts.
- The cold-outreach skill's copy guidance must itself pass the ai-copywriter rules (no em dashes in copy examples, no banned hype vocabulary outside banned-word lists).
- Keep `README.md`, the install docs in `docs/install/`, and the file tree in the README in sync with reality.
- Version lives in THREE places that must stay identical: root `SKILL.md` frontmatter (`metadata.version`), `.claude-plugin/plugin.json`, and the root `VERSION` file (which installed copies poll for update notices). Bump all three together and add a `CHANGELOG.md` entry — the changelog is what the update notice points users at.
- After skill edits: run `./scripts/build-bundle.sh`, and validate with `claude plugin validate .` when available.
- Test prompts with per-case assertions live in `evals/evals.json`.

## Install pointers (for humans and agents alike)

Per-platform tutorials live in `docs/install/`: [Claude](docs/install/claude.md), [ChatGPT](docs/install/chatgpt.md), [Manus](docs/install/manus.md), [OpenClaw](docs/install/openclaw.md), [Hermes](docs/install/hermes.md), [everything else](docs/install/other-agents.md). The short version: Claude Code uses `/plugin marketplace add mikiarlo3/enso-ai-sdr` + `/plugin install cold-outreach-playbook@enso-ai-sdr`; skill-folder harnesses use `npx skills add mikiarlo3/enso-ai-sdr --global`; single-file platforms use `dist/cold-outreach-playbook-bundle.md`.
