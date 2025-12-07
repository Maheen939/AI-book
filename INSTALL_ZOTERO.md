# Install & Configure Zotero (Windows)

Follow these steps to set up a free reference workflow for Phase 0.

1) Install Zotero
- Download the Zotero desktop app for Windows from: https://www.zotero.org/download/
- Run the installer and follow the prompts.
- Launch Zotero after installation.

2) Install Zotero Connector (browser)
- Install Zotero Connector for your browser (Chrome/Edge/Firefox) from the Zotero download page or your browser's extension store.
- Sign into Zotero if you want sync features (optional).

3) Install Better BibTeX (BBT) add-on
- Download Better BibTeX: https://retorque.re/zotero-better-bibtex/
- In Zotero: Tools → Add-ons → Install Add-on From File... → select the downloaded `.xpi` file → restart Zotero.
- BBT gives you reliable `.bib` export, citation keys, and auto-export capability.

4) Create a project collection
- In Zotero: File → New Collection → name: `Physical AI Textbook`.
- Use this collection to save all Phase 0 items.

5) Configure auto-export (Better BibTeX)
- Right-click the collection → Export Collection...
- Choose `Better BibLaTeX` (or Better BibTeX) as the format.
- Check `Keep updated` to enable auto-export.
- Save to: `D:\agentic ai\Ai textbook\references\references.bib`.

6) Export APA 7 bibliography
- Select items → Right-click → Create Bibliography from Items → Style: `APA 7th Edition` → Output Mode: `Save as RTF` or `Copy to Clipboard`.
- Paste or save to `D:\agentic ai\Ai textbook\references\bibliography.apa7.txt`.

7) Attach PDFs
- Use the Zotero Connector on arXiv, Semantic Scholar, or publisher pages to save metadata + PDF.
- Or use `File → Add Files...` to attach PDFs you downloaded.

8) Tips for paywalled papers
- Look for preprints on arXiv or institutional pages (often free).
- Use Google Scholar `All versions` links.
- Avoid unauthorized sources; prefer open access copies.

9) Pandoc + citations (optional)
- If you write in Markdown and use Pandoc, keep `references\references.bib` and run:
```powershell
pandoc mydoc.md --citeproc --bibliography=references\references.bib --csl=apa.csl -o mydoc.pdf
```
- Get `apa.csl` from: https://github.com/citation-style-language/styles

---

If you want, I can:
- Prepare a `.bib` with initial 10–15 open-access references you can import into Zotero (RIS/BIB).  
- Or walk you step-by-step through Zotero installation interactively.

Tell me which and I'll proceed.
