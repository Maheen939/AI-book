```markdown
# Tasks: Phase 0 (Research & Source Collection) — Atomic Breakdown

Each task is designed to be 4–8 hours of focused work with a clear acceptance criterion. Owners should create a PHR after completing each task.

## Task 0.1 — Configure reference workflow (4h)
- Steps:
  1. Install Zotero + Better BibTeX and create collection `Physical AI Textbook`.
  2. Configure Better BibTeX to auto-export to `references/references.bib` (or run the export script below).
  3. Verify `references/references.bib` is writeable by the export.
- Acceptance: `references/references.bib` exists and contains a sample entry exported from Zotero.

## Task 0.2 — Seed search queries & run automated arXiv harvest (6h)
- Steps:
  1. Review query list in `scripts/fetch_arxiv_bib.ps1`.
  2. Run the script to fetch metadata for categories: `cs.RO`, `cs.AI`, `cs.CV`, `eess.SY`.
  3. Inspect produced `references/references.bib` and resolve duplicates.
- Acceptance: `references/references.bib` contains at least 15 BibTeX entries (arXiv or peer-reviewed) and no duplicate keys.

## Task 0.3 — Manual search for peer-reviewed papers (6–8h)
- Steps:
  1. Use Google Scholar, Semantic Scholar, and CORE to find peer-reviewed papers matching the outline.
  2. Add metadata and PDFs to Zotero; tag each entry with `phase0` and `peer-reviewed:true` when applicable.
- Acceptance: At least 8 peer-reviewed entries saved to Zotero and exported to `references/references.bib`.

## Task 0.4 — Gather case studies & standards (4h)
- Steps:
  1. Find vendor/robot platform docs and standards (e.g., ISO safety) with open copies.
  2. Add them to Zotero with tags `case-study` or `standard`.
- Acceptance: 3 case-study/standard entries added and referenced in `phase-0-research-framework.md`.

## Task 0.5 — Validate & annotate sources (4h)
- Steps:
  1. For each item in `references/references.bib`, confirm URL/DOI and license where possible.
  2. Flag paywalled entries by adding `paywalled = {true}` to the BibTeX entry.
  3. Update `phase-0-references.md` with short annotations (1–2 lines) per source.
- Acceptance: `phase-0-references.md` contains annotations for all entries and paywalled items are flagged.

## Task 0.6 — Create detailed outline & map sources to sections (4–6h)
- Steps:
  1. Draft `specs/physical-ai-robotics-textbook/outline.md` with chapter headings and approx word counts.
  2. Assign 2–4 primary references to each major section.
- Acceptance: `outline.md` created and assigned references cover major claims.

## Work pattern and PHRs
-## Work pattern and PHRs
- After completing each task, create a Prompt History Record in `history/prompts/phase-0/` describing actions, search queries used, and any decisions.

## Phase 1 — Drafting Content (atomic tasks)

Each task below is scoped to a 4–8 hour focused effort with a clear acceptance criterion.

### Task 1.1 — Chapter 1: Introduction draft (6h)
- Steps:
  1. Draft 800–1,000 words covering scope, motivation, and learning outcomes.
  2. Insert 3–5 inline citations from `references/references.bib`.
- Acceptance: `docs/chapter-1-introduction.md` exists, meets word count, and citations validate claims.

### Task 1.2 — Chapter 2: Foundations (6–8h)
- Steps:
  1. Draft foundational concepts (control, perception, localization) with citations.
  2. Add figure placeholders and short captions.
- Acceptance: `docs/chapter-2-foundations.md` created with citations and placeholders.

### Task 1.3 — Chapter 3: Embodied AI & LLMs in Robotics (6–8h)
- Steps:
  1. Draft sections on embodied reasoning, LLM integration, and safety considerations.
  2. Annotate where SME review is needed.
- Acceptance: `docs/chapter-3-embodied-ai.md` created and assigned reviewers.

### Task 1.4 — Create figures and diagrams (4–6h)
- Steps:
  1. Collect figure references, create simple SVG/PNG placeholders in `docs/img/`.
  2. Add alt text and captions.
- Acceptance: At least 4 figure placeholders added and referenced in drafts.

### Task 1.5 — Internal draft review & integrate feedback (8h)
- Steps:
  1. Run a quick internal review, fix clarity issues and citation problems.
  2. Record a PHR summarizing feedback and changes.
- Acceptance: Drafts updated and a PHR recorded at `history/prompts/phase-1/`.

## Phase 2 — QA, Review & Validation (atomic tasks)

### Task 2.1 — Fact-check & DOI verification (4–6h)
- Steps:
  1. For each citation in drafts, validate DOI/URL and license.
  2. Update `.bib` entries with DOIs and `paywalled = {true}` if necessary.
- Acceptance: All cited items have valid DOIs/URLs or are flagged.

### Task 2.2 — Plagiarism scan & remediation (4–8h)
- Steps:
  1. Run text sections through a plagiarism checker (institutional or open tools).
  2. Rewrite flagged passages and re-cite.
- Acceptance: Plagiarism score below project threshold; PHR documents remediation.

### Task 2.3 — Readability and accessibility pass (4h)
- Steps:
  1. Run `textstat` or `readability` checks on drafts.
  2. Ensure alt text is present and headings semantic.
- Acceptance: Readability targets met or justified, accessibility checks passed.

### Task 2.4 — SME review sessions (2–3 sessions, 4–6h each)
- Steps:
  1. Schedule SME reviews for key chapters.
  2. Incorporate feedback and log decisions in ADRs/PHRs.
- Acceptance: SME comments resolved or tracked in issues; PHR recorded.

## Phase 3 — Finalization & Deployment (atomic tasks)

### Task 3.1 — Final formatting and PDF build (4–6h)
- Steps:
  1. Use Pandoc with `--citeproc` to generate a PDF from markdown.
  2. Validate figure placement and references.
- Acceptance: `build/textbook-manuscript.pdf` created and passes spot checks.

### Task 3.2 — Prepare Docusaurus site and deploy (4–6h)
- Steps:
  1. Finalize docs structure under `docs/`, ensure sidebars link to chapters.
  2. Build and test the site locally, then prepare GitHub Pages deployment scripts.
- Acceptance: Site builds and serves locally; deployment instructions added to `README-DOCUSAURUS-SETUP.md`.

### Task 3.3 — Release notes and tagging (2h)
- Steps:
  1. Draft release notes summarizing changes and decisions.
  2. Tag repository with release version.
- Acceptance: Release notes added and tag created in git (manual step).

### Task 3.4 — Archive artifacts & PHRs (2h)
- Steps:
  1. Consolidate PHRs, ADRs, and final artifacts under `history/`.
  2. Produce a short `SETUP-COMPLETE.md` and checklist.
- Acceptance: History folder complete and `SETUP-COMPLETE.md` updated.

``` 

``` 
