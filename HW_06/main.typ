#import "@preview/quill:0.7.2": *
#import "@preview/zap:0.4.0"
#import "@preview/lilaq:0.6.0" as lq
#show: lq.theme.schoolbook

#import "homework.typ": *

#show: hw.with(
  assign: [HW 6: \ Discrete Systems],
  course: [ECE 3220: Signals and Systems],
  duedate: [May 8, 2026],
)

#problem(1, [Solve the difference equation under the given initial conditions.
$ y[n + 2] - 2y[n + 1] + 2y[n] = 0 $ $ y[-1] = 1, y[-2] = 0 $])

#block(inset: 1em)[
    Rewritten in terms of the $E$ operator, the difference equation can be
    expressed as:

    $(E^2 - 2 E + 2) dot y[n] = Q[E] dot y[n] = 0$

    Setting $Q[E] = Q[gamma] = 0$ and factoring the resultant expression
    yields $gamma_"1,2" = 1 plus.minus j $
]

#problem(2, [Determine the impulse response of the given system. $ 4y[n + 1] +
y[n - 1] = 8x[n + 1] + 8x[n] $])

#problem(3, [Determine the response $y[n]$ of a system with unit impulse
response given by $ h[n] = (-2)^n u[n - 1] $ under input $x[n] = e^(-n) u[n +
1]$. Use the convolution sum and the data in table 3.1 to determine your
answer.])

#problem(4, [Use the sliding tape algorithm to determine $x[n] convolve g[n]$.
#align(center)[ #image("figs/q4.png") ] ])
