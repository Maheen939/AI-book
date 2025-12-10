# Setup script: creates references folder and placeholder files for Zotero export
$root = Split-Path -Parent $MyInvocation.MyCommand.Definition
$projectRoot = Resolve-Path "$root\.." | Select-Object -ExpandProperty Path
# Adjust if running from scripts folder
if ($PWD.Path -ne $projectRoot) {
  Set-Location -Path $projectRoot
}

$refsDir = "references"
$pdfDir = Join-Path $refsDir "pdfs"

New-Item -ItemType Directory -Path $refsDir -Force | Out-Null
New-Item -ItemType Directory -Path $pdfDir -Force | Out-Null

# Placeholder files
$bibFile = Join-Path $refsDir "references.bib"
$apaFile = Join-Path $refsDir "bibliography.apa7.txt"

if (-not (Test-Path $bibFile)) {
  "% Sample BibTeX file - replace with Zotero Better BibTeX export %" | Out-File -FilePath $bibFile -Encoding UTF8
}
if (-not (Test-Path $apaFile)) {
  "# APA 7th Edition bibliography (placeholder)" | Out-File -FilePath $apaFile -Encoding UTF8
}

Write-Output "Created/verified: $refsDir, $pdfDir, references.bib, bibliography.apa7.txt"
Write-Output "Next: configure Better BibTeX in Zotero to auto-export to $bibFile"
