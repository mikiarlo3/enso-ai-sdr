![Cold outreach. Copy & hooks. More replies. More meetings. Done. An AI skill by enso](assets/banner.svg)

# Cold outreach playbook

An agent skill, portable to any AI that reads Markdown. `SKILL.md` at the root of this repo is the whole product — same layout as [ai-copywriter](https://github.com/mikiarlo3/ai-copywriter) — and the Claude Code plugin manifest is just one of several ways to install it.

Cold outreach fails for one reason: the person on the other end doesn't know you. This skill teaches your AI a complete system for earning a stranger's trust, so instead of a generic "here's a cold email" answer, you get an entire campaign built around your offer and the people you actually sell to.

Tell Claude which product you're promoting, or just paste the product page URL and let it work that out itself. The intake is five one-line questions in one message (which product this campaign sells — companies with several pick one — who buys it, your best proof, your channels, and what you could give away free; a URL answers the first three for you), sensible defaults cover everything else, and then you get one document with everything in it:

- An ICP psychology profile, researched for you. Before writing a single hook, the skill goes online and studies who you're selling to — the forums and groups where they complain, the reviews they write and receive, their job postings — and comes back with their motivation, what they care about right now, the problem in their own words, and what your offer actually fixes for them.
- The best attention hook, chosen and defended. Hooks are grab + gift pairs: the reason this person stops now, and the value they receive for reading. You get one recommended winner per segment with the reasoning tied to the profile, plus 5 to 10 alternates to A/B test.
- A lead magnet, invented for you if you don't have one: 5 to 8 candidates scored on a rubric, with the bar set at "so useful the prospect feels silly saying no."
- The first two messages, built to win the campaign. Message 1 delivers a real insight in the message text itself — the prospect gains something even if they never reply. Message 2 hands over the full gift unprompted. By then they've received what your competitors charge for, and that's what turns cold into warm.
- The full sequence (10 touches over 21 days by default) with real copy for every touch, each one carrying value — no "just bumping this" anywhere — down to the breakup email.
- The supporting system, kept lean: where to find these people (2 to 4 named sources), metrics with a which-number-means-what diagnostic, scaling notes, and a compliance checklist for CAN-SPAM, GDPR, CASL, TCPA, and platform rules.

Every line of copy runs through the embedded [ai-copywriter](https://github.com/mikiarlo3/ai-copywriter) method (vendored inside as a reference file, so this package is a single skill on every host), which writes reader-first and strips the phrases that make outreach smell like a template blast. "I hope this email finds you well" does not survive contact.

The deliverable is all or nothing on purpose. Whatever your channel mix, the skill won't stop at ideas or a lone email: it delivers the whole strategy end to end, from ICP to launch checklist, in one document you can start executing the same day.

## Install

**The lazy way: paste this repo's URL to your AI agent and say "install this".** This repo carries its own install protocol ([AGENTS.md](AGENTS.md)), so an agent that can read the URL knows what to do on its own harness: Claude Code installs the plugin via its CLI, agents with a shell run the one-line installer, and chat apps without a filesystem fetch the single-file bundle and follow it in the conversation, then tell you the one step that makes it permanent.

**The one-line way**, on any machine with a shell (auto-detects Claude Code, OpenClaw, OpenCode, and Codex, and installs into all of them):

```bash
curl -fsSL https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/install.sh | bash
```

Everything here is plain Markdown, so it runs on any AI agent that can read instructions, the same way [ai-copywriter](https://github.com/mikiarlo3/ai-copywriter) does. Step-by-step tutorials for each platform live in [`docs/install/`](docs/install/):

| Where | How | Tutorial |
|---|---|---|
| Claude Code (CLI, desktop, claude.ai/code) | `/plugin` commands below | [docs/install/claude.md](docs/install/claude.md) |
| claude.ai chat app (web/mobile) | upload `dist/cold-outreach-playbook-skill.zip` in Settings → Capabilities → Skills, or use the bundle in a Project | [docs/install/claude.md](docs/install/claude.md) |
| ChatGPT | custom GPT or Project + `dist/cold-outreach-playbook-bundle.md` | [docs/install/chatgpt.md](docs/install/chatgpt.md) |
| Manus | Knowledge entry or per-task attachment | [docs/install/manus.md](docs/install/manus.md) |
| OpenClaw | copy skill folders into `~/.openclaw/skills/` | [docs/install/openclaw.md](docs/install/openclaw.md) |
| Hermes / self-hosted models | bundle as system prompt | [docs/install/hermes.md](docs/install/hermes.md) |
| Codex, Cursor, Gems, Poe, raw API, everything else | skills CLI or the bundle | [docs/install/other-agents.md](docs/install/other-agents.md) |

The two fast paths:

**Claude Code** (note: these commands exist only in Claude Code, not the claude.ai chat app):

```
/plugin marketplace add mikiarlo3/enso-ai-sdr
/plugin install cold-outreach-playbook@enso-ai-sdr
```

**Any skill-folder harness**, via the cross-agent [skills CLI](https://skills.sh):

```bash
npx skills add mikiarlo3/enso-ai-sdr --global
```

## Updating

The skill checks for new versions on its own: when it builds a campaign and has web access, it compares its installed version against [`VERSION`](VERSION) in this repo and, if there's something newer, adds one line after the deliverable telling you what changed ([CHANGELOG.md](CHANGELOG.md)) and how to update. The update itself, per install method:

| Installed via | Update with |
|---|---|
| Claude Code plugin | `claude plugin marketplace update enso-ai-sdr` (or `/plugin` → manage) |
| skills CLI | `npx skills update cold-outreach-playbook --global` |
| One-line installer | run the `curl \| bash` line again |
| Manual clone | `git pull` |
| Uploaded zip / bundle (claude.ai, ChatGPT, Manus, Gems) | re-download from [`dist/`](dist/) and re-upload |

To get notified by GitHub instead: **Watch → Custom → Releases** on this repo (publishing a release per version is recommended; watchers get an email and the [releases feed](https://github.com/mikiarlo3/enso-ai-sdr/releases.atom) works with any RSS reader).

## Use

Ask naturally. The skill triggers on cold outreach topics:

> "Help me write a cold email sequence for my web design agency targeting dentists"

Or run the command for the full guided flow:

```
/outreach-campaign I sell a $2k/mo SEO retainer to local law firms
```

Claude asks whatever it still needs to know, then writes the campaign.

## What's inside

```
├── SKILL.md                      # THE SKILL — workflow, five-question intake, definition of done
├── references/
│   ├── lead-magnet-generator.md  # the hook engine: ICP research, gift + grab, 8 hook families
│   ├── free-value-psychology.md  # 12 research-backed attention mechanisms
│   ├── hooks-and-copy.md         # hook formulas, channel templates, banned phrases
│   ├── follow-up-cadence.md      # cadence tables + copy angles per touch
│   ├── list-building.md          # the 3 list methods + testing protocol
│   ├── scaling-and-metrics.md    # scaling ramp, benchmarks, diagnostics, compliance
│   └── ai-copywriter.md          # embedded copy method (vendored from mikiarlo3/ai-copywriter)
├── assets/
│   ├── playbook-template.md      # output document skeleton
│   └── banner.svg
├── evals/
│   └── evals.json                # test prompts for skill iteration
├── AGENTS.md                     # guidance + self-install protocol for agents
├── install.sh                    # one-line installer (curl | bash)
├── dist/
│   ├── cold-outreach-playbook-bundle.md   # whole skill as one file (ChatGPT, Manus, Gems, APIs)
│   └── cold-outreach-playbook-skill.zip   # uploadable single skill for claude.ai Settings → Skills
├── docs/install/                 # per-agent install tutorials
├── scripts/build-bundle.sh       # regenerates dist/ after skill edits
├── commands/outreach-campaign.md # /outreach-campaign (Claude Code plugin users)
└── .claude-plugin/               # optional: Claude Code plugin + marketplace manifests
```

## The method

The playbook underneath is simple, and the skill refuses to skip any of it. Make cold feel warm: research buys you the first few seconds a stranger never owes you. Give away something others charge for, up front, without teasing. Keep every message simple enough that nobody has to reread it. Then follow up more times than feels polite, across more channels than feels comfortable, because that's where the customers are. Start by hand, prove the message works, and only then automate. A script that works can run for years.
