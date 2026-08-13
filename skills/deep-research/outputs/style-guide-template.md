# Style Guide Template (Brand Binding)

Copy this file, fill in every `[PLACEHOLDER]`, and keep your filled copy **private** — it will
contain your company identity. Provide the filled copy to your AI assistant together with any
output template, and it will render deliverables in your house style. Left unfilled, deliverables
default to clean, unbranded Markdown, which is always acceptable.

**Not sure what "filled in" should look like?** See
[`style-guide-sample.md`](style-guide-sample.md) — a complete worked example for a fictional
company.

---

## 1. Identity

| Token | Value |
|---|---|
| `[COMPANY]` | Full company name, e.g., Acme Industrial Systems, Inc. |
| `[COMPANY_SHORT]` | Abbreviation allowed after first mention, e.g., Acme |
| `[TAGLINE]` | Cover-page tagline (optional) |
| `[WEBSITE]` | Public website |
| `[CONTACT]` | Public contact line (role account, not a person) |
| `[PREFIX]` | File-name prefix, e.g., ACME |

**Naming rule:** the company name is written exactly as `[COMPANY]` on first mention in every
document; `[COMPANY_SHORT]` is acceptable afterwards. Note any forbidden variants here (e.g.,
"never 'Acme Industrial' without 'Systems'").

## 2. Boilerplate

`[BOILERPLATE]` — your standard "About `[COMPANY]`" paragraph(s), used at the end of white
papers, briefs, and case studies. Provide a full version (60–120 words) and a short version
(25–40 words). Keep the core facts fixed; length may adapt to the document.

`[CONFIDENTIALITY_NOTICE]` — the paragraph used on cover pages of restricted documents, and the
one-line copyright used on public ones, e.g., `© [Year] [COMPANY]. All rights reserved.`

## 3. Color palette

Define roles, not just colors — every color needs a job.

| Role | Token | Example |
|---|---|---|
| Primary accent (H1, rules, emphasis) | `[PRIMARY_COLOR]` | #0B5FFF |
| Dark neutral (H2, solid fills) | `[DARK_NEUTRAL]` | #141414 |
| Body text | `[TEXT_COLOR]` | #282828 |
| Muted (captions, headers/footers, borders) | `[MUTED_COLOR]` | #5A5A5A |
| Background tint (callouts, alternating rows) | `[TINT_COLOR]` | #F5F7FF |

Recommended defaults: avoid pure black (#000000) for text; use only defined tints rather than
ad-hoc lightened colors.

## 4. Typography

| Element | Token / spec |
|---|---|
| Headings | `[HEADING_FONT]`, H1 ~28pt in `[PRIMARY_COLOR]`, H2 ~18pt, H3 ~13pt |
| Body | `[BODY_FONT]`, 11pt, 1.15 line spacing |
| Captions, header/footer | `[BODY_FONT]`, 9pt, `[MUTED_COLOR]` |
| Pull quotes / key insights | `[BODY_FONT]` italic, 14pt, left rule in `[PRIMARY_COLOR]`, max 40 words, text must appear verbatim in the body |

## 5. Document furniture

- **Header (body pages):** document title left, `[COMPANY]` right, hairline rule below.
- **Footer (body pages):** `© [Year] [COMPANY]` left, `Page X of Y` right, hairline rule above.
- **Cover page (shared documents):** accent bar, identity line (`[COMPANY] | [Document Type]`),
  title, subtitle, author/date band, confidentiality or copyright notice, closing accent bar.
  Cover pages suppress headers and footers.
- **Tables:** shaded header row (`[PRIMARY_COLOR]` background, white text), alternating row tint,
  thin `[MUTED_COLOR]` borders.
- **Callout boxes:** background `[TINT_COLOR]`, top border `[PRIMARY_COLOR]`; for specifications,
  key data, and definitions; use sparingly (two to three per document).

## 6. File naming

```
[PREFIX]_[DocumentType]_[ShortTitle]_[YYYYMMDD].{md|docx|pdf}
```

Draft convention: append `_DRAFT` until sign-off. Draft and iterate in Markdown; render to the
final format (Word, PDF, slides) only after the text is approved — binary formats are slow to
iterate on.

## 7. Voice, tone, and mechanics

Fill in your preferences; the defaults below are recommended.

- **Voice:** expert, direct, plain-spoken — a practitioner explaining something important to a
  peer, not a marketing department generating content.
- **Superlatives:** no promotional superlatives (world-class, cutting-edge, industry-leading,
  best-in-class) unless quoting a third party. Let data speak.
- **Numbers:** spell out one through nine in body text; numerals for 10+, all measurements, and
  all data points. "percent" in prose, "%" in tables.
- **Headings:** descriptive, not clever; a reader scanning headings alone should follow the
  argument.
- **Punctuation preferences:** `[PUNCTUATION_RULES]` — note any house rules (e.g., em-dash
  policy, serial comma, capitalization style).
- **Language:** `[LANGUAGE]` (default: English).
