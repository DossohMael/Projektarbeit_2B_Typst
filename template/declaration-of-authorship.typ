#let declaration-of-authorship(authors, title, date, language, many-authors, at-university, city, date-format) = {
  pagebreak()
// v(2em)
  text(size: 12pt, weight: "bold", if (language == "de") {
    "Erklärung"
  } else {
    "Declaration of Authorship"
  })

  // v(1em)
  if (language == "de") {
    par(justify: true, [
      (gemäß §5(3) der „Studien- und Prüfungsordnung DHBW Technik“ vom 29. 9. 2017) Ich versichere hiermit, dass ich meine Projektarbeit mit dem Thema:
    ])

    text(weight: "bold", "„"+title+"“")

    par(justify: true, [
      selbstständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt habe. Ich versichere zudem, dass die eingereichte elektronische Fassung mit der gedruckten Fassung übereinstimmt.
    ])
  } else {
    par(justify: true, [
      According to item 1.1.13 of Annex 1 to §§ 3, 4, and 5 of the Examination Regulations for the Bachelor's Degree Programs in the Technology Department of the Baden-Württemberg Cooperative State University dated September 29, 2017. I hereby certify that I have composed the thesis on the topic:
    ])
    v(1em)
    align(center,
      text(weight: "regular", title)
    )
    v(1em)
    par(justify: true, [
      independently and have not used any sources and aids other than those stated in the document. I also certify that the submitted electronic version matches the printed version.
    ])
  }

  let end-date = if (type(date) == datetime) {
    date
  } else {
    date.at(1)
  }

  v(6em)
  if (at-university) {
    text([#city, #end-date.display(date-format)])
  } else {
    text([#if (language == "de") {
      [#authors.map(author => author.company.city).dedup().join(", ", last: " und "), #end-date.display(date-format)]
    } else {
      [#authors.map(author => author.company.city).dedup().join(", ", last: " and "), #end-date.display(date-format)]
    }])
  }

  // v(1em)
  if (many-authors) {
    grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      ..authors.map(author => {
        v(3.5em)
        line(length: 100%)
        author.name
      })
    )
  } else {
    for author in authors {
      // v(4em)
      line(length: 100%) 
      grid(
        columns: (1fr,auto),
        rows: (auto),
        align(left)[Ort,Datum],
        align(right)[Unterschrift]
        )
    
    }
  }
}