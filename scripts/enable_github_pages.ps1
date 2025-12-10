# Enable GitHub Pages for a repository using the REST API
# Usage: .\scripts\enable_github_pages.ps1
# Requirements: PowerShell, internet access, a GitHub Personal Access Token (PAT) with 'repo' scope and admin rights for the repo.

param()

Write-Host "Enable GitHub Pages (API)" -ForegroundColor Cyan

$defaultUser = "Maheen939"
$defaultRepo = "AI-book"

$owner = Read-Host "GitHub owner/user (default: $defaultUser)"
if (-not $owner) { $owner = $defaultUser }
$repo = Read-Host "Repository name (default: $defaultRepo)"
if (-not $repo) { $repo = $defaultRepo }
$token = Read-Host "Personal Access Token (repo scope) (input visible)"
if (-not $token) { Write-Host "PAT required. Create one at: https://github.com/settings/tokens" -ForegroundColor Red; exit 1 }

# Check that gh-pages branch exists remotely (informational)
$branchCheckUrl = "https://api.github.com/repos/$owner/$repo/branches/gh-pages"
try {
    $branchResp = Invoke-RestMethod -Uri $branchCheckUrl -Headers @{ Authorization = "token $token"; 'User-Agent' = 'enable-pages-script' } -Method GET -ErrorAction Stop
    Write-Host "Found remote branch: gh-pages" -ForegroundColor Green
} catch {
    Write-Host "Warning: 'gh-pages' branch not found on repo. The Pages publish step may still succeed once the branch is created by the workflow." -ForegroundColor Yellow
}

# Build body to set Pages source to gh-pages
$body = @{ source = @{ branch = "gh-pages"; path = "/" } } | ConvertTo-Json

$pagesUrl = "https://api.github.com/repos/$owner/$repo/pages"
Write-Host "Setting Pages source to branch 'gh-pages' via API..." -ForegroundColor Cyan
try {
    $resp = Invoke-RestMethod -Uri $pagesUrl -Headers @{ Authorization = "token $token"; 'User-Agent' = 'enable-pages-script'; Accept = 'application/vnd.github+json' } -Method PUT -Body $body -ContentType 'application/json' -ErrorAction Stop
    Write-Host "✅ Pages configured. Status: $($resp.status)" -ForegroundColor Green
    Write-Host "URL: $($resp.html_url)" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Failed to configure Pages. Error: $_" -ForegroundColor Red
    Write-Host "Possible reasons:" -ForegroundColor Yellow
    Write-Host " - PAT missing correct scopes (need repo/admin rights)" -ForegroundColor Yellow
    Write-Host " - Repo is not accessible by the token user" -ForegroundColor Yellow
    Write-Host " - Pages is not available for this repo type or must be enabled in the UI" -ForegroundColor Yellow
    exit 1
}

Write-Host "Done. If the Pages site does not appear immediately, wait a couple minutes and refresh the Pages Settings page in the repo." -ForegroundColor Cyan
