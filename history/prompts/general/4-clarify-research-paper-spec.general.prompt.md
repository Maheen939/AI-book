---
id: 4
title: Clarify Research Paper Spec
stage: general
date: 2025-12-07
surface: agent
model: claude-sonnet-4-5-20250929
feature: none
branch: master
user: unknown
command: /sp.clarify
labels: ["clarification", "specification", "research"]
links:
  spec: null
  ticket: null
  adr: null
  pr: null
files:
 - specs/paper/spec.md
tests:
 - none
---

## Prompt

/sp.clarify

My research paper specification is at specs/paper/spec.md

Please analyze it for:

1. AMBIGUOUS TERMS
   - What does "well-researched" mean in my spec? (how many sources? which types?)
   - What does "professional format" mean? (which citation style? spacing? margins?)
   - What does "clear structure" mean? (how many sections? what should each contain?)

2. MISSING ASSUMPTIONS
   - What citation style should I use? (APA, MLA, Chicago, Harvard?)
   - What's the target audience? (academic, general readers, specific field?)
   - What's the paper length? (minimum and maximum word count?)
   - How recent should sources be? (published in last 5 years? 10 years?)

3. INCOMPLETE REQUIREMENTS
   - What should the introduction contain? (background? thesis statement? scope?)
   - How do I handle conflicting sources? (which viewpoints to include?)
   - What constitutes a "credible" source? (peer-reviewed only? news acceptable?)
   - How should I structure the paper? (chronological? thematic? by source?)

4. SCOPE CONFLICTS
   - Is this narrowly focused on one aspect or broadly covering the topic?
   - Is this historical overview or current-state analysis?
   - Are there sub-questions I should address or exclude?

List any gaps or questions. Which ones are CRITICAL (planning won't work without them) vs NICE-TO-HAVE (improve quality but not blocking)?

## Response snapshot

I couldn't find your research paper specification at `specs/paper/spec.md`. I need the content of the specification to perform the analysis. I'm also waiting for a title for the `/sp.adr` command.

## Outcome

- ✅ Impact: User's request for clarification was recorded, and the inability to access the specified file was communicated.
- 🧪 Tests: none
- 📁 Files: specs/paper/spec.md (attempted read)
- 🔁 Next prompts: User needs to provide the content or correct path for `specs/paper/spec.md` and a title for `/sp.adr`.
- 🧠 Reflection: PHR successfully created for `/sp.clarify` command. The dependency on user input for the file content and the `/sp.adr` title is clearly stated.

## Evaluation notes (flywheel)

- Failure modes observed: `create-phr.sh` script not found, continued fallback to agent-native flow. File `specs/paper/spec.md` not found.
- Graders run and results (PASS/FAIL): none
- Prompt variant (if applicable): none
- Next experiment (smallest change to try): Ensure `create-phr.sh` script path is correct and executable. Provide more specific guidance to the user on how to provide the file content if the path is incorrect.
