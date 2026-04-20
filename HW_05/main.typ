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
]

#subproblem("B", [#image("figs/1b.png", width:50%)])

#block(inset: 1em)[
]


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

