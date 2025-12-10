```markdown
# Specification: Teaching Physical AI & Humanoid Robotics

**Feature Branch:** `000-textbook-spec`
**Created:** 2025-12-07
**Status:** Draft
**Owner:** Project Team

## Overview

Create a concise, well-researched textbook (5,000–7,000 words) on Physical AI and Humanoid Robotics aimed at education administrators. The work will be authored in Markdown and published via Docusaurus + GitHub Pages. Citations must follow APA 7th Edition and at least 50% of references must be peer-reviewed. Minimum 15 total references.

## Goal

Provide a practical, evidence-based guide for administrators evaluating classroom adoption of physical AI (humanoid robotics) that explains core concepts, design principles, educational use cases, safety/ethics, and deployment guidance.

## User Stories & Priorities

### P1 (Critical)
- As an education administrator, I want a short, authoritative textbook that summarizes key concepts in Physical AI so I can evaluate adoption decisions.
- Acceptance: Preface + 3 chapters, 5,000–7,000 words, inline APA citations for all claims, 15+ references (≥8 peer-reviewed).

### P2 (Important)
- As a curriculum officer, I want clear case studies and deployment checklists so I can plan classroom pilots.
- Acceptance: 2–3 case studies, deployment checklist, safety/ethics section.

### P3 (Optional)
- As a teacher, I want a glossary and appendix with resources so I can explore further.
- Acceptance: Glossary (10–20 terms), appendix with links and open-source platforms.

## Requirements

### Functional Requirements
- **FR-001:** Produce manuscript between 5,000 and 7,000 words.
- **FR-002:** Include at least 15 references formatted in APA 7th Edition.
- **FR-003:** Ensure ≥50% of references are peer-reviewed publications (journals or conference papers).
- **FR-004:** Provide inline APA citations for every factual claim or statistic.
- **FR-005:** Include at least 2 case studies (platforms or classroom pilots) with source references.
- **FR-006:** Provide a deployment checklist and risks/mitigations section.
- **FR-007:** Produce a PDF export and Docusaurus-ready Markdown pages.

### Non-Functional Requirements
- **NFR-001:** Readability: Flesch-Kincaid grade 10–12.
- **NFR-002:** Zero tolerance for plagiarism (0% before submission).
- **NFR-003:** Traceability: every claim must be traceable to a source (DOI/URL).
- **NFR-004:** Accessibility: web pages should be responsive and navigable.

## Scope

In scope:
- Preface, Chapter 1 (Introduction to Physical AI), Chapter 2 (Humanoid Robotics), Chapter 3 (AI in Physical Systems), Appendix, Glossary.

Out of scope:
- Full textbook-length multi-volume works, deep implementation tutorials, proprietary vendor guides.

## Success Criteria
- SC-001: Manuscript length between 5,000–7,000 words.
- SC-002: 15+ references with ≥50% peer-reviewed.
- SC-003: All factual claims have inline APA citations.
- SC-004: Plagiarism check returns 0% flagged content.
- SC-005: Docusaurus site builds and PDF export available.

## Files to Create / Modify
- `specs/physical-ai-robotics-textbook/spec.md` (this file)
- `specs/physical-ai-robotics-textbook/plan.md` (planning output)
- `specs/physical-ai-robotics-textbook/tasks.md` (task breakdown)
- `phase-0-references.md`, `references/references.bib`, `references/bibliography.apa7.txt`

## Notes / Constraints
- Follow Constitution at `.specify/memory/constitution.md` (APA 7, traceability, peer-reviewed minimum).
- Use Zotero for reference management (recommended) and keep `references/references.bib` updated.

## Acceptance Tests
- AT-001: Run a word count on final manuscript; assert 5000 ≤ words ≤ 7000.
- AT-002: Validate that `references/bibliography.apa7.txt` contains ≥15 entries and that ≥8 have peer-reviewed sources.
- AT-003: Use `pandoc --citeproc` to produce PDF and verify inline citations render.

## Clarifications & Decisions (from /sp.clarify)

The following clarifications resolve ambiguous requirements and define concrete, testable constraints for the specification.

- Recency of sources: Prefer sources published in the last 10 years; allow older foundational works where they are seminal (must be explicitly flagged in references).
- Definition of "credible source": peer-reviewed journal articles, conference proceedings (ICRA, IROS, RSS), government/standards bodies (ISO/IEEE), institutional technical reports, or preprints with clear institutional affiliation. Blogs and popular press are allowed only for context and must be identified as such.
- Peer-reviewed percentage: At least 50% of the final 15+ references must be peer-reviewed. When a peer-reviewed source is unavailable for a claim, prefer arXiv preprint by authors with institutional affiliation and flag as preprint.
- Handling paywalled sources: Use author preprints (arXiv), institutional repositories, or request copies from authors. Do NOT rely on unauthorized paywalled distribution.
- Citation and bibliography: APA 7th Edition for both inline citations and reference list. Bibliography file path: `references/bibliography.apa7.txt`. Machine-readable BibTeX export at `references/references.bib` (Better BibTeX auto-export recommended).
- Plagiarism check: Use Turnitin or an equivalent plagiarism scanner where available; additionally run local similarity checks (e.g., `grep` for long verbatim passages) and require manual review for flagged items. Plagiarism tolerance: 0% before submission.
- Readability metric: Flesch-Kincaid grade 10–12 target. Use automated tooling to measure and iterate (e.g., `textstat` or online readability tools).
- Chapter word allocations (guideline): Preface 250–300; each chapter 1,500–2,000 words; Appendix 500–750 words. These are flexible within the total 5,000–7,000 words.
- Figures and tables: Each figure must have a caption and source/reference. Prefer vector images (SVG/PNG) with open license or created in-house. License statements for third-party figures must be recorded.
- Case study selection: Include at least one educational deployment (classroom pilot or curriculum integration) and one industrial/research platform case (e.g., ASIMO, Atlas, Pepper). Case studies must cite primary sources or manufacturer technical documentation.
- Ethics & safety: Include a dedicated subsection covering safety standards (ISO/IEC), ethical considerations, and teacher-student privacy concerns.
- Traceability: Every factual claim must include a citation with DOI/URL in the reference list. For non-DOI items, include persistent URLs and archive copies if possible.
- Reviewers & SMEs: Final draft must be reviewed by at least one subject-matter expert in robotics and one in education; reviewers and dates must be recorded in the review log.
- Data & reproducibility: Any datasets or simulation code referenced must include links or instructions for access, or note when data is proprietary/unavailable.
- File & deployment conventions: Docusaurus content files live under `docs/` with consistent frontmatter (title, sidebar_label, id). Final PDF: `build/textbook-manuscript.pdf`.

Decisions made now:

1. Tooling: Use Zotero + Better BibTeX for reference management (auto-export path set to `references/references.bib`).
2. Source priority: IEEE Xplore & ACM (robotics/CS) → arXiv → Semantic Scholar/CORE → publisher pages.
3. Plagiarism: Primary check via Turnitin (or manual alternative) before final submission; interim manual checks during drafting.

Next steps after clarification:

- Update `plan.md` to include explicit source search tasks and verification checkpoints.
- Use `/sp.plan` to generate the implementation plan and ADRs (Zotero choice, four-phase approach, source priority). 
- Begin Phase 0 searches and start populating `references/references.bib` with open-access items.

```
# Textbook: Teaching Physical AI & Humanoid Robotics

**Audience:** Education Administrators
**Format:** Docusaurus / Markdown
**Word Count:** 5,000–7,000 words
**Citation Style:** APA 7th Edition
**Sources:** Peer-reviewed journals (>=50%), credible additional sources

---

## Preface
- **Purpose of the Book:** [Explain goals]
- **Target Audience:** [Administrators, teachers, students]
- **Acknowledgements / Notes:** [Optional]
- **Word Count Goal:** ~300 words

---

## Chapter 1: Introduction to Physical AI
- **Overview:** [Definition, history, importance]
- **Key Concepts:** [Robotics, AI integration]
- **Figures / Illustrations:** [Placeholder for diagrams]
- **Notes / Sources:**
  - [Add references]

---

## Chapter 2: Humanoid Robotics
- **Definition & Examples:** [Robots like ASIMO, Atlas, etc.]
- **Design Principles:** [Sensors, actuators, control systems]
- **Case Studies / Use Cases:** [Examples in classrooms / industry]
- **Notes / Sources:**
  - [Add references]

---

## Chapter 3: AI in Physical Systems
- **