#import "@preview/quill:0.7.2": *
#import "@preview/zap:0.4.0"
#import "@preview/lilaq:0.6.0" as lq
#show: lq.theme.schoolbook

#import "homework.typ": *

#show: hw.with(
  assign: [HW 4: \ System Realisation and Fourier Series],
  course: [ECE 3220: Signals and Systems],
  duedate: [March 27, 2026],
)

#problem(1, [Realise $ H(s) = (s(s+2))/((s+1)(s+3)(s+4)) $ by canonic direct form.])

#block(inset: 1em)[
  $H(s) = (s(s+2))/((s+1)(s+3)(s+4))$

  #h(26pt) $= (s^2+2s)/((s^2+4s+3)(s+4))$

  #h(26pt) $= (s^2+2s)/(s^3+8s^2+19s+12)$

  #h(26pt) $= (s^3+8s^2+19s+12)^(-1) times (s^2+2s)$

  #h(26pt) $= (1+8s^(-1)+19s^(-2)+12s^(-3))^(-1) times (s^(-1)+2s^(-2))$

  #h(26pt) $= H_2(s) times H_1(s)$ with $H_1(s) = (s^(-1)+2s^(-2))$, $H_2(s)
  = (1+8s^(-1)+19s^(-2)+12s^(-3))^(-1)$

  The transfer function can be realised as the combination of transfer
  functions $H_1(s)$ and $H_2(s)$, using $V(s)$ as an intermediate placeholder.
  The block diagram is shown below:

  #align(center)[
    #quantum-circuit(
      lstick($X(s)$), gate($H_2(s)$), ctrl(label: (content: $V(s)$, pos: top)),
      gate($H_1(s)$), rstick($Y(s)$)
    )
  ]

  Using this block diagram, it can be seen that $V(s) = X(s)H_2(s)$ and $Y(s) =
  V(s)H_1(s)$. Therefore, 

  #grid(
    columns: (2fr, 2fr),
    [
      $Y(s) = V(s)(s^(-1)+2s^(-2))$
    ],
    [
      $V(s) = X(s)(1+8s^(-1)+19s^(-2)+12s^(-3))^(-1)$
  
      $X(s) = V(s)(1+8s^(-1)+19s^(-2)+12s^(-3))$

      #h(27pt) $= V(s)+V(s)(8s^(-1)+19s^(-2)+12s^(-3))$

      $V(s) = X(s)-V(s)(8s^(-1)+19s^(-2)+12s^(-3))$
    ]
  )

  #align(center)[
    #answer([
      The direct-II realisation can then be drawn as:

      #align(center)[
        #quantum-circuit(
          lstick($X(s)$), 1, targ(), 2, ctrl(2, label: (content: $V(s)$, pos: top)), setwire(0), 3, setwire(1), rstick($Y(s)$), [\ ],

          setwire(0), 5, $1/s$, [\ ],

          setwire(0), 2, targ(), setwire(1), $-8$, 1, ctrl(2), 1, $1$, targ(), setwire(0), [\ ],

          setwire(0), 5, $1/s$, [\ ],
    
          setwire(0), 2, targ(), setwire(1), $-19$, 1, ctrl(2), 1, $2$, ctrl(-4), setwire(0), [\ ],

          setwire(0), 5, $1/s$, [\ ],
    
          setwire(0), 2, ctrl(-6), setwire(1), $-12$, 1, ctrl(), setwire(0)
        )
      ]
    ])
  ]
]

#problem(2, [For each of the periodic signals, find the compact trigonometric
Fourier series and sketch the amplitude and phase spectra. If either the sine
or cosine terms are absent in the Fourier series, explain why.])

#subproblem("A", [
  #align(center)[
    #lq.diagram(
      width: 16cm,
      height: 2cm,
      xaxis: (tick-distance: 2, format-ticks:
        lq.tick-format.linear.with(suffix:$pi$), label: $t$),
      yaxis: (tick-distance: 1, label: $a(t)$),
  
      lq.plot(
        (0,0),
        (0,1.1),
        stroke: (thickness: 0pt),
        mark: none,
      ),
  
      lq.plot(
        (-8,-6,-6,-4,-4,-2,-2,0,0,2,2,4,4,6,6,8,8),
        ( 0, 1, 0, 1, 0, 1, 0,1,0,1,0,1,0,1,0,1,0),
        stroke: (paint: gray, thickness: 2pt),
        mark: none,
      ),
    ),
  ]
])

#block(inset: 1em)[
  The trigonometric Fourier series is expressed as 

  $f(t) = a_0/2 + sum_(n=1)^infinity a_n cos(n omega_0 t) + b_n sin(n omega_0 t)$

  for period $T$ and angular frequency $omega_0$ of a periodic signal. For the
  provided signal $a(t)$, \ $T = 2 pi$ by observation; because $omega_0 =
  (2pi)/T$, it can be seen that $omega_0 = 1$.

  $a_0 = 2/T integral_(-T/2)^(T/2) f(t)d t = 2/(2pi) integral_(0)^(2pi) t/(2pi) d t$

  #h(14pt) $= 2/(4pi^2) integral_(0)^(2pi) t d t$

  #h(14pt) $= 2/(4pi^2) [(t^2)/2]_(0)^(2pi)$

  #h(14pt) $= 2/(4pi^2) ((4pi^2)/2 - 0/2)$

  $a_0 = 1$

  #v(10pt)

  $a_n = 2/T integral_(-T/2)^(T/2) f(t) cos(n omega_0 t) d t = 2/(2pi) integral_(0)^(2pi) t/(2pi) cos(n dot 1 dot t) d t$ 

  #grid(
    columns: (2fr, 2fr),
    [
      #h(15pt) $= 1/(2pi^2) integral_(0)^(2pi) t cos(n t) d t$

      #h(15pt) $= 1/(2pi^2) [[(t sin(n t))/n]_(0)^(2pi) - integral_(0)^(2pi) sin(n t)/n d t]$
    ],
    [
      #align(right)[
        Let $u = t$, $d v = cos(n t) d t$

        Then $d u = d t$, $v = sin(n t)/n$
      ]
    ]
  )

  #h(15pt) $= 1/(2pi^2) [((2pi sin(2n pi)-0)/n) - 1/n integral_(0)^(2pi) sin(n t) d t]$

  #h(15pt) $= 1/(2pi^2) [0 + 1/n cos(n t)/n]_(0)^(2pi)$

  #h(15pt) $= 1/(2pi^2) [cos(2n pi)/(n^2) - cos(0)/(n^2)]$

  $a_n = 0$


  $b_n = 2/T integral_(-T/2)^(T/2) f(t) sin(n omega_0 t) d t = 2/(2pi) integral_(0)^(2pi) t/(2pi) sin(n dot 1 dot t) d t$ 

  #grid(
    columns: (2fr, 2fr),
    [
      #h(15pt) $= 1/(2pi^2) integral_(0)^(2pi) t sin(n t) d t$

      #h(15pt) $= 1/(2pi^2) [[(-t cos(n t))/n]_(0)^(2pi) + integral_(0)^(2pi) cos(n t)/n d t]$
    ],
    [
      #align(right)[
        Let $u = t$, $d v = sin(n t) d t$

        Then $d u = d t$, $v = -cos(n t)/n$
      ]
    ]
  )

  #h(15pt) $= 1/(2pi^2) [((-2pi cos(2n pi)+0)/n) + 1/n integral_(0)^(2pi) cos(n t) d t]$

  #h(15pt) $= 1/(2pi^2) [(-2pi)/n + 1/n sin(n t)/n]_(0)^(2pi)$

  #h(15pt) $= 1/(2pi^2) [(-2pi)/n + 1/n (sin(2n pi) - sin(0))]$

  #h(15pt) $= 1/(pi) [(-1)/n]$

  $b_n = (-1)/(n pi)$

  So $a(t) = 1/2 + sum_(n=1)^oo (-1)/(n pi) sin(n t)$.

  The compact trigonometric Fourier series is expressed as 

  $f(t) = c_0 + sum_(n=1)^oo c_n cos(n omega_0 t + Phi_n)$,

  with $c_0 = a_0/2$, $c_n = root(,(a_n)^2+(b_n)^2)$, $Phi_n =
  arctan(-b_n/a_n)$. Therefore, 

  $a(t) = 1/2 + sum_(n=1)^oo root(,(0)^2+((-1)/(n pi))^2) cos(n t +
  arctan(-1/(n pi)/0))$

  #answer([$a(t) = 1/2 + sum_(n=1)^oo -1/(n pi) cos(n t - 90^o)$
    
    With magnitude and phase spectra as below:

    #image("a_t.png", height:35%)
  ])
]

#pagebreak()

#subproblem("B", [
  #align(center)[
    #lq.diagram(
      width: 16cm,
      height: 2cm,
      xaxis: (
        tick-distance: 1 / 2,
        locate-ticks: lq.tick-locate.linear.with(unit: calc.pi),
        format-ticks: lq.tick-format.fraction.with(suffix: $pi$),
        label: $t$
      ),
      yaxis: (tick-distance: 1, label: $b(t)$),
  
      lq.plot(
        (0,0),
        (0,1.1),
        stroke: (thickness: 0pt),
        mark: none,
      ),
  
      lq.plot(
        (-9/4*calc.pi,-7/4*calc.pi,-7/4*calc.pi,-5/4*calc.pi,-5/4*calc.pi,-3/4*calc.pi,-3/4*calc.pi,-1/4*calc.pi,-1/4*calc.pi,1/4*calc.pi,1/4*calc.pi,3/4*calc.pi,3/4*calc.pi,5/4*calc.pi,5/4*calc.pi,7/4*calc.pi,7/4*calc.pi,9/4*calc.pi),
        (-1,1,0,0,-1,1,0,0,-1,1,0,0,-1,1,0,0,-1,1),
        stroke: (paint: gray, thickness: 2pt),
        mark: none,
      ),
    )
  ]
])

#block(inset:1em)[
  $T=pi -> omega_0 = (2pi)/pi = 2$

  $a_0 = 2/pi integral_(-1/2 pi)^(1/2 pi) b(t) d t = 2/pi integral_(-1/4
  pi)^(1/4 pi) (4t)/pi d t$

  #h(15pt) $= 8/pi^2 integral_(-1/4 pi)^(1/4 pi) t d t$

  #h(15pt) $= 8/pi^2 [t^2/2]_(-1/4 pi)^(1/4 pi)$

  #h(15pt) $= 8/pi^2 [pi^2/32 - pi^2/32]$

  $a_0 = 0$

  $a_n = 2/pi integral_(-1/4 pi)^(1/4 pi) (4t)/pi cos(2n t) d t$

  #h(15pt) $= 8/pi^2 integral_(-1/4 pi)^(1/4 pi) t cos(2n t) d t$

  Using the integration by parts solution from part *A*, 

  #h(15pt) $= 8/pi^2 [ [(t sin(2n t))/(2n)]_(-1/4 pi)^(1/4 pi) - 1/(2n)
  integral_(-1/4 pi)^(1/4 pi)sin(2n t) d t ]$

  #h(15pt) $= 8/pi^2 [ [pi (sin((pi n)/2) + sin((-pi n)/2))/(8n)] - 1/(2n)
  integral_(-1/4 pi)^(1/4 pi)sin(2n t) d t ]$

  #h(15pt) $= 8/pi^2 [ 0 + 1/(2n)^2 [cos(2n t)]_(-1/4 pi)^(1/4 pi)]$

  #h(15pt) $= 8/pi^2 [ 0 + 1/(2n)^2 [cos((n pi)/2) - cos((-n pi)/2)]]$

  $a_n = 0$

  $b_n = 2/pi integral_(-1/4 pi)^(1/4 pi) (4t)/pi sin(2n t) d t$

  #h(15pt) $= 8/pi^2 integral_(-1/4 pi)^(1/4 pi) t sin(2n t) d t$

  Using the integration by parts solution from part *A*, 

  #h(15pt) $= 8/pi^2 [ [(-t cos(2n t))/(2n)]_(-1/4 pi)^(1/4 pi) + 1/(2n)
  integral_(-1/4 pi)^(1/4 pi)cos(2n t) d t ]$

  #h(15pt) $= 8/pi^2 [ [(-pi cos((pi n)/2) - pi cos((pi n)/2))/(8n)] + 1/(2n)
  integral_(-1/4 pi)^(1/4 pi)cos(2n t) d t ]$

  #h(15pt) $= 8/pi^2 [ [(-pi cos((pi n)/2))/(4n)] + 1/(2n)
  integral_(-1/4 pi)^(1/4 pi)cos(2n t) d t ]$

  #h(15pt) $= 8/pi^2 [ [(-pi cos((pi n)/2))/(4n)] + 1/(2n)^2 [sin(2n t)]_(-1/4 pi)^(1/4 pi)]$

  #h(15pt) $= 8/pi^2 [ [(-pi cos((pi n)/2))/(4n)] + 1/(2n)^2 [sin((n pi)/2)-sin((-n pi)/2)]]$

  #h(15pt) $= 8/pi^2 [(-pi cos((pi n)/2))/(4n) + (2sin((n pi)/2))/(4n^2)]$

  #h(15pt) $= 2/pi^2 [(-n pi cos((pi n)/2) + (2sin((n pi)/2)))/(n^2)]$

  $b_n = 2/pi^2 [(-n pi cos((pi n)/2) + (2sin((n pi)/2)))/(n^2)]$


  $c_0 = a_0/2$, $c_n = root(,(a_n)^2+(b_n)^2)$, $Phi_n =
  arctan(-b_n/a_n)$. Therefore, 

  #answer([
    $b(t) = sum_(n=1)^oo 2/pi^2 [(-n pi cos((pi n)/2) + (2sin((n pi)/2)))/(n^2)] cos(2n t - 90^o)$

    With magnitude and phase spectra as below:

    #image("b_t.png", height:35%)
  ])
]

#pagebreak()

#subproblem("C", [
  #align(center)[
    #lq.diagram(
      width: 16cm,
      height: 2cm,
      xaxis: (
        tick-distance: 1,
        label: $t$
      ),
      yaxis: (tick-distance: 1, label: $c(t)$),
  
      lq.plot(
        (0,0),
        (0,1.1),
        stroke: (thickness: 0pt),
        mark: none,
      ),
  
      lq.plot(
        (-8,-6,-5,-5,-3,-2,-2,0,1,1,3,4,4,6,7,7),
        ( 0, 0, 1, 0, 0, 1, 0,0,1,0,0,1,0,0,1,0),
        stroke: (paint: gray, thickness: 2pt),
        mark: none,
      ),
    )
  ]
])

#pagebreak()

#subproblem("D", [
  #align(center)[
    #lq.diagram(
      width: 16cm,
      height: 2cm,
      xaxis: (
        tick-distance: 1,
        label: $t$
      ),
      yaxis: (tick-distance: 1, label: $d(t)$),
  
      lq.plot(
        (0,0),
        (0,1.1),
        stroke: (thickness: 0pt),
        mark: none,
      ),
  
      lq.plot(
        (-9,-8,-7,-5,-4,-2,-1,1,2,4,5,7,8,9),
        ( 0, 0, 1, 1, 0, 0, 1,1,0,0,1,1,0,0),
        stroke: (paint: gray, thickness: 2pt),
        mark: none,
      ),
    )
  ]
])
