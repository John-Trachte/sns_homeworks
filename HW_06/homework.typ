#let txt = (rgb("#000000"))
#let bg = (rgb("#ffffff"))

#let hw(
  name: [Johnathan Trachte],
  duedate: [ #datetime.today().display("[month repr:long]") #datetime.today().day(), #datetime.today().year() ],
  course: [ECE Something Something],
  assign: [= Homework 73.597: Tying Your Shoelaces],
  body
) = {

  set text(fill: txt)

  set page(
    fill: bg,
    numbering: "(1)"
  )

  grid(
    columns: (2fr, 2fr),
    [
      = #assign
    ],
    [
      #align(right)[
        #course  \
        #name    \
        #duedate \
      ]
    ]
  )

  counter(page).update(1)
  
  body
}

#let problem(number, text) = [ 
  *#smallcaps[Problem #number.]*
  #text 
]

#let subproblem(number, text) = [ 
    *#number.*
    #text 
]

#let ans(text) = [
  #box(inset:8pt, stroke:(paint:txt))[
    #text
  ]
]
