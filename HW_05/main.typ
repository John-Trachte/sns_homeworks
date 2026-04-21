#import "@preview/quill:0.7.2": *
#import "@preview/zap:0.4.0"
#import "@preview/lilaq:0.6.0" as lq
#show: lq.theme.schoolbook

#import "homework.typ": *

#show: hw.with(
  assign: [HW 5: \ Fourier Transform],
  course: [ECE 3220: Signals and Systems],
  duedate: [April 20, 2026],
)

#problem(1, [Determine the Fourier transform of the following signals.])

#subproblem("A", [#image("figs/1a.png", width:50%)])

#block(inset: 1em)[
  $x(t) = cases(
              0           &  t < 0,
              4 #h(10pt)  &  0 <= t < 1,
              2           &  1 <= t < 2,
              0           &  2 <= t
             )$

  #v(10pt)

  $F{x(t)} = integral_(-oo)^(oo) x(t) e^(-j omega t) d t = integral_0^1 4 e^(-j
  omega t) d t + integral_1^2 2 e^(-j omega t) d t$

  #h(41pt) $= [(4 e^(-j omega t))/(-j omega)]_0^1 + [(2 e^(-j omega t))/(-j
  omega)]_1^2$

  #h(41pt) $= (4 e^(-j omega) - 4 + 2 e^(-j omega 2) - 2 e^(-j omega))/(-j
  omega)$

  #h(41pt) $= (2 e^(-j omega) - 4 + 2 e^(-j omega 2))/(-j omega)$

  #ans([
    $F{x(t)} = (2 e^(-j 2 omega) + 2 e^(-j omega) - 4)/(-j omega)$
  ])
]

#pagebreak()

#subproblem("B", [#image("figs/1b.png", width:50%)])

#block(inset: 1em)[
  $x(t) = cases(
              0                 &  t < 0,
              e^(-a t) #h(10pt) &  0 <= t < T,
              0                 &  T <= t
             )$

  #v(10pt)

  $F{x(t)} = integral_(-oo)^(oo) x(t) e^(-j omega t) d t = integral_0^T e^(-a
  t) e^(-j omega t) d t$

  #h(41pt) $= integral_0^T e^(-t(j omega + a)) d t$

  #h(41pt) $= [(e^(-t(j omega + a)))/(-j omega - a)]_0^T $

  #h(41pt) $= (e^(-T(j omega + a)) - 1)/(-j omega - a)$

  #ans([
    $F{x(t)} = (e^(-T(j omega + a)) - 1)/(-j omega - a)$
  ])
]


#pagebreak()

#problem(2, [Determine the inverse Fourier transform of the following
signals.])

#subproblem("A", [#image("figs/2a.png", width:50%)])

#block(inset: 1em)[
]

#subproblem("B", [#image("figs/2b.png", width:50%)])

#block(inset: 1em)[
]


#problem(3, [Prove the following.])

#subproblem("A", [$F("rect"(t - 5)) = sinc(omega / 2) e^(-j 5 omega)$])

#block(inset: 1em)[
]

#subproblem("B", [$F^(-1)("rect"((omega - 10) / (2 pi))) = sinc(pi t) e^(j 10 t)$])

#block(inset: 1em)[
]


#problem(4, [Use duality to prove the following.])

#subproblem("A", [$1 / 2 [delta(t) + j / (pi t) <=> u(omega)]$])

#block(inset: 1em)[
]

#subproblem("B", [$delta(t + T) - delta(t - T) <=> 2 j sin(T omega)$])

#block(inset: 1em)[
]


#problem(5, [Use the frequency-shifting property to find the inverse Fourier
transform of the spectra depicted below.])

#subproblem("A", [#image("figs/5a.png", width:50%)])

#block(inset: 1em)[
]

#subproblem("B", [#image("figs/5b.png", width:50%)])

#block(inset: 1em)[
]

