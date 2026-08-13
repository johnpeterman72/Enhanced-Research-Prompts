# Rebuild the deep-research skill from the library sources and package it for upload.
#   powershell -File skills/build.ps1           -> dist/deep-research-skill.zip (public)
#   powershell -File skills/build.ps1 -Private  -> dist/deep-research-skill-private.zip
#                                                  (includes company-style-guide.md from the
#                                                  repo root, if present)
param([switch]$Private)
$ErrorActionPreference = "Stop"

$skill = "skills/deep-research"

# 1. Sync protocol and output content from the canonical library folders
Remove-Item "$skill/protocols/*.md" -ErrorAction SilentlyContinue
Remove-Item "$skill/outputs/*.md" -ErrorAction SilentlyContinue
Copy-Item "prompts/general/*.md","prompts/engineering/*.md","prompts/market/*.md","prompts/patents/*.md","prompts/strategy/*.md" -Destination "$skill/protocols/"
Copy-Item "outputs/*.md" -Destination "$skill/outputs/"

# 2. Package (zip must contain the skill folder itself at the zip root)
New-Item -ItemType Directory -Force "dist" | Out-Null
$staging = Join-Path $env:TEMP "deep-research-skill-staging"
Remove-Item $staging -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $staging | Out-Null
Copy-Item "skills/deep-research" -Destination $staging -Recurse
Remove-Item "$staging/deep-research/company-style-guide.md" -ErrorAction SilentlyContinue

if ($Private) {
    if (-not (Test-Path "company-style-guide.md")) {
        throw "-Private requires company-style-guide.md at the repo root."
    }
    Copy-Item "company-style-guide.md" -Destination "$staging/deep-research/company-style-guide.md"
    $out = "dist/deep-research-skill-private.zip"
} else {
    $out = "dist/deep-research-skill.zip"
}

Remove-Item $out -ErrorAction SilentlyContinue
Compress-Archive -Path "$staging/deep-research" -DestinationPath $out
Remove-Item $staging -Recurse -Force

$p = (Get-ChildItem "$skill/protocols/*.md").Count
$o = (Get-ChildItem "$skill/outputs/*.md").Count
if ($Private) { Write-Output "PRIVATE package (contains your brand identity - do not share): $out" }
else          { Write-Output "Public package: $out" }
Write-Output "Synced $p protocols and $o output files."
