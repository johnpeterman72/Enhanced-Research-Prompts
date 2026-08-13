<!--
Use case: Evidence-based maturity rating of a technology
Best for: R&D investment decisions, adoption timing, vendor claims vetting
Default output: outputs/research-report.md (with the TRL evidence table below); outputs/technical-brief.md for the short version
-->

# Technology Readiness Assessment

Assess the maturity of the following technology on the TRL 1–9 scale, with evidence for every
step of the rating — this is a hype filter, not a summary of vendor claims:

**Technology:** [topic]

Optional — fill in or delete:
**Application context:** [the specific use case or environment we'd deploy it in — TRL is context-dependent]
**Decision this informs:** [adopt now, pilot, monitor, invest]
**Internal sources available:** [internal data sources, if any]

## Before you begin

- **If you have web search or browsing, using it is required** — readiness evidence is
  demonstrations, deployments, and datasheets, all of which must be found, dated, and cited.
- **If you have internal data access**, check for our own trials, vendor evaluations, or field
  experience with this technology; mark findings **[INTERNAL]**.
- **If you have no search tools**, say so, state your knowledge cutoff, and label the rating as
  of that date.
- If the technology or application context is ambiguous, ask up to 2 clarifying questions;
  otherwise state the context you are rating against — **a TRL without a stated application
  context is meaningless.**

## Assessment protocol

1. **Definition** — What the technology is, what function it claims to perform, and the
   application context this rating applies to.
2. **Evidence inventory** — Who has demonstrated what, when, where, and at what scale. For each
   item: the demonstrating organization, date, environment (lab / simulated / relevant /
   operational), scale, outcome, and source. Distinguish sharply between:
   - claims in vendor marketing,
   - peer-reviewed or independently verified demonstrations,
   - pilot deployments with named customers,
   - routine commercial operation.
3. **TRL rating** — The rating, justified criterion by criterion against the standard scale
   (1 basic principles → 3 proof of concept → 5 validation in relevant environment → 7 prototype
   in operational environment → 9 proven in operation). Where evidence supports a range rather
   than a point, give the range and say why. Note if different subsystems sit at different TRLs —
   the system rating is gated by the lowest critical subsystem.
4. **Gap to next level** — What specifically has to be demonstrated to advance one level, who is
   positioned to do it, and the obstacles (technical, economic, regulatory).
5. **Trajectory** — How fast has it climbed levels historically? Timeline estimate to the level
   the decision needs, labeled as the estimate it is, with the assumptions shown.
6. **Risks to maturation** — What could stall or kill it: competing approaches, physics limits,
   economics, supply chain, regulation.

## Evidence standards

- Every demonstration claim carries a source (title, publisher, date, URL); vendor claims are
  attributed as vendor claims.
- No independent verification found = say exactly that; absence of evidence is a finding.
- Cross-check the rating's load-bearing demonstrations across at least two independent sources;
  flag `single source` otherwise.
- Confidence labels on the rating and each gap assessment: **High / Moderate / Low / Inference**.
- Never fabricate demonstrations, deployments, or sources.

## Deliverable

Follow `outputs/research-report.md` if attached, with the evidence inventory as a table.
Otherwise: executive summary (rating + confidence + the one thing that would change it) →
definition and context → evidence table → rating justification → gap analysis → trajectory →
risks → limitations → source appendix.

Before you deliver, check: application context stated; every evidence row dated and sourced;
vendor claims separated from independent verification; rating tied to specific criteria, not
vibes; timeline labeled as estimate.
