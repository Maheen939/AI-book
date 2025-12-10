---
title: Implement Phase
---

## Purpose

The Implement phase (`/sp.implement`) is where tasks are executed, evidence is gathered, and PHRs record how AI-assisted or manual activities were run. Implement focuses on reproducible execution and short feedback loops.

## Execution Pattern

1. Pick next task from the tracker (see `specs/.../tasks.md`).
2. Prepare environment and inputs (scripts, Zotero, datasets, queries).
3. Execute the task in a single focused session (4–8 hours). Use AI tools to assist but validate outputs manually.
4. Run acceptance tests and document results.
5. Create a Prompt History Record (PHR) capturing commands, queries, model prompts, and decisions.

## AI Collaboration Guidelines

- Use AI for: drafting text, summarizing papers, creating code snippets, generating search queries, and formatting citations.
- Always verify AI outputs: check citations, DOIs, numeric results, and code correctness.
- Record the exact prompts (or a trace) used with AI in the PHR for reproducibility.

## PHR Contents (minimum)

- **Date/Time** of the session
- **Task ID** and title
- **Commands/Prompts** used (shell commands, AI prompts)
- **Sources searched** and top results
- **Files modified** and short diff (or list of files)
- **Decisions made** and follow-up tasks

## Example Implement Session (research task)

1. Task: `T0-2` — Seed arXiv references
2. Commands:

```powershell
.\scripts\fetch_arxiv_bib.ps1 -Queries @('cat:cs.RO AND all:robot') -MaxResults 25
.\scripts\download_arxiv_pdfs_from_bib.ps1 -BibFile references/references.bib -OutDir references/pdfs
```

3. AI help: Used an LLM to clean BibTeX keys and generate short annotations.
4. Acceptance: `references/selected.bib` contains 15 items and `phase-0-references.md` created.
5. PHR: saved as `history/prompts/phase-0/19-sp-implement.general.prompt.md` with details.

## Failures and Remediation

- If a task fails acceptance, add a remediation task and include the failure evidence in the PHR.
- For external issues (paywalls, missing data), record contact attempts (authors) in the PHR.

## Deliverables

- Updated artifacts (docs, `.bib`, drafts) committed to git with a clear commit message.
- A PHR per implement session stored under `history/prompts/`.
