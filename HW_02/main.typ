#import "homework.typ": *

#show: hw.with(
  course: "ECE 3220: Signals and Systems",
  assign: [== #smallcaps[HW 2:] System Properties],
  duedate: [February 18, 2026]
)

#problem(1, [An LTI system is specified by the equation: $ (D^2 + 5D + 6) dot
y(t) = (D + 1) dot x(t) $])

#subproblem("A", [Find the characteristic polynomial, equation, roots, and
modes of the system.])

#block(inset: 1em)[
  #box(
    inset: 8pt,
    stroke: black
  )[
    By observation,

    Characteristic polynomial: #h(5pt) $Q(lambda) = lambda^2 + 5 lambda + 6$

    Characteristic equation: #h(16pt) $lambda^2 + 5 lambda + 6 = (lambda + 2)
    (lambda + 3) = 0$

    Characteristic roots: #h(33pt) $lambda_1 = -2, lambda_2 = -3$

    Characteristic modes: #h(25pt) $y(t) = c_1 e^(-2t) + c_2 e^(-3t)$
  ]
]

#subproblem("B", [Find the zero-input components of the response $y_0 (t)$ if
the initial conditions are $y_0 (0^-) = 2$ and $dot(y)_0(0^-) = -1$])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#problem(2, [Find the impulse response of an LTIC system specified by the
equation: $ (D^2 + 6D + 9) dot y(t) = (2D + 9)x(t) $])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#problem(3, [The unit impulse of an LTIC system is given by $h(t) = e^(-t)
u(t)$. Determine the zero-state system response if the input $x(t)$ is:])

#subproblem("A", [$u(t)$])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("B", [$e^(-t) u(t)$])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("C", [$e^(-2t) u(t)$])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("D", [$sin(3t) u(t)$])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#problem(4, [Consider an integrator system given by $y(t) =
integral_(-infinity)^t x(tau) d tau.$])

#subproblem("A", [Determine the unit impulse response $h_i(t)$ of the system.])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("B", [Determine the impulse response $h_p(t)$ of two such
integrators in parallel.])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("C", [Determine the impulse response $h_s(t)$ of two such
integrators in series.])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#problem(5, [An analog LTIC system with impulse response function $h(t) = u(t +
2) - u(t - 2)$ is presented with an input $x(t) = t(u(t) - u(t - 2)).$])

#subproblem("A", [Determine and plot the system output $y(t) = x(t) star h(t)$.])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#subproblem("B", [Determine if the system is stable and causal. Justify your
reasoning.])

#block(inset: 1em)[
  #lorem(10)

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

