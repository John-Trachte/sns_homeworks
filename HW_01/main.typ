#import "@preview/lilaq:0.5.0" as lq
#show: lq.theme.schoolbook

#set text(font: "DejaVu Sans")

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

Given $x(t)$, sketch graphs 1.1 - 1.4

#align(center)[
  #image("x(t).png", width: 50%)
]

*1.1* #h(15pt) $x(t-4)$

#align(center)[
  #lq.diagram(
    width: 12cm,
    height: 4cm,
    xaxis: (tick-distance: 1, label: $t$),
    yaxis: (label: $x'(t)$),

    lq.line((-2,0),(0,0), stroke: (paint: orange, thickness: 2pt)),
    lq.line((0,0),(0,4), stroke: (paint: orange, thickness: 2pt)),
    lq.line((0,4),(4,0), stroke: (paint: orange, thickness: 2pt)),
    lq.line((4,0),(6,2), stroke: (paint: orange, thickness: 2pt)),
    lq.line((6,2),(6,0), stroke: (paint: orange, thickness: 2pt)),
    lq.line((6,0),(8,0), stroke: (paint: orange, thickness: 2pt)),
  )
]

*1.2* #h(15pt) $x(t/1.5)$

*1.3* #h(15pt) $x(-t)$

*1.4* #h(15pt) $x(2t-4)$

*1.5* #h(15pt) $x(2-t)$
