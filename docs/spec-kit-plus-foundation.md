---
title: Spec-Kit Plus Foundation
---

## What Spec-Kit Plus Is

Spec-Kit Plus is a practical lightweight workflow and command set for turning high-level project ideas into reproducible research and documentation. It blends software-style specification practices with research workflows to create a predictable, testable path from concept → spec → plan → execution. The workflow is organized around slash-commands (e.g., `/sp.specify`, `/sp.clarify`) that produce artifacts (specs, ADRs, PHRs) and encourage traceable decisions.

## Why This Book Uses It

- **Reproducibility:** Each phase produces artifacts (PHRs, ADRs, specs) that capture decisions and evidence.
- **Practical pedagogy:** The command-driven flow maps to classroom lessons and project checkpoints.
- **Modularity:** The phases (Constitution, Specify, Clarify, Plan, Tasks, Implement, Intelligence, Adoption) let teams pause and verify before moving on.

## How It Orchestrates SDD-RI Phases

- **Constitution:** Set project-wide quality standards and rules (citation format, peer-review targets, plagiarism thresholds).
- **Specify:** Convert goals into testable requirements and acceptance tests.
- **Clarify:** Iteratively identify missing constraints, edge cases, and ambiguities.
- **Plan:** Produce a phased implementation schedule and ADRs that record architecture and tool choices.
- **Tasks → Implement:** Break the plan into 4–8 hour tasks and execute with PHRs for each session.
- **Intelligence → Adoption:** Extract reusable components (Skills/Agents) and embed the workflow into existing projects.

Use the Spec-Kit Plus artifacts as the canonical record: `specs/` for formal specs, `history/adr/` for architectural decisions, and `history/prompts/` for PHRs documenting runs of commands and searches.
