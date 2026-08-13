<!--
Use case: Structured investigation of a failure, incident, or near miss
Best for: Equipment failures, process deviations, control-system incidents, safety trips
Default output: outputs/incident-analysis-report.md
-->

# Failure Analysis Investigation

Investigate the following incident as a forensic analyst. Work evidence-first: inventory what is
known before interpreting anything, consider every credible scenario rather than the first
plausible one, and state plainly what cannot be proven.

**Incident:** [what happened — system, date/time, observed symptoms, consequences]

Optional — fill in or delete:
**Evidence available:** [logs, program files, alarm histories, photos, maintenance records, operator statements]
**System details:** [equipment/controller models, versions, last known-good state]
**Question under review:** [the specific question(s) the investigation must answer]

## Before you begin

- **If you have web search or browsing, use it** for the outside view: known failure modes for
  this equipment class, vendor advisories and firmware errata, relevant standards, and published
  reports of similar incidents. Cite what you find.
- **If you have internal data access**, pull maintenance history, prior incidents on the same
  asset, and golden-copy baselines; mark all of it **[INTERNAL]**.
- **If evidence I listed isn't actually available to you**, say so — analyze what exists and
  record the rest as exclusions. Do not fill evidence gaps with assumption.
- Ask up to 3 clarifying questions if the incident description is ambiguous; otherwise state your
  working assumptions and proceed.

## Investigation protocol

1. **Scope, question, and method** — Restate the question(s) under review; list the artifacts
   examined; record exclusions (what was not examined and why).
2. **Baseline** — The known-good state before the incident: configuration, versions, last backup,
   normal operating parameters.
3. **Evidence basis** — Factual inventory, one paragraph per artifact: what it is and what it
   proves or implies. **No interpretation in this section.**
4. **Timeline** — Chronological table from pre-incident baseline through trigger, system
   response, and human intervention.
5. **Ranked scenarios** — Every credible failure scenario in a table: scenario, mechanism, why
   the evidence makes it plausible, likelihood (High / Medium-High / Medium / Low). Include the
   uncomfortable ones (human factor, unauthorized change) if the evidence permits them.
6. **Fault tree** — Top event in one sentence; each independent branch to it with 3–5 bullets.
7. **Root cause** — Five-whys or fishbone: primary root cause, contributing factors, and the
   **systemic weakness** that let the event become a consequence.
8. **Recommendations** — Corrective actions in a table: action, what it addresses, priority
   (Immediate / High / Medium).
9. **Limitations and confidence** — What this analysis can and cannot prove; what a deeper
   investigation would require (live capture, reproduction, additional records).

## Evidence standards

- The confidence ladder applies to every non-trivial claim: **High** (direct evidence — logs,
  traces, checksums, inspection), **Moderate** (architectural inference from multiple consistent
  pieces of evidence), **Low** (consistent but not provable), and inferences identified as such
  in the same sentence.
- Cite artifacts by their actual names (file, tag, log line, timestamp); cite external sources
  (advisories, standards, papers) with title, publisher, date, URL.
- Do not present a suspected cause as fact before the root-cause section.
- Never fabricate evidence, log entries, or references.

## Deliverable

Follow `outputs/incident-analysis-report.md` if attached (full 13-section forensic format,
executive summary written last). Otherwise deliver the nine protocol sections above in order,
with the executive summary added at the top — written last, reflecting final findings.

Before you deliver, check: evidence and interpretation separated; more than one scenario
seriously considered; systemic weakness named; limitations honest; every claim confidence-labeled.
