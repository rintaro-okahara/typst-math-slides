# Contributing

Thanks for improving `typst-math-slides`.

This project is intentionally small. Contributions should keep the repository a
starter kit for mathematical research talks rather than turning it into a
general presentation framework or a broad Touying theme collection.

## Scope

Good contributions:

- improve reusable components in `lib.typ`
- add examples to `examples/gallery`
- clarify usage in `README.md` or `docs/style-guide.md`
- fix Typst compatibility issues
- improve spacing, hierarchy, and readability for mathematical slides

Out of scope:

- replacing Touying
- adding many unrelated visual themes
- adding talk-specific content, figures, or private institutional branding
- committing generated PDFs

## Development Workflow

Create or edit components in `lib.typ`.

If the visual output changes, update the gallery so reviewers can see the
component in context.

Run both checks from the repository root:

```bash
typst compile --root . examples/gallery/main.typ build/gallery.pdf
typst compile --root . examples/minimal/main.typ build/minimal.pdf
```

## Pull Request Checklist

Before opening a pull request:

- The gallery compiles.
- The minimal example compiles.
- New public components are shown in `examples/gallery`.
- README usage stays copy-pasteable.
- Generated PDFs under `build/` are not committed.

## Design Guidelines

- Prefer quiet, readable layouts over decorative slides.
- Keep components useful for mathematical definitions, theorem statements,
  proof sketches, plots, comparisons, and takeaways.
- Use the existing color palette unless a new color has a clear role.
- Keep slide files independently editable by importing a local preamble.

For more detail, see `docs/style-guide.md`.
