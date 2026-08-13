# Rebuild the deep-research skill from the library sources and package it for upload.
# Run from the repository root:  powershell -File skills/build.ps1
$ErrorActionPreference = "Stop"

$skill = "skills/deep-research"

# 1. Sync protocol and output content from the canonical library folders
Remove-Item "$skill/protocols/*.md" -ErrorAction SilentlyContinue
Remove-Item "$skill/outputs/*.md" -ErrorAction SilentlyContinue
Copy-Item "prompts/general/*.md","prompts/engineering/*.md","prompts/market/*.md","prompts/patents/*.md","prompts/strategy/*.md" -Destination "$skill/protocols/"
Copy-Item "outputs/*.md" -Destination "$skill/outputs/"

# 2. Package for Claude Desktop / claude.ai upload (zip must contain the
#    skill folder itself at the zip root)
New-Item -ItemType Directory -Force "dist" | Out-Null
Remove-Item "dist/deep-research-skill.zip" -ErrorAction SilentlyContinue
$staging = Join-Path $env:TEMP "deep-research-skill-staging"
Remove-Item $staging -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $staging | Out-Null
Copy-Item "skills/deep-research" -Destination $staging -Recurse
Remove-Item "$staging/deep-research/company-style-guide.md" -ErrorAction SilentlyContinue
Compress-Archive -Path "$staging/deep-research" -DestinationPath "dist/deep-research-skill.zip"
Remove-Item $staging -Recurse -Force

$p = (Get-ChildItem "$skill/protocols/*.md").Count
$o = (Get-ChildItem "$skill/outputs/*.md").Count
Write-Output "Synced $p protocols and $o output files."
Write-Output "Package: dist/deep-research-skill.zip"
