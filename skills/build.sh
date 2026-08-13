#!/usr/bin/env sh
# Rebuild the deep-research skill from the library sources and package it for upload.
#   sh skills/build.sh              -> dist/deep-research-skill.zip (public, no style guide)
#   sh skills/build.sh --private    -> dist/deep-research-skill-private.zip (includes
#                                      company-style-guide.md from the repo root, if present)
set -e

SKILL=skills/deep-research

# 1. Sync protocol and output content from the canonical library folders
rm -f "$SKILL"/protocols/*.md "$SKILL"/outputs/*.md
cp prompts/general/*.md prompts/engineering/*.md prompts/market/*.md \
   prompts/patents/*.md prompts/strategy/*.md "$SKILL"/protocols/
cp outputs/*.md "$SKILL"/outputs/

# 2. Package (zip must contain the skill folder itself at the zip root)
mkdir -p dist
if [ "$1" = "--private" ]; then
  if [ ! -f company-style-guide.md ]; then
    echo "ERROR: --private requires company-style-guide.md at the repo root." >&2
    exit 1
  fi
  OUT=dist/deep-research-skill-private.zip
  cp company-style-guide.md "$SKILL"/company-style-guide.md
  rm -f "$OUT"
  (cd skills && zip -qr "../$OUT" deep-research)
  rm -f "$SKILL"/company-style-guide.md
  echo "PRIVATE package (contains your brand identity — do not share): $OUT"
else
  OUT=dist/deep-research-skill.zip
  rm -f "$OUT"
  (cd skills && zip -qr "../$OUT" deep-research -x "deep-research/company-style-guide.md")
  echo "Public package: $OUT"
fi

echo "Synced $(ls "$SKILL"/protocols/*.md | wc -l) protocols and $(ls "$SKILL"/outputs/*.md | wc -l) output files."
