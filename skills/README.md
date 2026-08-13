# Using the Library as a Claude Skill

This folder packages the entire library — all 12 research protocols, all output templates, and
the style-binding system — as a single [Agent Skill](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
named **`deep-research`** that works in **Claude Code** and in **claude.ai / Claude Desktop**.

A skill is a folder with a `SKILL.md` file. Claude reads only the skill's name and description
at startup; when your request matches, it loads `SKILL.md`, picks the right protocol file, and
follows it — searching, citing, verifying, confidence-labeling, and delivering in the format you
asked for. You stop pasting prompts; you just ask for research.

```
skills/deep-research/
├── SKILL.md          # router: workflow, protocol/deliverable selection, non-negotiables
├── protocols/        # the 12 research protocols (mirrors prompts/)
└── outputs/          # deliverable templates + style guide system (mirrors outputs/)
```

## Install in Claude Code

**For one project** — copy the folder into the project's `.claude/skills/`:

```sh
# macOS / Linux (from your project root; adjust the source path)
mkdir -p .claude/skills && cp -r path/to/Enhanced-Research-Prompts/skills/deep-research .claude/skills/
```
```powershell
# Windows PowerShell
New-Item -ItemType Directory -Force .claude/skills | Out-Null
Copy-Item path\to\Enhanced-Research-Prompts\skills\deep-research .claude\skills\ -Recurse
```

**For every project** — copy it to your personal skills folder instead:
`~/.claude/skills/deep-research/` (macOS/Linux) or `C:\Users\<you>\.claude\skills\deep-research\` (Windows).

**Verify:** start Claude Code and type `/deep-research`, or just ask *"research the market for
industrial heat pumps"* — the skill triggers automatically when the request matches its
description. Project-level installs can be committed to that repo so your whole team gets it.

## Install in claude.ai / Claude Desktop

1. **Build the zip** (from this repo's root):
   - `sh skills/build.sh` (macOS/Linux) or `powershell -File skills/build.ps1` (Windows)
   - Either produces `dist/deep-research-skill.zip` with the skill folder at the zip root —
     the structure the uploader requires. (Zipping `skills/deep-research/` yourself works too,
     as long as the folder itself is at the root of the zip.)
2. **Upload:** Settings → Features → **Skills** (wording varies slightly by app version:
   "Capabilities"/"Custom Skills") → upload the zip. The same flow applies in the Claude
   Desktop app.
3. **Requirements:** custom skills need a **Pro, Max, Team, or Enterprise** plan, and the
   **"Create and edit files"** (code execution) feature enabled in Settings. Skills do **not**
   sync between surfaces — claude.ai, the API, and Claude Code each get their own copy.
4. **Use it:** just ask — *"do a technology readiness assessment of solid-state batteries for
   grid storage"*. Mention "use the deep-research skill" if it doesn't trigger on its own.

## Bind your company style (private)

The skill ships company-neutral. To make deliverables come out in your house style:

1. Copy `outputs/style-guide-template.md`, fill it in (worked example:
   `outputs/style-guide-sample.md`), and save it as `company-style-guide.md` at this repo's
   root.
2. **Claude Code:** also copy it into the root of your installed skill folder (next to
   `SKILL.md`). The skill checks for that exact filename before rendering deliverables.
3. **claude.ai/Desktop:** build with the private flag — `sh skills/build.sh --private` or
   `powershell -File skills/build.ps1 -Private` — which produces
   `dist/deep-research-skill-private.zip` with the style guide inside. The upload is private to
   your account, so your branding stays yours. Treat that zip as confidential.

`company-style-guide.md` and `dist/` are gitignored in this repo, and the default (public)
build excludes the style guide — a filled brand guide never ends up in the public repository or
a shared zip by accident.

## Keeping the skill in sync

`skills/deep-research/protocols/` and `outputs/` are **copies** of the top-level `prompts/` and
`outputs/` folders (a skill must be self-contained to upload). After editing the library, run
the build script to re-sync the copies and refresh the zip — then re-upload on claude.ai/Desktop
(Claude Code picks up file changes automatically).

## Troubleshooting

- **Skill doesn't trigger** — invoke it explicitly (`/deep-research` in Claude Code; "use the
  deep-research skill to..." elsewhere), or phrase the request with the trigger words from its
  description (research, analyze, investigate, assess, SWOT, prior art...).
- **Upload rejected** — check the zip has `deep-research/SKILL.md` at its root (not
  `skills/deep-research/...` or a doubled folder), and that the frontmatter contains only
  cross-platform fields (`name`, `description`, `license` — Claude Code-only fields like
  `context:` or `disable-model-invocation` fail packaging on claude.ai).
- **No Skills section in Settings** — confirm plan (Pro/Max/Team/Enterprise) and that code
  execution / file creation is enabled; update the app.
- **Deliverables come out unbranded** — that's the correct default; add
  `company-style-guide.md` as above.
