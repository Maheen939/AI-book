---
id: 16
title: Specification Clarification — Physical AI Textbook
stage: general
date: 2025-12-07
surface: agent
model: claude-haiku-4.5
feature: textbook
branch: master
user: unknown
command: /sp.clarify
labels: ["clarify","spec","textbook"]
links:
  spec: /specs/physical-ai-robotics-textbook/spec.md
  ticket: null
  adr: null
  pr: null
files:
 - specs/physical-ai-robotics-textbook/spec.md
tests:
 - none
---

## Prompt

/sp.clarify

Clarify ambiguous constraints, edge cases, and missing dependencies for the textbook specification.

## Response snapshot

Added a new "Clarifications & Decisions" section to the specification that resolves:
- Recency and definition of credible sources
- Peer-reviewed percentage and preprint handling
- Paywalled source policy
- Citation file paths and formats (APA 7, BibTeX)
- Plagiarism and readability checks
- Chapter word allocations and figure requirements
- Case study selection rules, ethics & safety inclusion
- Reviewer requirements and data traceability

Decisions:
1) Tooling: Zotero + Better BibTeX (auto-export to `references/references.bib`)
2) Source priority: IEEE/ACM → arXiv → Semantic Scholar/CORE → publisher pages
3) Plagiarism: Turnitin (or manual alternative) for final submission

Next steps: Update `plan.md` and run `/sp.plan` to create the implementation plan and ADRs; begin Phase 0 searches.

## Outcome

✅ Spec updated at `specs/physical-ai-robotics-textbook/spec.md` with clarifications and testable constraints.

