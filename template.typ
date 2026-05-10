// Resume layout engine — edit resume.typ for content

#let resume(name: "", tagline: "", contact: (), body) = {
  set document(title: name)
  set page(
    paper: "a4",
    margin: (x: 0.5in, top: 0.4in, bottom: 0.5in),
  )
  set text(font: "Helvetica", size: 10pt)
  set par(justify: false, leading: 0.45em)

  align(center)[
    #text(size: 20pt, weight: "bold")[#name]\
    #if tagline != "" {
      v(-2pt)
      text(size: 9pt, fill: luma(90))[#tagline]
      linebreak()
    }
    #v(-2pt)
    #contact.join("  |  ")
  ]

  v(6pt)
  body
}

#let section(title) = {
  v(4pt)
  text(weight: "bold", size: 10pt)[#upper(title)]
  v(-3pt)
  line(length: 100%, stroke: 0.5pt)
  v(2pt)
}

#let render-item(item) = {
  if type(item) == array {
    let (main, subs) = item
    block(inset: (bottom: 2pt))[
      *#main*
      #v(-6pt)
      #pad(left: 1.2em)[#if type(subs) == array {
        for sub in subs [- #sub]
      } else {
        subs
      }]
    ]
  } else {
    [- #item]
  }
}

#let entry(
  org: "",
  location: "",
  role: "",
  date: "",
  items: (),
  cols: 1,
) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#org],
    text[#location],
  )
  v(-2pt)
  if role != "" or date != "" {
    grid(
      columns: (1fr, auto),
      text(style: "italic")[#role],
      text[#date],
    )
  }
  if items.len() > 0 {
    v(2pt)
    if cols == 1 {
      for item in items { render-item(item) }
    } else {
      grid(
        columns: range(cols).map(_ => 1fr),
        column-gutter: 1em,
        row-gutter: 4pt,
        ..items.map(item => block(width: 100%, render-item(item))),
      )
    }
  }
  v(3pt)
}

// Two-column grid for short entries (speaking, community, etc.)
// Each entry is a dict: (org: "", role: "", date: "", items: ())
#let compact-grid(..entries) = {
  let items = entries.pos()
  grid(
    columns: (1fr, 1fr),
    column-gutter: 1.5em,
    row-gutter: 16pt,
    ..items.map(e => {
      let its = e.at("items", default: ())
      block(width: 100%, {
        grid(
          columns: (1fr, auto),
          text(weight: "bold")[#e.org],
          [],
        )
        v(-2pt)
        grid(
          columns: (1fr, auto),
          text(style: "italic")[#e.at("role", default: "")],
          text[#e.at("date", default: "")],
        )
        if its.len() > 0 {
          v(1pt)
          for item in its [- #item]
        }
      })
    }),
  )
  v(4pt)
}
