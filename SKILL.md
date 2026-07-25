---
name: cold-outreach-playbook
description: >-
  Design the hook and the full outreach sequence for cold outreach that leads
  with value. Asks five quick questions (or reads the user's website), then
  does the work itself: researches the ICP online — their motivation, what
  they care about, the problem in their own words, what the offer fixes for
  them — designs the best attention hook (grab + gift), and writes a complete
  multi-channel sequence where the first two messages deliver more value than
  competitors charge for, plus channel copy, cadence, metrics, and compliance.
  Use this skill whenever the user mentions cold outreach, cold email, cold
  calling, cold DMs, outbound sales, prospecting, booking meetings with
  strangers, SDR/BDR sequences, follow-up cadences, hooks, lead magnets, or
  wants help writing messages to people who don't know them — even if they
  only ask for one piece (e.g. "write me a cold email" or "give me some
  hooks"), because a single message works far better as part of a designed
  sequence.
license: MIT
metadata:
  version: "1.1.0"
---

# Cold Outreach Playbook: From Strangers to Customers

You are helping someone turn total strangers into customers. Cold outreach has one core hurdle: **trust**. The recipient doesn't know the sender, so every element of the campaign — the list, the hook, the copy, the follow-up — exists to bridge the gap between "stranger danger" and a real business conversation.

The three challenges every campaign must solve, in order:
1. **Reach** — finding a way to contact the right strangers.
2. **Attention** — getting them to actually read/listen once contacted.
3. **Interest** — making them care enough to respond.

Your job is to produce a complete, ready-to-run campaign document. Not advice about outreach — the actual list plan, hooks, copy, and cadence the user can start executing today.

## Workflow

### Phase 1: Intake — five questions, two minutes

Speed is the feature. The user should answer a handful of one-liners and get a complete campaign, not fill out a form. First scan the conversation — anything already answered doesn't get asked again.

**A pasted URL replaces most of the interview.** If the user shared a URL (or you can ask "got a website or product page? paste it and I'll figure out the rest"), fetch it before asking anything — the page itself, plus pricing/about/case-study pages if they exist. From the site, extract: the product being promoted and its pricing (Q1), who it's for (Q2), proof points like testimonials, client logos, and numbers (Q3), and often the raw material for a lead magnet (existing tools, guides, or services that could be sampled free).

**One campaign promotes one product.** If the site shows several products or service lines, don't guess and don't average them — a hook aimed at everything a company sells engages no one. List what you found ("I see three products: X, Y, Z") and ask which ONE this campaign is for, inviting a direct product-page URL if there is one. Everything downstream — ICP research, gift, grab, hook, sequence — anchors to that product.

Present what you learned as one-line statements to confirm ("Here's what I got from your site — correct me if any of this is off"), and only *ask* what the site can't tell you: channels and the free giveaway. In environments without web access, just ask for a copy-paste of the product page or pricing page text instead.

Then ask the still-open questions from this list of five, all in ONE short message (or one AskUserQuestion call where available):

1. **Which product are we promoting, and what does it cost?** Not the company — the specific product or service this campaign sells. (Or: paste the product's page URL and skip 1–3 — I'll learn it from there.)
2. **Who buys THIS product?** (role, industry, location — as narrow as you can make it; different products often have different buyers)
3. **What's your best proof?** (a number, case study, or client name — "none yet" is a fine answer)
4. **Which channels?** (email / LinkedIn or DMs / phone / SMS — whatever you'll actually use)
5. **What could you give away free that they'd genuinely want?** ("no idea" is fine — I'll generate options)

That's the whole interview. Everything else gets a smart default, inferred and stated in the assumptions block at the top of the deliverable so the user can correct by exception:

- **Compliance regime**: inferred from the location in Q2 (US → CAN-SPAM/TCPA, EU/UK → GDPR, Canada → CASL).
- **Pain and where prospects congregate**: derived from the ICP — you know enough about most industries to name the likely top-of-mind pain and communities; state them as assumptions.
- **Capacity and tools**: assume a solo sender at a modest daily volume with no sequencer yet, unless the conversation says otherwise; the scaling plan covers the upgrade path anyway.
- **Proof framing**: if Q3 is "none yet," use the show-don't-claim approach (the lead magnet is the proof).
- **Magnet scalability, outreach history, budget**: assume the common case, note it, move on.

Ask a follow-up only when an answer is unusable — "everyone" for Q2 gets one push for the narrowest profitable slice, because a campaign aimed at everyone converts no one. If the user says "just assume everything," skip the questions entirely and build with stated assumptions.

### Phase 2: Research the ICP — this is YOUR work, not theirs

The user told you who the ICP is. Everything else about that person is your job to find out. This phase is the foundation the hook stands on, so give it real effort before touching strategy or copy.

**This is a gate, not a suggestion: no hook gets drafted until this research has run.** Whenever a hook is about to be created — a full campaign, or even a quick "give me some hooks" request — go online first and learn who this person actually is. Run Part 0 of `references/lead-magnet-generator.md`. With web access, spend 10–15 minutes where these people actually talk, with searches like:

- `site:reddit.com [their trade] [the problem]` and the trade's main subreddit sorted by top posts
- their industry forums and Facebook/LinkedIn groups (search the problem space, read the complaint threads)
- reviews they receive (Google/Yelp/G2 — read the angry ones) and reviews they write about tools/vendors
- their job postings (what they're hiring for is what's breaking)
- what they post and celebrate on LinkedIn/X

Come back with:

- **Their motivation**: what gets them out of bed, what they're afraid of, what they're proud of.
- **What they care about right now**: the two or three things competing for their attention this week.
- **The problem, in their words**: exact phrases from real threads and reviews — these go into hooks nearly verbatim.
- **What the offer actually fixes for them**: the outcome translated into their motivation, not the user's category language.
- **Their default skepticism**: what they auto-delete, what they've been burned by.
- **The reading moment**: where and when the message lands, which sets tone and length.

Without web access, infer the profile from what you know and ask the user for two or three real customer quotes. Either way, write the profile into the campaign document — every gift, grab, hook, and touch downstream is chosen and judged against it. If the hook doesn't trace back to something in this profile, the research wasn't used.

### Phase 3: Design the hook — the heart of the skill

Every first message follows the four-beat architecture: **Verified Trigger → Useful Implication → Small Asset → Micro-Ask.** The trigger is a public, dated, work-relevant fact ("why you, why now"); the implication is one role-relevant inference naming the specific cost or risk that fact creates — the beat that proves competence and delivers value before anything is offered; the asset is the concrete gift; the micro-ask is one yes/no question, and **never a meeting request in message 1**. Spend more of your effort here than anywhere else. Work through `references/lead-magnet-generator.md` end to end:

- **Value inventory (Part 2.5)**: from the profile, list what a stranger could hand this exact person that's usable the moment they read it — the number they don't know, the mistake they can check in a minute, the fix they can apply today.
- **The gift**: generate 5–8 lead magnet candidates across the three types (reveal-the-problem, free sample, one-step-of-many), score them on the rubric, present the table. Run this whenever the user's free-gift answer is missing or weak — a mediocre gift caps the campaign and no copy rescues it. Hand-made gifts get tiered, not discarded.
- **The trigger + implication**: pick verified, source-logged attention triggers per segment, matched to buyer type (executives → company-level triggers like initiatives and earnings; practitioners → workflow triggers like job posts and visible process friction). Then write the implication — the non-obvious consequence, with a mechanism or number you can defend, never invented. No valid trigger → peer-benchmark grab or leave the prospect out; never force personalization.
- **The best hook**: draft candidates as full four-beat messages, score each against the ICP profile (their words? their motivation? survives their skepticism?) AND the 10-point quality score in Part 3.5 — **8 of 10 minimum or it doesn't ship**. Mark ONE recommended winner per segment with a one-sentence reason tied to the profile. The rest are A/B alternates. Never hand the user ten hooks and make them guess.

### Phase 4: Write the sequence — value first, value always

Read `references/hooks-and-copy.md` before writing copy — hook formulas, channel templates, banned phrases. **Draft all copy with the ai-copywriter sub-skill** (bundled at `skills/ai-copywriter/SKILL.md`; a separately installed copy works too; if neither is reachable, hold the same bar via the copy rules below). Run every finished piece through its humanizer audit — outreach dies the moment it smells like a template blast.

The sequence lives or dies on its first two messages, so build them deliberately:

- **Message 1 = the most valuable thing in their inbox that day.** The winning hook, with a real insight delivered in plain text (cover the CTA — did they receive something? if not, rewrite) and the full gift linked where the platform allows.
- **Message 2 = even more value, unprompted.** Don't nudge — deliver. The full teardown sent without permission, the second finding, the piece of the work already done. By the end of message 2 the prospect should have received what others in the user's market charge for, with zero commitment. That imbalance — "this stranger has already helped me twice" — is what turns cold into warm.
- **Every later touch earns its place with value too**: new proof, a new angle on the pain, something genuinely useful and unrelated, down to the warm breakup. A touch whose only content is "bumping this" gets cut. Default cadence: 8–12 touches over ~3 weeks with real copy for every touch — see `references/follow-up-cadence.md`.
- **Channel limits**: DM 2–3 sentences; email half a page; phone script 1–2 pages; SMS 1–2 sentences and only after engagement or consent (TCPA — see the compliance section of `references/scaling-and-metrics.md`).

Copy rules that always apply (rationale in the references):
- **Third-grade reading level.** Complex language is friction; friction kills replies. Short words, short sentences.
- **The message IS the value.** Every first touch hands over something usable in plain text — a finding, a number, a fix — so the prospect is better off having read it even if they never reply. The full asset rides along linked or attached; "want me to send it?" is allowed only where platforms flag cold links (DMs), and even then one real insight goes in the message text. The test for every draft: cover the CTA — did the prospect receive anything? If not, rewrite.
- **Personalization slot in every first touch** — a `{{merge_field}}` plus instructions for what research fills it (30–60 seconds per lead, not 10 minutes).
- **One CTA, low friction — and no meeting requests in message 1.** "Worth a look?" beats "book a 45-minute demo." The message sells the asset; the asset sells the conversation; the conversation sells the meeting.
- **Only verifiable claims.** Every number, peer outcome, and case result in any message must come from the user, the ICP research, or a source you can name. An invented statistic that gets a reply is a landmine, not a win.
- **No deception.** No fake "Re:" subject lines, no fake forwarded threads, no pretending a prior relationship exists. Deception poisons the trust the whole campaign is trying to build — and violates CAN-SPAM.
- **Sound like a person.** Read the copy aloud; if it sounds like a marketing robot or an AI, rewrite it. The banned-phrases list in the references catches the worst offenders.

### Phase 5: The supporting system — keep it lean

The hook and the sequence are the product; this phase exists so they can run. Cover each item in a compact section, not an essay:

- **Where to find them**: name the 2–4 best sources for this specific ICP (communities, directories, a scraper, trigger-based searches) and the sample-test rule (verify a few hundred before scaling). Where possible, build the list *from* the chosen attention trigger so the grab comes attached to every lead. Full method detail lives in `references/list-building.md` — point to it rather than reproducing it.
- **Capacity math**: daily send capacity covers *all* touches, not just first touches; with a 10-touch cadence, "30 sends/day" supports roughly 5–6 new leads/day. Size intake so follow-ups never get skipped.
- **Metrics + diagnostics**: the funnel (sent → opened → replied → booked), realistic benchmarks, and which low number means which fix. First three A/B tests, one variable at a time — and the first thing to test is always the hook.
- **Scaling + compliance**: manual proof first, automate what's proven; compliance checklist matched to region and channels. Numbers and details: `references/scaling-and-metrics.md`.

## Output format and definition of done

Deliver the campaign as a single markdown document following the skeleton in `assets/playbook-template.md`. Fill every section — a section the user must "figure out later" is a section that stops the campaign from launching.

The job is not done until the user holds the **entire lead generation strategy end-to-end** for their specific ICP, whatever the channel mix (email, LinkedIn, SMS, phone, DMs). Check every box before delivering:

- [ ] ICP psychology profile written from research: motivation, what they care about, the problem in their words, what the offer fixes for them, their skepticism, their reading moment
- [ ] Lead magnet chosen (via the generator if needed), with value anchor and delivery plan
- [ ] Attention triggers/segments defined, each with its personalization angle
- [ ] ONE recommended hook per segment with a profile-tied reason, plus 5–10 A/B alternates — each built as Verified Trigger → Useful Implication → Small Asset → Micro-Ask, scoring ≥8/10 on the Part 3.5 quality check, with trigger sources logged
- [ ] Message 1 passes the cover-the-CTA test: usable value delivered inline, immediately — not a promise of value on reply
- [ ] Message 2 delivers the full gift unprompted — by its end the prospect has received what others charge for
- [ ] Every touch in the sequence carries value (no "just bumping" anywhere), with real copy for every single touch, breakup included, dated
- [ ] Complete first-touch copy for every channel in play — no placeholders except `{{merge_fields}}` with research instructions
- [ ] A lean "where to find them" section: 2–4 named sources for this ICP + the sample-test rule
- [ ] Metrics scorecard with benchmarks, first three A/B tests named (hook first), scaling notes
- [ ] Compliance checklist matched to region and channels
- [ ] A launch checklist the user can start executing today

Ideas, strategy, content, copy — all of it, in one document. If any box can't be filled, say why and what's needed rather than delivering a partial campaign silently. If the user asked for only one piece (just hooks, just an email), deliver that piece at full quality, then offer the surrounding sequence, noting that a first touch without follow-ups leaves most replies on the table.

Write the document to a file (e.g. `cold-outreach-campaign.md`) when working in an environment with a filesystem, so the user keeps it.

## Principles to hold onto

- **Make cold feel warm.** Research + personalization buys the first few seconds of attention that strangers don't owe you.
- **Give away what others charge for.** A free thing of obvious value is the fastest trust-builder that exists.
- **Volume + follow-up beat perfection.** The goal is sending, not polishing. A good-enough script sent 500 times with 8 follow-ups outperforms a perfect script sent 50 times with none.
- **The system compounds.** Once a script + offer combination works, it can run for years. Help the user build the machine, not just a message.
