<#
Download arXiv PDFs referenced in `references/references.bib`.

Usage:
  Run from project root:

  .\scripts\download_arxiv_pdfs_from_bib.ps1 -BibFile references/references.bib -OutDir references/pdfs

Notes:
  - Downloads PDFs from https://arxiv.org/pdf/<id>.pdf for entries containing arXiv IDs (e.g., arXiv:2101.12345).
  - Skips entries without arXiv IDs.
#>

param(
    [string]$BibFile = "references/references.bib",
    [string]$OutDir = "references/pdfs",
    [switch]$Overwrite
)

if (-not (Test-Path $BibFile)) { Write-Error "Bib file not found: $BibFile"; exit 2 }
if (-not (Test-Path $OutDir)) { New-Item -Path $OutDir -ItemType Directory | Out-Null }

$content = Get-Content -Path $BibFile -Raw

$pattern = 'arXiv:([0-9]{4}\.[0-9]{4,5}|[a-z\-]+(\.[A-Z]{2})?/\d{7})'
[regex]$rx = $pattern
$ids = @()
foreach ($m in $rx.Matches($content)) { $ids += $m.Groups[1].Value }
$ids = $ids | Select-Object -Unique

if ($ids.Count -eq 0) { Write-Host "No arXiv IDs found in $BibFile"; exit 0 }

foreach ($id in $ids) {
    $pdfUrl = "https://arxiv.org/pdf/$id.pdf"
    $outPath = Join-Path $OutDir ("$id.pdf")
    if ((Test-Path $outPath) -and -not $Overwrite) { Write-Host "Skipping existing: $outPath"; continue }
    try {
        Write-Host "Downloading $pdfUrl -> $outPath"
        Invoke-WebRequest -Uri $pdfUrl -OutFile $outPath -UseBasicParsing -ErrorAction Stop
    } catch {
      # Use explicit exception message interpolation to avoid parser errors
      $errMsg = if ($_.Exception) { $_.Exception.Message } else { $_.ToString() }
      Write-Warning ("Failed to download {0}: {1}" -f $id, $errMsg)
    }
}

Write-Host "Done. PDFs saved to $OutDir"
