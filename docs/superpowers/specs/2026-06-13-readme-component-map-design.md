# README Component Map Design

## Goal

Make the public component set understandable at a glance from `README.md`,
without requiring readers to open `lib.typ` or inspect the gallery first.

## Current Problem

The current `## Components` section lists component names as bullets. That is
accurate, but it does not show how the components relate to a research slide or
what each one is for. New users can see that components exist, but they still
need to infer which ones are slide setup, content blocks, layout helpers, or
text utilities.

## Chosen Approach

Replace the flat bullet list with a lightweight Component Map built directly in
Markdown-compatible README content. The map groups public APIs by role:

- Slide setup: `research-theme`, `research-slide`, `title-block`
- Content blocks: `definition-box`, `theorem-box`, `result-card`,
  `warning-box`, `takeaway`
- Figure support: `plot-placeholder`
- Utilities: `two-col`, `three-col`, `key`, `small-note`

Each entry should include the exported name and a short usage phrase. The
section should keep the existing reference to `examples/gallery` as the place to
see the components in rendered context.

## Alternatives Considered

1. SVG image in the README.
   This would look more diagrammatic, but it adds another asset to maintain
   whenever the public API changes.

2. Mini gallery with Typst snippets beside each visual.
   This would be more tutorial-like, but it would make the README longer and
   duplicate the role of `examples/gallery`.

3. Markdown/HTML component map.
   This is the selected option because it is easy to maintain, renders on
   GitHub, and improves scanability without creating a separate artifact.

## README Structure

The revised `## Components` section should:

1. State that public components live in `lib.typ`.
2. Present the Component Map by category.
3. Link readers to `examples/gallery` for rendered usage examples.

It should not introduce new source files, generated images, or changes to
Typst component behavior.

## Verification

Review the README rendering in plain Markdown form and confirm:

- Every public component exported from `lib.typ` is represented.
- Category names are accurate.
- The section remains readable without external assets.
- Existing gallery and preview links still make sense.
