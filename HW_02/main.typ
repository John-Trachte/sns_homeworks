#import "homework.typ": *

#show: hw.with(
  course: "ECE 3220: Signals and Systems",
  assign: [== #smallcaps[HW 2:] System Properties],
  duedate: [February 18, 2026]
)

#problem(1, [An LTI system is specified by the equation: $ (D^2 + 5D + 6) y(t)
= (D + 1) x(t) $])

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

#subproblem("B", [Find the zero input components of the response $y_0 (t)$ if
the initial conditions are $y_0 (0^-) = 2$ and $y'_0(0^-) = -1$])

#block(inset: 1em)[
  #grid(columns: (2fr, 2fr), 
    [
      $y(t) = c_1 e^(-2t) + c_2 e^(-3t)$
  
      $y(0) = c_1 e^(-2 dot 0) + c_2 e^(-3 dot 0)$
      
      $2 = c_1 + c_2$
    ],
    [
      $y'(t) = -2 c_1 e^(-2t) -3 c_2 e^(-3t)$

      $y'(0) = -2 c_1 e^(-2 dot 0) -3 c_2 e^(-3 dot 0)$ 

      $-1 = -2 c_1 - 3 c_2$
    ]
  )

  #v(10pt)

  Equations $2 = c_1 + c_2$ and $-1 = -2 c_1 - 3 c_2$ can now be solved as a
  system of equations:

  $c_1 = 2 - c_2 arrow -1 = -2 (2 - c_2) - 3 c_2$

  #h(70.5pt) $-1 = -4 + 2 c_2 - 3 c_2$

  #h(79pt) $3 = - 1 c_2$

  #h(79pt) $c_2 = - 3$

  $c_1 = 2 - (- 3)$

  $c_1 = 5$

  #box(
    inset: 8pt,
    stroke: black
  )[
    $y_0(t) = 5 e^(-2t) -3 e^(-3t)$
  ]
]

#pagebreak()

#problem(2, [Find the impulse response of an LTIC system specified by the
equation: $ (D^2 + 6D + 9) y(t) = (2D + 9)x(t) $])

#block(inset: 1em)[
  $h(t) = b_0 delta(t) + [P(D)y_n(t)]u(t)$  

  By observation, $P(D) = 2D + 9$; because $P(D)$ contains no $D^2$ term, $b_0
  = 0$. 

  #box(inset:10pt)[
    #underline(offset: 3pt, evade: false)[Solve for $y_n(t)$:]
  
    $lambda^2 + 6 lambda + 9 = (lambda + 3)^2 = 0 arrow lambda_1 = lambda_2 =
    lambda = -3$
  
    #v(10pt)
  
    $y_n (0) = 0$, $y'_n (0) = 1$
    
    #v(10pt)
  
    #grid(columns: (2fr, 2fr), 
      [
        $y_n (t) = c_1e^(-3t) + c_2 t e^(-3t)$ 
  
        $0 = c_1 e^(-3 dot 0) + c_2 e^(-3 dot 0)$
  
        $0 = c_1 + c_2$
      ],
      [
        $y'_n (t) = -3c_1e^(-3t) + c_2 e^(-3t) - 3 c_2 t e^(-3t)$
  
        $1 = -3 c_1 e^(-3 dot 0) + c_2 e^(-3 dot 0) - 3 c_2 dot 0 e^(-3 dot 0)$
  
        $1 = -3 c_1 + c_2$
      ]
    )
  
    Equations $0 = c_1 + c_2$ and $1 = -3 c_1 + c_2$ can now be solved as a
    system of equations:
  
    $c_1 = - c_2 arrow 1 = -3 (-c_2) + c_2$
  
    #h(60pt) $1 = 3 c_2 + c_2$
  
    #h(60pt) $1 = 4 c_2$
  
    #h(60pt) $c_2 = 1/4$
  
    $c_1 = - 1/4$
  ]

  $y_n (t) = - 1/4 e^(-3 t) + 1/4 t e^(-3 t)$

  $h(t) = 0 dot delta(t) + [(2D + 9)((-e^(-3 t)) / 4 + (t e^(-3 t)) /4)]u(t)$

  #h(22pt) $= [2 d(-e^(-3 t) / 4) / (d t) + 2 d((t e^(-3 t)) / 4) / (d t) - (9
  e^(-3 t)) / 4 + (9 t e^(-3 t)) / 4]u(t)$

  #h(22pt) $= [2 ((3 e^(-3 t)) / 4) + 2 ((e^(-3 t) -3 t e^(-3 t)) / 4) - (9
  e^(-3 t)) / 4 + (9 t e^(-3 t)) / 4]u(t)$

  #h(22pt) $= [(6 e^(-3 t) + 2 e^(-3 t) -6 t e^(-3 t) - 9e^(-3t) + 9 t e^(-3t))
  / 4 ]u(t)$

  #h(22pt) $= [(- e^(-3 t) + 3 t e^(-3 t)) / 4 ]u(t)$

  #box(
    inset: 8pt,
    stroke: black
  )[
    $h(t) = [(- e^(-3 t) + 3 t e^(-3 t)) / 4 ]u(t)$
  ]
]

#pagebreak()

#problem(3, [The unit impulse of an LTIC system is given by $h(t) = e^(-t)
u(t)$. Determine the zero-state system response if the input $x(t)$ is:])

#subproblem("A", [$u(t)$])

#block(inset: 1em)[
  For two causal systems (which both $h(t)$ and $x(t)$ are, based on the $u(t)$
  factor in each function), $y_"ZSR" (t) = x(t) convolve h(t) = integral_0^t x(tau)
  h(t - tau) d tau$.

  Therefore,

  $y_"ZSR" (t) = u(t) convolve e^(-t) u(t)$

  #h(36pt) $integral_0^t u(tau) e^(-(t - tau)) u(t - tau) d tau$

  #h(36pt) $= integral_0^t e^(-t) dot e^(-tau) d tau$

  #h(36pt) $= e^(-t) integral_0^t e^(-tau) d tau$

  #h(36pt) $= e^(-t) dot [-e^(-tau)]_0^t$

  #h(36pt) $= e^(-t) dot [-e^(-t) - 1]$

  #h(36pt) $= 1 - e^(-t)$

  #box(
    inset: 8pt,
    stroke: black
  )[
    $y_"ZSR" (t) = (1 - e^(-t)) u(t)$
  ]
]

#subproblem("B", [$e^(-t) u(t)$])

#block(inset: 1em)[
  $y_"ZSR" (t) = e^(-t) u(t) convolve e^(-t) u(t)$

  #h(36pt) $=  integral_0^t e^(- tau) u(tau) e^(-(t - tau)) u(t - tau) d tau$

  #h(36pt) $= integral_0^t e^(-tau)e^(tau)e^(-t) d tau$
  
  #h(36pt) $= e^(-t) integral_0^t e^0 d tau$

  #h(36pt) $= e^(-t)$

  #box(
    inset: 8pt,
    stroke: black
  )[
    $y_"ZSR" (t) = (e^(-t)) u(t)$
  ]
]

#pagebreak()

#subproblem("C", [$e^(-2t) u(t)$])

#block(inset: 1em)[
  $y_"ZSR" (t) = e^(-2t) u(t) convolve e^(-t) u(t)$

  #h(36pt) $= integral_0^t e^(-2 tau) u(tau) e^(-(t - tau)) u(t - tau) d tau$

  #h(36pt) $= integral_0^t e^(-2 tau) e^(tau) e^(-t) d tau$

  #h(36pt) $= e^(-t) integral_0^t e^(- tau) d tau$

  #h(36pt) $= e^(-t) [-e^(-tau)]_0^t$

  #h(36pt) $= e^(-t) [-e^(-t) - 1]$

  #h(36pt) $= -e^(-2t) - e^(-t)$

  #box(
    inset: 8pt,
    stroke: black
  )[
    $y_"ZSR" (t) = (-e^(-2t) - e^(-t)) u(t)$
  ]
]

#subproblem("D", [$sin(3t) u(t)$])

#block(inset: 1em)[
  $y_"ZSR" (t) = sin(3t) u(t) convolve e^(-t) u(t)$

  #h(36pt) $= integral_0^t sin(3 tau) u(tau) e^(-(t - tau)) u(t - tau) d tau$

  #h(36pt) $= integral_0^t sin(3 tau) e^(-t) e^(tau) d tau$

  #h(36pt) $= e^(-t) integral_0^t sin(3 tau) e^(tau) d tau$

  #grid(columns: (2fr, 2fr),
    [
      #h(36pt) $=$ further math stuff, including 

      #h(47pt) integration by parts
    ],
    [
      #grid(columns: (2fr, 2fr),
        [
          $u$

          $d u$
        ],
        [
          $v$

          $d v$
        ]
      )
    ]
  )

  #box(
    inset: 8pt,
    stroke: black
  )[
    answer goes here
  ]
]

#pagebreak()

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

