# Scaling, Metrics, and Compliance

Copy gets the first replies; the *system* gets the next thousand. This file covers the ramp from manual sends to a machine, the numbers that tell you what's broken, and the legal lines that keep the machine running.

## The scaling ramp

**Stage 1 — Manual proof (weeks 1–4).** The user sends everything by hand: 20–50 touches/day. Goal is not volume, it's signal — which hook, which lead source, which offer gets replies. The first 100 cold calls teach more than any book. Do not automate an unproven message; automation multiplies whatever exists, including failure.

**Stage 2 — Systematize (once reply rate is proven).**
- Automate lead magnet *delivery*: pre-recorded video course instead of live training, templated audit doc, automated report. The gift must scale or the campaign can't.
- Move email sends into a sequencer with auto-stop-on-reply.
- Document the process: list source → enrichment → personalization step → sequence → reply handling. If it's written down, it can be delegated.

**Stage 3 — Delegate and multiply.**
- VAs handle list building, verification, and the 30-second personalization research; a single VA with software can push ~2,000 emails/day and generate dozens of engaged leads.
- The user (or closers) only touch live conversations.
- Add sending infrastructure carefully: multiple sending domains/inboxes, warmed up over 2–4 weeks, ~30–50 cold emails per inbox per day. Blowing past this burns the domain.

**Stage 4 — The compounding machine.** A working script + offer can run for years without reinvention. Pipeline compounds: follow-ups from last month land this month; the nurture list warms in the background. Resist the urge to rewrite what's working — iterate only via A/B tests.

## The metrics funnel

Track weekly, per segment and per message variant:

sent → delivered → opened → replied → positive reply → booked → showed → closed

**Rough cold email benchmarks (healthy campaign):**

| Metric | Acceptable | Good |
|---|---|---|
| Bounce rate | <5% | <2% |
| Open rate | >40% | >60% |
| Reply rate | >2% | >5–8% |
| Positive reply share | >30% of replies | >50% |
| Booked from positive | >50% | >70% |

Cold calls: 10–20% connect rate; ~1 meaningful conversation per 10–15 dials is normal early on. DMs: reply rates typically 2–5x email when the account looks human and credible.

## The diagnostic table

One number low → one specific part of the campaign is broken. Fix that part, not everything:

| Symptom | Broken part | Fix |
|---|---|---|
| High bounces | List quality | Verify emails, switch source, re-run the sample test |
| Low opens, low bounces | Deliverability or subject | Check spam placement (seed test), warm up inboxes, cut links/images, test new subjects |
| Opens fine, no replies | Copy or offer | Stronger lead magnet, more real personalization, shorter message, clearer CTA |
| Replies but negative | Targeting or tone | Wrong ICP segment, or the message overpromises/feels spammy |
| Positive replies, no bookings | CTA friction | Lower the ask (async first), send calendar link in first reply, respond within minutes not hours |
| Bookings but no-shows | Expectation gap | Confirm day-of, send agenda + the free value before the call |

## Testing protocol

- Test lead sources with a few hundred leads before buying/scraping at scale (see list-building reference).
- A/B test **one variable at a time** — subject OR opener OR CTA — with at least ~200 sends per arm before judging.
- Keep a simple test log: date, variable, variant A/B, sends, replies, verdict. The log *is* the playbook after six months.
- When a test wins, promote it to control and test the next variable. Never test two things at once; the result reads as noise.

## Compliance checklist

Not legal advice — but these are the standard lines, and staying inside them protects deliverability as much as legality:

- **CAN-SPAM (US email):** real sender identity, no deceptive subject lines, physical mailing address in the footer, honor opt-outs promptly. B2B cold email is legal under CAN-SPAM when compliant.
- **GDPR (EU/UK):** cold B2B email requires a documented legitimate-interest basis, easy objection, and relevance to the recipient's role. B2C cold email is effectively off-limits. When targeting the EU, keep records of the basis and delete on request.
- **CASL (Canada):** stricter — generally requires implied or express consent; implied consent can come from a published business email plus message relevance to their role.
- **TCPA (US calls/SMS):** check DNC lists before dialing; SMS to strangers without consent is high-risk — reserve SMS for leads who've engaged or opted in. No autodialed/robocall shortcuts.
- **Platform ToS (DMs):** stay under platform rate limits, no automation on platforms that prohibit it (most do for DMs), never scrape-and-blast a community's member list — bans are permanent and communities are irreplaceable lead sources.
- **Universal:** one global suppression list across all channels and tools. An opt-out on any channel is an opt-out on every channel.
