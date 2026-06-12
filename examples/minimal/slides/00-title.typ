#import "../preamble.typ": *

#research-slide[
  #text(size: 28pt, weight: "bold", fill: navy)[Clean Mathematical Research Slides]
  #v(1em)

  #title-block(
    [Typst + Touying Modular Slide System],
    subtitle: [Reusable theme components for mathematical research talks],
    author: [Author Name],
    affiliation: [Department / Institution],
    date: [Presentation Date],
  )

  #v(1em)

  #two-col[
    #definition-box("Design principle")[
      We separate the project into two layers.

      - #key[content layer]: each talk repository
      - #key[theme layer]: reusable slide components
      - #key[AI layer]: edit one slide file at a time
    ]
  ][
    #theorem-box("Target workflow")[
      For each slide, the AI should modify only

      ```text
      slides/xx-name.typ
      ```

      while keeping the shared design fixed in

      ```text
      typst-math-slides/lib.typ
      ```
    ]
  ]

  #v(0.8em)

  #takeaway[
    The theme repository is designed to be used as a Git submodule.
  ]
]
