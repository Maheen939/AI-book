<#
PowerShell script to download arXiv PDFs given a list of arXiv IDs.
Usage:
  - Edit the $ids array with arXiv IDs (e.g., 2101.00001)
  - Run in PowerShell: `.etch_arxiv.ps1`
#>

$ids = @(
  # "2101.00001",
  # "2006.12345"
)
$saveDir = "..\references\pdfs"
if (-not (Test-Path $saveDir)) { New-Item -ItemType Directory -Path $saveDir -Force | Out-Null }

foreach ($id in $ids) {
  $url = "https://arxiv.org/pdf/$id.pdf"
  $outfile = Join-Path $saveDir "$id.pdf"
  try {
    Invoke-WebRequest -Uri $url -OutFile $outfile -UseBasicParsing -ErrorAction Stop
    Write-Output "Downloaded $id -> $outfile"
  } catch {
    Write-Warning "Failed to download $id: $_"
  }
}

Write-Output "Done. Attach PDFs to Zotero via drag/drop or File → Add Files..."
