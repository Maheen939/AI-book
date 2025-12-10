```markdown
# ADR 003 — Source Priority & Paywall Handling

Date: 2025-12-07

## Context
The project must use free/open resources where possible while ensuring at least 50% peer-reviewed sources.

## Decision
Source priority order:
1. Open-access peer-reviewed (Open Access journals, institutional repositories)
2. arXiv / bioRxiv preprints with clear versioning
3. Semantic Scholar / CORE / Google Scholar (open metadata)
4. Publisher pages for final verification (avoid paywalled PDFs unless author's copy available)

Paywall rule: If the peer-reviewed paper is paywalled, prefer contacting the author or using the accepted manuscript in repositories. Flag paywalled items in `references/references.bib` with the custom field `paywalled = {true}`.

## Consequences
- Encourages reproducibility and user access.
- May reduce available peer-reviewed fraction; mitigated by contacting authors and including high-quality preprints.

## Status
Accepted

``` 
