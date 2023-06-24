#import "colors.typ" : *

#let abstract_page(division: "3", problems: ()) = {
  text(weight: "bold", size: 40pt)[Div. #division]

  let cell = rect.with(
    inset: 12pt,
    width: 100%
  )
  let column_width = (8%, 50%, 15%)

  let row_header_content(_text) = {
    cell(
      fill: black,
      text(weight: "bold", size: 15pt, fill: white)[#_text]
    )
  }
  
  let row_content(_text, tier: "") = {
    let c = black
    let w = "medium"
    if (tier != "") {w = "bold"}
    if (tier == "b") {c = AC_BRONZE}
    if (tier == "s") {c = AC_SILVER}
    if (tier == "g") {c = AC_GOLD}
    if (tier == "p") {c = AC_PLATINUM}
    if (tier == "d") {c = AC_DIAMOND}
    if (tier == "r") {c = AC_RUBY}
    cell(
      fill: rgb("f0f0f0"),
      text(weight: w, size: 15pt, fill: c)[#_text]
    )
  }
    
  let row_header(t1, t2, t3) = {
    align(center)[
      #grid(
        column-gutter: 1pt,
        columns: column_width,
        row_header_content(t1),
        row_header_content(t2),
        row_header_content(t3)
      )
    ]
  }
  
  let row_contents(number, title, diff, tier) = {
    align(center)[
      #grid(
        column-gutter: 1pt,
        row-gutter: 1pt,
        columns: column_width,
        row_content(number),
        align(left)[#row_content(title)],
        align(left)[#row_content(diff, tier: tier)]
      )
    ]
  }

  align(horizon)[
    #grid(
      columns: (100%),
      row-gutter: 1pt,
      column-gutter: 1pt,
      row_header("번호", "제목", "난이도"),
      ..problems.map(problem => {
        let (num, title, diff, tier, tag) = problem
        row_contents(division + num, title, diff, tier)
      })
    )
  ]
  
  pagebreak(weak: true)
  
}
