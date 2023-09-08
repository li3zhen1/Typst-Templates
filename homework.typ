
#let conf(
    homework-index: 1,
    homework-title: "", // "Data Exploration and Analysis",
    class-id: [], 
    author: "Zhen Li",
    doc,
) = {

set text(font: "SF Pro Text", size: 10.5pt)
set strong(delta: 200)
set enum(
    numbering: it => text(features: ("tnum",), weight: 600)[#(str(it)+".")]
)



show heading.where(
    level: 1
): it => box(inset: (bottom: 20pt, top: 48pt))[
    #text(font:"SF Pro Display", weight: 600, size: 20pt)[#it.body]
]

show heading.where(
    level: 2
): it => box(inset: (bottom: 2pt, top: 24pt))[
    #text(font:"SF Pro Display", weight: 600, size: 15pt)[#it.body]
]

set page(
    numbering: "1"
)

show figure: it => align(center)[
  #block(
    stroke: 1pt+rgb(80,80,81)
)[#it.body]
  #v(6pt, weak: true)
  #text(size: 7pt, fill: rgb(80,80,81))[Figure #it.counter.display(it.numbering) - #it.caption]
]

grid(
    columns: (1fr, 1fr),
    [#author],
    datetime.today().display("[month repr:short] [day padding:none], [year]")
)

[= #class-id - HW#homework-index#if type(homework-title)=="string" and homework-title.len() > 0 {
    [\ #homework-title]
}]


doc
}

