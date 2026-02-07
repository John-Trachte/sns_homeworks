#import "@preview/lilaq:0.5.0" as lq
#show: lq.theme.schoolbook

#grid(
  columns: (2fr, 2fr),
  column-gutter: 2em,
  [
    = #smallcaps[HW 1:] Signal Properties
  ],
  [
    #align(right)[
      ECE 3220: Signals and Systems  \
      Johnathan Trachte \
      2/6/26 \
    ]
  ]
)

== #smallcaps[Problem 1]

$x(t)$ is shown in gray on graphs 1.1 - 1.5. Graph $x'(t)$.

#let graph_xt(x_prime) = {
  align(center)[
    #lq.diagram(
      width: 16cm,
      height: 4cm,
      xaxis: (tick-distance: 1, label: $t$),
      yaxis: (label: $x'(t)$),
    
      // x(t)
      lq.plot(
        (-8,-4,-4,0,2,2,8),
        ( 0, 0, 4,0,2,0,0),
        stroke: (paint: gray, thickness: 3pt, dash: "dashed"),
        mark: none,
      ),

      x_prime
    )
  ]
}

*1.1* #h(15pt) $x'(t) = x(t-4)$

#v(15pt)

// work
$x(t) = cases(
  0\,   & t < -4,
  -t\,  & -4 < t < 0,
  t\,   & 0 < t < 2,
  0\,   & t > 2,
)$

#v(15pt)

$x(t - 4) = cases(
  0\,       & t - 4 < -4,
  -(t - 4)\,  & -4 < t - 4 < 0,
  t - 4\,   & 0 < t - 4 < 2,
  0\,       & t - 4 > 2,
) = cases(
  0\,       & t  < 0,
  -(t - 4)\,  & 0 < t < 4,
  t - 4\,   & 4 < t < 6,
  0\,       & t > 6,
) = x'(t)$

#v(15pt)

// answer
#graph_xt(
    lq.plot(
      (-8,0,0,4,6,6,8),
      ( 0,0,4,0,2,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

*1.2* #h(15pt) $x'(t) = x(t/1.5)$

#v(15pt)

// work
Using $x(t)$ defined in problem 1.1,

$x(t/1.5) = cases(
  0\,       & t/1.5 < -4,
  -t/1.5\,  & -4 < t/1.5 < 0,
  t/1.5\,   & 0 < t/1.5 < 2,
  0\,       & t/1.5 > 2,
) = cases(
  0\,       & t < -6,
  -(t/1.5)\,  & -6 < t < 0,
  t/1.5\,   & 0 < t < 3,
  0\,       & t > 3,
) = x'(t)$

#v(15pt)

// answer
#graph_xt(
    lq.plot(
      (-8,-6,-6,0,3,3,8),
      ( 0, 0, 4,0,2,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

#pagebreak()

*1.3* #h(15pt) $x'(t) = x(-t)$

#v(15pt)

// work
Using $x(t)$ defined in problem 1.1,

$x(-t) = cases(
  0\,       & -t < -4,
  -(-t)\,  & -4 < -t < 0,
  -t\,   & 0 < -t < 2,
  0\,       & -t > 2,
) = cases(
  0\,       & t < -2,
  -t\,   & -2 < t < 0,
  t\,  & 0 < t < 4,
  0\,       & t > 4,
) = x'(t)$

#v(15pt)

// answer
#graph_xt(
    lq.plot(
      (-8,-2,-2,0,4,4,8),
      ( 0, 0, 2,0,4,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

*1.4* #h(15pt) $x'(t) = x(2t-4)$

#v(15pt)

// work
Using $x(t - 4)$ defined in problem 1.1,

$x(2t - 4) = cases(
  0\,       & 2t  < 0,
  -(2t - 4)\,  & 0 < 2t < 4,
  2t - 4\,   & 4 < 2t < 6,
  0\,       & 2t > 6,
) = cases(
  0\,       & t < 0,
  -(2t - 4)\,  & 0 < t < 2,
  2t - 4\,   & 2 < t < 3,
  0\,       & t > 3,
) = x'(t)$

#v(15pt)

// answer
#graph_xt(
    lq.plot(
      (-8,0,0,2,3,3,8),
      ( 0,0,4,0,2,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

#pagebreak()

*1.5* #h(15pt) $x'(t) = x(2-t)$

#v(15pt)

// work
Using $x(t)$ defined in problem 1.1,

$x(t + 2) = cases(
  0\,       & t + 2 < -4,
  -(t + 2)\,  & -4 < t + 2 < 0,
  t + 2\,   & 0 < t + 2 < 2,
  0\,       & t + 2 > 2,
) = cases(
  0\,       & t < -6,
  -(t + 2)\,  & -6 < t < -2,
  t + 2\,   & -2 < t < 0,
  0\,       & t > 0,
)$

#v(15pt)

$x(-t + 2) = cases(
  0\,       & -t < -6,
  -(-t + 2)\,  & -6 < -t < -2,
  -t + 2\,   & -2 < -t < 0,
  0\,       & -t > 0,
) = cases(
  0\,       & t < 0,
  -t + 2\,   & 0 < t < 2,
  t + 2\,  & 2 < t < 6,
  0\,       & t > 6,
)$

#v(15pt)

// answer
#graph_xt(
    lq.plot(
      (-8,0,0,2,6,6,8),
      ( 0,0,2,0,4,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

#pagebreak()

== #smallcaps[Problem 2]
Evaluate each integral:

*2.1* #h(15pt)  $integral_(-infinity)^infinity delta(tau) x(t - tau) d tau$

#v(15pt)

$delta(tau)$ has a value only when $tau = 0$. 

$integral_(-infinity)^infinity delta(tau) x(t - tau) d tau$

$= integral_(-infinity)^infinity delta(tau) x(t - 0) d tau $

$= x(t) integral_(-infinity)^infinity delta(tau)$

$= x(t) dot 1$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity delta(tau) x(t - tau) d tau = x(t)$
]

#v(15pt)

*2.2* #h(15pt)  $integral_(-infinity)^infinity x(tau) delta(t - tau) d tau$

#v(15pt)

$delta(t - tau)$ has a value only when $tau = t$. 

$integral_(-infinity)^infinity x(tau) delta(t - tau) d tau$

$= x(t) integral_(-infinity)^infinity delta(t - tau) d tau$

$= x(t) dot 1$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity x(tau) delta(t - tau) d tau = x(t)$
]

#v(15pt)

*2.3* #h(15pt)  $integral_(-infinity)^infinity delta(t) e^(-j omega t) d t$

#v(15pt)

$delta(t)$ has a value only when $t = 0$. 

$integral_(-infinity)^infinity delta(t) e^(-j omega t) d t$

$= integral_(-infinity)^infinity delta(t) e^(-j omega dot 0) d t$

$= e^(-j omega dot 0) integral_(-infinity)^infinity delta(t) d t$

$= 1 dot 1$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity delta(t) e^(-j omega t) d t = 1$
]

#v(15pt)

#pagebreak()

*2.4* #h(15pt)  $integral_(-infinity)^infinity delta(2t - 3) sin(pi t) d t$

#v(15pt)

$delta(2t - 3)$ has a value only when $2t = 3$, or $t = 1.5$.

$integral_(-infinity)^infinity delta(2t - 3) sin(pi t) d t$

$= integral_(-infinity)^infinity delta(2t - 3) sin(pi dot 1.5) d t$

$= sin(pi dot 1.5) integral_(-infinity)^infinity delta(2t - 3) d t$

$= sin(pi dot 1.5) dot 1$

$= sin(pi dot 1.5)$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity delta(2t - 3) sin(pi t) d t = 0.0822 = -1 "rad"$
]

#v(15pt)

*2.5* #h(15pt)  $integral_(-infinity)^infinity delta(t + 3) e^(-t) d t$

#v(15pt)

$delta(t + 3)$ has a value only when $t = -3$.

$integral_(-infinity)^infinity delta(t + 3) e^(-t) d t$

$= e^(-(-3)) integral_(-infinity)^infinity delta(t + 3) d t$

$= e^3 dot 1$

$= e^3$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity delta(t + 3) e^(-t) d t = 20.086$
]

#v(15pt)

*2.6* #h(15pt)  $integral_(-infinity)^infinity (t^3 + 4) delta(1 - t) d t$

#v(15pt)

$delta(1 - t)$ has a value only when $t = 1$.

$integral_(-infinity)^infinity (t^3 + 4) delta(1 - t) d t$

$= integral_(-infinity)^infinity (1^3 + 4) delta(1 - t) d t$

$= (1^3 + 4) integral_(-infinity)^infinity delta(1 - t) d t$

$= (1^3 + 4) dot 1$

$= (1^3 + 4)$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity (t^3 + 4) delta(1 - t) d t = 5$
]

#v(15pt)

#pagebreak()

*2.7* #h(15pt)  $integral_(-infinity)^infinity x (2 - t) delta(3 - t) d t$

#v(15pt)

$delta(3 - t)$ has a value only when $t = 3$.

$integral_(-infinity)^infinity x (2 - t) delta(3 - t) d t$

$= integral_(-infinity)^infinity x (2 - 3) delta(3 - t) d t$

$= (x (2 - 3)) integral_(-infinity)^infinity delta(3 - t) d t$

$= (x (2 - 3)) dot 1$

#box(
  inset: 10pt,
  stroke: (paint: black),
)[
  $integral_(-infinity)^infinity x (2 - t) delta(3 - t) d t = x (-1)$ 
]

#pagebreak()

== #smallcaps[Problem 3]

$x(t) = 2 u(t + 1) - u(t - 2) - u(t - 3)$.

#v(15pt)

#grid(
  columns: (2fr, 2fr),
  [
    #align(center)[
      #lq.diagram(
        xaxis: (tick-distance: 1, label: $t$),
        yaxis: (tick-distance: 1, ),
        legend: (position: top+left),
    
        // 2u(t+1)
        lq.plot(
          (-4,-1,-1,4),
          ( 0, 0, 2,2),
          mark: none,
          stroke: (paint: blue.transparentize(50%), thickness: 3pt, dash: "dashed"),
          label: $2u(t + 1)$,
        ),
      
        // u(t-2)
        lq.plot(
          (-4,2,2,4),
          ( 0,0,1,1),
          mark: none,
          stroke: (paint: orange.transparentize(50%), thickness: 3pt, dash: "dashed"),
          label: $u(t - 2)$,
        ),
      
        // u(t-3)
        lq.plot(
          (-4,3,3,4),
          ( 0,0,1,1),
          mark: none,
          stroke: (paint: red.transparentize(50%), thickness: 3pt, dash: "dashed"),
          label: $u(t - 3)$,
        ),
      )
    ]
  ],
  [
    #align(center)[
      #lq.diagram(
        xaxis: (tick-distance: 1, label: $t$),
        yaxis: (tick-distance: 1, label: $x(t)$),
        legend: (position: top+left),
    
        // x(t)
        lq.plot(
          (-4,-1,-1,2,2,3,3,4),
          ( 0, 0, 2,2,1,1,0,0),
          mark: none,
          stroke: (paint: blue, thickness: 1pt, dash: "dashed"),
          label: $x(t)$,
        ),
    
        // x(-t)
        lq.plot(
          (-4,-3,-3,-2,-2,1,1,4),
          ( 0, 0, 1, 1, 2,2,0,0),
          mark: none,
          stroke: (paint: red, thickness: 1pt, dash: "dashed"),
          label: $x(-t)$,
        ),
      )
    ]
  ]
)

*3.1* #h(15pt) Letting $x_o (t)$ designate the odd portion of $x(t)$, graph $x_o (1
- 2t)$.

#v(15pt)

$x_o (t) = (x(t) - x(-t)) / 2$

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 4cm,
    xaxis: (tick-distance: 1, label: $t$),
    yaxis: (tick-distance: 1, label: $x_o (t)$),
    legend: (position: top+left),

    // 2x_o(t)
    lq.plot(
      (-4,-3,-3,-2,-2,-1,-1,1,1,2,2,3,3,4),
      ( 0, 0,-1,-1,-2,-2, 0,0,2,2,1,1,0,0),
      mark: none,
      stroke: (paint: red.transparentize(50%), thickness: 3pt, dash: "dashed"),
      label: $2x_o (t)$,
    ),
    
    // x_o(t)
    lq.plot(
      (-4,-3,  -3,  -2,-2,-1,-1,1,1,2,  2,  3,3,4),
      ( 0, 0,-0.5,-0.5,-1,-1, 0,0,1,1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: black, thickness: 1pt, dash: "dashed"),
      label: $x_o (t)$,
    ),
  )
]

#v(15pt)

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 4cm,
    xaxis: (tick-distance: 1, label: $t$),
    yaxis: (tick-distance: 1, label: $x_o (1-2t)$),
    legend: (position: top+left),

    // x_o(t+1)
    lq.plot(
      (-4,-4,  -4,  -3,-3,-2,-2,0,0,1,  1,  2,2,4),
      ( 0, 0,-0.5,-0.5,-1,-1, 0,0,1,1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: orange.transparentize(50%), thickness: 3pt, dash: "dashed"),
      label: $x_o (t+1)$,
    ),
    
    // x_o(2t+1)
    lq.plot(
      (-4,-2,  -2,-1.5,-1.5,-1,-1,0,0,0.5,0.5,  1,1,4),
      ( 0, 0,-0.5,-0.5,  -1,-1, 0,0,1,  1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: blue.transparentize(50%), thickness: 3pt, dash: "dashed"),
      label: $x_o (2t+1)$,
    ),
    
    // x_o(-2t+1)
    lq.plot(
      (-4,-1, -1,-0.5,-0.5,0,0,1, 1,1.5, 1.5,   2,2,4),
      ( 0, 0,0.5, 0.5,   1,1,0,0,-1, -1,-0.5,-0.5,0,0),
      mark: none,
      stroke: (paint: black, thickness: 1pt, ),
      label: $x_o (1-2t)$,
    ),
  )
]

#pagebreak()

*3.2* #h(15pt) Letting $x_e (t)$ designate the even portion of $x(t)$, graph
$x_e (2 + t/3)$

#v(15pt)

$x_e (t) = (x(t) + x(-t)) / 2$

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 4cm,
    xaxis: (tick-distance: 1, label: $t$),
    yaxis: (tick-distance: 1, label: $x_e (t)$),
    legend: (position: top+left),

    // 2x_e(t)
    lq.plot(
      (-4,-3,-3,-2,-2,-1,-1,1,1,2,2,3,3,4),
      ( 0, 0, 1, 1, 2, 2, 4,4,2,2,1,1,0,0),
      mark: none,
      stroke: (paint: red.transparentize(50%), thickness: 3pt, dash: "dashed"),
      label: $2x_e (t)$,
    ),
    
    // x_e(t)
    lq.plot(
      (-4,-3, -3, -2,-2,-1,-1,1,1,2,  2,  3,3,4),
      ( 0, 0,0.5,0.5, 1, 1, 2,2,1,1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: black, thickness: 1pt, dash: "dashed"),
      label: $x_e (t)$,
    ),
  )
]

#v(15pt)

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 4cm,
    xaxis: (tick-distance: 1, label: $t$),
    yaxis: (tick-distance: 1, label: $x_e (2 + t / 3)$),
    legend: (position: top+left),

    // x_e(t + 2)
    lq.plot(
      (-16,-5, -5, -4,-4,-3,-3,-1,-1,0,  0,  1,1,4),
      (  0, 0,0.5,0.5, 1, 1, 2, 2, 1,1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: blue.transparentize(50%), thickness: 3pt, dash: "dashed"),
      label: $x_e (t + 2)$,
    ),

    // x_e(2 + (t/3))
    lq.plot(
      (-16,-15, -15,-12,-12,-9,-9,-3,-3,0,  0,  3,3,4),
      (  0,  0, 0.5,0.5,  1, 1, 2, 2, 1,1,0.5,0.5,0,0),
      mark: none,
      stroke: (paint: black, thickness: 1.5pt, ),
      label: $x_e (2 + t/3)$,
    ),
  )
]
