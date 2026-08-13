#!/usr/bin/env sh
# Rebuild the deep-research skill from the library sources and package it for upload.
# Run from the repository root:  sh skills/build.sh
set -e

SKILL=skills/deep-research

# 1. Sync protocol and output content from the canonical library folders
rm -f "$SKILL"/protocols/*.md "$SKILL"/outputs/*.md
cp prompts/general/*.md prompts/engineering/*.md prompts/market/*.md \
   prompts/patents/*.md prompts/strategy/*.md "$SKILL"/protocols/
cp outputs/*.md "$SKILL"/outputs/

# 2. Package for Claude Desktop / claude.ai upload (zip must contain the
#    skill folder itself at the zip root)
mkdir -p dist
rm -f dist/deep-research-skill.zip
(cd skills && zip -qr ../dist/deep-research-skill.zip deep-research \
  -x "deep-research/company-style-guide.md")

echo "Synced $(ls "$SKILL"/protocols/*.md | wc -l) protocols and $(ls "$SKILL"/outputs/*.md | wc -l) output files."
echo "Package: dist/deep-research-skill.zip"
