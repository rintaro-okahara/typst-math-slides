#import "@preview/touying:0.7.4": *
#import themes.simple: *

// -------------------------
// Theme initializer
// -------------------------

#let research-theme = simple-theme.with(
  aspect-ratio: "16-9",
  header: none,
  header-right: none,
)

#let research-slide(..args) = slide(..args)

// -------------------------
// Colors
// -------------------------

#let navy = rgb("#2F5597")
#let pale-blue = rgb("#D9EEF7")
#let sky-blue = rgb("#67C1DF")
#let orange = rgb("#ED7D31")
#let dark-gray = rgb("#222222")
#let mid-gray = rgb("#666666")
#let light-gray = rgb("#F7F9FB")
#let white = rgb("#FFFFFF")

// -------------------------
// Text utilities
// -------------------------

#let key(body) = text(fill: orange, weight: "bold")[#body]

#let small-note(body) = text(size: 13pt, fill: mid-gray)[#body]

// -------------------------
// Layout utilities
// -------------------------

#let two-col(left, right, columns: (1fr, 1fr), gutter: 1.1em) = grid(
  columns: columns,
  gutter: gutter,
  left,
  right,
)

#let three-col(a, b, c, gutter: 0.9em) = grid(
  columns: (1fr, 1fr, 1fr),
  gutter: gutter,
  a,
  b,
  c,
)

// -------------------------
// Boxes
// -------------------------

#let definition-box(title, body) = rect(
  width: 100%,
  fill: pale-blue,
  stroke: 0.8pt + navy,
  radius: 8pt,
  inset: 10pt,
)[
  #text(fill: navy, weight: "bold")[#title]
  #v(0.45em)
  #body
]

#let theorem-box(title, body) = rect(
  width: 100%,
  fill: white,
  stroke: 1.1pt + navy,
  radius: 8pt,
  inset: 10pt,
)[
  #text(fill: navy, weight: "bold")[#title]
  #v(0.45em)
  #body
]

#let result-card(title, body) = rect(
  width: 100%,
  fill: light-gray,
  stroke: 0.7pt + rgb("#CCCCCC"),
  radius: 7pt,
  inset: 9pt,
)[
  #text(fill: navy, weight: "bold")[#title]
  #v(0.35em)
  #body
]

#let warning-box(title, body) = rect(
  width: 100%,
  fill: rgb("#FFF3E8"),
  stroke: 0.9pt + orange,
  radius: 8pt,
  inset: 10pt,
)[
  #text(fill: orange, weight: "bold")[#title]
  #v(0.45em)
  #body
]

#let takeaway(body) = rect(
  width: 100%,
  fill: pale-blue,
  stroke: 0pt,
  radius: 6pt,
  inset: 8pt,
)[
  #text(fill: navy, weight: "bold")[Takeaway. ]
  #body
]

// -------------------------
// Slide-level components
// -------------------------

#let title-block(
  title,
  subtitle: none,
  author: none,
  affiliation: none,
  date: none,
) = [
  #v(1.2em)

  #text(size: 30pt, weight: "bold", fill: navy)[#title]

  #if subtitle != none [
    #v(0.7em)
    #text(size: 18pt, fill: dark-gray)[#subtitle]
  ]

  #v(1.4em)

  #if author != none [
    #text(size: 16pt, weight: "bold")[#author]
  ]

  #if affiliation != none [
    #v(0.25em)
    #text(size: 14pt, fill: mid-gray)[#affiliation]
  ]

  #if date != none [
    #v(0.5em)
    #text(size: 13pt, fill: mid-gray)[#date]
  ]
]

#let plot-placeholder(label: "Insert plot here", height: 145pt) = rect(
  width: 100%,
  height: height,
  fill: white,
  stroke: 0.8pt + rgb("#CCCCCC"),
  radius: 4pt,
)[
  #align(center + horizon)[
    #text(fill: mid-gray)[#label]
  ]
]
