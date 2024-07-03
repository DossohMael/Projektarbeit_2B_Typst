#import "..\lib.typ": *
#import "acronyms.typ": *

#show: supercharged-dhbw.with(
  title: "Lorem Ipsum",
  authors: (
    (name: "Mael Dossoh", student-id: "3167941", course: "22B5", course-of-studies: "Angewandte Informatik", company: (
      (name: "ProSystems GmbH", post-code: "74889", city: "Sinsheim")
    )),
  ),
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("sources.bib", style: "institute-of-electrical-and-electronics-engineers"),
  date: datetime.today(),
  language: "de", // en, de
  supervisor: (company: "Schweikert Benno"),
  university: "Duale Hochschule Baden-Württemberg Karlsruhe",
  university-location: "Karlsruhe",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

// Edit this content to your liking

= Introduction

#lorem(100)

#lorem(100)

#lorem(100)

= Examples

#lorem(30)

== Acronyms

Use the `acr` function to insert acronyms, which looks like this #acr("HTTP").

#acrlpl("API") are used to define the interaction between different software systems.

#acrs("REST") is an architectural style for networked applications.

#acrs("URL") is a reference to a web resource.

== Lists

Create bullet lists or numbered lists.

- These bullet
- points
- are colored

+ It also
+ works with
+ numbered lists!

== Figures and Tables

Create figures or tables like this:

=== Figures

#figure(caption: "Image Example", image(width: 4cm, "assets/ts.svg"))
#figure(caption: "Image Example", image(width: 4cm, "../dhbw.svg"))

=== Tables

#figure(caption: "Table Example", table(
  columns: (1fr, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Names*], [*Area*], [*Parameters*],
  ),
  text("cylinder.svg"),
  $ pi h (D^2 - d^2) / 4 $,
  [
    $h$: height \
    $D$: outer radius \
    $d$: inner radius
  ],
  text("tetrahedron.svg"),
  $ sqrt(2) / 12 a^3 $,
  [$a$: edge length]
))<table>

== Code Snippets

Insert code snippets like this:

#figure(caption: "Codeblock Example", sourcecode[```typ
#show "ArtosFlow": name => box[
  #box(image(
    "logo.svg",
    height: 0.7em,
  ))
  #name
]

This report is embedded in the
ArtosFlow project. ArtosFlow is a
project of the Artos Institute.
```])

== References

Cite like this #cite(form: "prose", <iso18004>).
Or like this @iso18004.
You can also reference by adding `<ref>` with the desired name after figures or headings.

Or like this #cite(form: "prose", <forstandardizationiso2005isoiec>)

For example this @table references the table on the previous page.

= Conclusion

#lorem(100)

#lorem(120)

#lorem(80)