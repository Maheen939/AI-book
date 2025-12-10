# Create GitHub repo (via REST API) and push local repo (HTTPS)
# Usage: .\scripts\create_github_repo_and_push.ps1
# Requirements: git installed, internet access, a GitHub Personal Access Token (repo scope)

Write-Host "Create GitHub repo and push (HTTPS)" -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ git not found. Install from https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Prompt details
$defaultUser = "Maheen939"
$defaultRepo = "AI-book"

$Username = Read-Host "GitHub username (default: $defaultUser)"
if (-not $Username) { $Username = $defaultUser }

$RepoName = Read-Host "Repository name (default: $defaultRepo)"
if (-not $RepoName) { $RepoName = $defaultRepo }

Write-Host "This script will create the repo '$Username/$RepoName' as PRIVATE and push the current repository contents." -ForegroundColor Yellow

Write-Host "If the repo already exists, the script will attempt to push to it." -ForegroundColor Yellow

if ($env:GITHUB_TOKEN) {
    $Token = $env:GITHUB_TOKEN
    Write-Host "Using GITHUB_TOKEN from environment" -ForegroundColor Cyan
} else {
    $Token = Read-Host "Enter a GitHub Personal Access Token with 'repo' scope (input is visible)"
}

if (-not $Token) { Write-Host "Token required. Create one at: https://github.com/settings/tokens or set GITHUB_TOKEN environment variable" -ForegroundColor Red; exit 1 }

# Check if repo exists
$repoCheckUrl = "https://api.github.com/repos/$Username/$RepoName"
try {
    $existing = Invoke-RestMethod -Uri $repoCheckUrl -Headers @{ Authorization = "token $Token"; 'User-Agent' = 'ai-textbook-script' } -Method GET -ErrorAction Stop
    Write-Host "Repository already exists on GitHub: $($existing.full_name)" -ForegroundColor Green
    $repoExists = $true
} catch {
    $repoExists = $false
}

if (-not $repoExists) {
    Write-Host "Creating repository $Username/$RepoName on GitHub..." -ForegroundColor Cyan
    $body = @{ name = $RepoName; description = "AI textbook project"; @private = $true } | ConvertTo-Json
    try {
        $resp = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Headers @{ Authorization = "token $Token"; 'User-Agent' = 'ai-textbook-script' } -Method POST -Body $body -ContentType 'application/json' -ErrorAction Stop
        Write-Host "✅ Created repo: $($resp.full_name)" -ForegroundColor Green
    } catch {
        Write-Host "❌ Failed to create repository. Error: $_" -ForegroundColor Red
        Write-Host "Check token permissions (need 'repo' scope) and that the repo name is available." -ForegroundColor Yellow
        exit 1
    }
}

# Ensure local git repo
if (-not (Test-Path ".git")) {
    Write-Host "Initializing local git repository..." -ForegroundColor Cyan
    git init
}

# Stage and commit
Write-Host "Staging all changes..." -ForegroundColor Cyan
git add -A

# If there are no commits yet, commit. If commit fails, continue.
try {
    git commit -m "Phase 0 complete: curated refs, APA bib, PDF build + CI workflow" | Out-Null
} catch {
    Write-Host "No changes to commit or commit failed (continuing)." -ForegroundColor Yellow
}

# Add remote if needed
$remoteUrl = "https://github.com/$Username/$RepoName.git"
$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) { $existingRemote = $null }
if (-not $existingRemote) {
    git remote add origin $remoteUrl
    Write-Host "Added remote origin -> $remoteUrl" -ForegroundColor Green
} else {
    Write-Host "Existing remote origin: $existingRemote" -ForegroundColor Cyan
    if ($existingRemote -ne $remoteUrl) {
        Write-Host "Updating remote origin to: $remoteUrl" -ForegroundColor Cyan
        git remote set-url origin $remoteUrl
    }
}

# Ensure main branch
$currentBranch = git rev-parse --abbrev-ref HEAD
if ($currentBranch -ne "main") {
    git branch -M main
    Write-Host "Renamed current branch to 'main'" -ForegroundColor Green
}

# Push
Write-Host "Pushing to GitHub (origin main)..." -ForegroundColor Cyan
try {
    git push -u origin main
    Write-Host "✅ Pushed main branch to https://github.com/$Username/$RepoName" -ForegroundColor Green
} catch {
    Write-Host "Push failed. Attempting to force push..." -ForegroundColor Yellow
    try { git push -u origin main --force; Write-Host "✅ Force-pushed main branch." -ForegroundColor Green } catch { Write-Host "❌ Force push failed: $_" -ForegroundColor Red; exit 1 }
}

Write-Host "Repository URL: https://github.com/$Username/$RepoName" -ForegroundColor Cyan
Write-Host "GitHub Pages (when built) will be at: https://$Username.github.io/$RepoName/" -ForegroundColor Cyan
Write-Host "Now check the Actions tab on GitHub to see the CI workflow (if present) or enable Pages settings in repo Settings → Pages." -ForegroundColor Yellow

Write-Host "Done." -ForegroundColor Green
