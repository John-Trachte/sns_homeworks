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

== #smallcaps[Problem 1.]

$x(t)$ is shown in gray on graphs 1.1 - 1.5. Graph $x'(t)$.

#let graph_xt(x_prime) = {
  align(center)[
    #lq.diagram(
      width: 12cm,
      height: 4cm,
      xaxis: (tick-distance: 1, label: $t$),
      yaxis: (label: $x'(t)$),
    
      // x(t)
      lq.plot(
        (-8,-4,-4,0,2,2,8),
        ( 0, 0, 4,0,2,0,0),
        stroke: (paint: gray, thickness: 1.5pt, dash: "dashed"),
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

== #smallcaps[Problem 2.]
Evaluate each integral:

*2.1* #h(15pt)  $integral_(-infinity)^infinity delta(tau) x(t - tau) d tau$

#v(15pt)

// TODO - check
$delta(tau)$ has a value only when $tau = 0$. 

$integral_(-infinity)^infinity delta(tau) x(t - tau) d tau$

$= integral_(-infinity)^infinity delta(tau) x(t) d tau $

$= x(t) integral_(-infinity)^infinity delta(tau)$

$= x(t) dot 1$

$= x(t)$

#v(15pt)

*2.2* #h(15pt)  $integral_(-infinity)^infinity x(tau) delta(t - tau) d tau$

#v(15pt)

// TODO - check
$delta(t - tau)$ has a value only when $t = tau$. 

$= integral_(-infinity)^infinity x(tau) delta(t - tau) d tau$

$= integral_(-infinity)^infinity x(t) delta(t - tau) d tau$

$= x(t) integral_(-infinity)^infinity delta(t - tau) d tau$

$= x(t) dot 1$

$= x(t)$

#v(15pt)

*2.3* #h(15pt)  $integral_(-infinity)^infinity delta(t) e^(-j omega t) d t$

#v(15pt)

// TODO - check
$delta(t)$ has a value only when $t = 0$. 

$integral_(-infinity)^infinity delta(t) e^(-j omega t) d t$

$= e^(-j omega dot 0) integral_(-infinity)^infinity delta(t) d t$

$= 1 dot 1$

$= 1$

#v(15pt)

*2.4* #h(15pt)  $integral_(-infinity)^infinity delta(2t - 3) sin(pi t) d t$

#v(15pt)

// TODO - check
$delta(2t - 3)$ has a value only when $2t = 3$, or $t = 1.5$.

$integral_(-infinity)^infinity delta(2t - 3) sin(pi t) d t$

$= sin(pi t) integral_(-infinity)^infinity delta(2t - 3) d t$

$= sin(pi t) dot 1$

$= sin(pi t)$

$= 0.0822 = -1 "rad"$

#v(15pt)

*2.5* #h(15pt)  $integral_(-infinity)^infinity delta(t + 3) e^(-t) d t$

*2.6* #h(15pt)  $integral_(-infinity)^infinity (t^3 + 4) delta(1 - t) d t$

*2.7* #h(15pt)  $integral_(-infinity)^infinity x (2 - t) delta(3 - t) d t$

