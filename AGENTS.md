# AGENTS.md

Guidance for AI agents (Claude Code, Codex, Cursor, OpenClaw, and any AGENTS.md-aware harness) working in or with this repository.

## What this repo is

A portable agent plugin implemented entirely as Markdown. It contains two Agent Skills:

- `skills/cold-outreach-playbook/` — the main skill: builds complete cold outreach campaigns (intake interview → list strategy → lead magnet + hooks → per-channel copy → follow-up cadence → scaling/metrics/compliance). `SKILL.md` is the entry point; it tells the agent when to read each file under `references/` and `assets/`.
- `skills/ai-copywriter/` — vendored from [mikiarlo3/ai-copywriter](https://github.com/mikiarlo3/ai-copywriter). The playbook drafts all outreach copy through it. Treat it as read-only here; upstream changes belong in its own repo, then re-vendor.

There is no build step for the skills themselves. `scripts/build-bundle.sh` regenerates `dist/` (the single-file bundle and the skill zips) and must be re-run after any skill edit.

## If you're an agent asked to DO cold outreach work

Read `skills/cold-outreach-playbook/SKILL.md` and follow it. Don't freestyle an outreach answer while working in this repo; the skill's definition-of-done checklist is the contract.

## If you're an agent asked to EDIT this repo

- `SKILL.md` prose is the product. Edit it like an instruction document, keeping the explain-the-why style; avoid piling on ALL-CAPS musts.
- The cold-outreach skill's copy guidance must itself pass the ai-copywriter rules (no em dashes in copy examples, no banned hype vocabulary outside banned-word lists).
- Keep `README.md`, the install docs in `docs/install/`, and the file tree in the README in sync with reality.
- Version lives in `skills/cold-outreach-playbook/SKILL.md` frontmatter (`metadata.version`) and `.claude-plugin/plugin.json` — bump both together.
- After skill edits: run `./scripts/build-bundle.sh`, and validate with `claude plugin validate .` when available.
- Test prompts with per-case assertions live in `skills/cold-outreach-playbook/evals/evals.json`.

## Install pointers (for humans and agents alike)

Per-platform tutorials live in `docs/install/`: [Claude](docs/install/claude.md), [ChatGPT](docs/install/chatgpt.md), [Manus](docs/install/manus.md), [OpenClaw](docs/install/openclaw.md), [Hermes](docs/install/hermes.md), [everything else](docs/install/other-agents.md). The short version: Claude Code uses `/plugin marketplace add mikiarlo3/enso-ai-sdr` + `/plugin install cold-outreach-playbook@enso-ai-sdr`; skill-folder harnesses use `npx skills add mikiarlo3/enso-ai-sdr --global`; single-file platforms use `dist/cold-outreach-playbook-bundle.md`.
