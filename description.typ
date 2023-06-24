#let descriptions(description) = {
  pad(top: 40pt,
    list(
      marker: [#image("images/checkmark.png", height: 5%)],
      ..description.map(d => { pad(top: 5pt, bottom: 20pt, align(horizon)[#text(size: 18pt,weight: "light")[#d]]) })
    )
  )
  pagebreak(weak: true)
}