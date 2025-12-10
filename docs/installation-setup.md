---
title: Installation & Setup
---

## Configure Your AI Companion & Workspace

1. Install tools (Windows):
   - `Node.js` (>=16) for Docusaurus site building.
   - `Zotero` + `Better BibTeX` (for references) and the Zotero Connector for browser capture.
   - A text editor (VS Code recommended).

2. Project layout (important paths):
   - `specs/` — canonical specification files.
   - `history/` — ADRs and Prompt History Records (PHRs).
   - `references/` — BibTeX and exported bibliographies.
   - `docs/` — Docusaurus site content and teaching materials.

3. Quick setup commands (PowerShell, from project root):

```powershell
Set-Location 'D:\agentic ai\Ai textbook'
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
npm install
npm start    # preview Docusaurus site
```

4. Zotero tips:
   - Create a collection named `Physical AI Textbook`.
   - Install Better BibTeX and configure auto-export to `references/references.bib`.
   - Use tags (`phase0`, `peer-reviewed`) to track items.

5. Scripts included:
   - `scripts/fetch_arxiv_bib.ps1` — seed BibTeX from arXiv queries.
   - `scripts/download_arxiv_pdfs_from_bib.ps1` — download PDFs from arXiv IDs in the BibTeX file.
