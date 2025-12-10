Reference directory

This folder contains the project's exported bibliography and related reference artifacts.

- `references.bib` — BibTeX export (auto-export from Zotero or generated via `scripts/fetch_arxiv_bib.ps1`).
- `bibliography.apa7.txt` — Optional APA 7 formatted bibliography (exported from Zotero).

To generate a starter `.bib` from arXiv, run (PowerShell):

```powershell
# from project root
.
\scripts\fetch_arxiv_bib.ps1 -Queries @('cat:cs.RO AND all:robot','cat:cs.AI AND all:embodied') -MaxResults 25
```

After running, open `references/references.bib` and inspect entries, then import to Zotero or let Better BibTeX auto-export to the same file.
