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

#problem(1, [Do some math.])

