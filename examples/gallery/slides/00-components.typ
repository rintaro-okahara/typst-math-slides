#import "../../../lib.typ": *

= Component Gallery

#title-block(
  [typst-math-slides],
  subtitle: [Reusable components for mathematical research slides],
  author: [Author Name],
  affiliation: [Department / Institution],
  date: [Design gallery],
)

#v(0.8em)

#two-col[
  #definition-box("Definition box")[
    Use this for problem settings, definitions, assumptions, and notation.

    Example: $x_t in cal(X)$ and $l_t : cal(X) -> RR$.
  ]

  #v(0.7em)

  #warning-box("Warning box")[
    Use this for limitations, caveats, or open technical gaps.
  ]
][
  #theorem-box("Theorem box")[
    Under suitable assumptions,

    $ R_T <= O(sqrt(T)) $

    or under stronger stochastic structure,

    $ R_T <= O(log T). $
  ]

  #v(0.7em)

  #result-card("Result card")[
    Use this for experimental numbers, comparison summaries, or main observations.
  ]
]

#v(0.7em)

#takeaway[
  This gallery is the visual regression test for the shared theme.
]
