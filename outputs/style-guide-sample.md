# Style Guide — Worked Sample (Fictional Company)

> **This is a worked example** of [`style-guide-template.md`](style-guide-template.md), filled in
> for **Meridian Flow Systems, Inc. — a fictional company** invented for this sample (note the
> reserved `.example` domain and 555 phone number). To adopt the system: copy the **template**,
> not this file; fill it in like this for your organization; keep your filled copy **private**;
> and attach it to your AI assistant alongside any output template. One line does the rest:
> *"Apply the attached style guide to the deliverable."*

---

## 1. Identity

| Token | Value |
|---|---|
| `[COMPANY]` | Meridian Flow Systems, Inc. |
| `[COMPANY_SHORT]` | Meridian |
| `[TAGLINE]` | Precision in Motion Since 1987 |
| `[WEBSITE]` | www.meridianflow.example.com |
| `[CONTACT]` | info@meridianflow.example.com \| (614) 555-0142 |
| `[PREFIX]` | MFS |

**Naming rule:** always "Meridian Flow Systems, Inc." on first mention in every document;
"Meridian" is acceptable afterwards. Never "Meridian Flow", "MFS Inc.", or "Meridian Systems".
"MFS" appears only in file names, never in body text.

## 2. Boilerplate

**`[BOILERPLATE]` — full version (white papers, long-form documents):**

> About Meridian Flow Systems, Inc.
>
> Founded in 1987, Meridian Flow Systems, Inc. is an employee-owned designer and manufacturer of
> industrial pumping and flow-control systems headquartered in Columbus, Ohio. Meridian
> engineers, builds, and services metering pump skids, chemical-dosing systems, and custom
> flow-control packages for water treatment, chemical processing, and food-grade applications
> across North America. From hydraulic design through commissioning and aftermarket support,
> Meridian provides complete system lifecycle coverage from a single U.S. facility.
>
> Precision in Motion Since 1987.
>
> www.meridianflow.example.com \| info@meridianflow.example.com \| (614) 555-0142

**`[BOILERPLATE]` — short version (briefs, one-pagers):**

> Meridian Flow Systems, Inc. is an employee-owned manufacturer of industrial pumping and
> flow-control systems, headquartered in Columbus, Ohio since 1987. Precision in Motion.

**`[CONFIDENTIALITY_NOTICE]` — restricted documents (cover page):**

> CONFIDENTIAL: This document is the proprietary and confidential property of Meridian Flow
> Systems, Inc. It may not be reproduced, distributed, or disclosed to any third party without
> prior written consent. © [Year] Meridian Flow Systems, Inc. All rights reserved.

**Public documents (one line):** © [Year] Meridian Flow Systems, Inc. All rights reserved.

## 3. Color palette

| Role | Token | Value |
|---|---|---|
| Primary accent (H1, rules, emphasis) | `[PRIMARY_COLOR]` | Meridian Teal — #0E7C7B |
| Dark neutral (H2, solid fills) | `[DARK_NEUTRAL]` | Graphite — #212121 |
| Body text | `[TEXT_COLOR]` | Ink — #2E2E2E |
| Muted (captions, headers/footers, borders) | `[MUTED_COLOR]` | Slate — #6B6B6B |
| Background tint (callouts, alternating rows) | `[TINT_COLOR]` | Mist — #EEF7F6 |

House rules: never pure black (#000000) for text; never lighten or darken these values ad hoc —
the five tokens above are the entire palette.

## 4. Typography

| Element | Spec |
|---|---|
| Headings | Archivo Bold (fallback: Arial Bold); H1 28pt in Meridian Teal, H2 18pt in Graphite, H3 13pt in Ink |
| Body | Inter (fallback: Arial), 11pt, 1.15 line spacing, Ink |
| Captions, header/footer | Inter, 9pt, Slate |
| Pull quotes / key insights | Inter Italic, 14pt, left rule in Meridian Teal, max 40 words, text must appear verbatim in the body |

## 5. Document furniture

- **Header (body pages):** document title left, "Meridian Flow Systems, Inc." right, 1pt Slate
  rule below.
- **Footer (body pages):** "© [Year] Meridian Flow Systems, Inc." left, "Page X of Y" right,
  1pt Slate rule above.
- **Cover page (shared documents):** Meridian Teal accent bar; identity line "Meridian Flow
  Systems, Inc. | [Document Type]"; title; subtitle in Meridian Teal italic; author/date band;
  confidentiality or copyright notice; closing teal accent bar. Cover pages suppress headers
  and footers.
- **Tables:** header row Meridian Teal background with white Inter Bold 10pt text; alternating
  rows White/Mist; thin Slate borders.
- **Callout boxes:** Mist background, 4pt Meridian Teal top border; reserved for specifications,
  key data, and definitions; maximum two per document under 3,000 words.

## 6. File naming

```
MFS_[DocumentType]_[ShortTitle]_[YYYYMMDD].{md|docx|pdf}
```

Examples: `MFS_Whitepaper_DosingSkidTCO_20260813.docx`,
`MFS_SWOT_MeteringPumpLine_20260813.md`. Drafts append `_DRAFT` until sign-off; draft and
iterate in Markdown, render to Word or PDF only after text approval.

## 7. Voice, tone, and mechanics

- **Voice:** expert, direct, plain-spoken — a Meridian applications engineer explaining
  something important to a customer's plant engineer.
- **Superlatives:** none (no "industry-leading", "cutting-edge", "best-in-class") unless quoting
  a third party. Performance numbers carry the argument.
- **Numbers:** spell out one through nine in body text; numerals for 10+, all measurements, and
  all data points. "percent" in prose, "%" in tables.
- **Headings:** descriptive, never clever; the heading outline alone must tell the story.
- **`[PUNCTUATION_RULES]`:** serial comma always; no em dashes in customer-facing documents (use
  a comma, semicolon, or new sentence); sentence-case headings except H1.
- **`[LANGUAGE]`:** English (US). SI units with US customary in parentheses on first use:
  "450 L/h (119 gal/h)".
