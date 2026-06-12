#import "../../../lib.typ": *

#research-slide[
  #text(size: 28pt, weight: "bold", fill: navy)[Math-heavy layout]
  #v(1em)

  #two-col[
    #definition-box("Cross entropy")[
      For a target distribution $p$ and a model distribution $q_theta$,

      $ H(p, q_theta) = - sum_k p_k log q_(theta,k). $

      This is the standard objective behind NLL training.
    ]
  ][
    #theorem-box("KL interpretation")[
      Cross entropy decomposes as

      $ H(p, q_theta) = H(p) + D_"KL"(p || q_theta). $

      Since $H(p)$ is fixed, minimizing cross entropy is equivalent to minimizing KL divergence.
    ]
  ]

  #v(0.9em)

  #two-col[
    #result-card("Left plot")[
      #plot-placeholder(label: "Regret curve / ROC curve / scatter plot")
    ]
  ][
    #result-card("Right plot")[
      #plot-placeholder(label: "Baseline comparison / ablation")
    ]
  ]

  #v(0.7em)

  #takeaway[
    A good mathematical slide has one mathematical message and one visual structure.
  ]
]
