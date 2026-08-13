# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A public library of AI research prompts and output templates, published at
github.com/johnpeterman72/Enhanced-Research-Prompts. Prompts are written for modern AI
assistants (web search, deep-research modes, internal-data connectors) and are
platform-agnostic: Claude, ChatGPT, Gemini, and others.

## Structure

- `prompts/{general,engineering,market,patents,strategy}/` — twelve research prompts,
  kebab-case `.md` files. Each is a self-contained, copy-paste-ready prompt.
- `outputs/` — deliverable templates (research report, executive briefing, white paper,
  technical brief, case study, market research report, SWOT one-pager, incident analysis
  report), plus `style-guide-template.md` (brand-binding placeholders) and `outputs/README.md`
  (conventions).
- `res/` — repository assets (header image).
- `skills/` — the library packaged as a `deep-research` Agent Skill (works in Claude Code and
  claude.ai/Desktop). `skills/deep-research/{protocols,outputs}/` are **copies** of `prompts/`
  and `outputs/` (skills must be self-contained): after editing the library, run
  `sh skills/build.sh` or `powershell -File skills/build.ps1` to re-sync them and rebuild the
  upload zip in `dist/` (gitignored). SKILL.md frontmatter must stay cross-platform: only
  `name`, `description`, `license` (no Claude Code-only fields).

## The shared prompt anatomy

Every prompt follows the same skeleton — preserve it when editing or adding prompts:

1. HTML comment header (use case, best for, default output, lineage if any)
2. Mission + `**Topic:** [topic]` plus optional bracketed input fields
3. "Before you begin" — capability check (web search mandatory if available; internal data
   marked `[INTERNAL]`; honest degradation without tools) + scoping questions
4. The research/analysis protocol (numbered framework, prompt-specific)
5. Evidence standards — citations (title, publisher, date, URL), cross-checking, `single source`
   flags, no fabricated sources, estimates labeled with method
6. Confidence labels — **High / Moderate / Low / Inference**
7. Deliverable — references an `outputs/` template with an inline fallback structure
8. A "before you deliver, check" list

Conventions: `[topic]` is the standard placeholder; `[SQUARE_BRACKETS_CAPS]` tokens in
`outputs/` are brand placeholders bound via `style-guide-template.md`; kebab-case filenames.

## Private files — never publish

`report_outputs_standard.md` (and any filled style guide) contains company-specific standards
and is **gitignored — it must never be committed or pushed**. The same applies to `*.txt`
legacy files and local tooling artifacts (see `.gitignore`).

Before any push, run the sanitization gate: grep tracked files case-insensitively for company
identifiers (names, domains, phone numbers, client/site names, internal project codes) and
confirm zero matches, and confirm `git ls-files` contains no gitignored-class files. When
genericizing content from private standards into `outputs/`, replace every identity element
with `[PLACEHOLDER]` tokens.

## Working on the library

- New prompts follow the shared anatomy above; new deliverables get an `outputs/` template and
  a row in the README selection guide.
- Keep prompts to roughly 1–2 pages — they must stay paste-able into a chat box.
- Update the README selection guide and `outputs/README.md` table whenever files are added,
  renamed, or removed.
- The v1 prompts (both generations) were consolidated in v2 and deleted; their content is in
  git history — do not resurrect them alongside their successors.
