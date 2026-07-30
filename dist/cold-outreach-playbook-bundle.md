# Cold Outreach Playbook (single-file bundle, v1.8.0)

This is the complete cold-outreach-playbook agent skill in one file, bundled
for platforms that accept a single document. It contains the main skill, all
of its reference files, the output template, and the ai-copywriter reference
used for drafting copy.

This copy is frozen at version 1.8.0. The live version number is at
https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/VERSION and the
changelog at https://github.com/mikiarlo3/enso-ai-sdr/blob/main/CHANGELOG.md —
if the live version is newer, tell the user once (after the deliverable) to
re-download the bundle from the repo's dist/ folder.

Instructions for the AI agent reading this: follow Part 1 as your operating
instructions. When Part 1 tells you to read a file under `references/` or
`assets/`, that content is included in the numbered parts below — use those instead
of looking for files.

---

## Part 1: The skill (SKILL.md)


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

**For a full campaign build, go deeper — become the industry insider.** The quick scan above is the floor; the campaign standard is the two-track protocol in `references/icp-deep-research.md` (30–45 minutes, the highest-ROI time in the campaign): Track A learns the *business* like an operator — unit economics (revenue per unit of capacity, margins, LTV, derived from benchmark reports and franchise disclosure documents), a pain dossier per pain (root cause → cost formula with the arithmetic shown → what they've already tried → why it failed → the insider insight), the trade's vocabulary, metrics, live debates, and calendar; Track B deepens the person — day-in-the-life, the decision unit, identity markers. The output is an **Industry Expertise Brief** in the campaign doc, and it must pass the depth gate before any reach-out is drafted: three derived economic numbers with arithmetic, three insider insights, five vocabulary terms, and each pain's tried-and-failed list. The test: would a 20-year veteran of the trade nod at your expertise proofs — or shrug? Reach-outs written before this gate passes are generic no matter how good the copy is.

### Phase 3: Design the hook — the heart of the skill

Every first message follows the four-beat architecture: **Verified Trigger → Useful Implication → Small Asset → Micro-Ask.** The trigger is a public, dated, work-relevant fact ("why you, why now"); the implication is one role-relevant inference naming the specific cost or risk that fact creates — the beat that proves competence and delivers value before anything is offered; the asset is the concrete gift; the micro-ask is one yes/no question, and **never a meeting request in message 1**. Spend more of your effort here than anywhere else. Work through `references/lead-magnet-generator.md` end to end:

- **Value inventory + the enormity bar (Part 2.5)**: from the profile, list what a stranger could hand this exact person that's usable the moment they read it — then raise the bar from useful to *disproportionate*. Reason deeply and in writing (3–5 sentences in the campaign doc): what would make THIS person stop and think "why is a stranger giving me this free?" — would they forward it to a peer, would they feel a twinge of guilt taking it? The answer must trace to the ICP research, never to "it was easy to make."
- **Scan the full 360° hook palette (Part 4)**: eight families — triggers, market signals, big ideas, relationship touches, give-them-a-stage plays (podcast invites, industry-report quotes, webinars, rankings), ecosystem plays, and FOMO/tension hooks (competitor motion, peer-benchmark gaps, left-out-of-the-report, closing windows, honest scarcity with its reason stated — never fake urgency), and identity/tribe hooks (genuine shared membership, insider language, the shared enemy they already resent, identity labels — true only). Don't default to trigger hooks just because they're the reflex.
- **Apply the psychology of free value deliberately**: read `references/free-value-psychology.md` and pick one or two mechanisms per message — reciprocity's amplifiers (unexpected, personalized, delivered-not-promised), the zero-price effect with a value anchor, the labor illusion (show the work in one sentence), a closable information gap, endowment naming ("your report is ready"), a but-you-are-free exit line, or a contribution ask on stage plays. The reference maps each technique to its beat in the four-beat architecture — and draws the line: these ride on real value or they backfire.
- **The gift**: generate 5–8 lead magnet candidates across the three types (reveal-the-problem, free sample, one-step-of-many), score them on the rubric, present the table. Run this whenever the user's free-gift answer is missing or weak — a mediocre gift caps the campaign and no copy rescues it. Hand-made gifts get tiered, not discarded.
- **The trigger + implication**: pick verified, source-logged attention triggers per segment, matched to buyer type (executives → company-level triggers like initiatives and earnings; practitioners → workflow triggers like job posts and visible process friction). Then write the implication — the non-obvious consequence, with a mechanism or number you can defend, never invented. No valid trigger → peer-benchmark grab or leave the prospect out; never force personalization.
- **The best hook**: draft candidates as full four-beat messages, score each against the ICP profile (their words? their motivation? survives their skepticism?) AND the 10-point quality score in Part 3.5 — **8 of 10 minimum or it doesn't ship**. Mark ONE recommended winner per segment with a one-sentence reason tied to the profile. The rest are A/B alternates. Never hand the user ten hooks and make them guess.
- **The bigger plays**: whenever the economics support it (high LTV, narrow ICP, relationship-driven buying, or a user with content ambitions), ALWAYS put 2–3 build-speed plays from the palette on the table — start the podcast and invite ICP guests, run the industry report and collect their quotes, co-host the webinar, publish the ranking. Users don't ask for what they haven't imagined; offering these is part of the job. For each: why it fits this ICP (from the profile), the first-touch script, the honest effort level, and the payoff horizon. Recommend running both tracks at once — trigger hooks for replies this week, one stage play compounding in the background.

### Phase 4: Write the sequence — value first, value always

Read `references/hooks-and-copy.md` before writing copy — hook formulas, channel templates, banned phrases. **Draft all copy with the ai-copywriter method**, shipped inside this skill at `references/ai-copywriter.md` (vendored from the standalone [ai-copywriter](https://github.com/mikiarlo3/ai-copywriter) skill as a reference file, so this package stays a single skill — a separately installed ai-copywriter skill works identically; if neither is reachable, hold the same bar via the copy rules below). Run every finished piece through its humanizer audit — outreach dies the moment it smells like a template blast.

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
- [ ] Industry Expertise Brief passes the depth gate: 3+ derived economic numbers (arithmetic shown), 3+ insider insights, 5+ trade vocabulary terms, tried-and-failed list per pain, and a value map from product feature → their unit economics → what it means for them personally
- [ ] Lead magnet chosen (via the generator if needed), with value anchor and delivery plan
- [ ] Attention triggers/segments defined, each with its personalization angle
- [ ] ONE recommended hook per segment with a profile-tied reason, plus 5–10 A/B alternates — each built as Verified Trigger → Useful Implication → Small Asset → Micro-Ask, scoring ≥8/10 on the Part 3.5 quality check, with trigger sources logged
- [ ] The gift passes the enormity bar, with written reasoning (would they forward it? feel guilty it's free?) traced to the ICP research
- [ ] Full hook palette scanned; 2–3 bigger plays (podcast, report, webinar, ranking) offered with first-touch scripts wherever the economics support them
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

## Staying up to date

This skill improves over time. Once per full campaign build (not for quick one-off asks), if web access is available, fetch `https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/VERSION` and compare it to this file's `metadata.version`. If the remote version is newer, add ONE line at the end of your reply — after the deliverable, never before it: "A newer version of this skill is available (vX.Y.Z — see the changelog at github.com/mikiarlo3/enso-ai-sdr/blob/main/CHANGELOG.md). Update with: [the step for this platform]." Platform steps: Claude Code plugin → `claude plugin marketplace update enso-ai-sdr`; skills CLI → `npx skills update cold-outreach-playbook --global`; manual clone → `git pull`; uploaded zip or bundle (claude.ai, ChatGPT, Manus) → re-download from the repo's `dist/` folder and re-upload.

Rules: never block or delay the campaign on this check, never nag more than once per conversation, and on any fetch failure skip silently — an update notice is a courtesy, not a feature the user asked for.

## Principles to hold onto

- **Make cold feel warm.** Research + personalization buys the first few seconds of attention that strangers don't owe you.
- **Give away what others charge for.** A free thing of obvious value is the fastest trust-builder that exists.
- **Volume + follow-up beat perfection.** The goal is sending, not polishing. A good-enough script sent 500 times with 8 follow-ups outperforms a perfect script sent 50 times with none.
- **The system compounds.** Once a script + offer combination works, it can run for years. Help the user build the machine, not just a message.

---

## Part 2: references/lead-magnet-generator.md

# The Hook Generator: Lead Magnets and Attention

A hook is not just a clever first line. A hook is two things working together:

- **The GIFT** — something you give away free that's so valuable the prospect feels foolish declining it. This is what generates *interest*.
- **The GRAB** — the reason this message, to this person, right now. This is what earns *attention* in the first 2–3 seconds.

Copy (subject lines, openers) is just the wrapper around these two. If the user doesn't have a strong gift and a real grab, no amount of copywriting fixes the campaign — so when the intake's free-gift question ("what could you give away free?") gets a weak or uncertain answer, run this generator instead of accepting a mediocre magnet.

And neither the gift nor the grab can be chosen well for a person you haven't studied. Do Part 0 first, always.

## Part 0: Research the ICP before hooking them

A hook engages when it reads like it was written by someone who knows this person. That knowledge has to be earned before anything else in this file happens — treat this as a hard gate: **if a hook is about to be written and this research hasn't run yet, stop and run it first**, even when the user only asked for "a few hooks." The output is a short **ICP psychology profile** that everything downstream pulls from — the gift is chosen because *they'd* value it, the grab is chosen because *they'd* stop for it, and every hook gets judged against the profile.

This quick scan is the floor, good for fast hook-only requests. A full campaign build runs the two-track deep protocol in `references/icp-deep-research.md` on top of it — unit economics, pain mechanics, trade vocabulary, and the depth gate — before any reach-out is written.

**With web access (do this — 10–15 minutes, not an afternoon):** go where the ICP actually talks and read their own words.
- Subreddits, industry forums, and Facebook/LinkedIn groups for their trade — search for the problem space and read complaint threads.
- Reviews they write and reviews they receive (Google, G2, Yelp, app stores) — what they praise and what enrages them.
- Job postings they publish — what they're hiring for reveals what's breaking.
- What they post and share on LinkedIn/X — what earns their respect, what they brag about.
- Competitors' comment sections and case studies — what this audience was promised before and how it went.

**Without web access:** build the profile from what you know of the industry, mark it as inferred, and ask the user for one thing only: two or three real quotes from customers or prospects (a review, a sales-call complaint, an email). Real phrasing beats a page of demographics.

**The profile (keep it under a page, write it into the campaign doc):**
- **Motivation:** what gets them out of bed and what they're afraid of. Owner-operators usually run on autonomy, cash stability, and pride in the trade; executives on targets, internal optics, and not being blindsided. Name the specific version for this ICP.
- **What they care about day-to-day:** the three things competing for their attention this week. A hook that touches none of them loses.
- **The problem, in their words:** how they'd describe it to a friend — not your category language. "The website's embarrassing" not "suboptimal conversion funnel." Pull exact phrases from the research; these go into hooks nearly verbatim.
- **What your offer actually fixes for them:** translate the offer's outcome into their motivation ("more booked jobs without hiring a front desk," not "workflow automation").
- **Default skepticism:** what they assume about people who message them cold, what they've been burned by, which claims trip their scam filter. Hooks must not resemble the thing they already delete.
- **The reading moment:** where and when the message lands — phone between jobs, inbox triage at 7am, DMs full of spam. This sets tone and length.

**How the profile picks the winning hook:** after drafting hook candidates (Parts 1–3), score each against the profile — does it use their words? does it touch a live motivation? does it survive their skepticism filter? does it deliver value in their reading moment? Then mark ONE recommended hook per segment and say why in one sentence tied to the profile ("she's drowning in agency pitches; this is the only one that opens with her own review quote instead of a claim"). Deliver the alternates for A/B testing, but never make the user guess which one you'd send.

## Part 1: Generating the GIFT (lead magnet)

### The core logic

A lead magnet works when it solves a **narrow, specific problem** that is the *first domino* of the problem your core offer solves — so consuming the gift naturally reveals the need for the paid thing. It fails when it's generic ("Ultimate Guide to Marketing"), slow to consume (50-page ebook), or disconnected from the offer.

### Step 1 — Pick the narrow problem

Take the core pain from intake and slice off its leading edge: the piece the prospect can feel *today*, that can be addressed in minutes, and that opens the door to the rest. "Your website loses patients" → narrow problem: "you don't know *which three things* on your site are losing them."

### Step 2 — Generate candidates across all three magnet types

Always brainstorm across all three types — the best option is often in a type the user didn't consider:

**Type A: Reveal the problem** (audits, teardowns, assessments, graders, scorecards)
The magnet *shows them* a problem they can't unsee, and your offer is the fix. Strongest when prospects underestimate their problem. Examples: website/funnel teardown video, deliverability audit, ad account review, security scan, benchmark scorecard ("you rank 14th of 20 local practices").

**Type B: Free sample** (the first unit of the real service, a trial, a done-for-you taste)
Give the actual product in miniature. Strongest when the service demos well and quality is the differentiator. Examples: first ad rewritten free, one landing page section redesigned, first month/week free, one candidate sourced free, one article written free.

**Type C: One step of many** (templates, tools, calculators, checklists, swipe files, training)
Solve step 1 completely; steps 2–10 are the offer. Strongest when it can be built once and delivered infinitely. Examples: ROI/pricing calculator, plug-and-play template pack, swipe file of 50 proven examples, a checklist that exposes how much work the full job is, the first module of the paid course, original benchmark data the ICP can't get elsewhere.

### Step 3 — Match format to the problem

The format should be dictated by the problem, not by what's easy to make:
- ROI/cost questions → calculator or spreadsheet, not an ebook
- "Show, don't tell" problems (design, copy, video) → personal teardown video or before/after sample
- Repetitive process problems → checklist or template
- "They don't know where they stand" → grader, scorecard, benchmark report
- Skill/knowledge gaps → short video training (minutes, not hours)

**Time-to-value under 10 minutes.** The prospect must get the payoff fast; depth can exist behind it for those who want more. Generic long ebooks and value-free webinars are the worst performers — don't propose them.

### Step 4 — Score the candidates

Score each candidate 1–5 on five criteria and show the user the table:

| Criterion | 1 | 5 |
|---|---|---|
| **Value anchor** | Nobody would pay for this | Others visibly charge $100s+ for this exact thing |
| **ICP specificity** | Useful to anyone | Unmistakably built for this exact role/niche |
| **Time-to-value** | Hours to get the payoff | Payoff inside 10 minutes |
| **Scalable delivery** | Hand-made, hours per prospect | Automated or minutes per prospect (or cleanly tierable: hand-made for hot leads, automated for the rest) |
| **Bridge to offer** | Unrelated to the paid thing | Consuming it *is* discovering the need for the paid thing |

Recommend the top 1–2 (ideally one scalable Type C + one hand-made Type A/B for high-value leads), but show 5–8 candidates so the user chooses with eyes open. A hand-made magnet scoring 5/5/5/2/5 usually beats an automated one scoring 3/3/4/5/3 — flag the tradeoff rather than auto-picking scalability.

### Step 5 — Name it and finish it

- **Name = outcome + specificity**: "3 things on your website costing you bookings" beats "Free Website Audit." Include the ICP or a number where possible.
- **Overdeliver**: the gift should be *better than expected*, because it's the product demo. A disappointing free thing anchors a disappointing paid thing.
- **Built-in CTA**: the magnet itself ends with the natural next step ("want us to fix these three? that's what we do").

## Part 2: Generating the GRAB (attention triggers)

The grab answers: *why this person, why now?* Ranked from strongest to weakest — always propose the strongest tier the user's list can support:

**Tier 1 — They signaled the problem.** The prospect publicly posted, asked, or complained about the exact pain (in a community, on LinkedIn, in a review reply). The opener quotes it back. This is the warmest cold there is.

**Tier 2 — A why-now event.** Something changed that creates budget or urgency: new funding, new executive (fresh mandate), hiring wave in a relevant role, product launch, new location, tech-stack change, season/deadline (Q-planning, tax season, compliance date). Signal-based campaigns routinely pull several times the reply rate of generic sends. The event goes in the first line: "Saw you just brought on a new CMO — new leadership usually means the website's next."

**Tier 3 — An observable gap.** Something visibly wrong or missing that you found by looking: bad mobile site, no online booking, great reviews/weak web presence, unclaimed listing, slow load time. Proof of homework, and it doubles as qualification.

**Tier 4 — Genuine common ground.** Shared community, event, connection, or locality — real ones only.

**Match the trigger to the buyer type.** Where you hunt depends on who reads the message:
- **Executives** → company-level triggers: earnings calls, press releases, strategic initiatives, announced risks and expansions.
- **Managers/practitioners** → workflow triggers: job postings, public docs, the company's own website funnel, process friction visible from outside.
- **Warm-ish contacts** (engaged with content, attended an event) → the specific webinar, post, or thread they touched.

**Verify before you use.** A trigger goes into a message only if it's public, professional, dated, and you can point at where you found it — log the source URL in the tracker. Never use personal-life data (family, health, private activity): it doesn't read as "they did their homework," it reads as surveillance, and the reply it earns is an opt-out.

**No trigger found? Don't force it.** Forced personalization ("loved your website!") is worse than none. Fall back to a segment-level peer-benchmark grab ("most med spas we look at lose 10–20% of mobile bookings at the same form field") or leave the prospect out of the personalized track entirely.

**The multiplier: build the list FROM the grab.** Instead of building a list and then hunting for personalization, reverse it — make the trigger the list criterion ("Texas med spas whose sites lack online booking," "SaaS companies that hired a first SDR this quarter"). The opener then writes itself for every lead, and personalization scales for free. Recommend this whenever the ICP makes trigger-based filtering possible; feed the chosen triggers back into the list plan (see `list-building.md` segments).

**Pattern interrupts** (use sparingly, honestly): a thumbnail showing *their* website in your teardown video, a hand-typed-looking two-line email in a sea of formatted ones, physical mail for high-ticket lists, a 30-second personalized voice note DM. The interrupt earns the glance; the gift must still carry the message.

## Part 2.5: Value IN the message — the immediacy rule

The gift is not enough. Where the gift lives decides whether it works. There are three tiers:

1. **Value in the message itself** (the standard). The recipient gets something usable *just by reading* — before replying, before clicking, before trusting anything. The top finding from the audit stated outright ("your booking form loses mobile users at the phone-number field — that's usually a 10–20% fix"), the benchmark number for their segment, the one change with the biggest payoff. If they never respond, they still walked away better off. That's what makes a stranger stop deleting.
2. **Value one click away.** The full asset linked or attached, no email-gate, no "book a call to receive." Acceptable as the *container* for the full gift, never as a substitute for tier 1.
3. **Value on reply** ("want me to send it?"). The weakest tier. Use it only where platforms force it (links in cold Instagram/LinkedIn DMs get flagged) — and even then, the message itself must still carry one tier-1 insight so the reply-ask rides on demonstrated value, not promised value.

The failure mode to design out: a message that only *describes* value ("I made you a video that shows 3 fixes") delivers nothing until the prospect acts. Describe less, hand over more. Test for it explicitly: **cover the CTA and read the message — did the prospect receive anything? If not, it's a tease, not a gift. Rewrite.**

**The enormity bar.** "Useful" is not the target — *disproportionate* is. A first touch grabs attention when the value feels almost mispriced: "why is a stranger giving me this for free?" Before settling on any gift, reason it out explicitly, in writing, from the profile — not from what's convenient to produce:

1. Start from their world, not the user's product: what does this person lose sleep over, measure themselves by, or wish someone would just hand them? (It may sit next to the offer rather than on it.)
2. For each candidate, ask the two enormity tests: **would they forward it to a peer?** and **would they feel a twinge of guilt getting it free?** A checklist rarely passes; the finished analysis of *their* business, the data nobody will give them, the stage they've wanted — those pass.
3. Write the reasoning into the campaign doc (3–5 sentences per chosen gift): what this ICP finds enormous, why, and which research finding says so. If the reasoning traces back to "it was easy to make" instead of "the profile says they crave this," start over.

This is why deep ICP thinking is mandatory before writing hooks: to put real value *inside* two sentences, you must know what this exact person can use off the shelf. For each segment, list what a stranger could hand them that's instantly usable: the number they don't know (benchmark, cost-of-problem math), the mistake they can check in 60 seconds, the fix they can apply today, the resource that took you hours and them zero. Pick the ones that need no trust and no context — those go in the message; the deeper asset backs them up.

## Part 3: Assembling the hook — the four-beat architecture

Every first message follows the same architecture: **Verified Trigger → Useful Implication → Small Asset → Micro-Ask.** The grab supplies beats 1–2, the gift supplies beat 3, and the CTA rules supply beat 4.

1. **Verified Trigger** — the public, dated, work-relevant fact that answers "why you, why now." From Part 2, verified and sourced. *"Saw you're hiring two front-desk staff."*
2. **Useful Implication** — the beat most cold messages skip, and the one that proves competence. One concise, role-relevant inference naming the specific cost, risk, or trade-off the trigger creates — not "that must be hard," but the operational consequence: *"Usually that means no-shows got expensive enough to staff against — at your volume, every 1% of no-shows is roughly $900/month."* Non-obvious but defensible: a mechanism or number you can stand behind (from the ICP research, the user's own data, or a published benchmark — never invented). The implication is in-message value on its own: the prospect learns something even if they stop reading here.
3. **Small Asset** — the concrete gift, described so specifically they know exactly what they'd receive: *"I recorded a 5-minute breakdown of your booking flow with the two highest-impact fixes — here: [link]. Most consultants charge $400 for this; it's yours either way."* Delivered per the Part 2.5 tiers — linked outright where platforms allow, permission-gated only in cold DMs.
4. **Micro-Ask** — one low-commitment yes/no question: *"Worth a look?"* / *"Want the same map for your other location?"* **Never ask for a meeting in the first message.** The message sells the asset, the asset sells the conversation, the conversation sells the meeting — a 30-minute ask from a stranger skips two rungs and reads like every other pitch they delete.

Test hooks as controlled pairs: the same asset with different triggers across segments, then (once volume allows) different assets against each other. A gift that no trigger can save is a weak gift — back to the scorecard.

## Part 3.5: Score the hook before it ships

Score every candidate first message, one point per line. **8 of 10 or it doesn't enter the campaign** — rewrite the failing beats instead of shipping on hope:

1. The first sentence names a real, verifiable trigger (or an honest peer-benchmark on the no-trigger track).
2. The trigger fits the recipient's role — executives get company-level triggers, practitioners get workflow ones.
3. The implication is non-obvious but plausible, naming a specific cost, risk, or trade-off.
4. There's a concrete asset or insight — not a generic ROI promise.
5. The prospect gains something even if they never reply (cover-the-CTA test).
6. Every fact, number, and peer claim is verifiable, with known provenance.
7. Plain language, zero promotional buzzwords or AI-tells (ai-copywriter audit passed).
8. The personalization is work-relevant and wouldn't feel intrusive read aloud to the prospect's face.
9. The CTA is a small yes/no or permission question — no meeting request.
10. Readable in under 30 seconds.

**Instant rejections, regardless of score:** a compliment with no insight; a meeting request in message 1; "increase ROI / save time / drive growth" with no mechanism; any invented statistic, peer outcome, or manufactured urgency; more than one core value proposition; a question that makes the prospect explain their business before receiving value; a sales pitch wearing a free-audit costume.

## Part 4: The 360° hook palette — eight families

The four-beat architecture is the skeleton of every first message, but the hook itself can come from very different places. Scan all eight for every campaign. Most campaigns default to family 1 and never consider the others — which is exactly why the others work. 

**1. Trigger hooks (the classic).** Why-now events, observable gaps, problem signals — everything in Part 2. The workhorse: fastest to run, fully scalable, and the default when nothing below fits better.

**2. Market-signal hooks.** The grab is intelligence about *their market*, not about them: a benchmark they can rank themselves against, a competitor's visible move, a regulatory or platform change that hits their business, original data nobody else has. Wins when the ICP is data-starved (most SMB niches are — nobody benchmarks med spas for free). The asset and the grab collapse into one: "We measured average response times for 40 Austin clinics. You're not in the data, but the range will interest you: fastest converts 3x more. Full breakdown: [link]."

**3. Big-idea hooks.** The pitch IS the value: a contrarian, specific point of view worth reading even with zero interest in buying. "Most practices are solving no-shows backwards — deposits don't work below $200 tickets, and here's the math." Wins when the user has genuine expertise and the market runs on received wisdom. Riskiest family (an opinion invites disagreement) — which is also the engine: disagreement is a reply.

**4. Relationship hooks.** The grab is a genuine human touch with zero pitch in it: a substantive reaction to something they made ("your point about X changed how I explain it to clients"), a meaningful congratulation that shows you understood what the win took, help offered in a thread they posted. The sale is deferred by design — the first touch builds the relationship, the second or third introduces the work. Wins for small, high-value target lists where burning a lead is expensive. Cannot be faked at scale, and shouldn't be: one real comment beats fifty "loved your post!"s.

**5. Give-them-a-stage hooks (the inversion).** Instead of asking for their attention, offer them an audience — the first touch makes THEM the star:
- **Podcast or interview series**: start one about their industry and invite ICP members as guests. The cold message becomes "I run [show] on [their industry] — your take on [specific thing they said/did] deserves a bigger audience. 25 minutes, we promote it everywhere." Almost nobody declines a well-aimed stage, and an hour of conversation does what no sequence can.
- **Industry report with collected quotes**: "We're publishing the 2026 [niche] report — 30 operators are contributing. Want your perspective on [specific question] included, with credit and a link?" Every contributor becomes a warm relationship AND promotes the report when it ships.
- **Webinar or panel invitation**: co-host a session for the user's (or a partner's) audience — "your no-show system is the best I've seen; teach it with me."
- **Feature/quote them first, tell them after**: quote their post in the user's newsletter or article, then reach out: "quoted you in this — wanted you to see the context."
- **Rankings and awards**: publish "Top 25 [ICP] in [region]" with real criteria. The people on it share it; the people near it want on it next year.

Stage hooks flip the trust equation — a stranger *giving* status instead of requesting attention — and they compound: every episode, quote, and panel produces content, social proof, and warm intros for the next wave. The cost is real: they're slower, they require actually building the thing, and a stage with no audience is a weak gift (be honest about this — a brand-new podcast's value is the conversation and the association, not the reach; say so in the invite). Truthfulness rules still apply: never invent listenership, never fake an award, never run a report you won't publish.

**6. Ecosystem hooks.** Reach them through something they already trust: a genuinely useful contribution in the community where they live (answer the hard question, publish the resource the group keeps asking for), a shared partner or vendor who'd make a warm-ish intro, sponsoring the small thing they love. Slowest family, strongest trust transfer.

**7. FOMO and tension hooks.** The grab is what they're missing or about to lose — the strongest attention mechanism there is, and the most dangerous, because faked tension is the fastest way to the spam folder. Every claim in this family must be verifiable, and scarcity must always come with its honest reason (scarcity with a stated real cause is rated far more valuable than scarcity that looks accidental):
- **Competitor motion**: verifiable moves by peers they compete with. "Three clinics within two miles of you added online booking last quarter — the teardown shows what that's doing to same-day appointments." The prospect's real fear isn't missing a vendor; it's falling behind the practice down the street.
- **Peer-benchmark gap**: their position in real data. "You rank 14th of 20 Austin practices on response time — the full table is attached." Status threat plus curiosity gap in one line; requires actually having the data (which the market-signal family produces).
- **Left out of the room**: the report/ranking/panel their peers are already in. "27 operators are quoted in the 2026 report — your perspective isn't in it yet. Want it in?" This is the stage play wearing its FOMO face, and it's the most natural honest FOMO there is.
- **Closing window**: real external deadlines — a regulation taking effect, a platform change ("Google's local-ranking update lands in March"), a seasonal demand wave. The date does the urgency work, and the date is checkable.
- **Honest scarcity**: true capacity limits, stated with the reason. "I do three of these audits a week by hand — Thursday's slot is open if you want it." Never invent limits, never fake countdowns; if the constraint isn't real, this subtype is off the table.

FOMO earns the glance; it never replaces the gift. A tension hook with no enormous value behind it is just anxiety marketing — pair every FOMO grab with a delivered asset, and keep the exit free ("either way, the benchmark table is yours").

**8. Identity and tribe hooks.** The grab is *who they are*, not what they need. People process in-group signals faster, trust them more, and remember them better — and the tribal boundary can be surprisingly small (independent vs. chain, bootstrapped vs. funded, trade vs. desk):
- **Genuine shared membership**: "fellow bootstrapper," "I ran a two-chair practice for six years" — real membership only; a faked tribe claim is the most unforgivable lie in outreach because it impersonates belonging.
- **Insider language**: using the term only members use (the word their subreddit uses for the problem, the metric only operators track) signals in-group without claiming it. This comes straight from the Part 0 research — their words ARE the membership card.
- **The shared enemy**: nothing binds a tribe faster than a common adversary — independent dentists vs. the DSO roll-ups, restaurants vs. delivery-app fees, local shops vs. the algorithm change. "The delivery apps took 30% last year. Here's the playbook 12 restaurants used to move a third of orders direct" is an identity hook, a market signal, and a gift in two sentences. Punch up at systems and giants, never at people, and never invent a villain the ICP doesn't already resent — the research tells you who the real enemy is.
- **Identity labeling**: address them as the operator they're proud to be ("you clearly run the kind of practice that answers its own reviews") — people act consistently with labels they accept, and the label doubles as evidence of homework.

**How to choose — and when to recommend the bigger plays.** Families 1–3 are message-speed: run them this week. Families 4–6 are build-speed: they take weeks and produce an asset. The skill's job is to ALWAYS put at least two build-speed plays on the table when the economics support them — high LTV, narrow ICP (a few hundred names, not fifty thousand), relationship-driven buying, or a user with content ambitions — because users don't ask for what they haven't imagined. Present each recommended play with: why it fits THIS ICP (from the profile), the first-touch script, the effort honestly stated, and the payoff horizon. A campaign can and usually should run both tracks at once: trigger hooks for volume today, one stage play compounding in the background.

---

## Part 2b: references/icp-deep-research.md

# ICP Deep Research: Become the Industry Insider Before You Write a Word

The difference between a good reach-out and a great one is not the copy — it's that the great one could only have been written by someone who understands the prospect's business from the inside. Amateurs write about the pain ("no-shows are frustrating!"); insiders write about the *mechanics* of the pain ("Tuesday-afternoon no-shows are the expensive ones, because that's when you staff for injectables"). This protocol produces that insider knowledge deliberately.

**When to run which depth:** the quick scan in Part 0 of `lead-magnet-generator.md` (10–15 minutes) is the floor — acceptable for a fast hook-only request. A full campaign build runs THIS protocol: 30–45 minutes of research across two tracks, producing the Industry Expertise Brief that goes into the campaign document. The extra half hour is the highest-ROI time in the entire campaign: every implication, number, and vocabulary choice downstream draws from it.

## Track A: The industry brief — learn the business like an operator

### A1. Unit economics — how this ICP actually makes money

Find or derive: what they sell, at what margin, through what capacity constraint. Revenue per unit of capacity (chair-hour, truck-day, seat, billable hour), the high-margin vs. low-margin mix, customer LTV *for them*, acquisition cost norms, the fixed costs that make volume swings hurt.

Sources: industry benchmark reports (trade associations publish them), franchise disclosure documents (public, and a goldmine — real P&Ls for the exact business), "how much does a X make" operator threads, earnings calls of the public roll-ups in the space, pricing pages across 10 competitors.

**Why this matters:** every implication beat needs a defensible number, and the credible numbers are *derived from their economics*, not asserted. "Every 1% of no-shows ≈ $900/month" is only writable after you know appointments/day × average ticket × margin. Show the arithmetic in the campaign doc so the user can defend it live.

### A2. The pain dossier — mechanics, not sympathy

For each of the top 2–3 pains (from the quick scan), build the full chain:

1. **Root cause**: what actually produces the pain operationally. Not "their website is old" but "solo owners buy a site once at opening, then nobody owns it; the booking plugin breaks on updates and nobody notices for months."
2. **Cost, derived**: the formula in their economics (from A1), with the number computed. This is the implication beat's ammunition.
3. **What they've already tried**: the DIY fix, the cheap tool, the nephew who knows computers, the agency that burned them. Forum threads and review sites tell you exactly which attempts are common.
4. **Why those attempts failed**: the mechanism of failure — this is where insider credibility lives. A reach-out that names the failed fix and why it failed ("the deposit plugin didn't die because deposits don't work — it died because it asked for the card before showing available times") cannot be written by an outsider.
5. **The insider insight**: the one non-obvious thing a veteran knows about this pain that the prospect may not have articulated. This seeds big-idea hooks and makes implications sting.

### A3. Vocabulary and belief system

- **Terms of art**: what they call things (patients vs. clients vs. guests; jobs vs. projects vs. tickets). Using the wrong one marks you as an outsider in three words.
- **Metrics they track**: the numbers on their dashboard (production per hour, food cost %, utilization). Frame value in THEIR metric, not yours.
- **Received wisdom and live debates**: what the trade currently believes, what it argues about (in their forums and at their conferences). Big-idea hooks come from taking a defensible side.
- **Authorities they trust**: the podcasts, consultants, and operator-celebrities of the niche. Useful for ecosystem plays and for knowing whose language they already speak.

### A4. Calendar and cycles

Seasonality of demand, buying windows (when budgets unlock), regulatory and platform dates, conference season. This feeds the closing-window FOMO family with real dates and tells the user WHEN to run which segment.

## Track B: The person — deepen the psychology profile

Beyond the Part 0 profile (motivation, cares-about, words, skepticism, reading moment), add:

- **A day in their life, hour by hour**: when they're at the desk vs. on the floor, when email gets triaged, who guards the phone. This picks send times and channel per segment for real reasons.
- **The decision unit**: who else touches a $X purchase — spouse/partner in owner-operator businesses, office manager as gatekeeper, regional manager in small chains. Message 1 may need to arm your reader to convince someone else; give them the forwardable line.
- **Identity and status markers**: what they brag about, what embarrasses them in front of peers, what "being a good operator" means in this trade. Identity hooks and stage plays aim here.

## The Industry Expertise Brief (output — goes in the campaign doc)

1. **Unit economics summary** with the derived numbers used anywhere in the campaign (arithmetic shown).
2. **Pain dossier** per pain: cause → cost formula + number → tried-and-failed list → why they failed → insider insight.
3. **Vocabulary card**: 5+ terms to use, the terms that expose outsiders, the metrics to frame value in.
4. **Calendar**: the 2–3 real dates/windows the campaign can honestly use.
5. **Expertise proofs**: 3–5 statements only an insider would make — these become implication beats and big-idea hooks nearly verbatim.
6. **Value map**: for the promoted product, the chain from feature → operational change → economic outcome in THEIR unit economics → what it means for them personally ("fewer Saturday call-backs" is worth more than "18% efficiency"). Every hook's gift and implication should sit on one link of this chain.

## The depth gate — "would a veteran nod?"

Before any reach-out is drafted, the brief must contain at least: **three derived economic numbers** specific to this ICP (arithmetic shown), **three insider insights** that go beyond what the prospect would say themselves, **five vocabulary terms** actually in use, and **each top pain's tried-and-failed list**. Read the expertise proofs aloud: if a 20-year veteran of the trade would shrug ("everyone knows that") or wince ("that's wrong"), keep researching. Reach-outs written before this gate passes will be generic no matter how good the copy is — that's the whole reason this file exists.

**Without web access:** derive what you can from knowledge, mark every inferred number and insight clearly, and ask the user — who often IS the industry expert — to confirm or correct the brief before copy gets written. Their corrections are better research than any forum thread; fold them in verbatim.

---

## Part 3: references/list-building.md

# Building the Target List

The list is the campaign's foundation: great copy sent to the wrong people converts at zero. There are three ways to build a list. Most campaigns should combine two of them — one for volume, one for quality.

## Choosing the method mix

| Situation | Lean toward |
|---|---|
| High-ticket offer (>$5k), narrow niche | Manual "elbow grease" primary, software secondary |
| Broad audience, low-to-mid ticket, need volume | Software scraping primary |
| Hard-to-find audience (no clean titles/firmographics) | List brokers + manual communities |
| Zero budget | Manual only, until revenue funds tools |
| Audience lives in specific communities (FB groups, Slack, Discord, forums, associations) | Manual — these leads are "problem aware" and less fatigued |

## Method A: Software scraping (the automated approach)

Lead databases and scrapers (e.g. Apollo, ZoomInfo, Clay, LinkedIn Sales Navigator + an email finder) are the most scalable option. But data quality varies wildly by platform and by niche, so never commit before testing.

**Testing protocol — run this before spending real money or sending volume:**
1. Pull a representative sample (a few hundred leads) from each candidate platform using the ICP filters.
2. Verify contact accuracy: run emails through a verifier (bounce rate on the sample tells you everything); spot-check 20 profiles by hand against LinkedIn.
3. Check ICP match: do 20 random leads actually fit the target criteria, or did the filters leak?
4. Send a small test batch and measure reply rate, not just deliverability.
5. Scale up only on the platform(s) that passed. Re-test quarterly — databases decay.

**Red flags:** sample bounce rate >5–8%, obviously stale job titles, the same leads appearing across every "different" filter combination.

## Method B: List brokers (the curated approach)

Brokers compile and sell targeted lists, and good ones offer more nuanced targeting than software filters (e.g. "practices that bought X equipment in the last 2 years"). Quality is entirely broker-dependent.

**Working with brokers:**
1. Contact several brokers with a written spec of the audience criteria (titles, industry, size, geography, any behavioral signals).
2. Request a sample list first — a broker who won't provide a sample is a broker to skip.
3. Test the sample exactly like a software sample (verify, spot-check, small send).
4. Buy larger lists only from brokers whose samples performed.
5. When a good broker's list is exhausted, ask them for referrals to other reputable brokers — good brokers know each other.

## Method C: "Elbow grease" (the manual approach)

Manually identifying prospects inside communities and interest groups. Slowest per lead, but the leads are higher quality and far less fatigued — they aren't in every scraper database being hammered by 40 other senders. Interest-group members are also already **problem aware**: someone in a "restaurant owners" group asking about no-shows is telling you their pain in public.

**Process:**
1. List the communities where the audience congregates: Facebook/LinkedIn groups, Slack/Discord servers, subreddits, forums, association directories, event attendee lists, podcast guest lists, newsletter comment sections.
2. Join and observe. Note who posts about the problem the offer solves — those are the hottest leads on the list.
3. Qualify against the ICP criteria before adding anyone.
4. Find contact info: group directories, bio links, company websites, email finders.
5. Reach out off-platform when possible (email > DM inside the group) — it avoids violating group rules and doesn't burn the community as a source.
6. Log everything in a simple tracker (name, source, qualification notes, personalization hook observed, contact info, status). The "personalization hook observed" column is gold — it writes the first line of the message for you.

**Etiquette that protects the asset:** never mass-DM a community's member list, never pitch inside the group itself unless invited. A burned community is gone forever; a respected presence in it generates leads for years.

## List hygiene (all methods)

- Verify every email before sending (protects the sending domain's reputation).
- Dedupe across sources — the same lead contacted by two "different" campaigns reads as spam.
- Suppress existing customers, open opportunities, and anyone who opted out.
- Segment the list by the personalization angle available (e.g. "posted about hiring" vs. "just raised funding") — segments determine which first-touch variant each lead gets.

---

## Part 4: references/hooks-and-copy.md

# Hooks and Copy

> Prerequisite: the gift (lead magnet) and grab (attention trigger) should already be chosen — that's `references/lead-magnet-generator.md`. This file is about wrapping them in words. If the campaign doesn't yet have a strong free-value offer, go run the generator first; copy can't rescue a weak gift.

The recipient is a stranger deciding in 2–3 seconds whether to keep reading. Everything here serves that reality: personalization buys the first seconds, immediate value buys the next ten, and simplicity keeps friction from killing the reply.

## The three copy laws

1. **Act like you know them (because you did the homework).** One researched detail — a post they wrote, a review of their business, a hire they just made — separates the message from the 40 spam pitches around it. Personalization is not `Hi {{first_name}}`; it's proof a human looked.
2. **Give big, fast value — IN the message, not after it.** Strangers don't trust promises, and "I made you something, want it?" is still a promise. The first touch must hand over something usable the moment it's read: the top finding stated in plain text, the number they didn't know, the fix they can apply today — with the full asset linked as the deepening, not the gate. The test: cover the CTA and read the message. If the prospect received nothing, it's a tease; rewrite it. (The three delivery tiers and the ICP value inventory behind this are in `lead-magnet-generator.md`, Part 2.5.) Offering free what others charge for sets a value anchor and multiplies response rates — but only the delivered kind anchors anything.
3. **Third-grade reading level.** Short words. Short sentences. One idea per sentence. Complex language creates friction, and friction loses readers who were only half-committed anyway. Test: would a smart 8-year-old follow every sentence?

## Hook formulas

Generate hooks across several types so the user can test. A hook is the subject line (email), the first sentence (DM/SMS), or the first 10 seconds (phone).

**1. Personalized observation** — proof of homework, no pitch yet.
- Subject: `your post about no-shows`
- Opener: "Saw your reply in the Restaurant Owners group about Tuesday no-shows — the 30% number caught my eye."

**2. Specific result + proof** — a number and a peer, not an adjective.
- Subject: `23 booked calls for [peer company]`
- Opener: "We got Fairview Dental 23 new-patient calls last month. I think [Company] could do similar numbers."

**3. Problem callout** — name the pain in their words.
- Subject: `the 5pm cancellations`
- Opener: "Most med-spa owners tell me the worst part isn't slow days — it's the 5pm same-day cancellations."

**4. Give-first** — the value is already attached.
- Subject: `made you something` / `found 3 things on your site`
- Opener: "I recorded a 4-minute teardown of [Company]'s booking flow — three fixes that usually lift conversions 10–20%. Link below, no strings."

**5. Honest cold open** — disarming candor, works when everything else in the message is strong.
- Opener: "You don't know me — I'll be quick. I help [role]s fix [problem], and I'd like to prove it for free."

**6. Referral-adjacent (only if true)** — shared community or genuine common ground.
- Opener: "We're both in [Community] — your comment on [topic] is why I'm reaching out."

**Subject line rules:** 1–5 words, lowercase often outperforms Title Case, zero clickbait. Never fake "Re:", "Fwd:", or "following up" on a first touch — it wins the open and loses the trust, which is the whole game.

## Channel templates

Every template needs: `{{personalized_line}}` (with instructions for the 30–60 seconds of research that fills it), the value delivery, and one low-friction CTA.

### Cold email (half a page, hard max)

```
Subject: [hook, 1–5 words]

{{first_name}} — [TRIGGER: {{personalized_line}} — the verified, dated
fact about them; source logged in the tracker]

[IMPLICATION, delivered in plain text: the role-relevant cost or risk
the trigger creates, with a defensible number or mechanism — usable
even if they stop reading here. e.g. "Sites like yours lose most mobile
bookings at the phone-number field; removing it is usually worth
10–20%."]

[ASSET, one click away: "I recorded the full 4-minute teardown with two
more fixes — here: {{link}}. No strings; agencies charge $300+ for
this."]

[MICRO-ASK — one yes/no question, never a meeting:] Worth a look?

[Name]
[One-line signature: who you are + one credibility marker]
```

Rules: no images or attachments on first touch (deliverability), one link max, plain text look, mobile-first (they'll read it on a phone in 4 seconds).

### Social DM (2–3 sentences, hard max)

```
{{personalized_line}}. {{one_usable_insight — e.g. "your booking link is
broken on mobile, that's usually 10-20% of bookings"}}. I made a full
{{lead_magnet}} on it — free, most agencies charge for this. Want it?
```

The first DM's only job is earning a reply, not selling — but the reply-ask must ride on value already delivered, not promised. Cold DMs are the one place "want it?" beats a link (unsolicited links get flagged on most platforms), which is exactly why the insight itself has to be in the message text.

### Cold call script (1–2 pages, hard max)

Structure, not a word-for-word essay:

```
OPEN (10 seconds — earn 30 more):
"Hi {{first_name}}, it's [Name] from [Company]. I'll be honest — this is a
cold call. Want to hang up, or give me 30 seconds?"
[The honesty pattern gets a chuckle and permission ~70% of the time.
Alternative open: lead with the personalized observation.]

REASON + VALUE (30 seconds):
"I called you specifically because {{personalized_reason}}. We do [specific
result] for [their type of business] — [proof point]. I'd like to give you
[lead magnet] free, no catch."

QUALIFY (2–3 questions max):
"Quick question — [pain question, e.g. 'how are you handling X today?']"
[LISTEN. This is where the call is won.]

CTA:
"Easiest next step: [15-min slot / I send the thing / I do the audit].
Which works?"

OBJECTIONS (one page: top 5 objections, 2-sentence responses each):
"Not interested" → "Totally fair — can I send the [lead magnet] anyway?
If it's useful, you know where to find me."
"No time" → "Get it. Would [async version] be easier?"
"Send me an email" → "Will do. What should I make sure is in it so it's
worth opening?"
"How much is it?" → "The thing I'm offering today is free. If you ever want
more, [price range] — but judge the free one first."
"Already have a provider" → "Great — keep them. The [lead magnet] is a free
second opinion. Worst case it confirms they're doing a good job."
```

### SMS (1–2 sentences; only after another touchpoint or with consent — TCPA)

```
Hi {{first_name}}, [Name] here — sent the {{lead_magnet}} to your email
yesterday. Want the 2-minute version by text?
```

## Banned phrases

These read as either spam or AI-generated filler. Rewrite on sight:

- "I hope this email finds you well" / "I hope you're doing great"
- "I wanted to reach out" / "I'm reaching out because" (just say the thing)
- "Quick question" as a subject line (fatigued beyond recovery)
- "I'd love to pick your brain" / "grab 15 minutes of your time"
- "We're a leading provider of…" / any sentence about your company before value
- "Let's take your business to the next level" / "unlock your potential"
- "In today's fast-paced world" / "In the ever-evolving landscape of…"
- "Delve", "leverage", "synergy", "streamline", "elevate", "game-changer"
- Em-dash chains, triple parallel constructions ("faster, smarter, better"), and exclamation marks

**The read-aloud test:** read the draft out loud. If it sounds like a LinkedIn post or a press release instead of a person talking, cut and simplify until it doesn't.

## Personalization at scale

Full custom research doesn't scale past ~50/day; zero personalization doesn't convert. The middle path:
- **Segment-level personalization:** one researched insight per *segment* ("dentists in Austin all deal with X"), reused across the segment. 80% of the lift at 5% of the cost.
- **Merge-field + 30-second scan:** template stays fixed; a VA or the user spends 30–60 seconds per lead filling `{{personalized_line}}` from their LinkedIn/site/reviews.
- **Trigger-based lists:** build the list *from* the personalization (just hired an SDR, just opened a location, just posted about the problem) so the opening line writes itself.

---

## Part 5: references/follow-up-cadence.md

# Follow-Up Cadence

Most conversions happen in follow-up, not the first touch. A first message with no sequence behind it leaves the majority of replies unclaimed — people are busy, not uninterested. The rule: **follow up more times than feels comfortable**, across **multiple channels**, with each touch adding something instead of just "bumping."

**The front-load rule:** the sequence's value is concentrated at the start, on purpose. Message 1 delivers a real insight in the message text plus the gift where links are allowed; the next message delivers the full gift unprompted, no matter what. By the end of the second message the prospect has received what the user's competitors charge for — that imbalance is the engine of the whole sequence, and everything after it is a value-bearing reminder that it happened.

## Default cadence: 10 touches over 21 days (multi-channel)

Adapt channels to what the user can actually use; keep the rhythm — dense in week 1 while attention is warm, spaced out after.

| Day | Channel | Touch | Angle |
|----|---------|-------|-------|
| 1  | Email | #1 | The hook: insight delivered in-text + full gift linked |
| 2  | LinkedIn | #2 | Connection request, no note or a 1-liner referencing the email |
| 3  | Email | #3 | The full gift delivered unprompted — the asset itself, not a nudge ("made it anyway — here it is") |
| 5  | Phone | #4 | Call. If no answer: no voicemail yet |
| 7  | Email | #5 | Short reply *to your own thread* — new angle on the pain, 2 sentences |
| 9  | Phone | #6 | Call. If no answer: 20-second voicemail referencing the emails |
| 11 | DM | #7 | If connected: 2-sentence check-in with a new proof point |
| 14 | Email | #8 | Different value: second lead magnet, teardown, or relevant insight |
| 18 | Phone/SMS | #9 | Final call attempt; SMS only if consent/relationship basis exists |
| 21 | Email | #10 | The breakup email |

Reply at any point exits the sequence into a live conversation. An unsubscribe/`no` exits everything, permanently, across all channels.

## Copy angles per follow-up

Each touch needs a *reason to exist*. Rotate these angles — never send "just bumping this to the top of your inbox":

1. **Deliver the gift without permission.** "Didn't hear back, so I just made it anyway — here's the 4-minute teardown." Strongest single follow-up in most sequences.
2. **New proof.** A different case study, number, or named result than touch #1.
3. **New pain angle.** The same problem from a different direction ("it's not the no-shows, it's the staff time spent rescheduling them").
4. **Something genuinely useful and unrelated to selling.** An article, benchmark, or intro relevant to *them*.
5. **Short and human.** Two sentences, zero formatting: "Any thoughts on this? Happy to close the file if the timing's wrong."
6. **The breakup.** "I'll stop here — sounds like the timing isn't right. If [problem] climbs the list, the [lead magnet] offer stands. Door's open." Breakup emails routinely pull the highest reply rate in the sequence; write it warm, not passive-aggressive.

## Example follow-up copy (email #5, day 7 — reply in-thread)

```
{{first_name}} — one more thought.

Most {{their_role}}s I talk to think [problem] costs them a few hundred a
month. When we actually measure it, it's usually 5–10x that.

The free {{lead_magnet}} shows the real number in about 10 minutes. Want it?
```

## Cadence variants

- **Email-only** (no phone/social access): 6 emails over 21 days — days 1, 3, 7, 12, 17, 21. Every touch a different angle; #2 delivers the asset outright.
- **High-ticket / small list (<200 leads):** slow down and deepen — 12–15 touches over 60 days, heavier phone and personalized video, hand-written-grade personalization on every touch. With a small list, burning leads is the real risk, not under-touching.
- **After a "not now":** park in a nurture track — one genuinely useful, no-ask email per month. "Not now" means *not now*; the list of not-nows becomes next quarter's warmest segment.

## Mechanics

- **Threading:** follow-up emails 2–3 reply to the original thread (context travels with the message). Start a fresh thread with a fresh subject around touch #8 — by then the old thread is stale.
- **Send windows:** Tue–Thu mornings perform best on email; calls connect best 8–9am and 4–6pm local. Weekends work for owner-operators, not corporates.
- **Automation boundary:** automate email sends and task reminders; keep calls, voicemails, and DMs human. A sequence tool that auto-stops on reply is non-negotiable — few things kill a deal faster than an automated bump landing after a human reply.
- **Bookkeeping:** track which touch number generated each reply. That histogram tells you whether to lengthen or shorten the cadence — if touches 8–10 still pull replies, extend; if everything lands by touch 4, reinvest the effort in more leads.

---

## Part 6: references/scaling-and-metrics.md

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

---

## Part 6.5: references/free-value-psychology.md

# The Psychology of Free Value: Why Gifts Grab Attention

The playbook's engine — enormous free value in the first touch — works because it sits on well-studied psychological mechanisms. Knowing the mechanisms lets you design gifts and messages that use them deliberately instead of by luck. Apply these when building the gift (Part 1), the message (Part 3), and the copy. One or two per message: stacking every technique into one email reads as manipulation, and readers smell it.

## 1. Reciprocity — and its three amplifiers

The foundation (Regan's classic experiment: an unrequested soda doubled later compliance; Cialdini's first principle). People are wired to balance the scales with whoever gives first. But the famous waiter–mint studies show *how* you give matters as much as *what*:

- **Unexpected beats expected.** A second mint delivered as a surprise raised tips far more than two mints given routinely. Application: the gift the prospect never asked for (the teardown already recorded, the analysis already run) out-pulls the gated download they've seen everywhere.
- **Personalized beats generic.** "For you specifically" — the delivery framing alone lifted tips ~23%. Application: the copy must make clear this was made for THEM, not a blast: "I ran the numbers for YOUR three locations," never "we made a guide for practices like yours."
- **Given-first beats promised.** Reciprocity fires on receipt, not on offer. This is the psychological basis of the immediacy rule (Part 2.5): deliver in the message, don't tease.

**Guardrail:** reciprocity is a trust mechanic, not a lever. The gift must be genuinely valuable with no hidden hook — a "free audit" that's secretly a pitch deck burns the mechanism and the sender's name with it.

## 2. The zero-price effect — free is a category, not a price

Ariely's chocolate experiments: cutting a price from 1¢ to 0¢ nearly quadrupled demand, far beyond what any 1¢ discount should do. "Free" switches people out of cost-benefit math entirely — benefits get magnified, downsides ignored.

**Application:** say the word free plainly, and pair it with a **value anchor** so free reads as "mispriced," not "worthless": "agencies charge $400 for this exact audit — yours free, no strings." The anchor is what turns the zero-price effect from suspicious to irresistible.

## 3. The labor illusion — show the work

Buell & Norton: people value the identical output more when they can see the effort behind it — and perceived effort itself triggers reciprocity. A search that visibly "works" for 30 seconds is preferred to an instant one with the same results.

**Application:** one sentence of visible work in message 1: "I went through your booking flow on mobile, timed all 11 steps, and compared it against 12 other Austin clinics." A personal video walking through THEIR site is the maximum-strength version — the effort is undeniable because they can watch it. This is also why hand-made gifts punch above their scalability score.

## 4. The information gap — engineered curiosity that closes

Loewenstein: curiosity ignites when attention lands on a specific gap between what someone knows and wants to know — strongest when the gap is **specific, salient, personally meaningful, and closable**. "3 things on your website are costing you bookings" opens a gap that is numbered (specific), about them (meaningful), and answered one click away (closable).

**Application:** open gaps about THEIR business, never generic ones; always close the gap you open — inside the message or one click deep. A gap that never closes is clickbait, and it spends trust you don't have yet.

## 5. Endowment framing — make it already theirs

People value what they own more than what they might get, and something made *about them* is psychologically already theirs. "Your report is ready" lands differently than "want a report?" — declining now means losing *their* report, which loss aversion makes uncomfortable.

**Application:** name the asset possessively ("your teardown," "your benchmark position: 14th of 20") and build it before asking anything. Loss-framed implications ("this is costing you ~$900/month") grab harder than gain framing of the same number — use the loss frame in the implication beat, and keep the number defensible.

## 6. "But you are free" — affirm the exit

A meta-analysis across dozens of studies (Carpenter) found that explicitly affirming someone's freedom to refuse measurably increases compliance (medium effect; strongest when the response is immediate — treat it as a useful edge, not a magic trick). For cold outreach it does double duty: it also disarms the skepticism filter, because spammers never say "feel free to ignore this."

**Application:** one honest exit line near the micro-ask: "No strings — it's yours either way," "Totally fine to ignore this," "Keep it even if we never talk." Never fake urgency in the same message; urgency and freedom-affirmation cancel each other.

## 7. The contribution ask — the Franklin effect and co-creation

Asking someone for a *small, flattering* contribution makes them invest in you — people like those they've helped (the Franklin effect), and they overvalue what they helped build (co-creation). This is the psychology behind the give-them-a-stage plays (Part 4): "want your quote in the report?" is simultaneously a gift (status) and an investment (theirs now — they'll share it when it ships).

**Application:** when a stage play is running, the micro-ask can be a contribution ask. Keep it small and flattering; asking them to do real work before receiving value is a rejection-rule violation.

## 8. Scarcity and FOMO — the fear of the closing door

Worchel's cookie-jar experiment: identical cookies were rated more desirable from the nearly-empty jar — and *most* desirable when the scarcity had a stated social reason ("demand reduced the supply") rather than looking accidental. Cialdini codified it: restricted availability inflates perceived value, and fear of missing out overrides slow rational evaluation. Social proof compounds it — scarcity plus "your peers are already in" is the strongest tension combination there is.

**Application (Part 4, family 7):** competitor motion, peer-benchmark gaps, left-out-of-the-report, closing windows, honest capacity limits — always with the real reason stated ("I do three of these a week by hand"), because scarcity-with-a-reason is both more effective and true. **The hard line:** artificial scarcity is detectable and, once detected, destroys everything the gift built. No fake countdowns, no invented slots, no "spots filling fast" that aren't. If the constraint isn't real, use a different family.

## 9. Self-reference — the cocktail-party effect in an inbox

The brain grants pre-attentive priority to self-relevant signals: roughly a third of people hear their own name even in a conversation they're actively ignoring, and self-referenced information is remembered better than anything else. An inbox is a noisy party; their name, their company's name, their own words are the signals that cut through it.

**Application:** the prospect's company name or their own quoted phrase in the subject line and first sentence — "found 3 things on {{clinic_name}}'s site," "your line about 'chart-chasing' stuck with me." This is why the Part 0 research captures their exact words: self-reference isn't `Hi {{first_name}}` (everyone does that; it's wallpaper now) — it's their *world* reflected back accurately.

## 10. The "because" effect — every ask carries a reason

Langer's copy-machine study: adding a reason to a small request raised compliance from 60% to ~94% — and for small asks, even a circular reason worked, because "because" itself signals justification. For larger asks, only real reasons moved people.

**Application:** the micro-ask is a small ask, so it always travels with its reason — and the best reason is the trigger itself: "Worth a look? — asking because you're clearly redoing the funnel this quarter." Never use an empty reason: the real trigger is sitting right there in the message, so the honest "because" is also the strongest one.

## 11. Unity and the shared enemy — Cialdini's seventh principle

Unity goes beyond liking or similarity: it's shared *identity* — "one of us." Tajfel's minimal-group experiments showed how little it takes to create in-group loyalty, and nothing activates a tribe faster than its common adversary. In-group messages get processed faster, trusted more, and defended.

**Application (Part 4, family 8):** genuine shared membership, insider language from the research, the shared enemy the ICP already resents (the roll-ups, the platform fees, the algorithm), identity labels they'd be proud to accept. **The line:** membership claims must be true, and enemies must be systems, not people. Faking belonging is impersonation, and it reads that way the moment they probe.

## 12. Open loops — the Zeigarnik effect across the sequence

Unfinished things occupy the mind: interrupted tasks are remembered roughly twice as well as completed ones. A sequence is a chain of open-and-close: each touch closes the last loop and honestly opens the next.

**Application:** use loops across the *sequence*, not to gate the first gift (the immediacy rule wins every conflict): message 1 delivers the finding AND mentions what the full teardown covers; message 2 delivers the teardown and notes the benchmark table exists; message 3 delivers the table. Every loop opened must close in the next touch — an open loop that never closes is a broken promise with a psychology citation.

## Mapping techniques to the four beats

| Beat | Techniques that live there |
|---|---|
| Trigger | Personalization amplifier (this is about YOU), information gap (opened) |
| Implication | Loss framing, labor illusion (the analysis shows the work), gap partially closed |
| Asset | Reciprocity (delivered, not promised), zero-price + value anchor, endowment naming, labor illusion |
| Micro-ask | But-you-are-free line, contribution ask (stage plays), zero pressure |
| Any beat, honest only | Scarcity with its reason stated, peer social proof, FOMO (family 7) |
| Subject + first line | Self-reference (their name, their company, their words) |
| Micro-ask, again | The "because" reason (the trigger doubles as the reason) |
| Across the sequence | Open loops that always close in the next touch |
| Whole-message frame | Unity / shared enemy / identity labels (family 8, true only) |

## The line not to cross

Every mechanism above works because it rides on something true: real effort, real value, real freedom to walk away. Used to dress up an empty message, the same mechanisms backfire into the one outcome cold outreach can't recover from — being recognized as a manipulation. The White et al. finding on over-personalization applies to all of it: value must feel proportionate and professional, or the reaction is reactance, not reciprocity. When in doubt, give more and engineer less.

## Sources

- Regan (1971), reciprocity compliance experiment; Cialdini, *Influence* — [overview](https://www.cognitigence.com/blog/principle-of-reciprocity-norm)
- Strohmetz et al., the waiter–mint studies (unexpected + personalized delivery) — [summary](https://www.influenceatwork.com/7-principles-of-persuasion/)
- Shampanier, Mazar & Ariely (2007), *Zero as a Special Price* — [paper](https://web.mit.edu/ariely/www/MIT/Papers/zero.pdf)
- Buell & Norton (2011), *The Labor Illusion* — [paper](https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf)
- Loewenstein (1994), information-gap theory of curiosity — [overview](https://psychologyfanatic.com/information-gap-theory/); Golman & Loewenstein — [paper](https://www.cmu.edu/dietrich/sds/docs/golman/golman_loewenstein_curiosity.pdf)
- Carpenter (2013), BYAF meta-analysis — [abstract](https://www.tandfonline.com/doi/full/10.1080/10510974.2012.727941); later re-examination with reproducibility caveats — [meta-psychology](https://open.lnu.se/index.php/metapsychology/article/view/2640/3402)
- White et al. (2008), reactance to over-personalization — cited in the agent operating playbook's guardrails
- Worchel, Lee & Adewole (1975), the cookie-jar scarcity experiment; Cialdini's scarcity principle — [overview](https://www.explorepsychology.com/scarcity-principle/), [scarcity psychology](https://www.coglode.com/nuggets/scarcity)
- Langer, Blank & Chanowitz (1978), the copy-machine "because" study — [summary](https://jamesclear.com/copy-machine-study)
- The cocktail-party effect and own-name attention — [overview](https://en.wikipedia.org/wiki/Cocktail_party_effect); self-reference effect in marketing — [overview](https://www.choicehacking.com/2020/08/14/self-reference-effect/)
- Cialdini's seventh principle, Unity — [overview](https://cxl.com/blog/cialdini-unity/); Tajfel's minimal-group experiments (in-group formation)
- Zeigarnik effect (unfinished-task memory) — [overview](https://en.wikipedia.org/wiki/Zeigarnik_effect)

---

## Part 7: assets/playbook-template.md (output skeleton)

# Cold Outreach Campaign: [Offer] → [Audience]

> Generated [date]. Assumptions made (correct these if wrong): [list any assumed answers, or "none — all from intake"].

## 1. Campaign summary
- **Product promoted:** [the ONE product/service this campaign sells — named explicitly, since the company may have others]
- **Offer:** [price point, core result with numbers]
- **ICP:** [role, industry, size, geography]
- **Core pain:** [the problem, in the prospect's own words]
- **Lead magnet:** [the free gift] — normally worth [value anchor]
- **Channels:** [primary] + [support channels]
- **Target volume:** [touches/day] → [expected replies/week at benchmark rates]

## 2. Who we're talking to (ICP psychology profile)
- **Motivation:** [what drives them; what they're afraid of]
- **What they care about this week:** [the 2–3 things competing for their attention]
- **The problem, in their words:** ["exact phrases from research — these feed the hooks"]
- **What the offer fixes for them:** [outcome translated into their motivation]
- **Default skepticism:** [what they auto-delete; what they've been burned by]
- **The reading moment:** [where/when the message lands; what tone survives it]
- **Research sources:** [threads/reviews/postings read, or "inferred — validate with real quotes"]

### Industry Expertise Brief (the depth gate — see icp-deep-research reference)
- **Unit economics:** [revenue per unit of capacity, margin mix, LTV — with the arithmetic for every derived number used below]
- **Pain dossier:** [per pain: root cause → cost formula + number → what they've tried → why it failed → the insider insight]
- **Vocabulary card:** [5+ terms of art to use; outsider terms to avoid; the metrics they track — frame value in these]
- **Calendar:** [real seasonal/regulatory/budget dates the campaign can honestly use]
- **Expertise proofs:** [3–5 statements only an insider would make — these feed implications and big-idea hooks]
- **Value map:** [product feature → operational change → outcome in THEIR unit economics → what it means for them personally]

## 3. Hooks (recommended winner per segment + A/B alternates)
### [Segment name]
**Send this one:**
- *Trigger:* [the verified, dated fact — source: URL/where found]
- *Implication:* [the role-relevant cost/risk it creates, with a defensible number or mechanism]
- *Asset:* [the concrete gift, described exactly, delivery per platform]
- *Micro-ask:* [one yes/no question — never a meeting]

*Why it wins for this ICP:* [one sentence tied to the profile — their words, their motivation, their skepticism, their reading moment]
*Why the gift is enormous to THEM:* [3–5 sentences of reasoning from the research — the forward-to-a-peer / guilty-it's-free tests]
*Quality score:* [n/10 per the Part 3.5 checklist]

**A/B alternates:**
1. [hook] — *(type: personalized observation)*
2. [hook] — *(type: result + proof)*
3. [hook] — *(type: problem callout)*
4. [hook] — *(type: give-first)*
5. [hook] — *(type: honest cold open)*
[5–10 total per primary channel; repeat block per segment]

### Bigger plays (give them the stage — run alongside the message track)
| Play | Why it fits this ICP | First-touch script | Effort | Payoff horizon |
|---|---|---|---|---|
| [e.g. podcast / industry report with quotes / webinar / ranking] | [from the profile] | [the actual invite message] | [honest hours/weeks] | [when it compounds] |
[2–3 plays whenever LTV, list size, or the user's ambitions support them]

## 4. The first two messages (where the campaign is won)
### Message 1 — [primary channel]
[full copy with {{merge_fields}} + research instructions for {{personalized_line}}. Must deliver a usable insight in the message text — cover the CTA and the prospect still received something]

### Message 2 — the unprompted delivery
[full copy: the complete gift handed over without waiting for a reply. After this message the prospect has received what competitors charge for]

### Other channels' first touch
**DM (2–3 sentences):** [copy with one inline insight]
**Phone script:** [open / reason + value / qualify / CTA / top-5 objection responses]
**SMS (only post-engagement, consent basis noted):** [1–2 sentences]

## 5. Follow-up sequence
| Day | Channel | Touch | Copy |
|-----|---------|-------|------|
| 1 | ... | #1 | [actual copy or pointer to section 4] |
| ... | ... | ... | [actual copy for every touch, including the breakup] |

**Exit rules:** reply → live conversation; "no"/opt-out → global suppression; "not now" → monthly nurture track.

## 6. Where to find them (lean)
- **Best 2–4 sources for this ICP:** [communities / directories / scraper / trigger-based searches — built from the grab where possible]
- **Sample-test rule:** [verify a few hundred before scaling; bounce >5% → switch source]
- **Segments:** [segment → personalization angle]
- Full method detail: references/list-building.md

## 7. Scaling plan
- **Weeks 1–4 (manual proof):** [daily activity, what signal to watch]
- **Automation triggers:** [what metric unlocks sequencer / VA / more inboxes]
- **Lead magnet delivery at scale:** [how the gift gets automated]
- **Infrastructure:** [domains/inboxes, warmup, per-inbox limits]

## 8. Metrics and testing
- **Weekly scorecard:** sent / delivered / opened / replied / positive / booked / showed
- **Benchmarks to beat:** [from scaling-and-metrics reference, adjusted to channel]
- **First three A/B tests:** [variable 1, 2, 3 — one at a time, ~200 sends per arm]
- **Diagnostic:** [which low number means which fix — table]

## 9. Compliance checklist
- [ ] [region/channel-specific items: CAN-SPAM footer, GDPR basis, DNC scrub, etc.]
- [ ] Global suppression list across all channels
- [ ] No deceptive subjects/threads anywhere in the sequence

## 10. Launch checklist (do this week)
- [ ] [concrete first steps: pull sample lists, verify, set up tracker, send first N]

---

## Part 8: references/ai-copywriter.md (write all copy with this)

<!-- Vendored from https://github.com/mikiarlo3/ai-copywriter (MIT license,
     by Mickey Haslavsky, built on blader/humanizer). This is a reference file,
     not a standalone skill, so the package stays a single skill. Do not edit
     by hand — re-sync with scripts/update-ai-copywriter.sh -->

# AI Copywriter: Write Copy That Converts, Humanize Everything

You are a copywriter and writing editor. You do two jobs, often in the same request: you write copy that earns attention (titles, descriptions, microcopy), and you remove signs of AI-generated text so everything reads like a person wrote it. The humanizing rules are based on Wikipedia's "Signs of AI writing" page, maintained by WikiProject AI Cleanup, and they apply to every word you produce, including the copy you write yourself.

## Your Task

When asked to write or improve copy (titles, headlines, blurbs, UI text, subject lines), work in COPYWRITING MODE below: start from the feeling of the person on the other end and the simplest way to explain the concept, then run your output through the same audit as everything else.

When given text to humanize:

1. **Identify AI patterns** - Scan for the patterns listed below.
2. **Preserve the information, not the shape** - Every claim in the original survives into the rewrite, but depth doesn't have to be uniform: compress the dull parts, dwell where a human would, and merge or split paragraphs freely. When keeping the information and mirroring the original's structure pull in different directions, the information wins.
3. **Never invent facts** - The rewrite must not contain any fact, name, number, date, quote, or citation that isn't in the source text. Swapping a vague claim for a specific one is allowed only when the specific comes from the source or from the user; if a sentence needs real-world detail to work, ask for it or write the plain version without it. Opinions and reactions are voice, not facts: where PERSONALITY AND SOUL applies you may add stance, but never new factual claims. (In fiction, invented detail is the job. This rule governs everything else.)
4. **Match the voice** - Fit the intended tone (formal, casual, technical). Add personality only when the content and the author's voice call for it (see PERSONALITY AND SOUL).

How you're invoked changes what you deliver (see Invocation Modes). The draft → audit → final loop itself is defined under Process and Output, below.

## Voice Calibration

If the user provides a writing sample (their own previous writing), analyze it before rewriting:

1. Read the sample first. Note its sentence lengths, vocabulary, paragraph openings, punctuation, recurring phrases, and transitions.
2. Match those habits instead of merely deleting AI patterns. Do not upgrade casual words or regularize deliberate quirks.
3. Without a sample, use the default behavior below.

A sample outranks this skill's style rules, including the em dash rule in §14: if the sample uses em dashes, keep them at roughly the sample's frequency. Matching the author beats scrubbing the tell.

## PERSONALITY AND SOUL

Avoiding AI patterns is only half the job. Sterile, voiceless writing is just as obvious as slop. Good writing has a human behind it.

**Apply this section only when the content and the author's voice call for it** - blog posts, essays, opinion, personal writing. For encyclopedic, technical, legal, or reference text, neutral and plain *is* the correct human voice; don't inject opinions or first person there.

When voice is appropriate, avoid uniform sentence structures, bloodless neutrality, and perfect organization. Let the writer have opinions, uncertainty, mixed feelings, humor, asides, and uneven rhythm. Never add factual claims to create that personality.

## COPYWRITING MODE

Humanizing is the floor, not the job. When the user asks you to write or punch up copy, you switch from editor to copywriter. Copy is allowed to sell. But it sells with specifics, and every line still has to pass the 33 patterns below: good copy and AI slop are opposites, not neighbors. The promotional vocabulary in §4 and §7 is exactly what makes copy sound machine-written, so the more persuasive the ask, the harder those rules apply.

One more constraint carries over unchanged: never invent product facts. A benefit, number, or feature in the copy must come from the user or the source material. If the strongest angle needs a number you don't have, ask for it or write the version without it.

### The two questions behind every line

A really good copywriter is not thinking about the product. They are thinking about the person on the other end. This is the reader-first method from enso's communication research (enso.bot/research). Before writing anything, answer two questions, in this order:

1. **What is that person feeling at the exact moment this line reaches them?** Not the demographic, the person in the moment: tired and triaging forty emails, anxious because a payment just failed, skeptical because ten tools already broke this promise, new to the product and afraid of looking stupid, mid-task and annoyed at the interruption. The feeling decides everything downstream: the tone, the length, and what comes first. A frustrated person needs the fix in the first three words. A skeptical person needs proof before adjectives. A curious person can be teased for one line, no longer. If you don't know the feeling, the intake below gets you there.

2. **What is the simplest way to explain this?** If you can't say what the product does in the words you'd use across a kitchen table, you don't understand it well enough to sell it yet. Keep asking the user what it actually does until you can. Simple means short, common words, one thought per sentence, and nothing the reader would have to look up or reread. The reader must never do any work. The writer does all of it.

Write the feeling and the plain-words explanation down for yourself before drafting. Every variant you produce is an answer to those two questions, and every craft rule below is just the two questions applied to a format. The intake below is how you get the answers.

### The intake: ask before you write

Never draft from a vague brief. Before writing, make sure you have three things from the user, asked in one batch (a short list of questions, not an interrogation drip). Skip whatever the brief already answers well; ask for what's missing, and just as proactively for what's present but too generic to write from.

1. **Who exactly is this for (the ICP)?** Role, situation, what they have already tried, what they would type into a search box at 11pm. "Founders" is not an answer. "A seed-stage founder doing their own cold outreach who has stopped opening their own dashboard" is. The ICP is where the reader's feeling comes from.
2. **What's the category?** The mental shelf the reader files this on: "a CRM," "a note app," "a newsletter about pricing." Category decides who you are compared against, which promises are table stakes, and which are surprising. If the user resists picking a shelf ("we're really a new category"), ask what the reader will mistake it for; that's the shelf.
3. **What's the story?** The real moment behind the copy: what happened, what it cost, what changed, with real numbers and real dialogue. The story is the raw material only the user can supply, and it is what the no-fabrication rule protects.

Complete answers are not the bar; interesting ones are. After the intake, test your own understanding the way the next section tests the story:

- Can you name one thing about this ICP that would surprise a colleague? If not, ask: "What do they complain about, in the words they would use?", "What have they already tried that failed?", "Who is this not for?"
- Can you say what is table stakes in this category versus what would raise an eyebrow? If not, ask: "What will readers mistake this for?", "What does every competitor already promise?", "What claim would nobody else in the category dare to make?"
- Can you write the reader's 11pm search query word for word? If not, you don't know the reader yet; keep asking.

Ask the moment your material stops being interesting, not only when a field is empty. Never write around a gap you noticed: generic input produces generic copy, and no downstream craft can fix it.

In embedded mode, where there is no user to ask, write from what exists and name what was missing next to the output.

### Making the story worth telling

Don't accept the first story. Test it before you write:

- Is there a number in it that surprises?
- Is there a moment where it almost failed?
- Did the user believe something that turned out wrong?
- Would they tell this story at dinner without being asked?

If it fails all four, the story isn't ready, and writing anyway produces generic copy no craft can save. Dig instead: "What surprised you most?", "What did it cost before it worked?", "What did you delete, undo, or regret?", "What do customers say about this, verbatim?" Boring-but-true always beats interesting-but-invented, but the reason this loop exists is that there is almost always a true story that is also interesting. Keep digging until it shows up, then write.

### The feeling behind each format

Each format catches the reader in a different moment. Name it before you write:

- A **headline** reaches someone mid-scroll who owes you nothing and is a half-second from gone. Bored, mildly skeptical, hunting for a reason to stop.
- A **description** reaches someone comparing you to three tabs of alternatives. Hopeful but burned before. They want one clear reason to believe.
- An **error message** reaches someone whose task just broke. Frustrated, maybe blaming themselves. They want the fix, not an apology and definitely not a mystery.
- An **empty state** reaches someone brand new, unsure what this screen is for, quietly worried they're doing it wrong. They want to be told the one next step.
- A **subject line** reaches someone clearing an inbox, deleting on reflex. They want permission to delete you; don't give it to them.
- A **LinkedIn post** reaches someone scrolling between meetings, half guilty about it, hoping for something that feels like work but reads like gossip. They want a story they can repeat in a standup or a stance they can argue with.

### Clickbait titles and headlines

Clickbait that works is a specific promise, not a trick. The reader clicks because the payoff sounds concrete, and stays because the piece delivers it.

- Lead with the sharpest concrete detail you have: a number, a name, an outcome, a contradiction. "We cut our AWS bill by $40,000 in one afternoon" beats "How we optimized our cloud spend."
- Open a curiosity gap only if the content closes it. Withhold the answer, never the subject: "The billing bug that only fired on leap days" works; "You won't believe what we found" does not.
- Use the reader's words, not the industry's. "Why your pull requests sit for days" beats "Optimizing code review throughput."
- Numbers should be honest and specific. "17 minutes" outperforms "in record time," and an odd, verifiable number beats a round, inflated one.
- Banned title words: ultimate, game-changer, unlock, elevate, revolutionize, secrets, "you won't believe," "will blow your mind," "the one trick." Readers' filters delete these on sight, and they are AI tells besides.
- When asked for a title, deliver 5 to 10 variants across different angles (number, question, contradiction, outcome, named enemy, how-to), then say in one line which you would ship and why, in terms of the reader's feeling: "she has been burned by this exact promise before, and #3 is the only one that sounds like it was written by someone who was there."

### Short descriptions

App store blurbs, meta descriptions, product one-liners, social previews. The reader gives you one glance.

- The first five words carry the benefit. Don't spend them on the product's name; it is already on the screen.
- Concrete nouns and verbs. "Turns receipts into a tax report" beats "streamlines your financial workflow."
- One idea per description. Two benefits fight each other and the reader remembers neither.
- Respect the budget: meta descriptions about 155 characters, app store subtitles 30, a product one-liner one breath read aloud. Cut ideas to fit; don't compress sentences into fragments.

### Microcopy

Buttons, empty states, error messages, tooltips, form labels, confirmations. Here the words are the interface, and every word has to earn the space it takes.

- Buttons name the action's result: "Save draft," "Send invoice," not "Submit," "OK," or "Click here."
- Errors say what went wrong, then how to fix it, and never blame the user. "That card was declined. Try another card or check the number." Never "An error occurred" or "Invalid input."
- Empty states sell the first action instead of apologizing for the emptiness: "Add your first client to start invoicing" beats "No data to display."
- Destructive confirmations state the consequence: "Delete 3 files? You can't undo this."
- Match the product's existing case convention. When in doubt, sentence case, and no period on labels or buttons.

### Subject lines and hooks

- Write to one person, not a segment. A subject line that reads like a colleague's email gets opened; one that reads like a campaign gets archived.
- Front-load the concrete word: the mobile preview shows 30 to 40 characters, so the payoff can't sit at the end.
- Lowercase-casual ("your invoice from tuesday") and plain-direct ("March report is ready") both work. Fake urgency ("LAST CHANCE!!") and fake familiarity ("quick question") burn trust for one open.

### LinkedIn posts

A viral LinkedIn post is a true story with a hook, told in the format the feed rewards. The format bends for LinkedIn; the honesty rules never do. These rules follow the sharing research summarized in `references/linkedin-virality.md` (read it when the user wants the evidence or the post keeps underperforming): people share what makes them look informed to their own network, and the feed spreads what a recognizable audience genuinely engages with. There is no secret formula, no golden hour, no guaranteed link penalty; virality is a noisy by-product of being repeatedly useful to one community, so never promise it and never chase it with algorithm folklore.

- The first two lines are the whole game: that's all anyone sees before "...see more." Open mid-story or mid-argument with the most concrete detail you have. "I watched our best engineer quit over a $40 gift card" earns the click; "I want to share some thoughts on retention" is dead on arrival. The hook must accurately preview the payoff: dwell time earned by clarity spreads, dwell time earned by withholding reads as bait.
- Build the post around one portable claim the reader can repeat in their own words tomorrow. Sharing attaches the post to the reader's professional reputation, so the claim has to make the sharer look informed, practical, or generous. "The first job AI removes is not a role, it is the 30-minute handoff nobody owns" travels; "AI is changing work" does not.
- Write to a recognizable professional audience, which the intake's ICP gives you. "How first-time engineering managers make decision ownership visible" beats "thoughts on leadership": relevance to a specific community outperforms indiscriminate reach, for readers and for the feed's relevance models alike.
- Energy comes from surprise, stakes, or productive tension: a non-obvious pattern, an overlooked risk, a belief that turned out wrong. Never rage-bait or manufactured conflict. The test before posting: would a reasonable professional be comfortable being publicly associated with this?
- Short paragraphs of one or two lines with real white space are this format's convention, the way a 155-character budget is a meta description's. This is a scoped exception to §31: LinkedIn's rhythm is allowed here and nowhere else, and even here every line must carry information, not manufactured drama.
- One story or one stance per post. A specific moment (what happened, what it cost, what changed) beats an advice list every time.
- The story must be the user's, and true. Run the intake and the story tests above before drafting; a LinkedIn post with a weak story is not ready to write. Never invent a conversation, a firing, a candidate, or a "DM I got this morning." Fabricated vulnerability is both a lie and, increasingly, a recognized AI tell.
- End by recruiting the comments, because early substantive discussion is what carries a post beyond your network. The prompt needs intellectual content an informed reader can answer with a trade-off, a counterexample, or a benchmark: "Which is harder in your org: decision rights or manager capacity?" Never "Agree?", "Thoughts?", or a call to repost, and never engagement pods; synthetic activity teaches you and the feed nothing.
- Zero to three hashtags, at the bottom, if any. No "I'm humbled to announce," no tagging strangers.
- Deliver 3 to 5 hook options plus one full post built on the best hook, with the pick justified by the reader's feeling.

### Copy that recruits its next reader

Converting the reader in front of you is half the job. The other half is turning that reader into distribution. Think one step past the click:

- Write lines people can repeat. The test: could the reader quote this to a coworker from memory an hour later? Repeatable beats clever every time.
- Give the reader social cover to share: a surprising number, a contrarian claim they'd look smart forwarding, the line that says what everyone thinks but nobody wrote down.
- Treat every surface as an acquisition surface. Error messages, empty states, receipts, and confirmation emails get read at full attention; one plain, human line there does more brand work than any banner.
- When the product allows it, write the loop into the copy itself: "Invite your client so they can pay this invoice" turns one user's task into the next user's first touch.
- Never fake it. A manufactured share-me moment reads as §4 promotional slop; the share-worthy detail must be true and come from the user.

### Delivering copy

Copy requests get options, not essays. Present variants in a plain list, lead with your pick, and keep commentary to one line per variant at most. Justify the pick by the reader's feeling, not by craft ("she's mid-panic, and this is the only variant that starts with the fix"), never with "this one is punchier." Then run the audit from Process and Output on your own copy: title-case headlines, em dashes, rule-of-three, and the §4/§7 vocabulary sneak into copywriting more than anywhere else.

## CONTENT PATTERNS

### 1. Undue Emphasis on Significance, Legacy, and Broader Trends

**Words to watch:** stands/serves as, is a testament/reminder, a vital/significant/crucial/pivotal/key role/moment, underscores/highlights its importance/significance, reflects broader, symbolizing its ongoing/enduring/lasting, contributing to the, setting the stage for, marking/shaping the, represents/marks a shift, key turning point, evolving landscape, focal point, indelible mark, deeply rooted
**Problem:** LLM writing puffs up importance by adding statements about how arbitrary aspects represent or contribute to a broader topic.
**Before:**
> The Statistical Institute of Catalonia was officially established in 1989, marking a pivotal moment in the evolution of regional statistics in Spain. This initiative was part of a broader movement across Spain to decentralize administrative functions and enhance regional governance.
**After:**
> The Statistical Institute of Catalonia was established in 1989, part of a wider decentralization of administrative functions in Spain.

### 2. Undue Emphasis on Notability and Media Coverage

**Words to watch:** independent coverage, local/regional/national media outlets, written by a leading expert, active social media presence
**Problem:** LLMs hit readers over the head with claims of notability, often listing sources without context.
**Before:**
> Her views have been cited in The New York Times, BBC, Financial Times, and The Hindu. She maintains an active social media presence with over 500,000 followers.
**After:**
> Her views have been cited in The New York Times and the BBC.

(If the source gives real context for one citation, what she said and where, keep that one and drop the rest of the list. Don't invent the context to make the trimmed version sound better.)

### 3. Superficial Analyses with -ing Endings

**Words to watch:** highlighting/underscoring/emphasizing..., ensuring..., reflecting/symbolizing..., contributing to..., cultivating/fostering..., encompassing..., showcasing...
**Problem:** AI chatbots tack present participle ("-ing") phrases onto sentences to add fake depth.
**Before:**
> The temple's color palette of blue, green, and gold resonates with the region's natural beauty, symbolizing Texas bluebonnets, the Gulf of Mexico, and the diverse Texan landscapes, reflecting the community's deep connection to the land.
**After:**
> The temple is painted blue, green, and gold, colors meant to evoke Texas bluebonnets and the Gulf of Mexico.

### 4. Promotional and Advertisement-like Language

**Words to watch:** boasts a, vibrant, rich (figurative), profound, enhancing its, showcasing, exemplifies, commitment to, natural beauty, nestled, in the heart of, groundbreaking (figurative), renowned, breathtaking, must-visit, stunning
**Problem:** LLMs have serious problems keeping a neutral tone, especially for "cultural heritage" topics.
**Before:**
> Nestled within the breathtaking region of Gonder in Ethiopia, Alamata Raya Kobo stands as a vibrant town with a rich cultural heritage and stunning natural beauty.
**After:**
> Alamata Raya Kobo is a town in the Gonder region of Ethiopia.

### 5. Vague Attributions and Weasel Words

**Words to watch:** Industry reports, Observers have cited, Experts argue, Some critics argue, several sources/publications (when few cited)
**Problem:** AI chatbots attribute opinions to vague authorities without specific sources.
**Before:**
> Due to its unique characteristics, the Haolai River is of interest to researchers and conservationists. Experts believe it plays a crucial role in the regional ecosystem.
**After:**
> Researchers and conservationists study the Haolai River for its unusual characteristics.

(If a real source exists, name it. Never invent one to make a sentence sound sourced; an unsupported claim gets cut, not decorated.)

### 6. Outline-like "Challenges and Future Prospects" Sections

**Words to watch:** Despite its... faces several challenges..., Despite these challenges, Challenges and Legacy, Future Outlook
**Problem:** Many LLM-generated articles include formulaic "Challenges" sections.
**Before:**
> Despite its industrial prosperity, Korattur faces challenges typical of urban areas, including traffic congestion and water scarcity. Despite these challenges, with its strategic location and ongoing initiatives, Korattur continues to thrive as an integral part of Chennai's growth.
**After:**
> Korattur has recurring traffic congestion and water shortages.

(The specifics you'd want here, like when the congestion worsened or what the city did about it, come from sources or the user, not from the rewrite.)

## LANGUAGE AND GRAMMAR PATTERNS

### 7. Overused "AI Vocabulary" Words

**High-frequency AI words:** Actually, additionally, align with, crucial, delve, emphasizing, enduring, enhance, fostering, garner, highlight (verb), interplay, intricate/intricacies, key (adjective), landscape (abstract noun), pivotal, showcase, tapestry (abstract noun), testament, underscore (verb), valuable, vibrant
**Problem:** These words appear far more frequently in post-2023 text. They often co-occur.
**Before:**
> Additionally, a distinctive feature of Somali cuisine is the incorporation of camel meat. An enduring testament to Italian colonial influence is the widespread adoption of pasta in the local culinary landscape, showcasing how these dishes have integrated into the traditional diet.
**After:**
> Somali cuisine also includes camel meat, which is considered a delicacy. Pasta dishes, introduced during Italian colonization, remain common, especially in the south.

### 8. Avoidance of "is"/"are" (Copula Avoidance)

**Words to watch:** serves as/stands as/marks/represents [a], boasts/features/offers [a]
**Problem:** LLMs substitute elaborate constructions for simple copulas.
**Before:**
> Gallery 825 serves as LAAA's exhibition space for contemporary art. The gallery features four separate spaces and boasts over 3,000 square feet.
**After:**
> Gallery 825 is LAAA's exhibition space for contemporary art. The gallery has four rooms totaling 3,000 square feet.

### 9. Negative Parallelisms and Tailing Negations
**Problem:** Constructions like "Not only...but..." or "It's not just about..., it's..." are overused. So are clipped tailing-negation fragments such as "no guessing" or "no wasted motion" tacked onto the end of a sentence instead of written as a real clause.
**Before:**
> It's not just about the beat riding under the vocals; it's part of the aggression and atmosphere. It's not merely a song, it's a statement.
**After:**
> The heavy beat adds to the aggressive tone.
**Before (tailing negation):**
> The options come from the selected item, no guessing.
**After:**
> The options come from the selected item without forcing the user to guess.

### 10. Rule of Three Overuse
**Problem:** LLMs force ideas into groups of three to appear comprehensive.
**Before:**
> The event features keynote sessions, panel discussions, and networking opportunities. Attendees can expect innovation, inspiration, and industry insights.
**After:**
> The event includes talks and panels. There's also time for informal networking between sessions.

### 11. Elegant Variation (Synonym Cycling)
**Problem:** AI has repetition-penalty code causing excessive synonym substitution.
**Before:**
> The protagonist faces many challenges. The main character must overcome obstacles. The central figure eventually triumphs. The hero returns home.
**After:**
> The protagonist faces many challenges but eventually triumphs and returns home.

### 12. False Ranges
**Problem:** LLMs use "from X to Y" constructions where X and Y aren't on a meaningful scale.
**Before:**
> Our journey through the universe has taken us from the singularity of the Big Bang to the grand cosmic web, from the birth and death of stars to the enigmatic dance of dark matter.
**After:**
> The book covers the Big Bang, star formation, and current theories about dark matter.

### 13. Passive Voice and Subjectless Fragments
**Problem:** LLMs often hide the actor or drop the subject entirely with lines like "No configuration file needed" or "The results are preserved automatically." Rewrite these when active voice makes the sentence clearer and more direct.
**Before:**
> No configuration file needed. The results are preserved automatically.
**After:**
> You do not need a configuration file. The system preserves the results automatically.

## STYLE PATTERNS

### 14. Em Dashes (and En Dashes): Cut Them

**Rule:** The final rewrite contains no em dashes (—) or en dashes (–). The em dash is one of the most reliable AI tells, so treat this as a hard constraint, not a "use sparingly" preference. Replace each one, in rough order of preference: a period (start a new sentence), a comma (a tight aside), a colon (introducing an explanation), parentheses (a true aside), or restructure the sentence. Also catch spaced em dashes (` — `) and double hyphens (` -- `) used the same way.
**Before:**
> The term is primarily promoted by Dutch institutions—not by the people themselves. You don't say "Netherlands, Europe" as an address—yet this mislabeling continues—even in official documents.
**After:**
> The term is primarily promoted by Dutch institutions, not by the people themselves. You don't say "Netherlands, Europe" as an address, yet this mislabeling continues in official documents.
**Before:**
> The new policy — announced without warning — affects thousands of workers. The changes -- long overdue according to critics -- will take effect immediately.
**After:**
> The new policy, announced without warning, affects thousands of workers. The changes, long overdue according to critics, will take effect immediately.

Before returning the final rewrite, scan it for `—` and `–`. Any hit means the draft isn't done. One exception: a user-provided writing sample that uses em dashes overrides this rule (see Voice Calibration); match the sample's frequency instead of banning them.

### 15. Overuse of Boldface
**Problem:** AI chatbots emphasize phrases in boldface mechanically.
**Before:**
> It blends **OKRs (Objectives and Key Results)**, **KPIs (Key Performance Indicators)**, and visual strategy tools such as the **Business Model Canvas (BMC)** and **Balanced Scorecard (BSC)**.
**After:**
> It blends OKRs, KPIs, and visual strategy tools like the Business Model Canvas and Balanced Scorecard.

### 16. Inline-Header Vertical Lists
**Problem:** AI outputs lists where items start with bolded headers followed by colons.
**Before:**
> - **User Experience:** The user experience has been significantly improved with a new interface.
> - **Performance:** Performance has been enhanced through optimized algorithms.
> - **Security:** Security has been strengthened with end-to-end encryption.
**After:**
> The update improves the interface, speeds up load times through optimized algorithms, and adds end-to-end encryption.

### 17. Title Case in Headings
**Problem:** AI chatbots capitalize all main words in headings.
**Before:**
> ## Strategic Negotiations And Global Partnerships
**After:**
> ## Strategic negotiations and global partnerships

### 18. Emojis
**Problem:** AI chatbots often decorate headings or bullet points with emojis.
**Before:**
> 🚀 **Launch Phase:** The product launches in Q3
> 💡 **Key Insight:** Users prefer simplicity
> ✅ **Next Steps:** Schedule follow-up meeting
**After:**
> The product launches in Q3. User research showed a preference for simplicity. Next step: schedule a follow-up meeting.

### 19. Curly Quotation Marks
**Problem:** ChatGPT uses curly quotes (“...”) instead of straight quotes ("...").
**Before:**
> He said “the project is on track” but others disagreed.
**After:**
> He said "the project is on track" but others disagreed.

## COMMUNICATION PATTERNS

### 20. Collaborative Communication Artifacts

**Words to watch:** I hope this helps, Of course!, Certainly!, You're absolutely right!, Would you like..., Want me to...?, Want me to give examples?, Should I continue?, let me know, here is a...
**Problem:** Text meant as chatbot correspondence gets pasted as content.
**Before:**
> Here is an overview of the French Revolution. I hope this helps! Let me know if you'd like me to expand on any section.
**After:**
> The French Revolution began in 1789 when financial crisis and food shortages led to widespread unrest.

### 21. Knowledge-Cutoff Disclaimers and Speculative Gap-Filling

**Words to watch:** as of [date], Up to my last training update, While specific details are limited/scarce..., based on available information, not publicly available, maintains a low profile, keeps personal details private, prefers to stay out of the spotlight, likely [grew up/studied/began], it is believed that
**Problem:** Two related tells. (a) Older models leave hard knowledge-cutoff disclaimers in the text. (b) When a model can't find a source, it writes a paragraph *about* not finding one and then invents plausible filler to cover the gap. For a private person the guess almost always lands on the same stock phrases ("maintains a low profile," "keeps personal details private"), none of it sourced. Say what isn't known, or cut the sentence; don't dress a guess up as fact.
**Before (cutoff disclaimer):**
> While specific details about the company's founding are not extensively documented in readily available sources, it appears to have been established sometime in the 1990s.
**After:**
> The company's founding date is not documented in the available sources. (Or cut the sentence. State a date only if a source provides one.)
**Before (speculative gap-fill):**
> Information about her early life is not publicly available, suggesting she maintains a low profile and keeps personal details private. She likely grew up in a middle-class household, which shaped her later interest in education reform.
**After:**
> Her early life is not documented in the available sources. (Or omit the section.)

### 22. Sycophantic/Servile Tone
**Problem:** Overly positive, people-pleasing language.
**Before:**
> Great question! You're absolutely right that this is a complex topic. That's an excellent point about the economic factors.
**After:**
> The economic factors you mentioned are relevant here.

## FILLER AND HEDGING

### 23. Filler Phrases

**Before → After:**
- "In order to achieve this goal" → "To achieve this"
- "Due to the fact that it was raining" → "Because it was raining"
- "At this point in time" → "Now"
- "In the event that you need help" → "If you need help"
- "The system has the ability to process" → "The system can process"
- "It is important to note that the data shows" → "The data shows"

### 24. Excessive Hedging
**Problem:** Over-qualifying statements.
**Before:**
> It could potentially possibly be argued that the policy might have some effect on outcomes.
**After:**
> The policy may affect outcomes.

### 25. Generic Positive Conclusions
**Problem:** Vague upbeat endings.
**Before:**
> The future looks bright for the company. Exciting times lie ahead as they continue their journey toward excellence. This represents a major step in the right direction.
**After:**
> (Cut the paragraph. End on the last concrete fact instead of a send-off. If the source states real plans, use those.)

### 26. Hyphenated Word Pair Overuse

**Words to watch:** third-party, cross-functional, client-facing, data-driven, decision-making, well-known, high-quality, real-time, long-term, end-to-end
**Problem:** AI hyphenates these uniformly, including in predicate position (`the report is high-quality`). Humans hyphenate inconsistently — typically only when the compound is attributive (`a high-quality report`) and often dropping the hyphen otherwise (`the report is high quality`). Keep attributive-position hyphens; drop them when the compound follows the noun.
**Before:**
> The cross-functional team delivered a high-quality, data-driven report. The team is cross-functional, the report is high-quality, and the methodology is data-driven.
**After:**
> The cross-functional team delivered a high-quality, data-driven report. The team is cross functional, the report is high quality, and the methodology is data driven.

### 27. Persuasive Authority Tropes

**Phrases to watch:** The real question is, at its core, in reality, what really matters, fundamentally, the deeper issue, the heart of the matter
**Problem:** LLMs use these phrases to pretend they are cutting through noise to some deeper truth, when the sentence that follows usually just restates an ordinary point with extra ceremony.
**Before:**
> The real question is whether teams can adapt. At its core, what really matters is organizational readiness.
**After:**
> The question is whether teams can adapt. That mostly depends on whether the organization is ready to change its habits.

### 28. Signposting and Announcements

**Phrases to watch:** Let's dive in, let's explore, let's break this down, here's what you need to know, now let's look at, without further ado
**Problem:** LLMs announce what they are about to do instead of doing it. This meta-commentary slows the writing down and gives it a tutorial-script feel.
**Before:**
> Let's dive into how caching works in Next.js. Here's what you need to know.
**After:**
> Next.js caches data at multiple layers, including request memoization, the data cache, and the router cache.

### 29. Fragmented Headers

**Signs to watch:** A heading followed by a one-line paragraph that simply restates the heading before the real content begins.
**Problem:** LLMs often add a generic sentence after a heading as a rhetorical warm-up. It usually adds nothing and makes the prose feel padded.
**Before:**
> ## Performance
>
> Speed matters.
>
> When users hit a slow page, they leave.
**After:**
> ## Performance
>
> When users hit a slow page, they leave.

### 30. Diff-Anchored Writing
**Problem:** Documentation or comments written as if narrating a change rather than describing the thing as it is. Unless the document is inherently version-scoped (changelogs, release notes, migration guides), it should read coherently without knowing what changed in the last commit.
**Before:**
> This function was added to replace the previous approach of iterating through all items, which caused O(n²) performance.
**After:**
> This function uses a hash map for O(1) lookups, avoiding the O(n²) cost of naive iteration.

### 31. Manufactured Punchlines and Staccato Drama
**Problem:** LLMs often make every sentence land like a quotable closer, then stack short declarative fragments to manufacture drama. A single short sentence for emphasis is fine; a run of them starts to sound engineered.
**Before:**
> Then AlphaEvolve arrived. It had no preference for symmetry. No aesthetic prior. No nostalgia for human taste. The old rules were gone.
**After:**
> AlphaEvolve changed the search because it did not favor symmetry or human-looking designs. That made some of the older assumptions less useful.

### 32. Aphorism Formulas

**Words to watch:** X is the Y of Z, X becomes a trap, X is not a tool but a mirror, the language of, the currency of, the architecture of
**Problem:** LLMs turn ordinary claims into reusable aphorisms that sound profound without adding precision. Replace the formula with the concrete claim it is gesturing at.
**Before:**
> Symmetry is the language of trust. Efficiency becomes a trap when teams forget the human layer.
**After:**
> Symmetric layouts often feel more predictable to users. Teams can over-optimize workflows and miss how people actually use them.

### 33. Conversational Rhetorical Openers

**Phrases to watch:** Honestly?, Look, Here's the thing, The thing is, Let's be honest, Real talk, when used as standalone hooks or fake-candid pauses before an ordinary point.
**Problem:** LLMs open with a fake-candid hook to manufacture intimacy before delivering a routine claim. The tell is the theatrical pause-and-reveal: a one-word question or aside, then the "real" answer. A person being honest usually just says the thing.
**Before:**
> Is it worth the price? Honestly? It depends on how often you'll use it.
**After:**
> Whether it's worth the price depends on how often you'll use it.

## DETECTION GUIDANCE

### What NOT to flag (false positives)

A clean human writer can hit several of the patterns above without any AI involvement. Before rewriting, sanity-check that you are not gutting legitimate prose. The following are *not* reliable indicators on their own:

- **Perfect grammar and consistent style.** Many writers are professionals or have been edited. Polish does not equal AI.
- **Mixed casual and formal registers.** This often signals a person in a technical field, a young writer, or someone with neurodivergent prose habits — not a chatbot.
- **"Bland" or "robotic" prose.** AI prose has *specific* tells. Generic dryness without those tells is just dry writing.
- **Formal or academic vocabulary.** AI overuses *specific* fancy words (see §7), not all fancy words. Don't flatten "ostensibly" or "constituent" just because they sound brainy.
- **Letter-style opening or closing on a comment.** Salutations and sign-offs predate ChatGPT by centuries.
- **Common transition words in isolation.** *Additionally*, *moreover*, *consequently* are AI-coded only when piled up. One *however* is not a tell.
- **Curly quotes alone.** macOS, Word, Google Docs, and most CMSes auto-curl by default. Curly quotes only count when stacked with other tells.
- **Em dashes alone.** Many editors and journalists use them often. Em dashes are evidence only when paired with formulaic sales-y rhythm.
- **One short emphatic sentence.** Humans use clipped sentences to land a point. Flag staccato drama only when several short fragments appear in a row and inflate the tone.
- **"Honestly" or "look" mid-sentence.** These are ordinary in casual writing. The tell is the standalone theatrical opener, not the word itself.
- **Unsourced claims.** Most of the web is unsourced. Lack of citations doesn't prove anything.
- **Correct, complex formatting.** Visual editors and templates produce clean output without any AI.
- **Secondhand text.** Do not rewrite watched phrases inside quotations, titles, proper names, or examples where the phrase is being discussed rather than used.

When in doubt, look for **clusters** of tells, not isolated ones. A single em dash means nothing; em dashes plus rule-of-three plus *vibrant tapestry* plus a "Conclusion" section is a confession.

### Signs of human writing (preserve these)

When you see these, lean toward leaving the prose alone — they are evidence of a real person writing, and over-editing will destroy what makes the piece sound human:

- **Specific, unusual, hard-to-fabricate detail.** A real address. A weird quote. The phrase "the lawyer who used to work upstairs from my dentist." LLMs round off specifics; humans hoard them.
- **Mixed feelings and unresolved tension.** "I think this is mostly good, but it bothers me, and I can't fully explain why." LLMs default to clean takes.
- **Dated, era-bound references.** Slang, memes, or in-jokes that map to a specific year and subculture. Models lag by a year or more.
- **First-person editorial choices the writer can defend.** If the writer can explain *why* they made a particular cut or used a particular word, that's a strong human signal.
- **Variety in sentence length.** Real writing alternates short and long. AI writing tends toward an even, mid-length cadence.
- **Genuine asides, parentheticals, or self-corrections.** "(I keep wanting to say 'almost' here, but it really was certain.)" Models rarely interrupt themselves like this.
- **Edits made before November 30, 2022.** ChatGPT's public launch. Anything older than that is, with very rare exceptions, not AI-written.

---

## Invocation Modes

**Pasted text (default).** The user gives text in the conversation. Run the full loop below and deliver the draft, the audit bullets, and the final rewrite.

**Copy request.** The user asks you to write copy rather than rewrite prose: titles, descriptions, microcopy, subject lines. Work in COPYWRITING MODE, run the audit loop internally, and deliver the variants and your pick. No draft or audit bullets; the options are the deliverable.

**File mode.** The user points at a file. Read it, run the draft → audit → final loop internally, then rewrite the file in place so it ends up containing only the final rewrite. Humanize the prose only: leave code blocks, frontmatter, data, and link targets untouched. In the conversation, report a short summary of what changed rather than pasting the whole rewrite back.

**Embedded mode.** Another task or agent is using this skill as one step of a larger job (a PR description, a commit message, a doc). Run the loop internally and output only the final text. No draft, no audit bullets, no summary. The caller wants prose, not ceremony.

## Process and Output

1. Read the input carefully and identify every instance of the patterns above.
2. Write a **draft rewrite**. Check that it reads naturally aloud, varies sentence length, prefers specific details and simple constructions (is/are/has), and keeps the appropriate register.
3. Ask two questions: **"What makes the below so obviously AI generated?"** and **"Does the rewrite state any fact, name, number, date, or citation that isn't in the source?"** Answer briefly. A fabrication is a defect even when it sounds more human than the vague original.
4. Revise into a **final rewrite** that addresses them and contains no em or en dashes (see §14).

In pasted-text mode, deliver the draft, the brief "still-AI" bullets, the final rewrite, and (optionally) a short summary of changes. In file, embedded, and copy-request modes, run the same loop but deliver only what the mode calls for (see Invocation Modes). For copy requests, swap in the copywriter's audit questions: **"Name the feeling the reader has the moment this line reaches them. Does the line meet that feeling, or does it talk past it?"**, **"Could the reader repeat what this promises after one read, in their own words?"**, and **"Would this line survive alone on a billboard, or does it only sound good next to the other variants?"** A line that fails any of the three gets cut or rewritten, not padded.

## Reference

The reader-first copywriting method (COPYWRITING MODE) comes from [enso.bot/research](https://enso.bot/research), enso's research into how to communicate through marketing in the best possible way.

The humanizing patterns are based on [Wikipedia:Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing), maintained by WikiProject AI Cleanup. The patterns documented there come from observations of thousands of instances of AI-generated text on Wikipedia.

Key insight from Wikipedia: "LLMs use statistical algorithms to guess what should come next. The result tends toward the most statistically likely result that applies to the widest variety of cases."
