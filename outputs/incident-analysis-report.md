# Incident Analysis Report (Forensic Format)

**Purpose:** the "black box" record of a failure event — a process deviation, safety trip,
equipment failure, control-system incident, suspected cyber-physical event, or operational near
miss. Written to survive later scrutiny: insurance, warranty, audit, or regulatory review.
**Audience:** two altitudes at once — the executive who wants the cause and the cost, and the
engineer who wants the tag, the timestamp, and the failure mechanism.
**Length:** as the evidence demands; completeness of structure matters more than page count.
**Pairs with:** `failure-analysis-investigation`.

The defining discipline of this format: **evidence is separated from interpretation.** Facts are
inventoried before any claim is made; every credible explanation is ranked rather than stopping
at the first plausible one; every claim is labeled with confidence; and the report states plainly
what it cannot prove.

## Confidence ladder (used throughout)

- **High confidence** — supported by direct evidence: logs, traces, checksums, physical
  inspection.
- **Moderate confidence** — supported by architectural inference across multiple consistent
  pieces of evidence.
- **Low confidence** — consistent with the evidence but not provable without additional data.
- When a statement is an inference rather than a direct observation, the same sentence says so.

## Required structure

Keep the sections in this order every time. If a section does not apply, keep the heading and
write one sentence explaining why.

### 1. Front matter and executive summary (written last)
Roughly half a page of tight bullets: **Incident overview** (date, time, duration, affected
system); **the bottom line** (primary cause in one sentence); **impact assessment** (production,
financial, safety, environmental, customer); **resolution status** (back online? permanent fix
or patch? open actions?).

### 2. Scope, question, and method
The question(s) under review in plain language; the artifacts examined (program files, alarm
histories, network captures, maintenance logs, operator interviews); and **exclusions** — what
was not examined and why. This section protects the report from being misread later.

### 3. System configuration and baseline
The known-good state before the incident, as a two-column table: equipment/controller model,
firmware/software versions, network location, last known-good backup (date and checksum),
HMI/SCADA platform, relevant I/O or subsystems.

### 4. Evidence basis
Factual inventory of the evidence: one focused paragraph per artifact or data structure — what
it is, and what it proves or implies. **No interpretation here**; interpretation is reserved for
sections 6, 7, and 9.

### 5. Incident timeline
Chronological table: timestamp | source | event or observation. Establish the pre-incident
baseline (T−10 min), the trigger event (T=0), the system response, and operator interventions.

### 6. Ranked scenarios
The analytical heart. Every credible scenario in a four-column table: **Scenario | Mechanism |
Why it is plausible from the evidence | Likelihood (High / Medium-High / Medium / Low)**. Do not
stop at the first plausible explanation.

### 7. Fault tree view
State the top event in one sentence; then each independent branch that could lead to it as a
sub-heading with three to five tight bullets. A branch needing more bullets is probably two
branches.

### 8. Technical findings
The deep dive: execution/logic analysis (where exactly the failure occurred — rung, function
block, code path, mechanical element), state of critical I/O or parameters at the fault, any
forced/overridden points, and **forensic comparison** against the known-good baseline (deltas,
checksum verification; mismatched hashes raise the unauthorized-change scenario).

### 9. Root cause analysis
Five-whys or fishbone. Name the **primary root cause**, the **contributing factors**, and — the
most important line in the report — the **systemic weakness** that allowed the event to become
an operational consequence. Categories: mechanical/hardware, software/logic, human factor,
external/network, systemic.

### 10. Recommendations and corrective actions
Three-column table: **Control or action | What it addresses | Priority (Immediate / High /
Medium)**. Every row gets an owner assigned at the readout meeting.

### 11. Limitations and confidence
Mandatory. What the report can and cannot prove, using the confidence ladder; what a deeper
investigation would require (live capture, test-stand reproduction, additional records).

### 12. Evidence appendix
Every artifact referenced, with a precise source pointer (file, line range, export, photo ID)
and its use in the report. This is what makes the report defensible in an audit.

### 13. Attachments and sign-off
Screenshots, alarm log exports, network captures, photos. **The findings section is signed and
dated** — in regulated industries this document may serve legal or insurance purposes.

## Authoring workflow

Write in this order: scope and method → configuration baseline → evidence basis → timeline →
fault tree → ranked scenarios → technical findings → root cause → recommendations → limitations
→ evidence appendix → **executive summary last** (it must reflect the final findings, not the
initial hypothesis) → sign and date.

## Style rules

- Plain engineering English; third person in analytical sections.
- Cite artifacts by their actual names (tag, file, log line).
- State confidence explicitly on every non-trivial claim.
- Do not present suspected causes as facts before the root-cause section.
- Tables for any comparison with more than three dimensions.
