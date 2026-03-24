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

#problem(2, [For each of the periodic signals in *Fig. 1*, find the compact
trigonometric Fourier series and sketch the amplitude and phase spectra. If
either the sine or cosine terms are absent in the Fourier series, explain
why.])

#v(20pt)

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 2cm,
    xaxis: (tick-distance: 2, format-ticks:
      lq.tick-format.linear.with(suffix:$pi$), label: $t$),
    yaxis: (tick-distance: 1, label: $c(t)$),

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

#v(20pt)

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
    yaxis: (tick-distance: 1, label: $d(t)$),

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

#v(20pt)

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 2cm,
    xaxis: (
      tick-distance: 1,
      label: $t$
    ),
    yaxis: (tick-distance: 1, label: $e(t)$),

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

#v(20pt)

#align(center)[
  #lq.diagram(
    width: 16cm,
    height: 2cm,
    xaxis: (
      tick-distance: 1,
      label: $t$
    ),
    yaxis: (tick-distance: 1, label: $f(t)$),

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
