# Research Report

**Purpose:** the default deliverable for any substantial research run — full findings with the
evidence trail that makes them defensible.
**Audience:** mixed — readable at two altitudes: the executive who wants the answer and the
specialist who wants the sources.
**Length:** 5–15 pages (scale to the question; depth of evidence beats page count).
**Pairs with:** every prompt in `../prompts/`; it is the assumed output unless another template
is specified.

## Required structure

### 1. Title block
Topic, author ("prepared with [AI assistant] on [date]"), as-of date of the research, and a
**capability disclosure**: one line stating what was available — web search (yes/no), internal
data sources (which), or model knowledge only. The reader must know how the sausage was made.

### 2. Executive summary (150–300 words, written last)
The question, the answer, the three to five findings that matter, and the single most important
caveat. Must stand alone for readers who stop here.

### 3. Scope, questions, and method
- **Questions under investigation** — stated plainly.
- **Method** — what was searched (web, patent databases, internal sources), what was read, how
  claims were verified.
- **Exclusions** — what was deliberately not examined, and why. This section protects the report
  from being misread later.

### 4. Key findings
Numbered findings, most important first. Each finding is one bolded claim sentence, followed by:
- the supporting evidence with inline citations,
- a confidence label (**High / Moderate / Low / Inference** — see `README.md` for definitions),
- for single-source claims: an explicit `single source` flag.

### 5. Analysis
The body of the report — organized by the analytical framework of whichever research prompt was
used (dimensions, architecture layers, competitive forces, etc.). Interpretation lives here, not
in Key Findings: findings state what is known; analysis argues what it means.

### 6. Contrasting views and uncertainties
Where credible sources disagree, present the disagreement honestly: who says what, on what
evidence, and which view the weight of evidence favors. List open questions the research could
not resolve.

### 7. Implications and recommendations
What the findings mean for the stated audience: opportunities and risks with timeframes,
recommended actions, and the metrics or events to monitor going forward.

### 8. Limitations and confidence
Mandatory. What this report can and cannot establish; where recency, paywalls, proprietary data,
or missing internal access limited the analysis; what a deeper investigation would require.

### 9. Source appendix
Every source cited, one row each: title, publisher/author, date, URL, access date, and which
finding(s) it supports. **Internal sources listed in a separate table marked [INTERNAL]** so the
report can be quickly scrubbed for wider distribution.

## Writing standards

- Findings before interpretation; evidence before opinion.
- Every non-obvious claim cited; no fabricated sources — a missing source is stated as missing.
- Estimates labeled as estimates, with the method stated.
- Descriptive headings; a scan of headings alone should tell the story.
- Style: plain Markdown by default; apply `style-guide-template.md` tokens when a filled style
  guide is provided.
