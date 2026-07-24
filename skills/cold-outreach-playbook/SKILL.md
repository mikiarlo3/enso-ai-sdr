---
name: cold-outreach-playbook
description: >-
  Build a complete cold outreach campaign from scratch: target list strategy,
  lead magnet, hooks, channel-specific copy (cold email, LinkedIn/social DM,
  phone script, SMS), a multi-channel follow-up cadence, and a scaling plan.
  Runs a short intake interview first so everything is tailored to the user's
  offer, audience, and channels. Use this skill whenever the user mentions cold
  outreach, cold email, cold calling, cold DMs, outbound sales, prospecting,
  booking meetings with strangers, SDR/BDR sequences, follow-up cadences, lead
  lists, or wants help writing messages to people who don't know them — even if
  they only ask for one piece (e.g. "write me a cold email" or "give me some
  hooks"), because a single message works far better as part of a designed
  sequence.
---

# Cold Outreach Playbook: From Strangers to Customers

You are helping someone turn total strangers into customers. Cold outreach has one core hurdle: **trust**. The recipient doesn't know the sender, so every element of the campaign — the list, the hook, the copy, the follow-up — exists to bridge the gap between "stranger danger" and a real business conversation.

The three challenges every campaign must solve, in order:
1. **Reach** — finding a way to contact the right strangers.
2. **Attention** — getting them to actually read/listen once contacted.
3. **Interest** — making them care enough to respond.

Your job is to produce a complete, ready-to-run campaign document. Not advice about outreach — the actual list plan, hooks, copy, and cadence the user can start executing today.

## Workflow

### Phase 1: Intake interview

Never generate a campaign from guesses. The difference between generic outreach (ignored) and effective outreach (answered) is specificity, and specificity comes from these answers. Check the conversation first — the user may have already answered some. Then ask the unanswered ones, batched in one message (or via AskUserQuestion if available, grouping related items). If the user says "just make assumptions," make them, but state each assumption explicitly at the top of the deliverable so they're easy to correct.

**The offer (what they sell)**
1. What do you sell, and at what price point?
2. What concrete result does a customer get? (Numbers beat adjectives: "adds 15 booked calls/month" beats "grows your pipeline.")
3. What proof exists? (Case studies, named clients, before/after metrics, testimonials.)

**The audience (who they're targeting)**
4. Who exactly is the ideal customer? Role/title, industry, company size, geography.
5. What painful, top-of-mind problem does this person have that the offer solves? How do *they* describe it in their own words?
6. Where do these people congregate? (Communities, groups, events, platforms, newsletters.)

**The value-first gift (the lead magnet)**
7. What could you give away free that's so valuable they'd feel foolish declining? Ideally something others charge for — a free audit, teardown, sample deliverable, tool, or the first unit of your actual service.
8. Can that gift be delivered/automated at scale, or is it hand-made per prospect?

**Channels and capacity**
9. Which channels can you actually use: email, LinkedIn/social DMs, phone, SMS? Any you refuse or can't access?
10. Who does the sending — just you, a team, VAs? Roughly how many touches/day is realistic?
11. What tools do you have (or will you buy)? Lead databases, email sequencers, dialers, enrichment.

**Constraints and history**
12. What regions are you contacting? (Determines compliance posture: GDPR, CAN-SPAM, CASL, TCPA for calls/SMS.)
13. Have you done cold outreach before? What worked, what flopped? Share any current scripts.

Questions 1–7 and 9 are load-bearing — push for real answers. Questions 8 and 10–13 can be assumed with stated defaults if the user is in a hurry.

### Phase 2: Diagnose and choose the strategy

From the answers, decide and briefly justify:
- **List-building method(s)**: software scraping, list brokers, or manual "elbow grease" — usually a mix. High-ticket + niche audience → lean manual (higher-quality, less fatigued leads). High-volume + broad audience → lean software. See `references/list-building.md` for the selection logic, testing protocol, and per-method action steps.
- **Primary channel + support channels**: pick where the audience actually pays attention, then use the other channels for follow-up variety.
- **The lead magnet and value anchor**: what gets delivered free, and how it's framed so the recipient understands its normal price. If the best magnet is hand-made (e.g. a personal video teardown), don't discard it — tier it: hand-made for the highest-value or already-engaged leads, a templated/automated version (checklist, recorded walkthrough, auto-generated report) for everyone else. Hand-made magnets often *earn* their cost at small volume; the automated tier is what makes Phase 4 scaling possible.
- **Capacity math**: the user's daily send capacity covers *all* touches, not just first touches. With a 10-touch cadence, steady-state total sends ≈ new-leads/day × average touches consumed (usually 5–7). So "30 sends/day" supports roughly 5–6 *new* leads/day, not 30. Size the new-lead intake so follow-ups never get skipped — follow-ups convert better than first touches and get cut first when capacity is oversubscribed.

### Phase 3: Write the campaign

Read `references/hooks-and-copy.md` before writing copy — it has the hook formulas, channel templates, and the banned-phrases list. Then produce, for each channel in play:

- **Hooks**: 5–10 opening lines/subject lines per primary channel, spanning different hook types (personalized observation, specific claim + proof, problem callout, give-first). The user should be able to A/B test them.
- **First-touch copy**: full message per channel, respecting hard limits — DM: 2–3 sentences; email: half a page max; phone script: 1–2 pages; SMS: 1–2 sentences. Treat SMS as a follow-up channel for leads who have already engaged or consented, never a cold first touch — cold SMS to strangers is high-risk under TCPA (details in the compliance section of `references/scaling-and-metrics.md`).
- **Follow-up sequence**: a dated, multi-channel cadence (default: 8–12 touches over ~3 weeks) with actual copy for every touch, not just "follow up here." Most conversions happen in follow-up, so this section is not optional. See `references/follow-up-cadence.md` for cadence patterns and per-touch copy angles.

Copy rules that always apply (rationale in the references):
- **Third-grade reading level.** Complex language is friction; friction kills replies. Short words, short sentences.
- **Deliver value in the first sentences**, don't tease it. The reader decides in seconds.
- **Personalization slot in every first touch** — a `{{merge_field}}` plus instructions for what research fills it (30–60 seconds per lead, not 10 minutes).
- **One CTA, low friction.** "Worth a look?" beats "book a 45-minute demo."
- **No deception.** No fake "Re:" subject lines, no fake forwarded threads, no pretending a prior relationship exists. Deception poisons the trust the whole campaign is trying to build — and violates CAN-SPAM.
- **Sound like a person.** Read the copy aloud; if it sounds like a marketing robot or an AI, rewrite it. The banned-phrases list in the references catches the worst offenders.

### Phase 4: Scaling and measurement plan

Close the deliverable with the operating system around the copy:
- Volume ramp (start manual, automate what's proven), delegation to VAs/tools, lead magnet delivery automation.
- The metrics funnel to track (sent → delivered → opened → replied → booked → closed) with realistic benchmarks and a diagnostic table: which number being low means which part of the campaign is broken.
- Testing protocol: test lead sources in small batches (a few hundred) before scaling; change one variable at a time.
- Compliance checklist matched to their region and channels.

Details and benchmark numbers: `references/scaling-and-metrics.md`.

## Output format

Deliver the campaign as a single markdown document following the skeleton in `assets/playbook-template.md`. Fill every section — a section the user must "figure out later" is a section that stops the campaign from launching. If the user asked for only one piece (just hooks, just an email), deliver that piece at full quality, then offer the surrounding sequence, noting that a first touch without follow-ups leaves most replies on the table.

Write the document to a file (e.g. `cold-outreach-campaign.md`) when working in an environment with a filesystem, so the user keeps it.

## Principles to hold onto

- **Make cold feel warm.** Research + personalization buys the first few seconds of attention that strangers don't owe you.
- **Give away what others charge for.** A free thing of obvious value is the fastest trust-builder that exists.
- **Volume + follow-up beat perfection.** The goal is sending, not polishing. A good-enough script sent 500 times with 8 follow-ups outperforms a perfect script sent 50 times with none.
- **The system compounds.** Once a script + offer combination works, it can run for years. Help the user build the machine, not just a message.
