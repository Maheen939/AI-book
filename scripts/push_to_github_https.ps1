# Fast GitHub Push Script (HTTPS method)
# No gh CLI required — uses git + HTTPS
# Usage: .\scripts\push_to_github_https.ps1

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "     GitHub HTTPS Push (Phase 0 Complete)" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check if git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git not found. Install from: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Step 2: Initialize repo if needed
if (-not (Test-Path ".git")) {
    Write-Host "📦 Initializing git repository..." -ForegroundColor Cyan
    git init
    git config user.name "Maheen939"
    git config user.email "maheen939@github.com"
} else {
    Write-Host "✅ Git repository already initialized" -ForegroundColor Green
}

# Step 3: Stage & commit
Write-Host "`n📝 Staging all files..." -ForegroundColor Cyan
git add -A

Write-Host "💾 Creating commit..." -ForegroundColor Cyan
git commit -m "Phase 0 complete: 15 curated references, APA bibliography, PDF build & CI workflow"

# Step 4: Ensure main branch
Write-Host "`n🔄 Ensuring main branch..." -ForegroundColor Cyan
$currentBranch = git rev-parse --abbrev-ref HEAD
if ($currentBranch -ne "main") {
    git branch -M main
    Write-Host "✅ Renamed branch to main" -ForegroundColor Green
} else {
    Write-Host "✅ Already on main branch" -ForegroundColor Green
}

# Step 5: Add remote (HTTPS)
Write-Host "`n🔗 Setting up GitHub remote..." -ForegroundColor Cyan
$remoteExists = git config --get remote.origin.url
if (-not $remoteExists) {
    Write-Host "   Enter GitHub username (default: Maheen939):" -ForegroundColor Yellow
    $username = Read-Host "   Username"
    if (-not $username) { $username = "Maheen939" }
    
    Write-Host "   Enter repo name (default: ai-textbook):" -ForegroundColor Yellow
    $repoName = Read-Host "   Repo name"
    if (-not $repoName) { $repoName = "ai-textbook" }
    
    $remoteUrl = "https://github.com/$username/$repoName.git"
    Write-Host "   Remote URL: $remoteUrl" -ForegroundColor Cyan
    git remote add origin $remoteUrl
    Write-Host "✅ Remote added" -ForegroundColor Green
} else {
    Write-Host "✅ Remote already configured: $remoteExists" -ForegroundColor Green
}

# Step 6: Push to GitHub
Write-Host "`n📤 Pushing to GitHub (main branch)..." -ForegroundColor Cyan
Write-Host "   First push may prompt for GitHub authentication..." -ForegroundColor Yellow

try {
    git push -u origin main
    Write-Host "`n*** SUCCESS! Repository pushed to GitHub ***" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your project is now on GitHub:" -ForegroundColor Green
    Write-Host "   https://github.com/$username/$repoName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "GitHub Pages will be available at:" -ForegroundColor Green
    Write-Host "   https://$username.github.io/$repoName/" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "GitHub Actions will auto-build & deploy when you push:" -ForegroundColor Yellow
    Write-Host "   - Checks .github/workflows/ci-deploy.yml" -ForegroundColor Yellow
    Write-Host "   - Builds Docusaurus site (if present)" -ForegroundColor Yellow
    Write-Host "   - Generates PDF via Pandoc" -ForegroundColor Yellow
    Write-Host "   - Publishes to gh-pages branch for Pages URL" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Next Steps:" -ForegroundColor Cyan
    Write-Host "   1. Go to: https://github.com/$username/$repoName" -ForegroundColor Cyan
    Write-Host "   2. Check Actions tab for workflow progress" -ForegroundColor Cyan
    Write-Host "   3. Check Settings > Pages to see your site URL" -ForegroundColor Cyan
    Write-Host "   4. Visit your live site when ready!" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Push failed. Error: $_" -ForegroundColor Red
    Write-Host ""
    Write-Host "Troubleshooting:" -ForegroundColor Yellow
    Write-Host "   - Check your GitHub token is valid" -ForegroundColor Yellow
    $repoUrl = "https://github.com/$username/$repoName"
    Write-Host "   - Ensure repo exists at: $repoUrl" -ForegroundColor Yellow
    Write-Host "   - Try again with: git push -u origin main" -ForegroundColor Yellow
    exit 1
}
