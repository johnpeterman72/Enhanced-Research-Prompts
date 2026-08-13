<!--
Use case: Initial exploration of an unfamiliar engineering or technical domain
Best for: When you don't know what questions to ask yet
Default output: a domain map document (structure below)
Replaces: "Engineering Topic Explorer Prompt" and "Technical Domain Mapping Prompt" (v1)
-->

# Engineering Domain Explorer

I'm exploring an engineering domain I don't know well — I don't yet know what I don't know. Map
it for me:

**Topic:** [topic]

Optional — fill in or delete:
**Why I'm looking at this:** [evaluation, project, curiosity, competitive move]
**My background:** [what I already know, so the map starts at the right level]
**Internal sources available:** [internal data sources, if any]

## Before you begin

- **If you have web search or browsing, use it** — especially for the "where's the action" and
  "learning path" sections, which are worthless if stale.
- **If you have internal company data access**, check whether we already have work on this topic
  (past projects, reports, vendor evaluations) and surface it marked **[INTERNAL]** — the best
  starting resource may be in-house.
- **If you have no search tools**, say so, state your knowledge cutoff, and flag that the
  "current developments" sections reflect that cutoff, not today.
- If the topic could mean several things, ask me up to 2 clarifying questions; otherwise state
  the interpretation you're running with.

## Domain reconnaissance

1. **What am I looking at?** — What problem does this solve, where does it sit in the broader
   technology stack, and what came before it? Why does it exist at all?
2. **Architecture map** — Break the domain into layers:
   - **Foundation** — the core principles, components, and vocabulary I must understand first.
   - **Current state** — what's working well, what's broken, what's evolving.
   - **Cutting edge** — what's being actively developed or debated right now, with dates.
3. **Critical dependencies** — What does this technology rely on (upstream)? What relies on it
   (downstream)? Where are the failure points and bottlenecks?
4. **Where's the action** — Active development, live debates, recent failures or breakthroughs,
   and who the serious players are (companies, labs, standards bodies).
5. **Misconceptions and gaps** — What do newcomers commonly get wrong? Where do marketing claims
   diverge from technical reality? Where does consensus not exist?
6. **Strategic questions framework** — 4–5 research questions that would give me operational
   understanding, drawn from these lenses:
   - *Performance:* "What are the scalability limits of…"
   - *Economics:* "What drives the cost structure of…"
   - *Risk:* "What could make this technology obsolete…"
   - *Opportunity:* "Where are the unsolved technical challenges…"
7. **Learning path** — What to learn first, second, third to build useful understanding
   efficiently — and for each step, one **verified, linkable** starting resource (title,
   publisher, date, URL).

## Evidence standards

- Date-stamp anything described as "current" or "recent"; cite sources for developments and
  claims a domain expert might challenge.
- Distinguish marketing claims from demonstrated capability.
- Flag areas where information is fragmented, proprietary, or contested.
- Never invent a source or resource. Label reasoned guesses as **Inference**.

## Delivery

A skimmable domain map: descriptive headings, short paragraphs, tables where they beat prose.
State the as-of date. Goal: take me from "I heard about X" to "I can ask smart questions about
X and know where to dig next." If an output template file is attached, follow it exactly.

Before you deliver, check: all seven sections present; cutting-edge items dated; at least one
misconception named; every learning-path resource is a real, verified link.
