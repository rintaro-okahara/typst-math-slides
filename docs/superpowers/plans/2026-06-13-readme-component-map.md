# README Component Map Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the flat README component list with a category-based Component Map that makes the public API understandable at a glance.

**Architecture:** This is a documentation-only change. The implementation edits the existing `## Components` section in `README.md` and leaves Typst source files unchanged.

**Tech Stack:** Markdown, GitHub README rendering, Typst component names from `lib.typ`.

---

### Task 1: Replace README Component List

**Files:**
- Modify: `README.md`

- [x] **Step 1: Inspect the current component exports**

Run:

```bash
rg -n '^#let ' lib.typ
```

Expected: output includes these public names:

```text
research-theme
research-slide
key
small-note
two-col
three-col
definition-box
theorem-box
result-card
warning-box
takeaway
title-block
plot-placeholder
```

- [x] **Step 2: Replace the flat list in `README.md`**

Replace the current content under `## Components` with:

```markdown
The public components live in `lib.typ`.

| Role | Components | Use them for |
| --- | --- | --- |
| Slide setup | `research-theme`, `research-slide`, `title-block` | Initialize the deck and build title slides. |
| Content blocks | `definition-box`, `theorem-box`, `result-card`, `warning-box`, `takeaway` | Structure definitions, claims, results, caveats, and final messages. |
| Figure support | `plot-placeholder` | Reserve stable space for plots before final figures are ready. |
| Layout utilities | `two-col`, `three-col` | Build common two- and three-column mathematical slide layouts. |
| Text utilities | `key`, `small-note` | Emphasize key terms and add compact supporting notes. |

See `examples/gallery` for rendered usage examples.
```

- [x] **Step 3: Verify every public component is represented**

Run:

```bash
rg -n 'research-theme|research-slide|title-block|definition-box|theorem-box|result-card|warning-box|takeaway|plot-placeholder|two-col|three-col|key|small-note' README.md
```

Expected: each component name appears in the `## Components` section.

- [x] **Step 4: Review the edited README section**

Run:

```bash
sed -n '/^## Components/,/^## Usage as a Git Submodule/p' README.md
```

Expected: the section reads as a compact map, includes the gallery pointer, and does not duplicate the old bullet list.

- [x] **Step 5: Commit the documentation change**

Run:

```bash
git add README.md docs/superpowers/plans/2026-06-13-readme-component-map.md
git commit -m "Improve README component overview"
```

Expected: commit succeeds with only the README implementation and this plan file staged for this task.
