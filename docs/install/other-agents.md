# Install on other agents

The runtime artifact of this plugin is plain Markdown. Anything that can read text can run the playbook; the only question is where your agent expects instructions to live. Three patterns cover nearly everything.

## Pattern 1: harnesses that support Agent Skills (SKILL.md folders)

Codex, OpenCode, Cursor, Amp, and a growing list of coding agents read `SKILL.md` skill folders directly or via the skills CLI:

```bash
npx skills add mikiarlo3/enso-ai-sdr --global --agent '*'
```

`--agent '*'` installs into every harness the CLI detects on your machine. Run `npx skills add mikiarlo3/enso-ai-sdr --list` first to see what it found. Manual equivalent: the repo root IS the skill (SKILL.md at the top level), so clone the repo into your harness's skills directory as `cold-outreach-playbook/` — the ai-copywriter method ships inside it as a reference file.

Repos where agents work also pick up [`AGENTS.md`](../../AGENTS.md) at the root, which tells any AGENTS.md-aware tool (Codex, Cursor, and others) that these skills exist and when to use them.

## Pattern 2: products with custom instructions + file knowledge

Gemini Gems, Copilot agents, Poe bots, Mistral agents, and similar. The recipe is always the same:

1. Download [`dist/cold-outreach-playbook-bundle.md`](../../dist/cold-outreach-playbook-bundle.md) — the whole plugin as one file.
2. Create the custom bot/gem/agent and upload the bundle as its knowledge file (or paste it into the instructions field if there's no file support).
3. Set the instructions to:
   > Follow cold-outreach-playbook-bundle.md as your operating manual. Always run the Phase 1 intake interview first, asking only unanswered questions. Deliver the complete end-to-end campaign the file defines — never a partial. Write all copy using the rules in Part 8.
4. Chat: "I sell [offer] to [audience] — build my campaign."

## Pattern 3: raw API / your own agent code

Put the bundle in the system prompt:

```python
system = open("dist/cold-outreach-playbook-bundle.md").read()
messages = [{"role": "user", "content": "Build my cold outreach campaign. I sell ..."}]
```

The bundle is ~25k tokens; any modern frontier model handles it. For small-context models, keep Parts 1, 2, 4, and 5 and drop the rest.

## Rebuilding the bundle

If you edit the skills, regenerate everything in `dist/` with:

```bash
./scripts/build-bundle.sh
```
