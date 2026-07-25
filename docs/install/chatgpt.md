# Install on ChatGPT

ChatGPT can't install skill directories, but the whole playbook ships as one Markdown file exactly for this: [`dist/cold-outreach-playbook-bundle.md`](../../dist/cold-outreach-playbook-bundle.md). Two good ways to use it.

## Option 1: a Project (fastest, works on Free/Plus)

1. Download `dist/cold-outreach-playbook-bundle.md` from this repo ([raw link](https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/dist/cold-outreach-playbook-bundle.md), then File → Save).
2. In ChatGPT, click **Projects → New project** and name it something like "Cold Outreach".
3. Open the project's **Files** and upload the bundle.
4. In the project's **Instructions**, paste:
   > You are a cold outreach strategist. Follow the instructions in the file cold-outreach-playbook-bundle.md exactly: run the intake interview first, then deliver the complete end-to-end campaign document. Parts 2-8 of the file contain the reference material Part 1 tells you to read.
5. Start a chat inside the project: "I sell [offer] to [audience] — build my campaign."

## Option 2: a custom GPT (shareable with your team)

Requires a Plus/Team plan.

1. Go to **Explore GPTs → Create** (or chatgpt.com/gpts/editor).
2. Switch to the **Configure** tab.
3. Name it (e.g. "Cold Outreach Playbook") and add a description.
4. Under **Knowledge**, upload `dist/cold-outreach-playbook-bundle.md`.
5. In **Instructions**, paste:
   > Follow the cold-outreach-playbook-bundle.md file in your knowledge as your operating manual. Always start with the Phase 1 intake interview, asking only the questions the user hasn't already answered. Never deliver a partial campaign: the deliverable is the full document defined in the file's "definition of done" checklist, with hooks, copy for every touch, cadence, metrics, and compliance. Draft all copy using the ai-copywriter rules in Part 8.
6. Under **Capabilities**, leave web browsing on (useful for researching the user's prospects).
7. Click **Create → Only me** (or share with a link/your workspace).

## Tips

- ChatGPT summarizes knowledge files when they're long. If it starts improvising instead of following the phases, tell it: "Re-read Part 1 of the bundle and follow its phases literally."
- Regenerate the bundle after editing the skill (`scripts/build-bundle.sh`) and re-upload.
