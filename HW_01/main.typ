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
    
      // axis setup
      lq.plot(
        range(-8,8),
        (4,4,4,4, 4,4,4,4, 4,4,4,4, 4,4,4,4),
        stroke: none,
        mark: none,
      ),
  
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

// answer
#graph_xt(
    lq.plot(
      (-8,0,0,4,6,6,8),
      ( 0,0,4,0,2,0,0),
      mark: none,
      stroke: (paint: red, thickness: 2pt),
    )
)

*1.2* #h(15pt) $x'(t) = x(t/1.5)$

// answer
#graph_xt(
    lq.plot(
      (-8,-6,-6,0,3,3,8),
      ( 0, 0, 4,0,2,0,0),
      mark: none,
      stroke: (paint: orange, thickness: 2pt),
    )
)

*1.3* #h(15pt) $x'(t) = x(-t)$

// answer
#graph_xt(
    lq.plot(
      (-8,-2,-2,0,4,4,8),
      ( 0, 0, 2,0,4,0,0),
      mark: none,
      stroke: (paint: yellow, thickness: 2pt),
    )
)

*1.4* #h(15pt) $x'(t) = x(2t-4)$

// answer
#graph_xt(
    lq.plot(
      (-8,-2,-2,0,4,4,8),
      ( 0, 0, 2,0,4,0,0),
      mark: none,
      stroke: (paint: green, thickness: 2pt),
    )
)

*1.5* #h(15pt) $x'(t) = x(2-t)$

// answer
#graph_xt(
    lq.plot(
      (-8,-2,-2,0,4,4,8),
      ( 0, 0, 2,0,4,0,0),
      mark: none,
      stroke: (paint: blue, thickness: 2pt),
    )
)

