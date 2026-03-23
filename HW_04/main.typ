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
