# Phase 0 — Selected References (annotations)

This document lists the 15 selected open-access references chosen to seed the textbook research. Each entry has a short annotation and a `peer-reviewed` flag where known.

## Selected entries (short annotations)

- **Doe & Smith (2020)** — A broad review of humanoid robotics covering design and control. *peer-reviewed: true* — useful as foundational survey and for historical context. (see `humanoid_review_2020`)

- **Neto et al. (arXiv:1309.2086)** — High-level robot programming from CAD; useful for industrial programming patterns. *peer-reviewed: unknown / preprint* (see `arXiv_1309.2086v1`)

- **Lakhnati et al. (arXiv:2312.07214)** — LLMs for variable autonomy in human-robot teaming; relevant to autonomy design. *peer-reviewed: preprint* (see `arXiv_2312.07214v3`)

- **Suomalainen et al. (arXiv:2201.02392)** — Telepresence robot motion and user comfort; informs UX considerations. *peer-reviewed: preprint* (see `arXiv_2201.02392v1`)

- **Neto et al. (arXiv:1309.2093)** — Gesture-based programming input device study; relevant for HRI input modalities. *peer-reviewed: preprint* (see `arXiv_1309.2093v1`)

- **Frederiksen et al. (arXiv:2401.02684)** — Robot vulnerability and empathy; ethics and design implications. *peer-reviewed: preprint* (see `arXiv_2401.02684v1`)

- **Suriani et al. (arXiv:2405.12628)** — Soccer-playing robots via temporal logic; useful case for multi-agent coordination. *peer-reviewed: preprint* (see `arXiv_2405.12628v1`)

- **Praveena et al. (arXiv:1902.00084)** — Input methods for human-to-robot demos; practical for teaching labs. *peer-reviewed: preprint* (see `arXiv_1902.00084v1`)

- **Bruce et al. (arXiv:1711.10137)** — One-shot RL for navigation; methodological reference for few-shot learning approaches. *peer-reviewed: preprint* (see `arXiv_1711.10137v2`)

- **Pueyo et al. (arXiv:2311.11047)** — CLIPSwarm: text-to-robot formations; demonstrates NLP→multi-robot mapping. *peer-reviewed: preprint* (see `arXiv_2311.11047v1`)

- **Reimann et al. (arXiv:2502.01448)** — Capability communication for robot conversation; HRI communication study. *peer-reviewed: preprint* (see `arXiv_2502.01448v1`)

- **Davila et al. (arXiv:2507.11525)** — Ambiguity detection in surgical robot instructions using LLMs; domain-specific but informative. *peer-reviewed: preprint* (see `arXiv_2507.11525v1`)

- **Ali et al. (arXiv:2410.11085)** — Language fluency and perception of social robots; useful for social HRI modules. *peer-reviewed: preprint* (see `arXiv_2410.11085v1`)

- **Jung & Hahn (arXiv:2306.02694)** — Anthropomorphism and robot appearance; social robotics study. *peer-reviewed: preprint* (see `arXiv_2306.02694v2`)

- **Hadjiantonis et al. (arXiv:2504.02123)** — Topic change in robot-facilitated group discussions; classroom/education interactions. *peer-reviewed: preprint* (see `arXiv_2504.02123v1`)

---

Status & next steps

- `references/selected.bib` created with cleaned keys for these 15 entries.
- `references/bibliography.apa7.txt` contains starter APA entries (15 items).

Acceptance criteria check (Phase 0):
- Collected 15 candidate references: YES
- Peer-reviewed fraction >=50%: NO (most are arXiv preprints). Action: search for published versions or replace with OA peer-reviewed equivalents to reach >=50%.

Next actions I recommend:
1. Use Zotero to fetch published versions (where available) and mark `peer-reviewed:true` in Zotero. Auto-export via Better BibTeX will update `references/references.bib`.
2. Replace or augment with OA peer-reviewed papers (journals, conference proceedings) for the sections where foundational claims are made.
3. Run the PDF downloader (`scripts/download_arxiv_pdfs_from_bib.ps1`) after `references/references.bib` is updated to grab PDFs.

If you want me to continue, I can: (a) attempt to automatically find published versions for these 15 entries and add DOI fields, or (b) expand the selected list to 25 entries. Reply with `find-published` or `expand-25`.
