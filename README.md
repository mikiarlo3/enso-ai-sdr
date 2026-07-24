![Cold outreach. Copy & hooks. More replies. More meetings. Done. — an AI skill by enso](assets/banner.svg)

# Cold Outreach Playbook — Claude Plugin

A Claude plugin that turns the cold outreach playbook ("from strangers to customers") into a working AI workflow. Ask Claude for help with cold email, cold calls, DMs, or outbound sequences and it will interview you about your offer and audience, then generate a **complete, ready-to-run campaign**:

- **Target list plan** — software scraping vs. list brokers vs. manual community sourcing, with a testing protocol before you spend money
- **Hooks** — 5–10 tested opening lines / subject lines across proven hook types
- **Channel copy** — cold email, social DM, phone script (with objection handling), SMS — all at a third-grade reading level with personalization slots
- **Follow-up cadence** — a dated multi-channel sequence (default 10 touches / 21 days) with actual copy for every touch, including the breakup email
- **Scaling plan** — manual proof → automation → VAs, plus a metrics funnel, diagnostic table, and A/B testing protocol
- **Compliance checklist** — CAN-SPAM, GDPR, CASL, TCPA, platform ToS

## Install

```
/plugin marketplace add mikiarlo3/enso-ai-sdr
/plugin install cold-outreach-playbook@enso-ai-sdr
```

## Use

Just ask naturally — the skill triggers on cold outreach topics:

> "Help me write a cold email sequence for my web design agency targeting dentists"

Or run the command for the full guided flow:

```
/outreach-campaign I sell a $2k/mo SEO retainer to local law firms
```

Claude asks the intake questions it still needs (offer, ICP, lead magnet, channels, capacity, region), then delivers the campaign as a single document you can start executing the same day.

## What's inside

```
├── .claude-plugin/
│   ├── plugin.json           # plugin manifest
│   └── marketplace.json      # lets this repo act as a marketplace
├── commands/
│   └── outreach-campaign.md  # /outreach-campaign slash command
└── skills/
    └── cold-outreach-playbook/
        ├── SKILL.md                          # workflow + intake interview
        ├── references/
        │   ├── list-building.md              # 3 list methods + testing protocol
        │   ├── hooks-and-copy.md             # hook formulas, channel templates, banned phrases
        │   ├── follow-up-cadence.md          # cadence tables + per-touch copy angles
        │   └── scaling-and-metrics.md        # scaling ramp, benchmarks, diagnostics, compliance
        ├── assets/
        │   └── playbook-template.md          # output document skeleton
        └── evals/
            └── evals.json                    # test prompts for skill iteration
```

## Principles baked in

1. **Make cold feel warm** — personalization buys the seconds of attention strangers don't owe you
2. **Give big, fast value** — deliver the gift up front; offer free what others charge for
3. **Keep it simple** — third-grade reading level, hard length limits per channel, one CTA
4. **Follow up relentlessly** — most conversions happen in follow-up, across multiple channels
5. **Volume beats perfection, then the system compounds** — start manual, prove the message, automate what works
