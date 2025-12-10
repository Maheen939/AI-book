# PHR: /sp.implement Phase 0 (seeded)

Date: 2025-12-07

Action: Implement Phase 0 initial work — created a cleaned 15-item selected BibTeX (`references/selected.bib`), added `phase-0-references.md` with annotations, and created `references/bibliography.apa7.txt` starter. Reviewed existing `references/references.bib` output from the arXiv harvest.

Details:
- Selected 15 open-access candidate references from the arXiv output and project placeholders.
- Created `references/selected.bib` with cleaned keys (no colons) and basic fields.
- Created `specs/physical-ai-robotics-textbook/phase-0-references.md` with short annotations and peer-reviewed flags.
- Created `references/bibliography.apa7.txt` (starter APA-7 list) earlier.

Next steps:
- Replace/add OA peer-reviewed papers to reach >=50% peer-reviewed.
- Use Zotero + Better BibTeX to finalize the canonical `references/references.bib` and export APA if desired.
- Run `scripts/download_arxiv_pdfs_from_bib.ps1` once the canonical `.bib` is ready to download PDFs.
