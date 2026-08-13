<!--
Use case: Analyst-level assessment of an engineering domain for business decisions
Best for: Technical due diligence, competitive analysis, build/buy/invest decisions
Default output: outputs/research-report.md; outputs/executive-briefing.md for the decision-maker version
Replaces: "Engineering Analysis Scoping Prompt" and "Technical Intelligence Analysis Prompt" (v1)
-->

# Engineering Technical Analysis

Provide an analyst-grade technical intelligence assessment — technical assessment, not tutorial —
of:

**Topic:** [topic]

Optional — fill in or delete:
**Decision this informs:** [build/buy/invest/partner/monitor]
**Our position:** [why we care — competitor, supplier, adopter, investor]
**Internal sources available:** [internal data sources, if any]

## Before you begin

- **If you have web search or browsing, using it is required** — market positions, benchmarks,
  and competitive moves go stale in months.
- **If you have internal company data access**, pull what we already know (past evaluations,
  supplier records, field data) and mark it **[INTERNAL]**, kept separate from public findings.
- **If you have no search tools**, say so, state your knowledge cutoff, and label every market
  and performance figure as of that cutoff.
- If scope is ambiguous (which market, which use case, whose perspective), ask up to 3 clarifying
  questions first; otherwise state your assumptions and proceed.

## Analytical framework

1. **Market-technical position** — The problem space this occupies; current adoption; key players
   with market share or revenue data where published; technical maturity on a stated scale
   (experimental / emerging / established / mature / declining) with the evidence for the rating;
   recent competitive developments or breakthroughs, dated.
2. **Technical architecture** — Core components and how they interact; critical dependencies;
   where the technical debt accumulates; what constraints shape design decisions.
3. **Performance analytics** —
   - **Core metrics**: which quantifiable measures define success (speed, accuracy, cost,
     efficiency, reliability).
   - **Benchmarks**: how current solutions compare, with specific numbers and sources; where no
     public benchmarks exist, say so rather than approximating silently.
   - **Bottlenecks**: the fundamental technical or economic constraints, and whether they are
     engineering problems or physics/economics problems.
4. **Competitive intelligence** —
   - **Differentiation**: what creates sustainable technical advantage here.
   - **Innovation vectors**: where R&D investment is concentrated and what's driving it.
   - **Disruption risks**: what could make current approaches obsolete, with timeline and
     probability, labeled as the estimates they are.
5. **Due-diligence questions** — 3–4 questions for deeper investigation: ones that would reveal
   technical debt or scaling limits, expose economic-viability assumptions, or test whether the
   competitive moat is real.
6. **Strategic assessment** —
   - **Investment thesis**: the bull case and the bear case, each with its load-bearing evidence.
   - **Monitoring framework**: the metrics and events to track to see which case is unfolding.
   - **Risk factors**: technical, competitive, and market, each with a likelihood assessment.

## Evidence standards

- Separate technical merit from market hype — cite evidence for every capability claim.
- Every market figure carries a source and year; conflicting figures shown as a range with the
  reason for the spread.
- Cross-check the claims the thesis depends on across at least two independent sources; flag
  `single source` where that fails.
- Flag where proprietary information limits the analysis — a named blind spot beats a confident
  guess.
- Never invent sources, benchmarks, or statistics. Label estimates and show the method.
- Confidence labels on key findings: **High / Moderate / Low / Inference** (inference stated in
  the same sentence).

## Deliverable

Follow `outputs/research-report.md` if attached; otherwise the framework above with an executive
summary written last, a limitations section, and a source appendix (internal sources separate).
Focus on what's measurable versus what's qualitative — and say which is which.

Before you deliver, check: maturity rating justified; at least three sourced numbers in
performance analytics; bull AND bear case both evidenced; every disruption-risk timeline labeled
as estimate; blind spots named.
