# Spec-Kit Plus Hands-On: Complete Execution Plan

**Project:** Teaching Physical AI & Humanoid Robotics Textbook  
**Course:** Chapter 14: Master Spec-Kit Plus (Panaversity)  
**Objective:** Complete all lessons (1-12) and demonstrate mastery of SDD-RI workflow  
**Timeline:** Weeks of December 7-28, 2025  

---

## 🎯 Course Overview & Learning Path

This document maps the **Spec-Kit Plus Hands-On** course (chapters 14-14.12) to your textbook project.

### What You'll Learn
1. **Spec-Kit Plus Foundation** — Two outputs (code + intelligence), horizontal/vertical intelligence
2. **Installation & Setup** — Configure AI companion, understand project structure
3. **Constitution Phase** — Define project-wide quality standards
4. **Specify Phase** — Write clear, testable requirements
5. **Clarify Phase** — Identify missing constraints and edge cases
6. **Plan Phase** — Generate architecture and design decisions
7. **Tasks Phase** — Decompose work into atomic, checkpoint-driven units
8. **Implementation Phase** — Execute tasks with AI collaboration
9. **Designing Reusable Intelligence** — Create skills, subagents, tools using P+Q+P pattern
10. **Brownfield Adoption** — Add Spec-Kit Plus to existing projects safely
11. **Capstone Execution** — Apply the full workflow end-to-end
12. **Quiz** — Validate understanding of all commands

---

## 📋 Lesson Breakdown & Tasks

### ✅ Lesson 1-2: COMPLETED
**Topic:** Spec-Kit Plus Foundation & Installation

**Concepts Covered:**
- Two-Output Philosophy: Working code + Reusable Intelligence
- Horizontal Intelligence (ADRs, PHRs) — YOUR learning across time
- Vertical Intelligence (Skills, Subagents, Tools) — Reusable components
- Project structure: `.specify/`, `.claude/commands/`, `specs/`, `history/`

**Installation Requirements:**
- Python 3.12+
- `pip install specifyplus`
- Claude Code or Gemini CLI configured
- Bash or PowerShell terminal

**Status:** ✅ Ready to proceed to Lesson 3

---

### 🔄 Lesson 3: CONSTITUTION PHASE
**Command:** `/sp.constitution`  
**Timeline:** December 8-9, 2025  
**Checkpoint:** Constitution created, reviewed, improved, and committed

#### 📌 What You'll Do

**Step 1: Review Existing Constitution**
- [ ] Open `.specify/memory/constitution.md`
- [ ] Review your project's current constitution
- [ ] Check if it aligns with Spec-Kit Plus principles

**Step 2: Run `/sp.constitution` to Create/Enhance**
```
/sp.constitution

Project: Teaching Physical AI & Humanoid Robotics Textbook
Format: Docusaurus + Markdown + GitHub Pages

Core Principles:
- Accuracy through source verification
- Claims supported by credible references
- Academic tone for grade 10-12 readership
- Zero plagiarism tolerance
- Traceability and verification

Key Standards:
- Citation format: APA 7th Edition
- Source requirement: ≥50% peer-reviewed journals
- Minimum sources: 15 total
- Reading level: Flesch-Kincaid grade 10-12
- Plagiarism check: 0% tolerance

Constraints:
- Word count: 5,000-7,000 words
- Deliverable: Docusaurus website + PDF
- Deployed via: GitHub Pages
- Timeline: 4 phases (12 weeks)

Success Criteria:
- All claims verified against sources
- Zero plagiarism detected
- Passes fact-checking review
- Meets academic standards
```

**Step 3: Review Generated Constitution**
- [ ] Agent creates comprehensive Constitution file
- [ ] Shows you generated content
- [ ] Explains each section

**Step 4: Improve Constitution**
Ask the agent:
```
Review my Constitution at .specify/memory/constitution.md and improve it:

1. Are all standards testable (not vague)?
   - ❌ Vague: "Papers should be well-written"
   - ✅ Testable: "Flesch-Kincaid grade 10-12"

2. Did I cover essential categories?
   - Citation accuracy
   - Source verification
   - Writing clarity
   - Plagiarism checking
   - Review process
   - Reproducibility

3. Are any standards unrealistic?

Suggest 2-3 concrete improvements.
```

**Step 5: Commit Constitution to Git**
```
/sp.git.commit_pr

Commit the constitution to a feature branch as the foundation 
for all project work
```

#### ✅ Acceptance Criteria
- [ ] Constitution file exists at `.specify/memory/constitution.md`
- [ ] All standards are testable and specific (not vague)
- [ ] Covers: citation, sources, clarity, plagiarism, reproducibility
- [ ] Constitution is committed to git
- [ ] Ready to move to Specification phase

---

### 🔄 Lesson 4: SPECIFY PHASE
**Command:** `/sp.specify`  
**Timeline:** December 10-12, 2025  
**Checkpoint:** Complete specification document with user stories and requirements

#### 📌 What You'll Do

**Step 1: Create Specification for Research Paper Feature**
```
/sp.specify

Feature: Write Research Paper on Physical AI & Humanoid Robotics

User goal: Create comprehensive, well-researched textbook for education administrators

Success criteria (from Constitution):
- ≥15 credible sources (≥50% peer-reviewed)
- 5,000-7,000 words total
- APA 7th Edition citations
- Zero plagiarism
- Grade 10-12 readability
```

**Step 2: Define User Stories (P1-P3 Priority)**

Priority P1 (Critical):
- [ ] Gather 15+ credible sources with APA citations
- [ ] Write introduction with verified claims
- [ ] Write chapter content with inline citations

Priority P2 (Important):
- [ ] Create figures and diagrams
- [ ] Format bibliography correctly
- [ ] Structure with clear headings

Priority P3 (Nice-to-Have):
- [ ] Add appendix with additional resources
- [ ] Create glossary of terms
- [ ] Add reflection section

**Step 3: Define Functional Requirements**
- FR-001: System MUST verify all sources and create APA bibliography
- FR-002: System MUST check for plagiarism before submission
- FR-003: System MUST verify all claims against sources
- FR-004: System MUST maintain academic tone throughout
- FR-005: System MUST organize content in chapter structure
- FR-006: System MUST generate valid APA citations for all references

**Step 4: Define Success Criteria**
- SC-001: All 15+ sources identified and formatted in APA
- SC-002: Zero plagiarism detected (verified via tool)
- SC-003: 100% of claims have source citations
- SC-004: Readability: Flesch-Kincaid grade 10-12
- SC-005: Word count: 5,000-7,000 words total
- SC-006: All facts verified against sources

**Step 5: Review & Refine Specification**
Ask the agent:
```
Review my specification:
1. Are all user stories independently testable?
2. Are requirements clear and measurable?
3. Did I miss any edge cases?
4. Does specification respect Constitution constraints?

Suggest improvements.
```

#### ✅ Acceptance Criteria
- [ ] Specification file created at `specs/research-paper/spec.md`
- [ ] User stories defined with P1-P3 priorities
- [ ] All requirements are specific and testable
- [ ] Success criteria align with Constitution standards
- [ ] Specification ready for clarification phase

---

### 🔄 Lesson 5: CLARIFY PHASE
**Command:** `/sp.clarify`  
**Timeline:** December 13-14, 2025  
**Checkpoint:** Refined specification with all gaps addressed

#### 📌 What You'll Do

**Step 1: Identify Missing Constraints**
```
/sp.clarify

Review spec at specs/research-paper/spec.md and identify:

1. Missing constraints:
   - How many sources must be from last 5 vs 10 years?
   - What specific topics must be covered in each chapter?
   - Who reviews the final work?
   - What citation tool should be used?

2. Edge cases:
   - What happens if source is unavailable?
   - How to handle conflicting information between sources?
   - What if some topics have few peer-reviewed sources?

3. Ambiguous requirements:
   - What does "credible source" mean exactly?
   - How to verify plagiarism (which tool)?
   - What "academic tone" means in practice?

4. Missing dependencies:
   - Need access to academic databases
   - Need citation management tool
   - Need plagiarism checking tool
```

**Step 2: Refine Specification Based on Feedback**
- [ ] Agent identifies 3-5 gaps or ambiguities
- [ ] Agent suggests refinements
- [ ] You review and approve changes
- [ ] Specification updated with clarifications

**Step 3: Create Clarification Document**
- [ ] List all resolved ambiguities
- [ ] Document specific decisions made
- [ ] Show updated requirements

#### ✅ Acceptance Criteria
- [ ] All ambiguous requirements clarified
- [ ] All edge cases documented
- [ ] All missing constraints identified and added
- [ ] Specification is now unambiguous and complete
- [ ] Ready for planning phase

---

### 🔄 Lesson 6: PLANNING PHASE
**Command:** `/sp.plan`  
**Timeline:** December 15-17, 2025  
**Checkpoint:** Detailed implementation plan with ADRs

#### 📌 What You'll Do

**Step 1: Create Implementation Plan**
```
/sp.plan

Project: Research Paper Textbook

Generate detailed plan for:
- Phase 0: Research & Source Collection
- Phase 1: Content Drafting
- Phase 2: Quality Assurance & Review
- Phase 3: Finalization & Deployment

Include:
- Detailed tasks for each phase
- Dependencies between phases
- Resource requirements
- Risk mitigation
- Success metrics
```

**Step 2: Document Architectural Decisions (ADRs)**

The plan should include decisions like:

**ADR 1: Use Zotero for Citation Management**
- Decision: Zotero (vs. Mendeley or manual)
- Context: Need to track 15+ sources, ensure APA compliance
- Tradeoffs: Free vs. premium, ease of use
- Rationale: Free, open-source, integrates with writing tools

**ADR 2: Four-Phase Approach vs. Waterfall**
- Decision: Four phases (Research → Draft → QA → Deploy)
- Context: Need to ensure quality at each stage
- Tradeoffs: Slower than single-pass but higher quality
- Rationale: Catches errors early, allows iteration

**ADR 3: Database Search Priority**
- Decision: IEEE Xplore first, then ACM, then arXiv
- Context: Need 10-12 peer-reviewed sources in robotics/AI
- Tradeoffs: Time vs. source quality
- Rationale: IEEE most relevant for robotics papers

**Step 3: Review Plan for Completeness**
Ask the agent:
```
Review my plan at [plan-file] and verify:

1. Does it respect all Constitution standards?
2. Are all phases achievable in the timeline?
3. Are risks identified and mitigated?
4. Are success metrics measurable?
5. Are dependencies clear?

Suggest improvements.
```

**Step 4: Commit Plan to Git**
```
/sp.git.commit_pr

Commit the plan and ADRs to feature branch
```

#### ✅ Acceptance Criteria
- [ ] Implementation plan created with all 4 phases
- [ ] Detailed tasks defined for each phase
- [ ] At least 3 architectural decisions documented as ADRs
- [ ] Timeline realistic and achievable
- [ ] All Constitution standards incorporated into plan
- [ ] Plan committed to git

---

### 🔄 Lesson 7: TASKS PHASE
**Command:** `/sp.tasks`  
**Timeline:** December 18-19, 2025  
**Checkpoint:** Atomic task breakdown with checkpoints

#### 📌 What You'll Do

**Step 1: Create Tasks Document**
```
/sp.tasks

Decompose plan into atomic, checkpoint-driven tasks

For Phase 0 (Research & Source Collection):
- Task 0.1: Set up citation management tool
- Task 0.2: Search IEEE Xplore for robotics papers
- Task 0.3: Search ACM for AI/robotics papers
- Task 0.4: Search arXiv and other databases
- Task 0.5: Document 15+ sources in APA format
- Task 0.6: Validate source quality (≥50% peer-reviewed)
- Task 0.7: Create detailed textbook outline
- Task 0.8: Sign off on Phase 0 completion

Each task must:
- Have specific acceptance criteria
- Define what "done" means
- Include checkpoints/validation
- Take 4-8 hours to complete
```

**Step 2: Define Task Acceptance Criteria**

Example Task 0.2:
```
Task: Search IEEE Xplore for Humanoid Robotics Papers

Acceptance Criteria:
- [ ] Search completed with keywords: humanoid, robotics, control
- [ ] Filter applied: last 10 years, peer-reviewed only
- [ ] Minimum 4 papers identified
- [ ] Each paper has DOI and full citation
- [ ] Papers downloaded and stored in Zotero
- [ ] Formatted in APA 7th Edition

Checkpoints:
1. Search terms tested (end of day 1)
2. 4 papers identified (by mid-day 2)
3. All papers in Zotero with metadata (end of day 2)
4. APA formatting verified (day 3)

Owner: Research Coordinator
Timeline: 2-3 days
```

**Step 3: Create Task Dependencies Map**
- [ ] Identify which tasks must complete before others
- [ ] Create Gantt-style visualization
- [ ] Assign owners/timelines

**Step 4: Review & Commit Tasks**
```
/sp.git.commit_pr

Commit task breakdown and checkpoints to feature branch
```

#### ✅ Acceptance Criteria
- [ ] All plan phases decomposed into atomic tasks
- [ ] Each task has specific, measurable acceptance criteria
- [ ] Checkpoints defined for validation
- [ ] Task dependencies documented
- [ ] Timeline realistic (4-8 hours per task)
- [ ] Tasks committed to git

---

### 🔄 Lesson 8: IMPLEMENTATION PHASE
**Command:** `/sp.implement`  
**Timeline:** December 20-27, 2025  
**Checkpoint:** Phase 0 research complete

#### 📌 What You'll Do

**Step 1: Execute Phase 0 Tasks**
```
/sp.implement

Execute Tasks 0.1 through 0.8:
- Set up Zotero
- Search all databases
- Compile 15+ references
- Validate quality
- Create outline
- Document process
```

For each task:
- [ ] Define task inputs (what you have)
- [ ] Define task outputs (what you'll deliver)
- [ ] Run task with AI assistance
- [ ] Validate against acceptance criteria
- [ ] Document process in PHR

**Step 2: Create Prompt History Records (PHRs)**

Each implementation session generates a PHR:
```
PHR Routing: history/prompts/general/

PHRS Generated During Implementation:
- Task 0.1: Setting up citation management
- Task 0.2: Database search strategy
- Task 0.3-0.4: Search execution and documentation
- Task 0.5: Source compilation and formatting
- Task 0.6: Quality validation process
- Task 0.7: Outline creation
```

PHRs capture:
- What prompts worked well
- What didn't work (and why)
- Successful patterns to reuse
- Lessons learned

**Step 3: Validate Completion**

For each task, verify:
- [ ] Acceptance criteria met
- [ ] Deliverables produced
- [ ] Quality standards maintained
- [ ] Documentation complete
- [ ] Ready for next phase

**Step 4: Commit Implementation to Git**
```
/sp.git.commit_pr

Commit Phase 0 results, references, outline, and PHRs
```

#### ✅ Acceptance Criteria
- [ ] All Phase 0 tasks completed
- [ ] 15+ sources identified and formatted (≥50% peer-reviewed)
- [ ] Detailed textbook outline created
- [ ] All deliverables committed to git
- [ ] PHRs documenting process created
- [ ] Ready to proceed to Phase 1 (Content Drafting)

---

### 🔄 Lesson 9: DESIGNING REUSABLE INTELLIGENCE
**Timeline:** December 28, 2025 (after Phase 0 completion)  
**Checkpoint:** Identified reusable components

#### 📌 What You'll Do

**Step 1: Review Your Session for Reusable Patterns**

After implementing Phase 0, ask:
```
During Phase 0 research, I had several successful sessions:

1. Database searching - specific keywords worked well
2. Source validation - certain checks were effective
3. Citation formatting - patterns emerged in APA formatting
4. Outline creation - structure worked well

Which of these patterns occur frequently and deserve a reusable component?
```

**Step 2: Identify Component Candidates**

Three types of reusable intelligence:

**Skills** (Structured prompts with guidance)
- Persona + specific questions + quality principles
- Example: "Research Paper Database Search Skill"
- Triggers when: Searching for academic sources
- Use case: You search similar topics in future projects

**Subagents** (Specialized agents with focused expertise)
- Handles complex autonomous tasks (5+ decisions)
- Example: "Citation Validator Subagent"
- Autonomous: Checks sources, validates APA formatting, verifies plagiarism
- Activated when: Need to validate a batch of sources

**Tools/MCP Servers** (Custom capabilities)
- Integration with external systems
- Example: "Zotero API Integration Tool"
- Allows: Agent to query Zotero, export citations, manage database
- Used when: Need direct database access

**Step 3: Design Your Reusable Component**

Example - Database Search Skill:
```
SKILL: Research Paper Database Search

Persona: Expert academic researcher familiar with STEM databases

Use Case: "Find peer-reviewed papers on [topic] from [databases]"

Pattern Discovery (P):
1. Effective search terms (keywords, Boolean operators)
2. Database selection (IEEE Xplore > ACM > arXiv)
3. Filter strategy (date, peer-review status, relevance)

Questions (Q):
1. What is the specific research topic?
2. Which databases to prioritize?
3. What date range? (last 5/10 years)
4. How many sources needed?
5. Quality thresholds? (peer-reviewed %, citation count)

Pattern Recommendations (P):
1. Start broad, then narrow
2. Combine keywords with Boolean logic
3. Check metadata for relevance before downloading
4. Verify DOI and citation info
5. Batch-validate in citation manager
```

**Step 4: Document Reusable Component**

Store in `.specify/components/` or similar:
- Component name and type (skill/subagent/tool)
- Use case and triggers
- Design (P+Q+P pattern)
- Example prompts
- Performance metrics

#### ✅ Acceptance Criteria
- [ ] Reviewed Phase 0 sessions for patterns
- [ ] Identified 1-2 reusable components
- [ ] Documented each component's purpose and design
- [ ] Stored in project for future reference
- [ ] Ready to demonstrate intelligence reuse

---

### 🔄 Lessons 10-11: BROWNFIELD ADOPTION
**Timeline:** Ongoing  
**Checkpoint:** Spec-Kit Plus integrated into existing textbook project

#### 📌 What You're Doing

**Goal:** Add Spec-Kit Plus workflow to your existing textbook project safely, without disrupting current work.

**Brownfield Strategy:**

1. **Preserve Existing Artifacts**
   - Your current `plan.md` → becomes `specs/textbook/plan.md`
   - Your current `phase-0-research-framework.md` → referenced in specs
   - All existing files remain unchanged

2. **Integrate Spec-Kit Plus Structure**
   - Create `.specify/` directory (if not present)
   - Move Constitution to `.specify/memory/constitution.md`
   - Create `.claude/commands/` with slash command templates
   - Add `history/` directories for ADRs and PHRs

3. **Bridge Existing to New Workflow**
   - Map existing phases to Spec-Kit Plus phases
   - Document why certain decisions were made (ADRs)
   - Create PHRs for what worked in Phase 0 setup
   - Demonstrate intelligence accumulation

4. **Demonstrate Reuse**
   - Use documented patterns from Phase 0
   - Show how skills/subagents speed up Phase 1
   - Measure time savings vs. Phase 0 approach

#### ✅ Acceptance Criteria
- [ ] Spec-Kit Plus structure integrated
- [ ] Existing work preserved and documented
- [ ] Constitution in `.specify/memory/constitution.md`
- [ ] At least 1 ADR created for architectural decisions
- [ ] At least 1 reusable skill documented
- [ ] Project structured for future phases

---

### 🔄 Capstone: END-TO-END WORKFLOW EXECUTION
**Timeline:** December 20-27, 2025 (concurrent with Lesson 8)  
**Checkpoint:** Complete Spec-Kit Plus workflow demonstrated

#### 📌 What You'll Do

Execute the entire SDD-RI workflow in sequence:

1. ✅ **Constitution** — Project quality standards defined
2. ✅ **Specification** — Clear, testable requirements written
3. ✅ **Clarification** — Ambiguities resolved
4. ✅ **Planning** — Architecture designed with ADRs
5. ✅ **Tasks** — Work decomposed into atomic units
6. ✅ **Implementation** — Tasks executed with AI
7. ✅ **Reusable Intelligence** — Components identified
8. ✅ **Brownfield Adoption** — Integrated into existing project

**Capstone Demonstration:**
- Show all 8 phases completed
- Demonstrate knowledge from each lesson
- Show artifacts: Constitution, Spec, Plan, Tasks, PHRs, ADRs
- Prove command mastery: `/sp.constitution`, `/sp.specify`, `/sp.clarify`, `/sp.plan`, `/sp.tasks`, `/sp.implement`, `/sp.phr`, `/sp.adr`

#### ✅ Acceptance Criteria
- [ ] All 8 workflow phases executed
- [ ] Constitution, Spec, Plan, Tasks documents created
- [ ] Implementation (Phase 0) completed
- [ ] ADRs documenting key decisions
- [ ] PHRs documenting sessions
- [ ] Reusable components identified
- [ ] Ready for Quiz validation

---

### 🔄 Quiz: VALIDATE SPEC-KIT PLUS MASTERY
**Timeline:** After Capstone completion  
**Checkpoint:** Demonstrate understanding

#### 📌 What You'll Answer

**Conceptual Questions:**
1. What are the two outputs of every Spec-Kit Plus project?
2. Explain Horizontal Intelligence (ADRs, PHRs)
3. Explain Vertical Intelligence (Skills, Subagents, Tools)
4. When should you use `/sp.constitution` vs `/sp.specify`?
5. How does Constitution cascade into Specification?
6. Why commit Constitution before starting `/sp.specify`?

**Practical Questions:**
7. You identify a pattern that works well in multiple sessions. Should you create a Skill, Subagent, or Tool? Why?
8. An ADR documents "why" not "what". Give an example from your project.
9. Show a PHR from your Phase 0 implementation. What did it capture?
10. Explain the P+Q+P pattern for reusable components.

**Workflow Questions:**
11. List all 8 phases of SDD-RI and their commands
12. What's the correct order? Constitution → ? → ? → ? → ? → ?
13. Why is `/sp.clarify` between `/sp.specify` and `/sp.plan`?
14. When you move to Phase 1 (Drafting), which phases repeat?

#### ✅ Acceptance Criteria
- [ ] Answer 10+ questions correctly
- [ ] Demonstrate command knowledge (all 8 slash commands)
- [ ] Show artifacts proving workflow completion
- [ ] Explain tradeoffs and design decisions
- [ ] Prove readiness to apply Spec-Kit Plus to new projects

---

## 📊 Summary: Execution Timeline

| Week | Lessons | Tasks | Deliverables |
|------|---------|-------|--------------|
| Week 1 (Dec 7-13) | 1-3 | Foundation, Installation, Constitution | Constitution.md committed |
| Week 2 (Dec 14-19) | 4-7 | Specify, Clarify, Plan, Tasks | Spec.md, Plan.md, Tasks.md committed |
| Week 3 (Dec 20-27) | 8-9 | Implementation Phase 0 | 15+ sources, outline, PHRs, Reusable components |
| Week 4 (Dec 28+) | 10-12 | Brownfield Adoption, Capstone, Quiz | Full workflow demonstrated, Quiz passed |

---

## 🚀 Next Steps

1. **Immediate (Now):**
   - [ ] Verify Python 3.12+ installed
   - [ ] Run `/sp.constitution` to enhance existing constitution
   - [ ] Commit Constitution to git

2. **This Week:**
   - [ ] Run `/sp.specify` to create detailed specification
   - [ ] Run `/sp.clarify` to refine specification
   - [ ] Create specification document in `specs/research-paper/spec.md`

3. **Next Week:**
   - [ ] Run `/sp.plan` to generate implementation plan
   - [ ] Run `/sp.tasks` to decompose into atomic tasks
   - [ ] Commit both to git

4. **Week 3:**
   - [ ] Run `/sp.implement` to execute Phase 0 tasks
   - [ ] Search all databases for sources
   - [ ] Compile 15+ references
   - [ ] Create detailed outline

5. **Week 4+:**
   - [ ] Design reusable components from Phase 0
   - [ ] Document lessons in ADRs and PHRs
   - [ ] Complete Brownfield Adoption
   - [ ] Take Validation Quiz
   - [ ] Ready to proceed to Phase 1 (Content Drafting)

---

**Document Created:** December 7, 2025  
**Last Updated:** December 7, 2025  
**Status:** Ready for Lesson 3 Execution
