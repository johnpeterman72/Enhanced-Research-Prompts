<!--
Use case: Decision-grade market analysis — size, structure, demand, direction
Best for: Market entry, product planning, growth strategy, investment cases
Default output: outputs/market-research-report.md
-->

# Market Research Analysis

Conduct a market research analysis where every number is traceable to a source and a method:

**Market:** [market/product category]

Required for a useful answer:
**Geography and horizon:** [regions and time horizon]

Optional — fill in or delete:
**Decision this informs:** [enter, expand, price, invest, exit]
**Our position:** [incumbent, entrant, supplier, investor]
**Internal sources available:** [CRM, sales data, win/loss records, past studies]

## Before you begin

- **If you have web search or browsing, using it is required.** Market figures from memory are
  stale by definition; find current sources and cite them.
- **If you have internal data access**, use it for the demand side — pipeline, win/loss, customer
  interviews, pricing history — and mark all of it **[INTERNAL]**.
- **If you have no search tools**, say so, state your knowledge cutoff, and label every figure
  accordingly.
- If the market definition is ambiguous (it usually is), ask up to 3 clarifying questions or
  state your definition explicitly before any sizing — **most disagreement between published
  market sizes is definitional.**

## Research protocol

1. **Market definition and segmentation** — What's in and out of scope (products, applications,
   customer types, geographies), stated before any numbers. Segmentation with the logic for it.
2. **Market size and growth** —
   - TAM / SAM / SOM as applicable, each with figure, year, currency, source, and **method**
     (top-down from published totals vs. bottom-up from units × price — show the arithmetic for
     any bottom-up estimate).
   - Published estimates that disagree: present as a range with the definitional reason for the
     spread. Never silently average.
   - Growth: rate plus the drivers behind it, not a bare CAGR.
3. **Demand analysis** — Who buys, why, how the purchase decision works (criteria, cycle, budget
   owner), what is changing, and the substitutes customers actually weigh.
4. **Competitive context** — Major players, published shares, recent moves — summary depth; run
   `competitive-landscape-analysis` separately for a full teardown.
5. **Trends, drivers, and barriers** — Technology, regulatory, and economic forces, each with
   direction, evidence, and timeframe; established trends separated from emerging signals from
   speculation.
6. **Outlook and scenarios** — Base / upside / downside with the assumptions producing each, and
   the leading indicators that would signal which is unfolding.

## Evidence standards

- Every market figure carries source and year inline; every estimate is labeled and shows its
  method.
- Cross-check the figures the conclusions depend on across at least two independent sources;
  flag `single source` — analyst-firm figures that all trace to one report are one source.
- Paid/analyst reports identified as such; free summaries of paid reports treated as secondary.
- Confidence labels on load-bearing findings: **High / Moderate / Low / Inference**.
- Never fabricate a figure, source, or quote. "No public data found" is a finding.

## Deliverable

Follow `outputs/market-research-report.md` if attached. Otherwise: executive summary (written
last) → definition and segmentation → size and growth → demand → competitive context → trends →
scenarios → limitations → source appendix (internal separate).

Before you deliver, check: definition precedes numbers; every figure sourced and dated;
disagreeing estimates shown as ranges; bottom-up arithmetic visible; scenario assumptions
explicit; limitations honest about data quality.
