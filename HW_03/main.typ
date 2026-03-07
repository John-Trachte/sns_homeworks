#import "homework.typ": *
#import "@preview/zap:0.4.0"

#show: hw.with(
  assign: [HW 3: Laplace Transform],
  course: [ECE 3220: Signals and Systems],
  duedate: [March 9, 2026],
)

#problem(1, [Determine the inverse Laplace transform of the following functions:])

#subproblem("A", [$(e^(-(s-1)) + 3) / (s^2 - 2 s + 5)$])

#block(inset: 1em)[
  $(e^(-(s-1)) + 3) / (s^2 - 2 s + 5) = (e^(-(s-1)) + 3) / (s^2 - 2s + 1 + 5 - 1)$

  #h(40pt) $= (e^(1-s) + 3) / (s^2 - 2s + 1 + 4)$

  #h(40pt) $= (e^(1-s) + 3) / ((s - 1)^2 + 4)$

  #h(40pt) $= (e^(1-s)) / ((s - 1)^2 + 4) + (3) / ((s - 1)^2 + 4)$

  #h(40pt) $= e (e^(-s)) / ((s - 1)^2 + 4) + (3) / ((s - 1)^2 + 4)$

  #v(10pt)

  $cal(L)^(-1){e (e^(-s)) / ((s - 1)^2 + 4) + (3) / ((s - 1)^2 + 4)} =
  cal(L)^(-1){e (e^(-s)) / ((s - 1)^2 + 4)} + cal(L)^(-1) {(3) / ((s - 1)^2 +
  4)}$

  #h(130pt) $= e/2 cal(L)^(-1){(2 e^(-s)) / ((s - 1)^2 + 2^2)} + 1.5 cal(L)^(-1)
  {(2) / ((s - 1)^2 + 2^2)}$

  #h(130pt) $= e/2 e^(t - 1) sin(2t - 2) u(t - 1) + 1.5 e^(t) sin(2 t)
  u(t)$

  #box(stroke: black, inset: 8pt)[
    $cal(L)^(-1){(e^(-(s-1)) + 3) / (s^2 - 2 s + 5)} = e/2 e^(t - 1) sin(2t -
    2) u(t - 1) + 1.5 e^(t) sin(2 t) u(t)$
  ]
]

#subproblem("B", [$(e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2)$])

#block(inset: 1em)[
  $(e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2) = (e^(-s) + e^(-2s) + 1) / ((s +
  1)(s + 2))$

  #h(51pt) $= e^(-s) (1) / ((s + 1)(s + 2)) + e^(-2s) (1) / ((s + 1)(s + 2)) +
  (1) / ((s + 1)(s + 2))$

  #v(10pt)

  Determine the partial fraction decomposition of $1 / ((s+1)(s+2))$:

  $1 / ((s+1)(s+2)) = k_1 / (s+1) + k_2 / (s+2)$

  $k_1 = [(s + 1) dot 1 / ((s+1)(s+2))]_(s=-1) = [1 / (s+2)]_(s=-1) = 1$

  $k_2 = [(s + 2) dot 1 / ((s+1)(s+2))]_(s=-2) = [1 / (s+1)]_(s=-2) = -1$

  $1 / ((s+1)(s+2)) = 1 / (s+1) - (1) / (s+2)$

  #v(10pt)

  Therefore, $(e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2) =  e^(-s) [(1) / (s +
  1) - 1 / (s + 2)] + e^(-2s) [(1) / (s + 1) - 1 / (s + 2)] + (1) / (s + 1) -
  1/ (s + 2)$

  $cal(L)^(-1) { (e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2) } =  cal(L)^(-1) {
  e^(-s) [(1) / (s + 1) - 1 / (s + 2)] } + cal(L)^(-1) { e^(-2s) [(1) / (s +
  1) - 1 / (s + 2)] } + cal(L)^(-1) { (1) / (s + 1) - 1/ (s + 2) }$

  $cal(L)^(-1) { (1) / (s + 1) - 1/ (s + 2) } = [e^(-t) - e^(-2t)]u(t)$

  $cal(L)^(-1) { (e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2) } = [e^(-(t-1)) -
  e^(-2(t-1))]u(t-1) + [e^(-(t-2)) - e^(-2(t-2))]u(t-2)$ \
  #h(100pt) $+ [e^(-t) -e^(-2t)]u(t)$

  #h(85pt) $= [e^(1-t) - e^(2-2t)]u(t-1) + [e^(2-t) - e^(4-2t)]u(t-2) + [e^(-t)
  -e^(-2t)]u(t)$

  #box(stroke: black, inset: 8pt)[
   $cal(L)^(-1) { (e^(-s) + e^(-2s) + 1) / (s^2 + 3s + 2) } = [e^(1-t) -
   e^(2-2t)]u(t-1) + [e^(2-t) - e^(4-2t)]u(t-2) + [e^(-t) -e^(-2t)]u(t)$
  ]
]

#pagebreak()

#problem(2, [Solve each differential equation using the Laplace transform:])

#subproblem("A", [$(D^2 + 3D + 2) y(t) = D x(t)$; #h(10pt) $y(0^-) = y'(0^-) =
0$, #h(10pt) $x(t) = u(t)$])

#block(inset: 1em)[
  $cal(L){(D^2 + 3D + 2)y(t)} = cal(L){D x(t)}$

  $s^2 Y(s) - s y(0^-) - y'(0^-) + 3[s Y(s) - y(0^-)] + 2Y(s) = s X(s) -
  x(0^-)$

  #h(52pt) $s^2 Y(s) - s dot 0 - 0 + 3s Y(s) - 3 dot 0 + 2Y(s) = s 1 /
  s - 0$

  #h(171pt) $(s^2 + 3s + 2) Y(s) =  1$

  #h(233pt) $Y(s) = 1 / (s^2 + 3s + 2)$

  #h(233pt) $Y(s) = 1 / ((s+1)(s+2))$

  Using the partial fraction decomposition of $1 / ((s+1)(s+2))$ found in
  problem *1.B*, $Y(s) = 1 / (s+1) - (1) / (s+2)$.

  $cal(L)^(-1){Y(s)} = cal(L)^(-1){1 / (s+1)} - cal(L)^(-1){1 / (s+2)}$

  #h(56pt) $= [e^(-t) - e^(-2t)]u(t)$

  #box(stroke: black, inset: 8pt)[
    $y(t) = [e^(-t) - e^(-2t)]u(t)$
  ]
]

#subproblem("B", [$(D^2 + 4D + 4) y(t) = (D + 1) x(t)$; #h(10pt) $y(0^-) = 2$,
#h(10pt) $y'(0^-) = 1$, #h(10pt) $x(t) = e^(-t) u(t)$])

#block(inset: 1em)[
  $cal(L){(D^2 + 4D + 4)y(t)} = cal(L){(D+1)x(t)}$

  $s^2 Y(s) - s y(0^-) - y'(0^-) + 4[s Y(s) - y(0^-)] + 4 Y(s) = s X(s) -
  x(0^-) + X(s)$

  #h(86pt) $(s^2 + 4s + 4)Y(s) - s dot 2 - 1 - 4 dot 2 = s dot 1 / (s + 1) - 0
  + 1 / (s + 1)$

  #h(126pt) $(s^2 + 4s + 4)Y(s) - 2s - 9 = (s + 1) / (s + 1)$

  #h(168pt) $(s^2 + 4s + 4)Y(s) = 2s + 10$

  #h(230pt) $Y(s) = (2s + 10) / (s^2 + 4s + 4)$

  $cal(L)^(-1){(2s + 10) / (s^2 + 4s + 4)} = cal(L)^(-1){(2s + 10) / ((s+2)^2)}
  = cal(L)^(-1){ k_1 / (s + 2) + k_2 / (s + 2)^2}$

  $k_1 = d/(d s) [(s+2)^2 dot (2s+10) / (s+2)^2]_(s=-2) = d/(d s) [2s +
  10]_(s=-2) = 2$

  $k_2 = [(s+2)^2 dot (2s+10) / (s+2)^2]_(s=-2) = [2s + 10]_(s=-2) = 6$

  $cal(L)^(-1){(2s + 10) / (s^2 + 4s + 4)} = cal(L)^(-1){ 2 / (s + 2) + 6 / (s
  + 2)^2}$

  #h(72pt) $= [2 e^(-2t) + 6 t e^(-2t)]u(t)$

  #box(stroke: black, inset: 8pt)[
    $y(t) = [2 e^(-2t) + 6 t e^(-2t)]u(t)$
  ]
]

#pagebreak()

#problem(3, [Consider an LTIC system described by \ $ y'(t) + 2y(t) = x'(t) $])

#subproblem("A", [Determine the transfer function $H(s)$ for this system.])

#block(inset: 1em)[
  By observation, $y'(t) + 2y(t) = x'(t)$ can be written as $(D + 2)y(t) = D
  x(t)$; in the frequency domain, this can be written as $(s + 2)y(s) = s
  X(s)$.

  Since $H(s) = (Y(s))/(X(s))$, $H(s) = (P(s))/(Q(s))$. With $P(s) = s$ and
  $Q(s) = s + 2$, $H(s) = s/(s+2)$.

  #box(stroke: black, inset: 8pt)[
    $H(s) = s/(s+2)$
  ]
]

#subproblem("B", [Using your result from part *A*, determine the impulse
response $h(t)$ for this system.])

#block(inset: 1em)[
  $h(t) = cal(L)^(-1){H(s)} = cal(L)^(-1){s/(s+2)}$

  #h(91pt) $= cal(L)^(-1){(s+2-2)/(s+2)}$

  #h(91pt) $= cal(L)^(-1){1 - (2)/(s+2)}$

  #h(91pt) $= [delta(t) - 2e^(-2t)]u(t)$

  #box(stroke: black, inset: 8pt)[
    $h(t) = [delta(t) - 2e^(-2t)]u(t)$
  ]
]

#subproblem("C", [Using Laplace transform techniques, determine the output
$y(t)$ if the input $x(t) = e^(-t) u(t)$ with $y(0^-) = root(,2)$.])

#block(inset: 1em)[
  $cal(L){(D+2)y(t)} = cal(L){D x(t)}$

  $s Y(s) - y(0^-) + 2Y(s) = s X(s) - x(0^-)$

  #h(24pt) $(s+2)Y(s) - root(,2) = s(1/(s+1)) - 0$

  #h(52pt) $(s+2)Y(s) = s/(s+1) + root(,2)$

  #h(84pt) $Y(s) = s/((s+1)(s+2)) + root(,2)/(s+2)$

  #h(110pt) $= k_1/(s+1) + k_2/(s+2) + root(,2)/(s+2)$

  $k_1 = [(s+1) dot (s/((s+1)(s+2)))]_(s=-1) = [s/(s+2)]_(s=-1) = -1$

  $k_2 = [(s+2) dot (s/((s+1)(s+2)))]_(s=-2) = [s/(s+1)]_(s=-2) = 2$

  $Y(s) = -1/(s+1) + 2/(s+2) + root(,2)/(s+2)$

  $y(t) = cal(L)^(-1){Y(s)} = cal(L)^(-1){(2+root(,2))/(s+2) - 1/(s+1)}$

  #h(88pt) $= [(2+root(,2))e^(-2t) - e^(-t)]u(t)$

  #box(stroke: black, inset: 8pt)[
    $y(t) = [(2+root(,2))e^(-2t) - e^(-t)]u(t)$
  ]
]

#pagebreak()

#problem(4, [An LTI system has a step response given by $S(t) = e^(-t) u(t) -
e^(-2t) u(t)$. Determine the output $y(t)$ of the system given an input $x(t) =
delta(t - pi) - cos(root(,3))u(t)$.])

#block(inset: 1em)[
  $h(t) = d/(d t) S(t) = d/(d t) [e^(-t)u(t) - e^(-2t)u(t)]$

  $h(t) = -e^(-t)u(t) + e^(-t)delta(t) - [-2e^(-2t)u(t) + e^(-2t)delta(t)]$

  #h(21pt) $= [-e^(-t)+ e^0 + 2e^(-2t) - e^(0)]u(t)$

  #h(21pt) $= [2e^(-2t) - e^(-t)]u(t)$

  $Y(s) = cal(L){x(t)} dot cal(L){h(t)}$

  $cal(L){x(t)} = cal(L){(delta(t-pi)-cos(root(,3)))u(t)}$

  #h(41pt) $= e^(-pi t) - (cos(root(,3)))/s$

  $cal(L){h(t)} = cal(L){(2e^(-2t) - e^(-t))u(t)}$

  #h(41pt) $= 2/(s+2) - 1/(s+1)$

  $Y(s) = (e^(-pi t) - cos(root(,3))/s) dot (2/(s+2) - 1/(s+1))$

  #h(26pt) $= (2e^(-pi t))/(s+2) - e^(-pi t)/(s+1) - (2cos(root(,3)))/(s(s+2))
  + (cos(root(,3)))/(s(s+1))$

  #h(26pt) $= (2e^(-pi t))/(s+2) - e^(-pi t)/(s+1) - (k_1)/(s) - k_2/(s+2)
  + (l_2)/(s) + (l_2)/(s+1)$

  #v(10pt)

  $k_1 = [s dot (2cos(root(,3)))/(s(s+2))]_(s=0) = [(2cos(root(,3)))/(s+2)]_(s=0) = cos(root(,3))$

  $k_2 = [(s+2) dot (2cos(root(,3)))/(s(s+2))]_(s=-2) = [(2cos(root(,3)))/(s)]_(s=-2) = -cos(root(,3))$

  #v(10pt)

  $l_1 = [s dot (cos(root(,3)))/(s(s+1))]_(s=0) = [(cos(root(,3)))/(s+1)]_(s=0) = cos(root(,3))$

  $l_2 = [(s+1) dot (cos(root(,3)))/(s(s+1))]_(s=-1) = [(cos(root(,3)))/(s)]_(s=-1) = -cos(root(,3))$

  #v(10pt)

  $Y(s) = (2e^(-pi t))/(s+2) - (e^(-pi t))/(s+1) - (cos(root(,3)))/s + cos(root(,3))/(s+2) + (cos(root(,3)))/s - (cos(root(,3)))/(s+1)$

  $cal(L)^(-1){Y(s)} = cal(L)^(-1){(2e^(-pi t))/(s+2) - (e^(-pi t))/(s+1) - (cos(root(,3)))/s + cos(root(,3))/(s+2) + (cos(root(,3)))/s - (cos(root(,3)))/(s+1)}$

  #h(55pt) $= cal(L)^(-1){(2e^(-pi t))/(s+2) - (e^(-pi t))/(s+1) + cos(root(,3))/(s+2)  - (cos(root(,3)))/(s+1)}$

  #h(55pt) $= [2e^(-2(t-pi)) - e^(-(t-pi))]u(t-pi) + [cos(root(,3))e^(-2t) - cos(root(,3))e^(-t)]u(t)$

  #box(stroke: black, inset: 8pt)[
    $y(t) = [2e^(-2(t-pi)) - e^(-(t-pi))]u(t-pi) + [cos(root(,3))e^(-2t) - cos(root(,3))e^(-t)]u(t)$
  ]
]

#pagebreak()

#problem(5, [Determine the zero-state response $y_"ZSR" (t)$ of the network in
Fig. 1 if the input voltage $x(t) = t e^(-t) u(t)$. Determine the transfer
function relating the output $Y(s)$ to the input $X(s)$; using the transfer
function, write the differential equation relating $y(t)$ to $x(t)$.])

#align(center)[
  #zap.circuit({
    import zap: *

    vsource("xoft",(0,-2),(0,0),label:(content:$x(t)$),variant:"ieee")

    resistor("rsrs","xoft.out",(4,0),label:(content:$1" "Omega$),variant:"ieee")

    pcapacitor("c1",(4,-2),"rsrs.out",label:(content:$1" F"$))

    inductor("l1","rsrs.out",(8,0),label:(content:$1" H"$),variant:"ieee")

    resistor("rpll",(8,-2),"l1.out",label:(content:$1" "Omega$),variant:"ieee")

    wire("xoft.in",(10,-2))
    wire("rpll.out",(10,0))

    // this is a goofy way to get the y(t) label. should be done with cetz
    // natively but it doesn't play nicely with my live renderer, which is more
    // important
    node("term",(10,0),label:(content:[]),stroke:luma(255))
    node("yoft",(10,-2),label:(content:[$+$ \ $y(t)$ \ $-$]),stroke:luma(255))
  })

  *Fig. 1* Circuit for problem 5.
]

#block(inset: 1em)[
  To determine the zero-state response of the system, there must be no initial
  conditions in the system. Therefore, $V_c(0^-) = 0$, $i_L(0^-) = 0$. The 
  circuit can be redrawn in the Laplace domain as follows:

  #align(center)[
    #scale(x:75%,y:75%)[
      #zap.circuit({
        import zap: *
    
        vsource("xoft",(0,-2),(0,0),label:(content:$X(s)$),variant:"ieee")
    
        resistor("rsrs","xoft.out",(4,0),label:(content:$1$),variant:"ieee")
    
        pcapacitor("c1",(4,-2),"rsrs.out",label:(content:$1/s$))
    
        inductor("l1","rsrs.out",(8,0),label:(content:$s$),variant:"ieee")
    
        resistor("rpll",(8,-2),"l1.out",label:(content:$1$),variant:"ieee")
    
        wire("xoft.in",(10,-2))
        wire("rpll.out",(10,0))
    
        node("term",(10,0),label:(content:[]),stroke:luma(255))
        node("yofs",(10,-2),label:(content:[$+$ \ $Y(s)$ \ $-$]),stroke:luma(255))
      })
    ]
  ]

  with $X(s) = 1/((s+1)^2)$.

  $Y(s)$ is the component of $X(s)$ dissipated across the rightmost resistor,
  which can be found through multiple voltage divisions. The first division
  finds the voltage $V_1$ across all elements right of the resistor connected
  to $X(s)$, for which the impedance on the right side of the circuit is
  needed:

  $X_R = 1/((1/(1/s))+(1/(s+1))) = 1/(s+1/(s+1)) = 1/((s^2+s+1)/(s+1)) =
  (s+1)/(s^2+s+1)$

  $V_1(s) = X(s) dot ((s+1)/(s^2+s+1))/((s+1)/(s^2+s+1)+1) = X(s) dot
  ((s+1)/(s^2+s+1))/((s+1+s^2+s+1)/(s^2+s+1)) = X(s) dot (s+1)/(s^2+2s+2)$

  $Y(s)$ can now be found by dividing $V_1(s)$ across the rightmost inductor
  and resistor:

  $Y(s) = V_1(s) dot 1/(s+1) = X(s) dot (s+1)/(s^2+2s+2) dot 1/(s+1) = X(s)
  dot 1/(s^2+2s+2) = 1/((s+1)^2) dot 1/(s^2+2s+2)$

  #h(25pt) $= 1/((s+1)^2(s^2+2s+2)) = k_1/((s+1)^2) + k_2/((s+1 plus.minus j)^2)$

  #v(10pt)

  $k_1 = [(s+1)^2 dot 1/((s+1)^2(s^2+2s+2))]_(s=-1) = [1/(s^2+2s+2)]_(s=-1) =
  1/(1-2+2) = 1$

  $k_2 = [(s+1 plus.minus j) dot 1/((s+1)^2(s^2+2s+2))]_(s=-1+j) =
  [1/(s^2+2s+1)]_(s=-1+j) = 1/(1-j 2-1-2+j 2+1) = -1$

  #v(10pt)

  $Y(s) = 1/((s+1)^2) - 1/((s+1 plus.minus j)^2) = 1/((s+1)^2) - 1/(s^2+2s+2) =
  1/((s+1)^2) - 1/((s+1)^2+1^2)$

  $y_"ZSR" (t) = cal(L)^(-1){Y(s)} = cal(L)^(-1){1/((s+1)^2)} -
  cal(L)^(-1){1/((s+1)^2+1^2)}$

  #h(36pt) $= [t e^(-t) - e^(-t)sin(t)]u(t)$

  \ 

  $H(s) = 1/(s^2+2s+2) = P(s) / Q(s)$, so $P(s) = 1$, $Q(s) = s^2+2s+2$.

  $P(D) = 1$ and $Q(D) = D^2+2D+2$, so $(D^2+2D+2)y(t)=x(t)$.
  
  #box(stroke: black, inset: 8pt)[
    $y_"ZSR" (t) = [t e^(-t) - e^(-t)sin(t)]u(t)$

    $H(s) = 1/(s^2+2s+2)$

    $(D^2+2D+2)y(t)=x(t)$
  ]
]

#pagebreak()

#problem(6, [Consider the op-amp circuit in Fig. 2.])

#align(center)[
  #scale(x:75%,y:75%)[
    #zap.circuit({
      import zap: *
  
      resistor("rop1-",(0,0),(2,0),variant:"ieee",label:(content:[$2" "Omega$]))
      resistor("rop1o",(5.8,-0.5),(8,-0.5),variant:"ieee",label:(content:[$1/3" "Omega$]))
      resistor("rop1fb",(5.8,3),(8,3),variant:"ieee",label:(content:[$1/2" "Omega$]))
      resistor("rop2fb",(10,1),(12,1),variant:"ieee",label:(content:[$2" "Omega$]))
      resistor("rop2o",(11.8,-1),(16,-1),variant:"ieee",label:(content:[$3" "Omega$]))
      resistor("rop3fb",(16,0.5),(18,0.5),variant:"ieee",label:(content:[$1" "Omega$]))
      resistor("ropallfb",(0,-1.5),(2,-1.5),variant:"ieee",label:(content:[$1/2" "Omega$]))
  
      capacitor("c1",(3,1.5),(6,1.5),variant:"ieee",label:(content:[$1" F"$]))
  
      opamp("op1",(4.9,-0.5),variant:"ieee")
      opamp("op2",(10.9,-1),variant:"ieee")
      opamp("op3",(16.9,-1.5),variant:"ieee")
  
      wire("rop1-.out",(4,0))
      wire((0,0),(0,3))
      wire((0,3),"rop1fb.in")
      wire((3,0),(3,1.5))
      wire((3,1.5),"c1.in")
      wire((6,1.5),(6,-0.5))
      wire("rop1o.out","rop1fb.out")
      wire("rop1o.out",(10,-0.5))
      swire("rop2fb.in",(9.5,-0.5))
      swire("rop2fb.out",(12.3,-1))
      wire((12.7,-1),(12.7,3))
      wire((12.7,3),(18.5,3))
      node("yoft",(18.5,3),label:(content:[$y(t)$],anchor:"east",distance:10pt),stroke:luma(255))
      swire("rop3fb.in",(15.5,-1))
      swire("rop3fb.out",(18.5,-4))
      swire((18.5,-4),"ropallfb.in")
      swire("ropallfb.out",(3,0))
      wire((17.8,-1.5),(18.5,-1.5))
      wire((-1,0),(0,0))
      node("xoft",(-1,0),label:(content:[$x(t)$],anchor:"west",distance:4pt),stroke:luma(255))
  
      earth("op1+",(3.5,-1))
      swire((3.5,-1),(4,0))
  
      earth("op2+",(9.5,-1.5))
      swire((9.5,-1.5),(10,0))
  
      earth("op3+",(15.5,-2))
      swire((15.5,-2),(16,-2))
    })
  ]

  *Fig. 2* Circuit for problem 6; all signals referenced to ground.
]

#subproblem("A", [Determine the transfer function $H(s)$ for this system.])

#block(inset: 1em)[
  #box(inset: -30pt)[
    #align(center)[
      #scale(x:75%,y:75%)[
        #zap.circuit({
          import zap: *
      
          resistor("rop1-",(0,0),(2,0),variant:"ieee",label:(content:[$2$]))
          resistor("rop1o",(5.8,-0.5),(8,-0.5),variant:"ieee",label:(content:[$1/3$]))
          resistor("rop1fb",(5.8,3),(8,3),variant:"ieee",label:(content:[$1/2$]))
          resistor("rop2fb",(10,1),(12,1),variant:"ieee",label:(content:[$2$]))
          resistor("rop2o",(11.8,-1),(16,-1),variant:"ieee",label:(content:[$3$]))
          resistor("rop3fb",(16,0.5),(18,0.5),variant:"ieee",label:(content:[$1$]))
          resistor("ropallfb",(0,-1.5),(2,-1.5),variant:"ieee",label:(content:[$1/2$]))
      
          capacitor("c1",(3,1.5),(6,1.5),variant:"ieee",label:(content:[$1/s$]))
      
          opamp("op1",(4.9,-0.5),variant:"ieee")
          opamp("op2",(10.9,-1),variant:"ieee")
          opamp("op3",(16.9,-1.5),variant:"ieee")
      
          wire("rop1-.out",(4,0))
          wire((0,0),(0,3))
          wire((0,3),"rop1fb.in")
          wire((3,0),(3,1.5))
          wire((3,1.5),"c1.in")
          wire((6,1.5),(6,-0.5))
          wire("rop1o.out","rop1fb.out")
          wire("rop1o.out",(10,-0.5))
          swire("rop2fb.in",(9.5,-0.5))
          swire("rop2fb.out",(12.3,-1))
          wire((12.7,-1),(12.7,3))
          wire((12.7,3),(18.5,3))
          node("yoft",(18.5,3),label:(content:[$Y(s)$],anchor:"east",distance:10pt),stroke:luma(255))
          swire("rop3fb.in",(15.5,-1))
          swire("rop3fb.out",(18.5,-4))
          swire((18.5,-4),"ropallfb.in")
          swire("ropallfb.out",(3,0))
          wire((17.8,-1.5),(18.5,-1.5))
          wire((-1,0),(0,0))
          node("xoft",(-1,0),label:(content:[$X(s)$],anchor:"west",distance:0pt),stroke:luma(255))
      
          node("zoft","op3.out",label:(content:[$Z(s)$],anchor:"east",distance:25pt),stroke:luma(255))
          node("voft","op1.out",label:(content:[$V(s)$],anchor:"south",distance:15pt),stroke:luma(255))
    
          earth("op1+",(3.5,-1))
          swire((3.5,-1),(4,0))
      
          earth("op2+",(9.5,-1.5))
          swire((9.5,-1.5),(10,0))
      
          earth("op3+",(15.5,-2))
          swire((15.5,-2),(16,-2))
        })
      ]
    ]
  ]

  Using the nodes $V(s)$ and $Z(s)$ labelled above in the Laplace domain, a
  system of equations can be written by applying the node names to the
  equations of each type of amplifier. Starting with the rightmost op amp,

  \ \ \ \ \ \ \ \ \

  $Z(s) = (-1)/3Y(s)$

  $Y(s) = (-2)/(1/2)X(s) - 2/(1/3)V(s) = -4X(s) - 6V(s)$

  $V(s) = (-1/s)/2X(s) - (1/s)/(1/2)Z(s) = (-1)/(2s)X(s) - 2/s Z(s)$

  Therefore, $Y(s) = -4X(s) - 6((-1)/(2s)X(s) - 2/s Z(s)) = -4X(s) -
  6((-1)/(2s)X(s) - 2/s ((-1)/3Y(s)))$.

  $Y(s) = -4X(s)+3/s X(s)-4/s Y(s)$

  $Y(s) dot (1+4/s) = (3/s-4) dot X(s)$

  $Y(s)/X(s) = (3/s-4)/(1+4/s) = (3-4s)/(s+4)$

  #box(stroke: black, inset: 8pt)[
    $H(s) = (3-4s)/(s+4)$
  ]
]

#subproblem("B", [Determine the coefficient of linear differential equation description of the circuit.])

#block(inset: 1em)[
  Because $H(s) = (3-4s)/(s+4)$, $(s+4)Y(s)=(3-4s)X(s)$.

  #box(stroke: black, inset: 8pt)[
    By observation, $(D+4)y(t)=(3-4D)x(t)$
  ]
]

