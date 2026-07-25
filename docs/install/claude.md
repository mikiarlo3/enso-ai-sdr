# Install on Claude

One thing to know first: **the `/plugin` commands only exist in Claude Code** (the CLI, the desktop app, and claude.ai/code). The regular claude.ai chat app on web and mobile has no `/plugin` command, so pasting those commands into a chat won't install anything there. Use the section that matches where you are.

## Claude Code (CLI, desktop app, claude.ai/code)

The full plugin experience: both skills plus the `/outreach-campaign` command.

1. Open a Claude Code session.
2. Add this repo as a marketplace:
   ```
   /plugin marketplace add mikiarlo3/enso-ai-sdr
   ```
3. Install:
   ```
   /plugin install cold-outreach-playbook@enso-ai-sdr
   ```
4. Restart the session, then test it:
   ```
   /outreach-campaign I sell a $2k/mo SEO retainer to local law firms
   ```

A note if the repo isn't yours: marketplaces install skills and commands that shape how Claude behaves, so it's fair to skim `skills/` and `commands/` before installing. Everything here is plain Markdown you can read in two minutes.

## skills CLI (works for Claude Code and other harnesses at once)

```bash
npx skills add mikiarlo3/enso-ai-sdr --global
```

This discovers and installs both skills (`cold-outreach-playbook` and `ai-copywriter`). Add `--agent '*'` to install into every supported harness on your machine, or omit `--global` for a project-local install you can commit for your team.

## claude.ai chat app (web and mobile)

Two ways, no Claude Code needed:

**Upload as a skill (Pro/Max/Team plans).** Skills uploaded in settings work across your chats.

1. Download `dist/cold-outreach-playbook-skill.zip` from this repo (grab `dist/ai-copywriter-skill.zip` too for best copy quality).
2. On claude.ai go to **Settings → Capabilities → Skills** and upload the zip(s). If you don't see the Skills section, your plan or org settings don't include custom skills yet; use the Project method below.
3. In any chat, ask for a cold outreach campaign. The skill triggers on its own.

**Use a Project with the bundle file (any plan with Projects).**

1. Download [`dist/cold-outreach-playbook-bundle.md`](../../dist/cold-outreach-playbook-bundle.md), the entire playbook as one file.
2. Create a Project, upload the bundle to its knowledge.
3. In the project instructions, write: "Follow cold-outreach-playbook-bundle.md as your operating manual. Run its intake interview first, then deliver the complete campaign it defines."
4. Chat: "I sell [offer] to [audience] — build my campaign."

## Manual copy (any machine running Claude Code)

The repo root is the skill (SKILL.md at the top level), so a clone into your skills directory is the whole install:

```bash
git clone https://github.com/mikiarlo3/enso-ai-sdr.git ~/.claude/skills/cold-outreach-playbook
cp -r ~/.claude/skills/cold-outreach-playbook/skills/ai-copywriter ~/.claude/skills/ai-copywriter
```

Use a repo's `.claude/skills/` directory instead of `~/.claude/skills/` to install for a single project.
