---
name: deep-research
description: Runs evidence-grade research protocols and formats the results as defined deliverables. Use when researching or analyzing a topic, market, or competitor; investigating a failure or incident; assessing technology readiness (TRL); mapping standards, regulatory requirements, or patent landscapes; sweeping prior art; building a SWOT; or producing a research report, executive briefing, white paper, technical brief, case study, or market research report. Enforces mandatory web-search citation, claim verification, internal-vs-public source separation, and High/Moderate/Low/Inference confidence labeling.
license: MIT
---

# Deep Research

Structured research protocols that produce sourced, verified, confidence-labeled findings in
defined deliverable formats. This skill is a router: pick the protocol matching the request,
read that protocol file, execute it, and deliver per the matching output template.

## Workflow

1. **Select the protocol** from the table below and **read the protocol file before starting**.
   The protocol files are written as prompt templates addressed to you — treat their
   instructions as your workflow, with the user's request supplying `[topic]` and any optional
   bracketed fields.
2. **Capability check** (every protocol starts with one):
   - Web search available → using it is **mandatory**; cite what you find.
   - Internal/company data connected (drives, wikis, connectors, project files) → search it as a
     separate pass; mark those findings **[INTERNAL]** and keep them separated from public findings.
   - No search tools → say so up front, state your knowledge cutoff, label everything as
     unverified; never compensate by inventing sources.
3. **Scope** — if the request is ambiguous, ask the few clarifying questions the protocol
   allows; otherwise state your working assumptions in one line and proceed.
4. **Execute the protocol**, then run its verification pass and pre-delivery checklist.
5. **Deliver** using the output template named in the protocol (table below) — read the
   template file before writing the deliverable. Apply the style binding (below) if present.

## Protocol selection

| Request looks like | Protocol file |
|---|---|
| "Get me smart on X fast", meeting prep | [protocols/quick-research-briefing.md](protocols/quick-research-briefing.md) |
| Full research behind a real decision | [protocols/comprehensive-research-analysis.md](protocols/comprehensive-research-analysis.md) |
| "Map this engineering domain I don't know" | [protocols/engineering-domain-explorer.md](protocols/engineering-domain-explorer.md) |
| Technical due diligence, build/buy/invest | [protocols/engineering-technical-analysis.md](protocols/engineering-technical-analysis.md) |
| Failure, incident, or near-miss investigation | [protocols/failure-analysis-investigation.md](protocols/failure-analysis-investigation.md) |
| "How mature is this technology really?" (TRL) | [protocols/technology-readiness-assessment.md](protocols/technology-readiness-assessment.md) |
| Applicable codes, standards, regulations | [protocols/standards-regulatory-research.md](protocols/standards-regulatory-research.md) |
| Market sizing, segmentation, demand | [protocols/market-research-analysis.md](protocols/market-research-analysis.md) |
| Competitor teardown, positioning | [protocols/competitive-landscape-analysis.md](protocols/competitive-landscape-analysis.md) |
| Who is patenting what in an area | [protocols/patent-landscape-analysis.md](protocols/patent-landscape-analysis.md) |
| Prior-art sweep before talking to counsel | [protocols/prior-art-exploration.md](protocols/prior-art-exploration.md) |
| Evidence-backed SWOT | [protocols/swot-analysis.md](protocols/swot-analysis.md) |

If several could apply, prefer the most specific; for broad multi-part requests, chain protocols
(e.g., domain-explorer → technical-analysis) and say you are doing so.

## Deliverables

Default per protocol, overridable by the user's request:

| Deliverable | Template file |
|---|---|
| Research report (default for most protocols) | [outputs/research-report.md](outputs/research-report.md) |
| Executive briefing (1–2 pages) | [outputs/executive-briefing.md](outputs/executive-briefing.md) |
| White paper | [outputs/white-paper.md](outputs/white-paper.md) |
| Technical brief | [outputs/technical-brief.md](outputs/technical-brief.md) |
| Case study | [outputs/case-study.md](outputs/case-study.md) |
| Market research report | [outputs/market-research-report.md](outputs/market-research-report.md) |
| SWOT one-pager | [outputs/swot-one-pager.md](outputs/swot-one-pager.md) |
| Incident analysis report (forensic, 13 sections) | [outputs/incident-analysis-report.md](outputs/incident-analysis-report.md) |

Shared conventions (confidence ladder, citation format, [INTERNAL] separation, placeholder
tokens) are defined in [outputs/README.md](outputs/README.md).

## Style binding

Before rendering a deliverable, check for a filled company style guide:
1. a file named `company-style-guide.md` in this skill's folder, or
2. a filled style guide provided in the conversation or project files.

If found, apply its identity, palette, typography, furniture, naming, and voice rules to the
deliverable. If none is found, deliver clean unbranded Markdown — never invent branding. The
blank form is [outputs/style-guide-template.md](outputs/style-guide-template.md); a worked
example is [outputs/style-guide-sample.md](outputs/style-guide-sample.md).

## Non-negotiables (apply to every protocol)

- Never fabricate a source, citation, statistic, or quote. "Not found" is a reportable finding.
- Every non-obvious claim cited: title, publisher/author, date, URL.
- Cross-check the claims conclusions depend on across independent sources; flag `single source`.
- Confidence labels on key findings: **High / Moderate / Low / Inference** (inference declared
  in the same sentence).
- Estimates labeled as estimates, with the method shown.
- Patent and standards protocols are research aids, **not legal advice** — their deliverables
  must state that boundary.
- Findings from internal data stay marked **[INTERNAL]** so documents can be scrubbed for wider
  distribution.
