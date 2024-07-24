#import "@preview/codelst:2.0.1": *
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl
#import "titlepage.typ": *
#import "confidentiality-statement.typ": *
#import "declaration-of-authorship.typ": *
#import "check-attributes.typ": *

// Workaround for the lack of an `std` scope.
#let std-bibliography = bibliography

#let supercharged-dhbw(
  title: none,
  authors: (),
  language: none,
  at-university: none,
  type-of-thesis: "PROJEKTARBEIT",
  type-of-degree: "Bachelor of Science",
  show-confidentiality-statement: true,
  show-declaration-of-authorship: true,
  show-table-of-contents: true,
  show-acronyms: true,
  show-list-of-figures: true,
  show-list-of-tables: true,
  show-code-snippets: true,
  show-appendix: false,
  show-abstract: true,
  show-header: true,
  numbering-alignment: right,
  toc-depth: 3,
  acronym-spacing: 5em,
  abstract: none,
  appendix: none,
  acronyms: ("acronym-lib.typ"),
  confidentiality-statement-content: none,
  university: none,
  university-location: none,
  city: none,
  supervisor: (:),
  date: none,
  date-format: "[day].[month].[year]",
  bibliography: none,
  bib-style: "ieee",
  logo-left: image("figures/dhbw.svg"),
  logo-right: image("figures/prosystemslogo.png"),
  logo-size-ratio: "1:1",
  body,
) = {
  // check required attributes
  check-attributes(
    title,
    authors,
    language,
    at-university,
    type-of-thesis,
    type-of-degree,
    show-confidentiality-statement,
    show-declaration-of-authorship,
    show-table-of-contents,
    show-acronyms,
    show-list-of-figures,
    show-list-of-tables,
    show-code-snippets,
    show-appendix,
    show-abstract,
    show-header,
    numbering-alignment,
    toc-depth,
    acronym-spacing,
    abstract,
    appendix,
    acronyms,
    university,
    university-location,
    supervisor,
    date,
    city,
    bibliography,
    bib-style,
    logo-left,
    logo-right,
    logo-size-ratio,
  )

  // set the document's basic properties
  set document(title: title, author: authors.map(author => author.name))
  let many-authors = authors.len() > 3

  init-acronyms(acronyms)

  // define logo size with given ration
  let left-logo-height = 2.4cm // left logo is always 2.4cm high
  let right-logo-height = 2.4cm // right logo defaults to 1.2cm but is adjusted below
  let logo-ratio = logo-size-ratio.split(":")
  if (logo-ratio.len() == 2) {
    right-logo-height = right-logo-height * (float(logo-ratio.at(1)) / float(logo-ratio.at(0)))
  }

  // save heading and body font families in variables
  let body-font = "Arial"
  let heading-font = "Arial"
  
  // customize look of figure
  set figure.caption(separator: [ -- ], position: bottom)

  // set body font family
  set text(font: body-font, lang: language, 12pt)
  show heading: set text(weight: "semibold", font: heading-font)

  //heading numbering
  set heading(numbering: "1.")
 
  // set link style for links that are not acronyms
  show link: it => if (
    str(it.dest) not in (acronyms.keys().map(acr => ("acronym-" + acr)))
  ) {
    text(fill: blue, it)
  } else {
    it
  }
  
  show heading.where(level: 1): it => {
    pagebreak()
    v(0.1em) + it + v(0.1em)
  }
  show heading.where(level: 2): it => v(1em) + it + v(0.5em)
  show heading.where(level: 3): it => v(0.5em) + it + v(0.25em)

  titlepage(
    authors,
    date,
    heading-font,
    language,
    left-logo-height,
    logo-left,
    logo-right,
    many-authors,
    right-logo-height,
    supervisor,
    title,
    type-of-degree,
    type-of-thesis,
    university,
    university-location,
    at-university,
    date-format,
  )

  set page(
    margin: (top: 8em, bottom: 8em),
    header: {
      if (show-header) {
        grid(
          columns: (1fr, auto),
          align: (left, right),
          gutter: 2em,
          emph(align(center + horizon,text(size: 10pt, title))),
          stack(dir: ltr,
            spacing: 1em,
            if logo-left != none {
              set image(height: left-logo-height / 2)
              logo-left
            },
            if logo-right != none {
              set image(height: right-logo-height / 2)
              logo-right
            }
          )
        )
        v(-0.75em)
        line(length: 100%)
      }
    }
  )
  
  if (show-declaration-of-authorship) {
    declaration-of-authorship(
      authors,
      title,
      date,
      language,
      many-authors,
      at-university,
      city,
      date-format
    )
  }
  
  if (not at-university and show-confidentiality-statement) {
    confidentiality-statement(
      authors,
      title,
      confidentiality-statement-content,
      university,
      university-location,
      date,
      language,
      many-authors,
      date-format
    )
  }
  // set page numbering to roman numbering
  set page(
    numbering: "I",
    number-align: numbering-alignment,
  )
  counter(page).update(1)

  show outline.entry.where(
    level: 1,
  ): it => {
    v(10pt, weak: true)
    text(weight: "regular",it)
  }

  if (show-table-of-contents) {
    outline(
      title: [#heading(level:2, outlined: true)[#if (language == "de") {
      [Inhaltsverzeichnis]
    } else {
      [Table of Contents]
    }]], 
    indent: auto, depth: toc-depth)
  }
  
  context {
    let elems = query(figure.where(kind: image), here())
    let count = elems.len()
    
    if (show-list-of-figures and count > 0) {
      outline(
        title: [#heading(level: 2, outlined: true)[#if (language == "de") {
          [Abbildungsverzeichnis]
        } else {
          [List of Figures]
        }]],
        target: figure.where(kind: image),
      )
    }
  }

  context {
    let elems = query(figure.where(kind: table), here())
    let count = elems.len()

    if (show-list-of-tables and count > 0) {
      outline(
        title: [#heading(level: 2, outlined: true)[#if (language == "de") {
          [Tabellenverzeichnis]
        } else {
          [List of Tables]
        }]],
        target: figure.where(kind: table),
      )
    }
  }

  context {
    let elems = query(figure.where(kind: raw), here())
    let count = elems.len()

    if (show-code-snippets and count > 0) {
      outline(
        title: [#heading(level: 2, outlined: true)[#if (language == "de") {
          [Listingverzeichnis]
        } else {
          [Code Snippets]
        }]],
        target: figure.where(kind: raw),
      )
    }
  }
  

    
  if (show-acronyms and acronyms != none and acronyms.len() > 0) {
    print-acronyms(language, acronym-spacing)
  }

  set par(justify: true, leading: 1em)
  set block(spacing: 2em)

  if (show-abstract and abstract != none) {
    align(center + horizon, heading(level: 1, numbering: none)[Abstract])
    text(abstract)
  }
  
  
  // reset page numbering and set to arabic numbering
  set page(
    numbering: "1",
    footer: context align(numbering-alignment, numbering(
    // Hätte gerne das Format :"Seite" + #Seitennummer".
    "1 / 1", 
    ..counter(page).get(),
    ..counter(page).at(<end>),
    ))
  )
  counter(page).update(1)

  body

  [#metadata(none)<end>]
  // reset page numbering and set to alphabetic numbering
  set page(
    numbering: "I",
    footer: context align(numbering-alignment, numbering(
      "I",
      ..counter(page).get(),
    ))
  )

  // set page numberung of references
  counter(page).update(6)
  // Je nach letzter Seitenanzahl anpassen.

  // Display bibliography.
  if bibliography != none {
    set std-bibliography(title: [#if (language == "de") {
      [Literaturverzeichnis]
    } else {
      [References]
    }], style: bib-style)
    bibliography
  }

  if (show-appendix and appendix != none) {
    heading(level: 1, numbering: none)[#if (language == "de") {
      [Anhang]
    } else {
      [Appendix]
    }]
    appendix
  }
  
  let todo(body, inline: false, big_text: 40pt, small_text: 15pt, gap: 2mm) = {
  if inline {
    set text(fill: red, size: small_text, weight: "bold")
    box([TODO: #body 
    #place()[    
      #set text(size: 0pt)
      #figure(kind: "todo", supplement: "", caption: body, [])
    ]])
  }
  else {
    set text(size: 0pt) //to hide default figure text, figures is only used for outline as only headings and figures can used for outlining at this point
    figure(kind: "todo", supplement: "", outlined: true, caption: body)[
      #block()[
        #set text(fill: red, size: big_text, weight: "bold")
        ! TODO !
      ]
      #v(gap)
      #block[
        #set text(fill: red, size: small_text, weight: "bold")
        #body
      ]
      #v(gap)
    ]
  }
}
}