---
title: Plan Phase
---

## Purpose

The Plan phase (`/sp.plan`) converts the clarified spec into an implementation plan, timeline, and ADRs for major decisions (tools, architecture, source policy).

## What the Plan Contains

- Phased schedule (Phase 0..3) with owners and estimated durations.
- Task breakdowns (4–8 hour tasks) with acceptance criteria.
- ADRs for tool and architecture choices (e.g., `history/adr/001-zotero-choice.md`).

## How to Run

1. Use the clarified `spec.md` and the Constitution rules to derive milestones.
2. Create `specs/<feature>/plan.md` and list tasks and owners.
3. Create ADRs for decisions that materially affect implementation or reproducibility.

## Acceptance Criteria

- Plan committed to `specs/` and linked from the project `plan.md`.
- ADRs created for each major decision and stored under `history/adr/`.
- Tasks decomposed into 4–8 hour units in `specs/<feature>/tasks.md`.

## Example Next Steps

- Assign research owners and start Phase 0 tasks.
- Schedule SME reviews during Phase 2.
