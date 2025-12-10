<#
Build a PDF from repository markdown using pandoc.

Requirements (local):
- Install Pandoc: https://pandoc.org/installing.html
- Install a LaTeX engine (recommended: MikTeX or TeX Live)
- Run this from the repository root (PowerShell)

Example:
pwsh .\scripts\build_pdf.ps1 -OutFile build\Ai-textbook.pdf
#>
param(
    [string]$OutFile = "build\Ai-textbook.pdf",
    [string[]]$Sources = @("specs/physical-ai-robotics-textbook/*.md","docs/*.md")
)

Write-Host "Building PDF to: $OutFile"

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc is not installed or not on PATH. Please install Pandoc and a LaTeX engine (MikTeX/TeX Live)."
    exit 1
}

# Ensure output directory exists
$outDir = Split-Path -Path $OutFile -Parent
if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir -Force | Out-Null }

# Expand source globs
$files = @()
foreach ($pat in $Sources) {
    $files += Get-ChildItem -Path $pat -File -ErrorAction SilentlyContinue | Sort-Object Name | ForEach-Object { $_.FullName }
}

if ($files.Count -eq 0) {
    Write-Error "No markdown source files found. Check the Sources param or the repository layout."
    exit 1
}

Write-Host "Found $($files.Count) source files. Converting with pandoc..."

$pandocArgs = @(
    "-s",
    "-o", $OutFile,
    "--pdf-engine=xelatex",
    "--toc",
    "--metadata=title:Teaching Physical AI & Humanoid Robotics",
    "--metadata=author:Spec-Kit Plus"
)

$pandocArgs += $files

$proc = Start-Process -FilePath pandoc -ArgumentList $pandocArgs -NoNewWindow -Wait -PassThru
if ($proc.ExitCode -ne 0) {
    Write-Error "pandoc failed with exit code $($proc.ExitCode)"
    exit $proc.ExitCode
}

Write-Host "PDF generated successfully: $OutFile"
