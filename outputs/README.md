# Output Templates

This folder defines **what the research deliverables look like**. Each file is a deliverable
specification: required section structure, length band, audience, and writing standards. The
prompts in `../prompts/` tell the AI how to *do* the research; these templates tell it how to
*package* the result.

## How to use a template

1. Pick the deliverable that fits your need (see the table below).
2. Give your AI assistant the research prompt **and** the template file (attach it, paste it, or
   add it to your project/workspace files).
3. Add one line to your request: *"Deliver the results as a [deliverable name] following the
   attached template."*

If you don't attach a template, every prompt still produces a well-structured result — each prompt
carries a compact default output contract inline. Templates matter when you need consistent,
repeatable documents across a team.

## Choosing a deliverable

| Deliverable | Length | Use it when |
|---|---|---|
| [research-report.md](research-report.md) | 5–15 pages | Default for any substantial research run; full findings + evidence |
| [executive-briefing.md](executive-briefing.md) | 1–2 pages | Decision-makers need the answer, not the journey |
| [white-paper.md](white-paper.md) | 2,000–6,000 words | Public thought-leadership or educational piece |
| [technical-brief.md](technical-brief.md) | 800–2,000 words | Single focused technology, method, or issue |
| [case-study.md](case-study.md) | 1,000–3,000 words | Narrating a specific project or engagement with results |
| [market-research-report.md](market-research-report.md) | 5–20 pages | Market sizing, segmentation, demand, and competitive context |
| [swot-one-pager.md](swot-one-pager.md) | 1 page | Fast, evidence-backed strategic snapshot |
| [incident-analysis-report.md](incident-analysis-report.md) | as needed | Forensic analysis of a failure, incident, or near miss |

## Placeholder conventions

Templates are company-neutral. Anything in `[SQUARE_BRACKETS_CAPS]` is a placeholder you bind
once for your organization:

| Placeholder | Meaning |
|---|---|
| `[COMPANY]` | Full legal or trading name |
| `[COMPANY_SHORT]` | Accepted abbreviation after first mention |
| `[TAGLINE]` | Brand tagline, if used on covers |
| `[BOILERPLATE]` | Your standard "About us" paragraph |
| `[PREFIX]` | File-name prefix (e.g., your initials or ticker) |
| `[PRIMARY_COLOR]`, `[HEADING_FONT]`, `[BODY_FONT]`, ... | Visual identity tokens |

The full set lives in [style-guide-template.md](style-guide-template.md). Copy that file, fill it
in once, keep your filled copy **private** (it's your brand, not the world's), and hand it to the
AI alongside any template. Structure is mandatory; styling is optional — a template followed in
plain Markdown is still compliant.

## Universal conventions (apply to every deliverable)

- **Confidence ladder.** Non-trivial findings carry a confidence label:
  - **High** — supported by direct evidence from multiple independent, reliable sources.
  - **Moderate** — supported by consistent evidence, but fewer sources or partial data.
  - **Low** — consistent with available evidence but not well corroborated.
  - **Inference** — reasoned from context or architecture rather than observed in a source; the
    sentence must say so.
- **Citations.** Title, publisher/author, publication date, URL (and access date for anything
  volatile). No fabricated sources, ever — a missing source is stated as missing.
- **Internal vs. public.** Findings from internal company data are clearly marked **[INTERNAL]**
  and listed separately in the source appendix, so a document can be scrubbed for wider
  distribution quickly.
- **Executive summaries are written last** and must stand alone.
- **Estimates are labeled as estimates**, with the method stated (e.g., "bottom-up from X").
