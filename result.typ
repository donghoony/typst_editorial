#import "colors.typ": *

#let result_page() = {
    
  let page_title = text.with(
    weight: "black",
    size: 30pt
  )
  
  let score_title = text.with(
    weight: "bold",
    size: 20pt
  )
  
  let name_handle(name, handle) = {
    let name_style = text.with(
      weight: "light",
      size: 15pt
    )
    let handle_style = text.with(
      weight: "light",
      size: 10pt,
      font: "Consolas",
      fill: rgb("BFBFBF")
    )
    pad(left: 30pt)[
      #align(left)[#name_style[#name] #handle_style[#handle]]
    ]
  }
  
  let solved(div, s) = {
    let color = none
    if div == 3 {color = AC_BRONZE}
    if div == 2 {color = AC_SILVER}
    if div == 1 {color = AC_GOLD}
    let text_style = text.with(
      fill: color,
      weight: "bold",
      size: 15pt
    )
    let t = ""
    if s == 0 {
      t = grid(
        columns: 2,
        align(horizon)[All Solved #h(5pt)],
        align(horizon)[#image("images/crown.png", width:20pt)]
        )
    }
    else {t = [Solved #s]}
    pad(top: 10pt)[#text_style[#t]]
  }
  
  
    
  align(center)[
  #page_title([연습대회 결과])
  
    #grid(
      columns: (25%, 25%, 25%),
      gutter: 10pt,
  
      grid(
        columns: (100%),
        row-gutter: 15pt,
        score_title([Div. 3]),
        solved(3, 0),
        name_handle("이동훈", "donghoony"),
        solved(3, 3),
        name_handle("이동훈", "donghoony"),
        solved(3, 2),
        name_handle("이동훈", "donghoony"),
        solved(3, 1),
        name_handle("이동훈", "donghoony")
      ),
      grid(
        columns: (100%),
        row-gutter: 15pt,
        score_title([Div. 2]),
        solved(2, 0),
        name_handle("이동훈", "donghoony"),
        solved(2, 3),
        name_handle("이동훈", "donghoony"),
        solved(2, 2),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
      ),
      grid(
        columns: (100%),
        row-gutter: 15pt,
        score_title([Div. 1]),
        solved(1, 0),
        name_handle("이동훈", "donghoony"),
        solved(1, 4),
        name_handle("이동훈", "donghoony"),
        solved(1, 2),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
        name_handle("이동훈", "donghoony"),
        
      )
    )
  ]
  pagebreak(weak: true)
}
