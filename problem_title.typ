#let tag(_tag) = {
  align(bottom)[
    #align(right)[
      #text(
        font: "Consolas",
        size: 15pt,
        weight: "bold",
        fill: rgb("bfbfbf")
      )[#_tag] 
    ]
  ]
}

#let problem_text(number, title, _tag) = {
  
  let title = [
    #text(
      size: 30pt,
      weight: "bold",
      fill: rgb("bfbfbf")
    )[#number ]
    #text(
      size: 30pt,
      weight: "bold",
      fill: black
    )[#title]
  ]
  
  grid(
    columns: (70%, 30%),
    title,
    tag(_tag)  
  )
}