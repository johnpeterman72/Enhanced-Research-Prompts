<!--
Use case: Mapping the codes, standards, and regulatory landscape for a technology, product, or activity
Best for: Design planning, compliance scoping, market-entry requirements
Default output: outputs/research-report.md with the applicability matrix below; outputs/technical-brief.md for the short version
Boundary: research aid — NOT legal or compliance advice
-->

# Standards & Regulatory Research

Map the standards and regulatory landscape that applies to:

**Subject:** [technology, product, process, or activity]

Required for a useful answer:
**Jurisdiction(s):** [countries/states/markets where this will be built, sold, or operated]

Optional — fill in or delete:
**Industry context:** [sector-specific regimes that may apply]
**Lifecycle stage:** [design, manufacture, installation, operation, disposal]
**Internal sources available:** [internal data sources, if any]

## Before you begin

- **If you have web search or browsing, using it is required.** Standards get revised, withdrawn,
  and superseded; a version number or effective date from memory is a defect. Verify current
  editions on the issuing bodies' own sites wherever possible.
- **If you have internal data access**, check for existing compliance matrices, past
  certification records, or regulatory correspondence; mark findings **[INTERNAL]**.
- **If you have no search tools**, say so and label every version and date as unverified as of
  your knowledge cutoff.
- If jurisdiction or scope is missing or ambiguous, ask before researching — applicability is
  jurisdiction-specific, and a landscape without one is guesswork.

## Research protocol

1. **Regime overview** — Which categories of requirements exist for this subject: statutory
   regulation, mandatory codes adopted by jurisdictions, voluntary consensus standards,
   certification/listing schemes, and industry-body requirements. Name the relevant issuing
   bodies (e.g., ISO, IEC, ASTM, ASME, NFPA, UL, OSHA, EPA, EU directives/harmonized standards —
   as applicable to the subject and jurisdictions).
2. **Applicability matrix** — A table, one row per instrument: designation and title | current
   edition/version and effective date (verified, with source) | what it covers | why it applies
   to this subject | mandatory or voluntary in each stated jurisdiction | notes.
3. **Jurisdiction differences** — Where the stated jurisdictions diverge: different adopted
   editions, local amendments, differing enforcement authorities.
4. **Pending changes** — Proposed revisions, open ballots, announced regulations, or transition
   periods that could affect design or compliance decisions, each with status, expected timing
   (labeled as estimate), and source.
5. **Compliance implications** — What the landscape means practically: which requirements drive
   design, which require third-party certification or listing, where testing is needed, and the
   long-lead items.
6. **Access notes** — Which official texts are freely readable and which are paywalled; where
   only summaries were used, say so — a standard's number being citable does not mean its
   content was verified.

## Evidence standards

- Version numbers and effective dates verified against the issuing body or an official register,
  with source and access date; where verification failed, the row says `unverified`.
- Primary sources (the standard body, the regulator, the official journal) outrank secondary
  summaries; secondary sources are flagged as such.
- Confidence labels on applicability judgments: **High / Moderate / Low / Inference** — an
  applicability call reasoned from scope wording rather than explicit guidance is an Inference
  and must say so.
- Never invent a standard designation, edition, or effective date.

## Boundary

This is research support, not legal or compliance advice. Applicability determinations,
interpretation of requirements, and certification strategy must be confirmed with the authority
having jurisdiction, a certification body, or qualified counsel. Say this in the deliverable.

## Deliverable

Follow `outputs/research-report.md` if attached, with the applicability matrix as its core table.
Otherwise: executive summary → regime overview → applicability matrix → jurisdiction differences
→ pending changes → compliance implications → access notes and limitations → source appendix.

Before you deliver, check: jurisdictions stated; every matrix row has a verified (or flagged)
edition and date; mandatory vs voluntary called per jurisdiction; boundary statement included;
paywalled-content limitations disclosed.
