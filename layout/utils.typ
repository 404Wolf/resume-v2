#let category-title(title, body) = {
  text(14pt, weight: "extrabold")[#smallcaps(strong(title))]
  v(-1.15em)
  line(length: 100%, stroke: stroke(thickness: 0.2pt))
  v(-0.7em)
  body
  v(0.9em)
}

#let awards-container(awards) = {
  for (title, date) in awards [
    #grid(columns: (1fr, auto), [#title], align(right)[*#date*])
    #v(-0.6em)
  ]
}

#let job-container(role, company, description, start-date, end-date, location, body) = {
  set text(10pt)

  grid(
    columns: (1fr, auto), grid(
      rows: 2, row-gutter: 0.35em, [*#role*], [#company #h(0.5em) #box(description)],
    ), align(right)[*#start-date – #end-date* \ #location],
  )

  v(-0.6em)
  body
  v(-0.5em)
}

#let project-container(title, body) = {
  text(size: 10pt)[#title]

  v(-0.6em)

  body
  v(-0.5em)
}

#let school-container(school, location, meta, start-date, end-date, body) = {
  set text(10pt)

  grid(
    columns: (1fr, auto),
    grid(
      rows: 2, row-gutter: 0.35em,
      [*#school*],
      [#meta],
    ),
    align(right)[*#start-date – #end-date* \ #location],
  )
  v(-0.6em)

  body
  v(-0.5em)
}
