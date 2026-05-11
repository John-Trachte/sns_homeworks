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
    In terms of the $E$ operator, the difference equation can be expressed as:

    $(E^2 - 2 E + 2) dot y[n] = Q[E] dot y[n] = 0$

    Factoring $Q[E] = Q[gamma] = 0$ yields $gamma_"1,2" = 1 plus.minus j =
    root(,2) e^(plus.minus (j pi) / 4)$ 

    $y[n] = c root(,2)^n cos((n pi) / 4 + theta)$

    $y[-1] = c root(,2)^(-1) cos((-pi) / 4 + theta) = 1 $

    #h(30pt) $= c root(,2)^(-1) (cos((-pi) / 4)cos(theta) - sin((-pi) / 4)
    sin(theta))$

    #h(30pt) $= c root(,2)^(-1) ((root(,2)) / 2 cos(theta) - (root(,2)) / 2
    sin(theta))$

    #h(30pt) $= c root(,2)^(-1) ((root(,2)) / 2 cos(theta) - (root(,2)) / 2
    sin(theta))$
    
    #h(30pt) $= c / 2 cos(theta) - c / 2 sin(theta)$
    
    $y[-2] = c root(,2)^(-2) cos((-pi) / 2 + theta) = 0$

    #h(30pt) $= c / 2 sin(theta)$

    Because $c / 2 sin(theta) = 0$ and $c / 2 cos(theta) - c / 2 sin(theta) = c
    / 2 cos(theta) - 0 = 1$, it can be seen that $c != 0$; therefore, $sin(theta) 
    = 0$, so $theta = plus.minus n pi$.

    $c / 2 cos(plus.minus n pi) - c / 2 sin(plus.minus n pi) = c / 2
    cos(plus.minus n pi) = 1 -> c = 2 (-1)^n$

    $y[n] = (2 (-1)^n) / 2 root(,2)^n cos((n pi) / 4 plus.minus n pi) = (-1)^n
    root(,2)^n cos((n pi) / 4 plus.minus n pi)$

    #ans([
      $y[n] = (-1)^n root(,2)^n cos((n pi) / 4 plus.minus n pi)$
    ])
]

#pagebreak()

#problem(2, [Determine the impulse response of the given system. $ 4y[n + 1] +
y[n - 1] = 8x[n + 1] + 8x[n] $])

#block(inset: 1em)[
    In a LTIC discrete system, impulse response $h[n] = (b_N)/(a_N) delta[n] +
    y_"ZIR" [n] u[n]$. 

    Written in standard form, the system is expressed as $y[n + 2] + y / 4 [n]
    = 2 x[n + 2] + 2 x[n + 1]$, with $a_N = 1 / 4$ and $b_N = 0$; therefore,
    the term $(b_N)/(a_N) delta[n] = 0$. 

    $Q[E] = E^2 + E / 4 <=> Q[gamma] = gamma^2 + gamma / 4 = 0$

    $gamma = plus.minus j / 2 = (e^(plus.minus (j pi) / 2)) / 2$

    $y[n] = c (1 / 2)^n cos((n pi) / 2 + theta)$

    Changing $x[n] -> delta[n], y[n] -> h[n]$ in the original system expression
    gives $4 h[n + 1] + h[n - 1] = 8 delta[n + 1] + 8 delta[n]$.

    When $n = 0$, $4 h[1] + h[-1] = 8 delta[1] + 8 delta[0]$, so $h[1] = 2$.

    When $n = -1$, $4 h[0] + h[-2] = 8 delta[0] + 8 delta[-1]$, so $h[0] = 2$.

    $y[1] = c (1 / 2)^1 cos((pi) / 2 + theta) = 2 -> c (cos(pi / 2) cos(theta) - sin(pi /
    2) sin(theta)) = -c sin(theta) = 4$

    $y[0] = c (1 / 2)^0 cos(0 + theta) = c cos(theta) = 2$

    $2 / cos(theta) = (-4) / sin(theta) -> tan(theta) = -2 -> theta = -63.435 degree$

    #grid(
        columns: (2fr, 2fr),
        [
            $c = 2 / cos(theta) = 4.472$
        ],
        [
           $c = (-4) / sin(theta) = 4.472$ 
        ]
    )

    #ans([ $h[n] = (4.472) / (2)^n cos((n pi) / 2 - 63.435 degree)$ ])
]

#pagebreak()

#problem(3, [Determine the response $y[n]$ of a system with unit impulse
response given by $ h[n] = (-2)^n u[n - 1] $ under input $x[n] = e^(-n) u[n +
1]$. Use the convolution sum and the data in Table 3.1 (B.P. Lathi _Signals
Processing and Linear Systems_) to determine your answer.])

#block(inset: 1em)[
   $x[n] convolve h[n] = sum_(m = 0)^n x[m] h[n - m]$

   #h(51pt) $= sum_(m=0)^n e^(-m) u[m + 1] (-2)^(n - m) u[n - m - 1]$

   If $m <= n$, $u[n - m - 1] = 1" "forall" "m < n$; otherwise, $u[n - m - 1] =
   u[n - n - 1] = u[-1] = 0$. Likewise, $x[n] != 0" "forall" "n >= -1$.
   Therefore, $x[n] convolve h[n] = sum_(m = -1)^(n-1) e^(-m) (-2)^(n - m)$

   $x[n] convolve h[n] = (-2)^n sum_(m = -1)^(n-1) e^(-m) (-2)^(-m)$

   #h(51pt) $= (-2)^n sum_(m = -1)^(n-1) (-2 e)^(-m)$

   #h(51pt) $= (-2)^n sum_(m = -1)^(n-1) (1 / (-2 e))^(m)$

   #h(51pt) $= (-2)^n ((1 / (-2e))^n - (1 / (-2e))^(-1)) / (1 / (-2e) - 1)$

   #h(51pt) $= (-2)^n ((1 / (-2e))^n + 2e) / ((1 + 2e) / (-2e))$

   #h(51pt) $= e(-2)^(n + 1) ((1 / (-2e))^n + 2e) / (1 + 2e)$

   //#h(51pt) $= ((1 / e)^n + 2e(-2)^n) / ((1 + 2e) / (-2e))$
//
   //#h(51pt) $= (-2e(1 / e)^(n) + 2e^2(-2)^(n + 1)) / (1 + 2e)$

   //#h(51pt) $= (((-2) / (-2e))^n - (-2)^n) / ((1 + 2e) / (-2e))$
//
   //#h(51pt) $= ((1 / (e))^n - (-2)^n) / ((1 + 2e) / (-2e))$
//
   //#h(51pt) $= ((1 / (e))^n - e(-2)^(n + 1)) / (1 + 2e)$

   #v(10pt)

   To apply the convolutions prepared in Table 3.1, rewrite $x[n] = (1 / e)^n
   u[n + 1]$. Sum 4 can then be applied:

   $x[n] convolve h[n] = ((1 / e)^(n + 1) - (-2)^(n + 1)) / (1 / e + 2) u[n]$

   #h(51pt) $= ((1 / e)^(n + 1) - (-2)^(n + 1)) / ((1 + 2 e) / e) u[n]$

   #h(51pt) $= ((1 / e)^(n) - e(-2)^(n + 1)) / (1 + 2 e) u[n]$

   //#h(51pt) $= ((1)^(n + 1) - (-2e)^(n + 1)) / (1 + 2 e) u[n]$
//
   //#h(51pt) $= (1 - (-2e)^(n + 1)) / (1 + 2 e) u[n]$
]

#pagebreak()

#problem(4, [Use the sliding tape algorithm to determine $x[n] convolve g[n]$.
#align(center)[ #image("figs/q4.png") ] ])
