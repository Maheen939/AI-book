# Spec-Kit Plus Quick Reference Guide

**Your Immediate Task:** Execute the complete Spec-Kit Plus Hands-On course using the textbook project.

---

## 🎯 The 8-Phase Workflow (In Order)

```
1. CONSTITUTION (/sp.constitution)
   ↓ Define project-wide quality standards
   
2. SPECIFICATION (/sp.specify)
   ↓ Write clear, testable requirements
   
3. CLARIFICATION (/sp.clarify)
   ↓ Identify missing constraints & edge cases
   
4. PLANNING (/sp.plan)
   ↓ Design architecture & decisions (create ADRs)
   
5. TASKS (/sp.tasks)
   ↓ Decompose into atomic, checkpoint-driven units
   
6. IMPLEMENTATION (/sp.implement)
   ↓ Execute tasks with AI collaboration
   
7. REUSABLE INTELLIGENCE (Design skills/subagents/tools)
   ↓ Capture patterns from sessions
   
8. ADOPTION (Integrate into existing project)
   ↓ Apply Spec-Kit Plus to brownfield projects
```

---

## ✅ What Each Phase Produces

| Phase | Input | Output | File Location |
|-------|-------|--------|----------------|
| Constitution | Project requirements | Quality standards, principles, constraints | `.specify/memory/constitution.md` |
| Specification | Goals and success criteria | User stories, requirements, success criteria | `specs/<feature>/spec.md` |
| Clarification | Specification draft | Resolved ambiguities, refined spec | `specs/<feature>/spec.md` (updated) |
| Planning | Clear specification | Implementation plan, architecture decisions | `specs/<feature>/plan.md` + ADRs |
| Tasks | Implementation plan | Atomic tasks with checkpoints | `specs/<feature>/tasks.md` |
| Implementation | Tasks list | Executed work, deliverables | Project-specific + PHRs |
| Reusable Intelligence | Session reviews | Skills, subagents, tools | `.specify/components/` |
| Adoption | Spec-Kit Plus workflow | Integrated project structure | `.specify/`, `.claude/`, `history/` |

---

## 🗂️ Your Project Structure

```
d:\agentic ai\Ai textbook\
├── .specify/
│   ├── memory/
│   │   └── constitution.md              ← Your project standards
│   ├── templates/
│   │   ├── spec-template.md
│   │   ├── plan-template.md
│   │   ├── tasks-template.md
│   │   ├── adr-template.md
│   │   └── phr-template.prompt.md
│   ├── scripts/
│   └── components/                      ← Your reusable skills/tools
├── .claude/
│   └── commands/                        ← Slash commands live here
├── specs/
│   └── physical-ai-robotics-textbook/
│       ├── spec.md                      ← Your specification
│       ├── plan.md                      ← Your implementation plan
│       └── tasks.md                     ← Your atomic tasks
├── history/
│   ├── adr/                             ← Architectural Decision Records
│   └── prompts/
│       └── general/                     ← Prompt History Records (PHRs)
├── CLAUDE.md                            ← Agent instructions
├── plan.md                              ← High-level project plan
└── phase-0-*.md                         ← Phase 0 research templates
```

---

## 🔄 Current Status & Next Steps

### ✅ COMPLETED
- [x] Lesson 1-2: Foundation & Installation
- [x] Phase 0 research framework created
- [x] High-level project plan established

### 🔄 READY TO START (Next)
- [ ] **Lesson 3: `/sp.constitution`** — Run this first
  - Enhance your constitution with testable standards
  - Commit to git
  - Timeline: 1-2 days

- [ ] **Lesson 4: `/sp.specify`** — Then this
  - Define user stories (P1-P3)
  - Write functional requirements
  - Timeline: 2-3 days

- [ ] **Lesson 5: `/sp.clarify`** — Then this
  - Identify and resolve ambiguities
  - Refine specification
  - Timeline: 1-2 days

- [ ] **Lesson 6: `/sp.plan`** — Then this
  - Generate implementation plan
  - Create ADRs for architectural decisions
  - Timeline: 2-3 days

- [ ] **Lesson 7: `/sp.tasks`** — Then this
  - Decompose plan into atomic tasks
  - Define checkpoints and validation
  - Timeline: 1-2 days

- [ ] **Lesson 8: `/sp.implement`** — Then this
  - Execute Phase 0 tasks (search, compile, outline)
  - Generate PHRs for sessions
  - Timeline: 5-7 days

- [ ] **Lesson 9: Reusable Intelligence** — Then this
  - Identify patterns from Phase 0
  - Design 1-2 reusable components
  - Timeline: 1 day

- [ ] **Lessons 10-11: Brownfield Adoption** — Then this
  - Integrate Spec-Kit Plus into existing workflow
  - Document lessons learned
  - Timeline: 1 day

---

## 💡 Key Concepts (For Your Reference)

### TWO OUTPUTS PER PROJECT
Every Spec-Kit Plus project produces:
1. **Working Code** (ephemeral) — Your textbook, deliverable
2. **Reusable Intelligence** (permanent) — ADRs, PHRs, Skills, documented decisions

### HORIZONTAL INTELLIGENCE (Your Learning Across Time)
- **ADRs** = "Why did we make this decision?"
- **PHRs** = "What prompts worked well?"
- Stays in this project but makes YOU smarter for future projects

### VERTICAL INTELLIGENCE (Reusable Components)
- **Skills** = Structured prompts with guidance (Pattern recognition)
- **Subagents** = Specialized agents for complex tasks (5+ decisions)
- **Tools/MCP** = Custom capabilities (API integrations, databases)

### THE P+Q+P PATTERN (For Reusable Components)
```
P = Pattern Discovery: What patterns did we see?
Q = Guiding Questions: What questions guide the solution?
P = Pattern Recommendations: What best practices apply?
```

---

## 🎓 Quiz Questions You'll Need to Answer (At End)

1. What are the two outputs of every Spec-Kit Plus project?
2. What's the difference between Horizontal and Vertical Intelligence?
3. When should Constitution be committed vs. Specification?
4. Why is `/sp.clarify` between `/sp.specify` and `/sp.plan`?
5. What's an ADR and why should you create one?
6. What's a PHR and when is it created?
7. What's the P+Q+P pattern?
8. Name 3 types of reusable intelligence components
9. Why do you commit Constitution BEFORE starting /sp.specify?
10. How does Constitution cascade into Specification?
11. What are the 8 phases in order?
12. How do you apply Spec-Kit Plus to existing (brownfield) projects?

---

## 📝 Key Files You'll Create

| File | Created By | Purpose |
|------|-----------|---------|
| `.specify/memory/constitution.md` | `/sp.constitution` | Project quality standards |
| `specs/textbook/spec.md` | `/sp.specify` | Detailed requirements |
| `specs/textbook/plan.md` | `/sp.plan` | Implementation architecture |
| `specs/textbook/tasks.md` | `/sp.tasks` | Atomic task breakdown |
| `history/adr/<id>-*.md` | `/sp.adr` | Architectural decisions |
| `history/prompts/general/<id>-*.md` | Automatic | What prompts worked |
| `.specify/components/*.md` | You | Reusable skills/subagents |

---

## ⚡ Start Right Now

### Option 1: Use `/sp.constitution` Directly (Recommended)
```powershell
# You're in: d:\agentic ai\Ai textbook

claude
```

Then in Claude:
```
/sp.constitution

Project: Teaching Physical AI & Humanoid Robotics Textbook
Core principles:
- Accuracy through source verification
- Claims supported by references (≥50% peer-reviewed)
- Academic tone (grade 10-12 readability)
- Zero plagiarism tolerance
- Traceability and verification

Key standards:
- Citation: APA 7th Edition
- Sources: ≥50% peer-reviewed, minimum 15 total
- Word count: 5,000-7,000 words
- Format: Docusaurus + GitHub Pages

Success criteria:
- All claims verified against sources
- Zero plagiarism detected
- Meets academic standards
- Fact-checking passes
```

### Option 2: Run Full Course Execution Plan
Follow the step-by-step tasks in:
📄 `spec-kit-plus-hands-on-execution-plan.md`

---

## 🚀 Timeline (Next 4 Weeks)

```
WEEK 1 (Dec 7-13):  Constitution → Specification → Clarification
WEEK 2 (Dec 14-19): Planning → Tasks → (start Implementation)
WEEK 3 (Dec 20-27): Complete Implementation Phase 0
WEEK 4 (Dec 28+):   Reusable Intelligence → Adoption → Quiz
```

---

## 📞 When You Get Stuck

Each lesson has **"Try With AI"** prompts you can use:

**For Constitution Questions:**
```
"Review my Constitution at .specify/memory/constitution.md.
Are all standards testable? Did I miss any categories? 
Suggest improvements."
```

**For Specification Questions:**
```
"Review my specification: Are all user stories independently testable?
Are requirements clear and measurable? Does it respect Constitution constraints?"
```

**For Understanding Concepts:**
```
"Explain the difference between a Specification and a Constitution.
When should each be used? Give concrete examples."
```

---

**You're Ready!** 🎉

Next action: Run `/sp.constitution` to formalize your project standards within the Spec-Kit Plus framework.

---

*Generated: December 7, 2025*  
*Spec-Kit Plus Quick Reference v1.0*
