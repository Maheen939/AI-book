---
title: Tasks Phase
---

## Purpose

The Tasks phase (`/sp.tasks`) decomposes the Plan into small, checkpoint-driven units that can be executed and validated quickly. Tasks should be scoped to ~4–8 hours so progress is frequent and reviewers can provide rapid feedback.

## Goals

- Create atomic tasks with a single, testable acceptance criterion.
- Define owners, estimated time, inputs, outputs, and validation steps.
- Ensure each task produces an artifact or moves an artifact closer to completion.

## Task Template

Use this template for every task:

- **ID:** `T-<phase>-<seq>` (e.g., `T0-1`)
- **Title:** Short descriptive title
- **Owner:** Person or role
- **Estimate:** 4–8 hours
- **Inputs:** Files, data, references required
- **Steps:** 1..N actionable steps
- **Outputs:** Files or changes produced
- **Acceptance:** Exactly how to verify success
- **PHR:** Add a Prompt History Record after completion

## Example

- **ID:** `T0-2`
- **Title:** Seed arXiv references for robotics
- **Owner:** Researcher A
- **Estimate:** 6h
- **Inputs:** Query list, `scripts/fetch_arxiv_bib.ps1`
- **Steps:** Run script, dedupe, add to Zotero or `references/selected.bib`.
- **Outputs:** `references/references.bib` with 15+ entries
- **Acceptance:** `references/references.bib` contains ≥15 entries and no duplicate keys
- **PHR:** `history/prompts/phase-0/` entry describing queries and decisions

## Checkpoints

- After each task, run the acceptance tests and mark the task complete in the task tracker.
- If a task fails its acceptance, create a small follow-up task for remediation (e.g., `T0-2a: fix duplicate keys`).

## Automating Tasks

- Use scripts for repeatable tasks (e.g., harvesting arXiv, generating bibliography).
- For longer tasks, split into multiple checkpoints so partial progress is visible.

## Recording Progress

- Every completed task must have a PHR: commands run, key search queries, summary of results, and decisions.
- Store PHRs under `history/prompts/phase-<n>/` with a short title and date.
