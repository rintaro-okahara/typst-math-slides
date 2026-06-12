# Style Guide

This repository is a Typst + Touying starter kit for mathematical research
talks. It provides a reusable design layer and a small component set for
theorem-heavy slides.

Talk repositories should keep their content in their own `slides/` directory and
import this starter kit through a local `preamble.typ`.

## Structure

- Put shared Typst utilities in `lib.typ`.
- Keep examples under `examples/`.
- Keep generated PDFs under `build/` and out of Git.
- Compile examples from the repository root with `typst compile --root . ...`
  so example preambles can import the top-level `lib.typ`.
- In talk repositories, import the starter kit with
  `#import "themes/typst-math-slides/lib.typ": *`.

## Slide Files

Each slide file should import the talk repository's preamble:

```typst
#import "../preamble.typ": *
```

This keeps every slide file independently editable while sharing the fixed
theme layer.
