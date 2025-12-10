<#
Push repository to GitHub using GitHub CLI.

This script will:
- Ensure `git` and `gh` are available
- Authenticate with GitHub (interactive login if needed)
- Create a private repo under Maheen939 named `ai-textbook`
- Initialize git (if needed), commit all files, set main branch
- Add remote `origin` and push all content

Usage (from repo root):
pwsh .\scripts\push_repo_gh.ps1

Requirements:
- git must be installed
- gh (GitHub CLI) must be installed: https://cli.github.com/
#>

function Ensure-Command {
    param($name, $installUrl)
    if (-not (Get-Command $name -ErrorAction SilentlyContinue)) {
        Write-Error "Required command '$name' not found."
        Write-Error "Please install from: $installUrl"
        exit 1
    }
}

# Check prerequisites
Ensure-Command git "https://git-scm.com/download/win"
Ensure-Command gh "https://cli.github.com/"

$repoOwner = 'Maheen939'
$repoName = 'ai-textbook'

Write-Host "======================================" -ForegroundColor Cyan
Write-Host "Pushing to GitHub: $repoOwner/$repoName" -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan

# Check if authenticated
Write-Host ""
Write-Host "Checking GitHub authentication..." -ForegroundColor Yellow
$authStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "Not authenticated. Opening GitHub CLI login..." -ForegroundColor Yellow
    gh auth login
    if ($LASTEXITCODE -ne 0) {
        Write-Error "GitHub authentication failed. Exiting."
        exit 1
    }
} else {
    Write-Host "Already authenticated." -ForegroundColor Green
}

# Initialize git if needed
Write-Host ""
Write-Host "Initializing local Git repository..." -ForegroundColor Yellow
if (-not (Test-Path .git)) {
    git init
    Write-Host "Git initialized." -ForegroundColor Green
} else {
    Write-Host "Git already initialized." -ForegroundColor Green
}

# Stage all files
Write-Host ""
Write-Host "Staging all files..." -ForegroundColor Yellow
git add .

# Commit
Write-Host "Committing..." -ForegroundColor Yellow
git commit -m "Phase 0 complete: curated refs, APA bib, PDF build + CI workflow" 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Committed successfully." -ForegroundColor Green
} else {
    Write-Host "No new changes to commit (or already committed)." -ForegroundColor Green
}

# Ensure main branch
Write-Host ""
Write-Host "Setting default branch to 'main'..." -ForegroundColor Yellow
git branch -M main
Write-Host "Done." -ForegroundColor Green

# Create repo on GitHub
Write-Host ""
Write-Host "Creating GitHub repository (private)..." -ForegroundColor Yellow
gh repo create $repoOwner/$repoName `
    --private `
    --source=. `
    --remote=origin `
    --push `
    --confirm

if ($LASTEXITCODE -eq 0) {
    Write-Host "Repository created and pushed successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "======================================" -ForegroundColor Cyan
    Write-Host "✓ Project pushed to:" -ForegroundColor Green
    Write-Host "  https://github.com/$repoOwner/$repoName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "  1. Visit GitHub repo to confirm" -ForegroundColor White
    Write-Host "  2. Check Actions tab for CI workflow (builds PDF + deploys)" -ForegroundColor White
    Write-Host "  3. Once workflow completes, Pages URL will be available" -ForegroundColor White
    Write-Host "======================================" -ForegroundColor Cyan
} else {
    Write-Error "Failed to create/push repository. Check error messages above."
    exit 1
}
