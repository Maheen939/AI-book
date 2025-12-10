---
title: Specify Phase
---

## Purpose

The Specify phase (`/sp.specify`) turns high-level goals into precise, testable requirements and acceptance tests.

## Process

1. Write user stories or personas (P1–P3) describing primary stakeholders and their goals.
2. For each story, derive Functional Requirements (FRs) and Non-Functional Requirements (NFRs).
3. Add Acceptance Tests (AT-001, AT-002...) that clearly state how to validate each requirement.

## Example Structure (in `specs/<feature>/spec.md`)
- **User Story P1:** As an instructor, I want examples that students can run locally so they learn safe teleoperation.
- **FR-001:** Provide runnable code examples with documented inputs/outputs.
- **NFR-001:** Examples must run on Windows with Node/Python setup instructions.
- **AT-001:** Follow the guide and run example X; it completes end-to-end on a clean environment.

## Tips

- Keep requirements small and verifiable.
- Cross-reference citations from `references/references.bib` to support claims.
- Record decisions as ADRs under `history/adr/`.
