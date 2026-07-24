# Install on OpenClaw

OpenClaw reads Agent Skills in the same `SKILL.md` format Claude uses, so this plugin works without any conversion — both skills install as plain folders.

## Install

1. Clone the repo:
   ```bash
   git clone https://github.com/mikiarlo3/enso-ai-sdr.git
   ```
2. Copy the skill folders into OpenClaw's skills directory (`~/.openclaw/skills/` for your whole install, or your workspace's `skills/` directory for one workspace):
   ```bash
   cp -r enso-ai-sdr/skills/cold-outreach-playbook ~/.openclaw/skills/
   cp -r enso-ai-sdr/skills/ai-copywriter ~/.openclaw/skills/
   ```
3. Restart the OpenClaw gateway (or start a fresh session) so it re-scans skills.
4. Verify: ask your agent "what skills do you have?" — both `cold-outreach-playbook` and `ai-copywriter` should be listed.

The skills CLI route works too, if you prefer a managed install:

```bash
npx skills add mikiarlo3/enso-ai-sdr --global --agent openclaw
```

(If your skills CLI version doesn't know an `openclaw` agent target, use the manual copy above — it's just folders.)

## Use

Message your OpenClaw agent on whatever channel it lives (WhatsApp, Telegram, Discord, the web UI):

> Build me a cold outreach campaign. I sell [offer] to [audience].

The skill runs its intake questions in chat, then delivers the campaign document. Since OpenClaw agents have a filesystem, ask it to save the campaign as a file in your workspace so you can iterate on it across sessions.

## A note on sending

OpenClaw agents can often *send* messages (email, WhatsApp, etc.). This skill produces the strategy and copy; if you wire your agent up to actually send sequences, keep a human review step on the first batches and respect the compliance checklist the campaign document includes — an autonomous sender with a bad list is how domains get burned.
