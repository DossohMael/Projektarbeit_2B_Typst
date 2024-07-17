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
  bibliography: bibliography("sources.bib", style: "referencestyles/din-1505-2-alphanumeric.csl"), // the bibliography file and style
  date: datetime.today(),
  language: "de", // en, de
  supervisor: (company:"M.Sc. Benno Schweikert", university: "Prof. Dr. Marcus Strand"),
  university: "Dualen Hochschule Baden-Württemberg",
  university-location: "Karlsruhe",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

// Edit this content to your likings

= Einleitung

Die Disziplin des Qualitätsmanagements (#acrs("QM")) hat sich im Verlauf der Jahre erheblich weiterentwickelt und umfasst gegenwärtig eine breite Palette von Prinzipien, Methoden und Techniken. Diese zielen darauf ab, die Qualität von Produkten und Dienstleistungen sicherzustellen und zu optimieren @iso9001de. In der Zeit vor dem 20. Jahrhundert erfolgte die Sicherung der Qualität handwerklicher Produkte in erster Linie durch den jeweiligen Meister, der die Verantwortung für die Endqualität der hergestellten Waren trug. Diese Vorgehensweise wurde jedoch mit der industriellen Revolution und der damit einhergehenden Massenproduktion zunehmend als unzureichend erachtet, sodass erste Ansätze zur systematischeren Qualitätskontrolle entwickelt wurden @handwerk2014. Die Einführung von Qualitätsmanagementsystemen (#acrs("QMS")) erfolgte insbesondere in der Automobilindustrie mit dem Ziel, die Qualität der produzierten Fahrzeuge zu verbessern und deren Sicherheit zu erhöhen. Die Einführung der ISO #footnote[International Organization for Standardization, https://www.iso.org/about] 9000 Normenreihe für #acrs("QMS") 
in den 1980er Jahren führte zur Etablierung weltweit anerkannter Standards, welche bis heute verwendet und weiterentwickelt werden. Sie bilden die Grundlage für nationale Gesetzgebungen sowie Unternehmensstandards und werden unter anderem eingesetzt, um die Effizienz zu steigern, die Kundenzufriedenheit zu erhöhen, die Wettbewerbsfähigkeit zu verbessern und die Einhaltung gesetzlicher Anforderungen sicherzustellen @iso9000de.
// wie iso akkürzen?

Die Implementierung eines formalen #acrs("QMS") stellt für kleine und mittlere Unternehmen (#acrs("KMU")) eine signifikante Herausforderung dar, da in diesen Unternehmensformen oftmals eine klare Organisation und Struktur fehlt, was die effektive Umsetzung umfassender #acrs("QMS") erschwert. Dennoch kann die Einführung vereinfachter Versionen von Normen einen wesentlichen Beitrag zur Verbesserung der internen Abläufe leisten. Das Bayerische Staatsministerium für Wirtschaft und Medien, Energie und Technologie betont in diesem Zusammenhang, dass @qm2015:
#pagebreak()
#set quote(block: true) 
#quote["Die neue Struktur der ISO 9001 kleinen und mittleren Unternehmen (KMU) entgegen. Die Prozessorientierung der Norm ermöglicht eine strukturierte Erfassung der Tätigkeiten und dazugehöriger Ressourcen. Mit der Einführung eines QM-Systems können u.a. die Transparenz betrieblicher Abläufe erhöht, die Fehlerquoten und somit die Kosten reduziert, höhere Kundenzufriedenheit erzielt, der Marktzugang verbessert und potenzielle Risiken aufgrund von Nichtkonformitäten gesenkt werden.]

// #pagebreak()

Die vorliegende Arbeit verfolgt das Ziel die Softwareentwiklungs-Prozesse eines Kleinunternehmens zu analysieren und potentielle Verbesserungspotentiale aufzudecken.
Dadurch soll Einarbeitung neuer Mitarbeiter der Softwareentwicklungsabteilung eines Kleinunternehmens zu optimieren und dabei Dokumentationspflichten gegenüber Auftraggebern zu erfüllen. Dazu ist es erforderlich, die bestehenden Entwicklungs-, Test- und Release-Prozesse zu identifizieren und gemäß den einschlägigen Normen, wie beispielsweise der ISO 9000 und der ISO 25000, zu dokumentieren. Die genannten Normen legen insbesondere Wert auf einen prozessorientierten Ansatz, welcher zur systematischen Verbesserung und Kontrolle von Geschäftsprozessen beiträgt. Wie Deming bereits feststellte, sind Prozesse und Qualitätsmanagement von entscheidender Bedeutung, um die Effizienz und Effektivität von Abläufen zu steigern. Die Definition und Dokumentation klarer Prozesse führt zu einer Verbesserung der Konsistenz und Zuverlässigkeit der Arbeitsergebnisse. Zudem wird die Transparenz und Nachvollziehbarkeit für alle Beteiligten erhöht. Wie Juran hervorhob, bedeutet Qualität, das Richtige richtig zu tun, wenn niemand zusieht. Die Einhaltung von Qualitätsstandards, wie beispielsweise ISO 9000 und ISO 25000, kann Unternehmen dabei unterstützen, die Qualität ihrer Produkte und Dienstleistungen zu sichern und kontinuierlich zu optimieren.

== Aufbau der Arbeit (Geplantes Vorgehen)
 - Grundlagen und Begriffsdefinitionen
 - Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse
 - Einarbeitung von Mitarbeitern
 - Vorschläge zur Prozessoptimierung
 - Schlussfolgerung und Ausblick


= Grundlagen und Begriffsdefinitionen
== Definition von Prozessen
== Relevante Normen und Standards (z.B. ISO, IEEE)
== Definition und Bedeutung von Entwicklungs-, Test- und Release-Prozessen
== Effizienz und Effektivität in der Prozessoptimierung
== Methoden zur Identifikation von Schwachstellen
== Dokumentationspflicht gegenüber Auftraggebern
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

#figure(caption: "Image Example", image(width: 4cm, "figures/ts.svg"))
#figure(caption: "Image Example", image(width: 4cm, "figures/dhbw.svg"))

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

// == References

// Cite like this #cite(form: "prose", <iso18004>).
// Or like this @iso18004.
// You can also reference by adding `<ref>` with the desired name after figures or headings.

// Or like this #cite(form: "prose", <forstandardizationiso2005isoiec>)

// For example this @table references the table on the previous page.