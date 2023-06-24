#let project(title: "", authors: (), logo: none, body) = {
  set document(author: authors, title: title)
  set text(font: "Pretendard", lang: "ko")
  v(0.6fr)
  if logo != none { align(right, image(logo, width: 12%)) }
  v(9.6fr)
  text(2em, weight: 700, title)
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start, strong(author))),
    ),
  )
  v(2.4fr)
  pagebreak()
  set par(justify: true)
  body
}