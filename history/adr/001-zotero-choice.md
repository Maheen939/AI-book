```markdown
# ADR 001 — Zotero + Better BibTeX as Reference Management

Date: 2025-12-07

## Context
We require a free, reproducible, local-first reference management workflow that can auto-export BibTeX for builds and integrate with browser capture.

## Decision
We will use Zotero with the Better BibTeX plugin and the Zotero Connector for browser capture. Auto-export will write to `references/references.bib` in the project root.

## Consequences
- Pros: Free, cross-platform, wide capture support, Good BibTeX export, community adoption.
- Cons: Requires user installation and local configuration; automated CI-based exports require a running Zotero instance or an alternate export path.

## Status
Accepted

``` 
