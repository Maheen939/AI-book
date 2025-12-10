<#
PowerShell helper: fetch arXiv metadata and append BibTeX entries to `references/references.bib`.

Usage:
  - Run from project root (PowerShell):
      .\scripts\fetch_arxiv_bib.ps1 -Queries @('cat:cs.RO AND all:robot','cat:cs.AI AND all:embodied') -MaxResults 50

Notes:
  - This script uses the arXiv API (Atom). It outputs simple BibTeX entries for arXiv items.
  - For peer-reviewed papers not on arXiv, use Zotero manual capture and Better BibTeX auto-export.
#>

param(
    [string[]]$Queries = @('cat:cs.RO AND all:robot','cat:cs.AI AND all:embodied AI','cat:cs.CV AND all:vision robotics'),
    [int]$MaxResults = 50,
    [string]$OutFile = "references/references.bib",
    [switch]$IncludePDF
)

if (-not (Test-Path "references")) { New-Item -Path "references" -ItemType Directory | Out-Null }

function Write-BibEntry($entry, $outFile) {
    $key = ($entry.id -replace 'http://arxiv.org/abs/','') -replace '/','_'
    $title = ($entry.title -replace '\n',' ' -replace '"','\"').Trim()
    $authors = ($entry.author | ForEach-Object { $_.name }) -join ' and '
    $year = $entry.published.Year
    $doi = $entry.doi
    $bib = "@article{arXiv:$key,`n  title = {${title}},`n  author = {${authors}},`n  year = {${year}},`n  eprint = {${key}},`n  archivePrefix = {arXiv},`n  primaryClass = {${entry.primary_category}},`n}"
    Add-Content -Path $outFile -Value $bib
}

foreach ($q in $Queries) {
    Write-Host "Searching arXiv for: $q"
    $base = 'http://export.arxiv.org/api/query?'
    $search = [System.Web.HttpUtility]::UrlEncode($q)
    $url = "${base}search_query=${search}&start=0&max_results=${MaxResults}"
    try {
        $xml = Invoke-WebRequest -Uri $url -UseBasicParsing -ErrorAction Stop
        [xml]$feed = $xml.Content
        foreach ($entry in $feed.feed.entry) {
            # Basic mapping
            $primary = $entry.category.term
            $entry | Add-Member -MemberType NoteProperty -Name primary_category -Value $primary -Force
            Write-BibEntry -entry $entry -outFile $OutFile
        }
    } catch {
        Write-Warning "Failed to fetch $q : $_"
    }
}

Write-Host "Done. BibTeX appended to $OutFile"
