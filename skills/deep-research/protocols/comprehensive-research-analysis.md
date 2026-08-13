<!--
Use case: Formal, comprehensive research for strategic decision-making
Best for: Board presentations, investment decisions, policy briefs, major purchases
Default output: outputs/research-report.md; add outputs/executive-briefing.md as a front page
Replaces: "main prompt", "enhanced research prompt", and "Strategic Intelligence Analysis Prompt" (v1)
-->

# Comprehensive Research Analysis

Conduct a comprehensive, source-grounded research analysis for strategic decision-making on:

**Topic:** [topic]

Optional — fill in or delete:
**Decision this informs:** [what will be decided based on this research]
**Scope/constraints:** [geography, time horizon, exclusions]
**Audience:** [who reads the result]
**Internal sources available:** [internal data sources, if any]

## Before you begin

- **If you have web search or browsing, using it is required** — for every phase, not just
  "recent developments." Claims grounded in sources you found and read beat claims from memory.
- **If you have access to internal company data** (drives, wikis, CRM, PLM, document stores),
  search it as a distinct research pass. Keep internal findings clearly separated and marked
  **[INTERNAL]** so the report can be scrubbed for wider distribution.
- **If you have no search tools**, say so before starting, state your knowledge cutoff, label all
  findings as unverified training knowledge, and skip the resource list rather than inventing one.
- If the topic or the decision is ambiguous, ask me up to 3 clarifying questions first; otherwise
  state your working assumptions explicitly and proceed.

## Research protocol

**Phase 1 — Baseline.** Define the topic and its current significance in 2–3 sentences. Establish
scope, the questions this analysis will answer, and any critical knowledge gaps you already
anticipate.

**Phase 2 — Decomposition.** Break the topic into 3–5 dimensions. For each:
- **Foundation** — clear definition with context.
- **Current state** — the latest quantifiable developments, with dates, metrics, and sources.
- **Tensions** — competing interests, unresolved debates, and risk factors, with the evidence
  each side actually has.
- **Impact** — measurable implications, case studies, or outcomes for the stated audience.

**Phase 3 — Verification pass.** Before writing conclusions, identify the 5–8 claims your
analysis most depends on and re-verify each against at least two independent sources. Flag
anything that survives on a single source as `single source`. Where sources disagree, present
the disagreement rather than averaging it away.

**Phase 4 — Resources.** 5–7 sources genuinely worth the reader's time — **each one found and
linkable, never recalled from memory**: recent primary research, authoritative analysis with
named credentials, key datasets or tracking tools, and at least one credible contrarian
perspective. Title, publisher, date, URL, and one line on why it matters.

**Phase 5 — Executive synthesis.** 5–6 strategic insights answering "what should decision-makers
do with this?": immediate opportunities and risks with timeframes, competitive or positioning
implications, resource-allocation recommendations, and the specific metrics or events to monitor
going forward.

## Evidence standards

- Every non-obvious claim cited: title, publisher/author, date, URL.
- Prefer primary sources; prioritize the last 12–24 months and state the as-of date.
- Distinguish established facts from emerging trends from speculation — explicitly.
- Never invent a source, statistic, or quote. Report "not found" as a finding.
- Label estimates as estimates and show the method.
- Label key findings with confidence: **High** (multiple independent reliable sources),
  **Moderate** (consistent but limited evidence), **Low** (weakly corroborated), **Inference**
  (reasoned from context, not sourced — say so in the same sentence).

## Deliverable

Follow the structure of `outputs/research-report.md` if attached; otherwise: executive summary
(written last) → scope, questions, and method → key findings with confidence labels → analysis
by dimension → contrasting views and uncertainties → implications and recommendations →
limitations → source appendix (internal sources listed separately).

Before you deliver, check: capability disclosure stated; every dimension has dated, sourced
current-state data; verification pass completed and single-source flags applied; resource list
contains only verified links; limitations section is honest rather than decorative.
