#import "lib.typ": *
#import "acronyms.typ": *

#show: supercharged-dhbw.with(
  title: "Optimierung und Dokumentation der Entwicklungs-, Test- und Release-Prozesse eines Kleinunternehmens",
  authors: (
    (name: "Mael Dossoh", student-id: "3167941", course: "22B5", course-of-studies: "Angewandte Informatik", company: (
      (name: "ProSystems GmbH", post-code: none, city: "Sinsheim")
    )),
  ),
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("sources.bib", style: "institute-of-electrical-and-electronics-engineers"),
  date: datetime.today(),
  language: "de", // en, de
  supervisor: (company:"Schweikert Benno", university: "Strand Marcus"),
  university: "Dualen Hochschule Baden-Württemberg",
  university-location: "Karlsruhe",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

// Edit this content to your likings

= Einleitung

== Motivation und Ziele der Arbeit
== Relevanz des Themas für kleine Unternehmen
== Aufbau der Arbeit (Geplantes Vorgehen)
 - Grundlagen und Begriffsdefinitionen
 - Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse
 - Einarbeitung von Mitarbeitern
 - Vorschläge zur Prozessoptimierung
 - Schlussfolgerung und Ausblick #cite(form: "prose", <iso18004>)


= Grundlagen und Begriffsdefinitionen
== Relevante Normen und Standards (z.B. ISO, IEEE)
== Effizienz und Effektivität in der Prozessoptimierung
== Methoden zur Identifikation von Schwachstellen
== Dokumentationspflicht gegenüber Auftraggebern
== Definition und Bedeutung von Entwicklungs-, Test- und Release-Prozessen
== Überblick gängiger Tools in der Softwareentwicklung

= Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse
== Durchführung einer Mitarbeiterumfrage (z.B. mittels Microsoft Forms)
== Auswertung des Mitarbeiterfeedbacks
== Beschreibung der aktuellen Prozesse
== Visuelle Darstellung der Prozesse (Diagramme und Flussdiagramme)
== Analyse der Effizienz und Effektivität der bestehenden Prozesse

= Einarbeitung von Mitarbeitern
== Bedeutung der Einarbeitung neuer Mitarbeiter
== Bestehende Einarbeitungsprozesse
== Dokumentation und Schulungsmaterialien

= Vorschläge zur Prozessoptimierung (Basierend auf den Ergebnissen der Mitarbeiterumfrage, der Analyse, sowie auf Industriestandards)
== Anpassung dieser Normen auf die Bedürfnisse eines Kleinunternehmens
== Identifikation und Priorisierung von Verbesserungspotentialen
== Implementierung und Anpassung von gängigen Tools der Softwareentwicklung (z.B. Jira, Git, CI/CD-Pipelines)
== (Vielleicht?) Kosten-Nutzen-Analyse der vorgeschlagenen Maßnahmen 
== (Vielleicht?) Vorschläge zur Optimierung der Einarbeitung

= Schlussfolgerung und Ausblick
== Zusammenfassung der wichtigsten Erkenntnisse
== Bewertung der vorgeschlagenen Maßnahmen
== Ausblick auf zukünftige Entwicklungen und weitere Optimierungsmöglichkeiten


// == Acronyms

// Use the `acr` function to insert acronyms, which looks like this #acr("HTTP").

// #acrlpl("API") are used to define the interaction between different software systems.

// #acrs("REST") is an architectural style for networked applications.

// #acrs("URL") is a reference to a web resource.

// == Lists

// Create bullet lists or numbered lists.

// - These bullet
// - points
// - are colored

// + It also
// + works with
// + numbered lists!

// == Figures and Tables

// Create figures or tables like this:

// === Figures

// #figure(caption: "Image Example", image(width: 4cm, "assets/ts.svg"))
// #figure(caption: "Image Example", image(width: 4cm, "dhbw.svg"))

// === Tables

// #figure(caption: "Table Example", table(
//   columns: (1fr, auto, auto),
//   inset: 10pt,
//   align: horizon,
//   table.header(
//     [*Names*], [*Area*], [*Parameters*],
//   ),
//   text("cylinder.svg"),
//   $ pi h (D^2 - d^2) / 4 $,
//   [
//     $h$: height \
//     $D$: outer radius \
//     $d$: inner radius
//   ],
//   text("tetrahedron.svg"),
//   $ sqrt(2) / 12 a^3 $,
//   [$a$: edge length]
// ))<table>

// == Code Snippets

// Insert code snippets like this:

// #figure(caption: "Codeblock Example", sourcecode[```typ
// #show "ArtosFlow": name => box[
//   #box(image(
//     "logo.svg",
//     height: 0.7em,
//   ))
//   #name
// ]

// This report is embedded in the
// ArtosFlow project. ArtosFlow is a
// project of the Artos Institute.
// ```])

== References

Cite like this #cite(form: "prose", <iso18004>).
Or like this @iso18004.
You can also reference by adding `<ref>` with the desired name after figures or headings.

Or like this #cite(form: "prose", <forstandardizationiso2005isoiec>)

// For example this @table references the table on the previous page.