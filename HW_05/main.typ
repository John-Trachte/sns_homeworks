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
  $F^(-1){X(omega)} = 1/(2 pi) integral_(-oo)^(oo) X(omega) e^(j omega t) d
  omega$ 

  #h(59pt) $= 1/(2 pi) integral_(-omega_0)^(omega_0) omega^2 e^(j omega t) d
  omega$

  #grid(
    columns:(2fr, 1fr),
    [
      // first ibp
      #h(59pt) $= 1/(2 pi) [(omega^2 e^(j omega t))/(j t) -
      integral_(-omega_0)^(omega_0) (2 omega e^(j omega t))/(j t) d
      omega]_(-omega_0)^(omega_0)$

      #h(59pt) $= 1/(2 pi) [(omega^2 e^(j omega t))/(j t) - 2/(j t)
      integral_(-omega_0)^(omega_0) omega e^(j omega t) d
      omega]_(-omega_0)^(omega_0)$


      // second ibp
      #h(59pt) $= 1/(2 pi) [(omega^2 e^(j omega t))/(j t) - 2/(j t)((omega e^(j
      omega t))/(j t) - integral_(-omega_0)^(omega_0) e^(j omega t)/(j t) d
      omega)]_(-omega_0)^(omega_0)$
    ],
    [
      Integrate by parts with $u_1 = omega^2$, $d u_1 = 2 omega d omega$, $d
      v_1 = e^(j omega t) d omega$, $v_1 = (e^(j omega t))/(j t)$

      Integrate by parts with $u_2 = omega$, $d u_2 = d omega$, $d v_2 = e^(j
      omega t) d omega$, $v_2 = (e^(j omega t))/(j t)$
    ]
  )

  #v(10pt)

  #h(59pt) $= [1/(2 pi j t) omega^2 e^(j omega t) - 2/(2 pi j t)((omega e^(j
  omega t))/(j t) - e^(j omega t)/(j t)^2 )]_(-omega_0)^(omega_0)$

  #h(59pt) $= [(omega_0^2 e^(j omega_0 t) - omega_0^2 e^(-j omega_0 t))/(2 pi j t)
  - 2/(2 pi j t)((omega e^(j omega t))/(j t)
  + e^(j omega t)/t^2 )]_(-omega_0)^(omega_0)$

  #h(59pt) $= (omega_0^2 e^(j omega_0 t) - omega_0^2 e^(-j omega_0 t))/(2 pi j t)
  - 2/(2 pi j t)((omega_0 e^(j omega_0 t) + omega_0 e^(-j omega_0 t))/(j t)
  + (e^(j omega_0 t) - e^(-j omega_0 t))/t^2 )$

  #h(59pt) $= (omega_0^2)/(pi t) sin(omega_0 t)
  + (2 omega_0)/(pi t^2)cos(omega_0 t)
  - 2/(pi t^3) sin(omega_0 t)$

  #ans([
    $F^(-1){X(omega)} = ((omega_0^2)/(pi t) - 2/(pi t^3)) sin(omega_0 t) 
    + (2 omega_0)/(pi t^2)cos(omega_0 t)$
  ])
]


#pagebreak()

#subproblem("B", [#image("figs/2b.png", width:50%)])

#block(inset: 1em)[
  $X(omega) = cases(0 #h(20pt)  & #h(16pt) omega < -2,
                  1             & -2 <= omega < -1,
                  2             & -1 <= omega < 1,
                  1             & #h(7pt) 1 <= omega < 2,
                  0             & #h(7pt) 2 <= omega)$

  $F^(-1){X(omega)} = 1/(2 pi) integral_(-oo)^(oo) X(omega) e^(j omega t) d
  omega$ 

  #h(59pt) $= 1/(2 pi) [integral_(-2)^(-1) 1 e^(j omega t) d omega +
  integral_(-1)^(1) 2 e^(j omega t) d omega + integral_(1)^(2) 1 e^(j omega t)
  d omega]$

  #h(59pt) $= 1/(2 pi) [[(e^(j omega t))/(j t)]_(-2)^(-1) + [(2 e^(j omega
  t))/(j t)]_(-1)^(1) + [(e^(j omega t))/(j t)]_(1)^(2)]$

  #h(59pt) $= 1/(2 pi) [(e^(-j t) - e^(-j 2 t))/(j t) + (2 (e^(j t) - e^(-j
  t)))/(j t) + (e^(j 2 t) - e^(j t))/(j t)]$

  #h(59pt) $= 1/(2 pi) [(e^(-j t) - e^(-j 2 t) + 2e^(j t) - 2e^(-j
  t) + e^(j 2 t) - e^(j t))/(j t)]$

  #h(59pt) $= 1/(2 pi) [(-e^(-j 2 t) + e^(j t) - e^(-j t) + e^(j 2 t))/(j t)]$

  #h(59pt) $= 1/(2 pi) [(e^(j t) - e^(-j t) + e^(j 2 t) - e^(-j 2 t))/(j t)]$

  #h(59pt) $= 1/(t pi) [(e^(j t) - e^(-j t) + e^(j 2 t) - e^(-j 2 t))/(j 2)]$

  #h(59pt) $= 1/(t pi) (sin(t) + sin(2t))$

  #ans([
    $F^(-1){X(omega)} = 1/(t pi) (sin(t) + sin(2t))$
  ])
]


#pagebreak()

#problem(3, [Prove the following.])

#subproblem("A", [$F{ "rect"(t - 5) } = sinc(omega / 2) e^(-j 5 omega)$])

#block(inset: 1em)[
  Consider $x(t) = "rect"(t/tau) = cases(1 & #h(10pt) (-tau)/2 <= t <= tau/2, 0
  & #h(10pt) "otherwise")$

  Then $x(t - 5) = "rect"((t - 5)/tau) = cases(1 & #h(10pt) (-tau)/2 + 5 <= t
  <= tau/2 + 5, 0 & #h(10pt) "otherwise")$

  Let $tau = 1$; then $"rect"((t - 5)/tau) = "rect"(t - 5) = cases(1 & #h(10pt)
  (-1)/2 + 5 <= t <= 1/2 + 5, 0 & #h(10pt) "otherwise") = cases(1 & #h(10pt)
  4.5 <= t <= 5.5, 0 & #h(10pt) "otherwise")$

  Using this equation, it is possible to determine the Fourier transform of
  $"rect"(t - 5)$:

  $F("rect"(t - 5)) = integral_(-oo)^(oo) "rect"(t - 5) e^(-j omega t) d t$

  #h(70pt) $= integral_(4.5)^(5.5) e^(-j omega t) d t$

  #h(70pt) $= [(e^(-j omega t))/(-j omega)]_(4.5)^(5.5)$

  #h(70pt) $= (e^(-j omega 5.5) - e^(-j omega 4.5))/(-j omega)$

  #h(70pt) $= (e^(-j omega 0.5) - e^(j omega 0.5))/(-j omega) dot e^(-j omega
  5)$

  #h(70pt) $= (e^(-j omega 0.5) + e^(j omega 0.5))/(j omega) dot e^(-j omega
  5)$

  #h(70pt) $= (2 / omega) sin(omega / 2) dot e^(-j omega 5)$

  #ans([$F{"rect"(t - 5)} = sinc(omega / 2) e^(-j omega 5)$])
]

// #pagebreak()

#subproblem("B", [$F^(-1){ "rect"((omega - 10) / (2 pi)) } = sinc(pi t) e^(j 10
t)$])

#block(inset: 1em)[
  $X((omega - 10)/(2 pi)) = "rect"((omega - 10)/(2 pi)) = cases(1 & #h(10pt)
  (-2 pi)/2 <= omega - 10 <= (2 pi)/2, 0 & #h(10pt) "otherwise") = cases(1 &
  #h(10pt) (-pi + 10) <= omega <= (pi + 10), 0 & #h(10pt) "otherwise") $

  $F^(-1)("rect"((omega - 10)/(2 pi))) = 1/(2 pi) integral_(-oo)^(oo)
  "rect"((omega - 10)/(2 pi)) e^(j omega t) d omega$

  #h(84pt) $= 1/(2 pi) integral_(-pi + 10)^(pi + 10)  e^(j omega t) d omega$

  #h(84pt) $= 1/(2 pi) [(e^(j omega t))/(j t)]_(-pi + 10)^(pi + 10)$

  #h(84pt) $= 1/(2 pi) ((e^(j t (pi + 10)) - e^(j t (-pi + 10)))/(j t))$

  #h(84pt) $= (e^(j t 10))/(pi t) dot (e^(j pi t) - e^(-j pi t))/(j 2)$

  #h(84pt) $= (e^(j t 10))/(pi t) sin(pi t)$

  #ans([$F^(-1){ "rect"((omega - 10) / (2 pi)) } = sinc(pi t) e^(j t 10)$])
]


#pagebreak()

#problem(4, [Use duality to prove the following.])

#subproblem("A", [$1 / 2 [delta(t) + j / (pi t)] <=> u(omega)$])

#block(inset: 1em)[
  Because $1 / 2 [delta(t) + j / (pi t)] <=> u(omega)$, it can be seen that
  $x(t) = 1 / 2 [delta(t) + j / (pi t)]$ and $X(omega) = u(omega)$.

  Applying duality, $F{X(t)} = F{u(t)} = pi delta(omega) + 1/(j omega)$.

  $pi delta(omega) + 1/(j omega) = (2 pi) [delta(omega)/2 + 1/(2 j omega pi)]$

  #h(55pt) $= (2 pi) [1/2 [delta(omega) - j/(omega pi)]]$

  Replacing $omega$ with $-omega$, it can be seen that $pi delta(-omega) +
  1/(-j omega) = 2 pi [1/2 [delta(-omega) + j/(pi omega)]]$.

  Because $delta(omega)$ is an even function, $delta(-omega) = delta(omega)$,
  so

  $2 pi [1/2 [delta(-omega) + j/(pi omega)]] = 2 pi [1/2 [delta(omega) +
  j/(pi omega)]] = 2 pi x(-omega)$.

  #ans([ Therefore, $X(t) <=> 2 pi x(-omega)$. #h(5pt) #sym.ballot ])
]

#subproblem("B", [$delta(t + T) - delta(t - T) <=> 2 j sin(T omega)$])

#block(inset: 1em)[
  $X(omega) = j 2 sin(T omega)$

  Applying duality, $F{X(t)} = F{j 2 sin(T t)}$

  $F{j 2 sin(T t)} = j 2(-j pi delta(omega - omega_0) + j pi delta(omega +
  omega_0))$

  #h(69pt) $= -2 pi(delta(omega + omega_0) - delta(omega - omega_0))$

  #h(69pt) $= 2 pi(delta(omega - omega_0) - delta(omega + omega_0))$

  Replacing $omega$ with $-omega$, $j 2(-j pi delta(-omega - omega_0) + j pi
  delta(-omega + omega_0)) = 2 pi(delta(-omega - omega_0) - delta(-omega +
  omega_0)) = 2 pi(delta(omega + omega_0) - delta(omega - omega_0)) = 2 pi
  x(-omega)$

  //$x(t) = delta(t + T) - delta(t - T)$

  //$F{x(t)} = integral_(-oo)^(oo) x(t) e^(-j omega t) d t$ 

  //#h(41pt) $= integral_(-oo)^(oo) delta(t + T) e^(-j omega t) d t -
  //integral_(-oo)^(oo) delta(t - T) e^(-j omega t) d t$

  //#h(41pt) $= e^(j omega T) - e^(-j omega T)$

  //#h(41pt) $= j 2 (e^(j omega T) - e^(-j omega T))/(j 2)$

  //#h(41pt) $= j 2 sin(T omega)$

  #ans([ Therefore, $X(t) <=> 2 pi x(-omega)$. #h(5pt) #sym.ballot ])
]


#pagebreak()

#problem(5, [Use the frequency-shifting property to find the inverse Fourier
transform of the spectra depicted below.])

#subproblem("A", [#image("figs/5a.png", width:50%)])

#block(inset: 1em)[
  $X(omega) = "rect"((omega + 4)/2) + "rect"((omega - 4)/2)$

  $F^(-1){X(omega)} = F^(-1){"rect"((omega + 4)/2) + "rect"((omega - 4)/2)}$

  #h(58pt) $= 1/pi sinc(t) e^(j 4 t) + 1/pi sinc(t) e^(-j 4 t)$

  #h(58pt) $= 1/pi sinc(t) (e^(j 4 t) + e^(-j 4 t))$

  #h(58pt) $= 2/pi sinc(t) (e^(j 4 t) + e^(-j 4 t))/2$

  #ans([ $F^(-1){X(omega)} = 2/pi sinc(t) dot cos(4t)$ ])
]

#subproblem("B", [#image("figs/5b.png", width:50%)])

#block(inset: 1em)[
  $X(omega) = Delta((omega + 4)/4) + Delta((omega - 4)/4)$

  $F^(-1){X(omega)} = F^(-1){Delta((omega + 4)/4) + Delta((omega - 4)/4)}$

  #h(59pt) $= 1/pi sinc^2(t) e^(j 4 t) + 1/pi sinc^2(t) e^(-j 4 t)$

  #h(59pt) $= 2/pi sinc^2(t) dot cos(4 t)$

  #ans([ $F^(-1){X(omega)} = 2/pi sinc^2(t) dot cos(4 t)$ ])
]

