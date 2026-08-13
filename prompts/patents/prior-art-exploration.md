<!--
Use case: Sweeping for prior art around a specific invention or concept
Best for: Preparing for a patent-counsel conversation, pre-filing sanity check, novelty scoping
Default output: outputs/research-report.md
Boundary: research aid — NOT legal advice, NOT a patentability or FTO opinion
-->

# Prior Art Exploration

Explore the prior art around a specific invention or concept — patents **and** non-patent
literature — to inform a conversation with patent counsel:

**Invention/concept:** [describe the invention: what it does, how it works, what makes it seem new]

Optional — fill in or delete:
**Key features:** [the specific elements believed to be novel, listed individually]
**Earliest relevant date:** [conception/disclosure date, if known — what counts as "prior" depends on it]
**Internal sources available:** [prior internal disclosures, lab notebooks, published specs]

## Before you begin

- **If you have web search or browsing, using it is required.** Sweep patent databases (Google
  Patents, Espacenet, Lens.org) **and** non-patent literature — papers, conference proceedings,
  product documentation, standards, datasheets, archived web pages. Products and papers
  invalidate novelty as effectively as patents do.
- **If you have internal data access**, check for our own earlier disclosures or products — prior
  art includes us, and counsel needs to know about self-disclosure early.
- **If you have no search tools, stop**: report that a prior-art sweep cannot be responsibly
  produced without search, and provide only the decomposition and search strategy (sections 1–2).
- If the invention description is vague, ask up to 3 clarifying questions — a prior-art sweep
  against a fuzzy invention finds everything and nothing.

## Research protocol

1. **Feature decomposition** — Break the invention into its individual technical features, in a
   numbered list. The sweep is run per feature and per combination; novelty usually dies or
   survives at the combination level.
2. **Search strategy** — Queries, classification codes, databases, and non-patent sources used,
   stated explicitly and reproducibly. Include synonym and adjacent-field terms (prior art hides
   behind different vocabulary).
3. **Closest references** — The most relevant references found, each with: full citation
   (publication number or paper/product identifier, title, source, **date** — verified), what it
   discloses, and a **feature map**: which features from section 1 it appears to show, which it
   does not. Present the map as a table (features × references).
4. **Combination view** — Whether any single reference appears to show all features, and which
   small sets of references together cover them; note the fields the references come from
   (analogous-art breadth matters to counsel).
5. **Gaps and unknowns** — Features for which nothing close was found (stated carefully:
   *this search* found nothing — absence of evidence is not novelty), and areas the search could
   not reach (paywalled papers, non-English filings, unpublished applications within the
   18-month window).

## Evidence standards

- Every reference verified to exist, with real identifiers and dates checked in the database or
  at the source; dates matter more here than anywhere — a reference that postdates the earliest
  relevant date is context, not prior art, and must be marked as such.
- Disclosure descriptions come from what the reference actually says (abstract, claims, figures,
  body text as accessible) — where only an abstract was readable, say so.
- "Appears to show" language throughout — mapping features to disclosures is interpretation, and
  every mapping row carries a confidence label: **High / Moderate / Low / Inference**.
- Never fabricate a reference, number, date, or disclosure.

## Boundary

This is research support for a conversation with patent counsel, **not legal advice**. It is not
a patentability opinion, not a freedom-to-operate opinion, and not a validity analysis. Claim
construction, the legal effect of any reference, and filing decisions belong to qualified
counsel. State this boundary in the deliverable.

## Deliverable

Follow `outputs/research-report.md` if attached, with the feature map as the core table.
Otherwise: executive summary (closest art found, biggest gap, what to ask counsel) → feature
decomposition → search strategy → closest references with feature map → combination view → gaps
and unknowns → limitations → source appendix.

Before you deliver, check: features individually listed; search reproducible; every reference
real, dated, and date-checked against the earliest relevant date; feature map complete with
confidence labels; boundary stated; unpublished-application window acknowledged.
