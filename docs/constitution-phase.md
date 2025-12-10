---
title: Constitution Phase
---

## Purpose

The Constitution phase (`/sp.constitution`) defines the project's non-negotiable quality rules and constraints. Treat the constitution as project policy that every artifact must satisfy.

## Typical Constitution Items

- **Citation Format:** APA 7 for manuscript, BibTeX for build pipeline.
- **Source Policy:** Prefer open-access; target ≥50% peer-reviewed sources for Phase 0.
- **Plagiarism Threshold:** Zero-tolerance for unattributed copying; run plagiarism checks before major releases.
- **Reproducibility:** Provide data, scripts, and exportable `.bib` so builds can be reproduced.

## How to Run

1. Create or update `00-CONSTITUTION.md` (project root or `.specify/memory/`).
2. Run `/sp.constitution` (or manually publish the document) and record a PHR in `history/prompts/`.

## Acceptance Criteria

- Constitution file exists and is committed.
- CI or local checks enforce at least one rule (e.g., BibTeX present, plagiarism check configured).
