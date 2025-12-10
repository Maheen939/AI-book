---
title: Clarify Phase
---

## Purpose

The Clarify phase (`/sp.clarify`) systematically finds ambiguities, edge cases, and missing constraints in the spec and records decisions.

## How to Run

1. Review `specs/.../spec.md` and run through each requirement asking "How would we test this?"
2. If an ambiguity appears, add a Clarification note in the spec and create an ADR if the decision is architectural.
3. Record the session as a PHR in `history/prompts/` documenting queries, sources searched, and the final decision.

## Clarification Checklist

- Recency requirement for sources (e.g., last 5 years unless foundational).
- Paywall policy (how to handle paywalled, flag with `paywalled = {true}`).
- Acceptance test edge cases (inputs, failure modes, and timeouts).

## Example

- Ambiguity: "What counts as a credible source?"
- Clarification: "Credible = peer-reviewed OR institutional repository with DOI; if paywalled, attempt author copy or replacement with OA preprint." (Record as ADR 003)
