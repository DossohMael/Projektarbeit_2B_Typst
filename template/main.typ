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

Die Disziplin des Qualitätsmanagements (#acrs("QM")) hat sich im Verlauf der Jahre erheblich weiterentwickelt und umfasst gegenwärtig eine breite Palette von Prinzipien, Methoden und Techniken. Diese zielen darauf ab, die Qualität von Produkten und Dienstleistungen sicherzustellen und zu optimieren @iso9001de. In der Zeit vor dem 20. Jahrhundert erfolgte die Sicherung der Qualität handwerklicher Produkte in erster Linie durch den jeweiligen Meister, der die Verantwortung für die Endqualität der hergestellten Waren trug. Diese Vorgehensweise wurde jedoch mit der industriellen Revolution und der damit einhergehenden Massenproduktion zunehmend als unzureichend erachtet, sodass erste Ansätze zur systematischeren Qualitätskontrolle entwickelt wurden @handwerk2014. Die Einführung von Qualitätsmanagementsystemen (#acrs("QMS")) erfolgte insbesondere in der Automobilindustrie mit dem Ziel, die Qualität der produzierten Fahrzeuge zu verbessern und deren Sicherheit zu erhöhen. Die von der International Organization for Standardization (#acrs("ISO")) in den 1980er Jahren  etablierte Normenreihe ISO 9000 #acrs("QMS") 
kann als Meilenstein in der Entwicklung von Qualitätsmanagementskonzepten betrachtet werden. Die Konzepte des "Process approach (#acrs("PA"))", des "Plan-do-check-act (#acrs("PDCA")) cycle" sowie des "Risk-based thinking (#acrs("RBT"))" wurden in diesem Kontext maßgeblich geprägt und haben bis heute weltweit Anerkennung gefunden. Diese Prinzipien bilden die Grundlage für nationale Gesetzgebungen sowie Unternehmensstandards und werden unter anderem eingesetzt, um die Effizienz zu steigern, die Kundenzufriedenheit zu erhöhen, die Wettbewerbsfähigkeit zu verbessern und die Einhaltung gesetzlicher Anforderungen sicherzustellen @iso9000de.
// Kann ich ISO in der Fußzeile so abkürzen?
// Sollten die konzepte in Gänzefüßen kursiv sein?

Die Implementierung eines formalen #acrs("QMS") stellt für kleine und mittlere Unternehmen (#acrs("KMU")) eine signifikante Herausforderung dar, da in diesen Unternehmensformen oftmals eine klare Organisation und Struktur fehlt, was die effektive Umsetzung umfassender #acrs("QMS") erschwert.
In diesem Kontext betont das Bayerische Staatsministerium für Wirtschaft und Medien, Energie und Technologie im "QM-Leitfaden für kleine und mittlere Unternehmen", dass:
#pagebreak()
#set quote(block: true) 
#quote["Mit der Einführung eines #acrs("QMS") können #acrs("KMU") u.a. die Transparenz betrieblicher Abläufe erhöht, die Fehlerquoten und somit die Kosten reduziert, höhere Kundenzufriedenheit erzielt, der Marktzugang verbessert und potenzielle Risiken aufgrund von Nichtkonformitäten gesenkt werden."@qm2015]  
// Formatiereung des Paragraphen, wohin mit dem Pagebreak?

Demnach kann die Implementierung von Richtlinien auch für #acrs("KMU") eine wesentliche Funktion bei der Optimierung der internen Abläufe erfüllen. Die vorliegende Arbeit verfolgt das Ziel, bestehende Unternehmensprozesse mit anerkannten Normen und Standards zu vergleichen, um deren Effizienz und Effektivität zu bewerten und mögliche Optimierungspotenziale zu identifizieren. 
Dazu wird eine Analyse und Dokumentation der bestehenden Prozesse des #acrs("KMU") ProSystems GmbH anhand etablierter Normen durchgeführt. Auf Basis dieser Analyse sollen Vorschläge zur Prozessoptimierung erarbeitet und Maßnahmen zur Umsetzung dieser Vorschläge vorgestellt werden. Das Unternehmen entwickelt Softwarelösungen und ist auf die Systemintegration spezialisiert. Es bietet Dienstleistungen an, welche die vollständige Durchführung IT-basierter Automatisierungsprojekte sowie die Integration von Systemen zur Produktionsplanung, Fertigungssteuerung und Unternehmensressourcenplanung umfassen @prosy170724. Im Rahmen der Analyse sind insbesondere die Entwicklungs-, Test- und Release-Prozesse von Relevanz, da diese einen entscheidenden Einfluss auf die Gesamteffizienz des Unternehmens ausüben. Eine detaillierte Untersuchung dieser Prozesse erlaubt die Identifikation von Stärken und Schwächen sowie die Ableitung von Optimierungspotenzialen. Dies ist von besonderer Bedeutung, da die Qualität der Softwareprodukte und die Kundenzufriedenheit maßgeblich von der Effizienz und Effektivität dieser Prozesse abhängen.
// Satz bearbeiten, die Aufgabe besser formulieren: (Die vorliegende Arbeit zielt .... führt)
 - Grundlagen und Begriffsdefinitionen
 - Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse
 - Einarbeitung von Mitarbeitern
 - Vorschläge zur Prozessoptimierung
 - Schlussfolgerung und Ausblick

= Grundlagen und Begriffsdefinitionen

== Qualitätsmanagement

== Prozessansatz
=== Erhebung und Dokumentation 
 Dokumentationspflicht gegenüber Auftraggebern
=== Effizienz und Effektivität in der Prozessoptimierung
Wie wird qualität gemessen? Key performance indicators
=== Methoden zur Identifikation von Schwachstellen

== Entwicklungs-, Test- und Release-Prozesse
== Kleine und mittlere Unternehmen

= Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse

== Mitarbeiterumfrage 
- Was, warum? Als Anhang hinzufügen.
=== Durchführung
- Wie? Mit Befolgung welcher Normen und Konzepte?
=== Ergebnisse und Auswertung
Auswertung durch Tools, qualitativ und Quantitativ 

== Erhebung und Beschreibung der aktuellen Prozesse 
Darstellung der aktuellen Prozesse mir Diagrammen (Flussdiagramme, BPMN)
=== Analyse der SVN und GIT Versionskontrollsysteme 
- Repos durchgehen 
- Trunk based und brachnbased VCS 
=== Analyse der Bestehenden Einarbeitungsprozesse, Dokumentation und Schulungsmaterialien
=== Analyse der Effizienz und Effektivität der bestehenden Prozesse

= Vorschläge zur Prozessoptimierung 
Basierend auf den Ergebnissen der Mitarbeiterumfrage, der Analyse, sowie den Industriestandards
== Identifikation und Priorisierung von Verbesserungspotentialen
== Anpassung der Vorschläge auf die Bedürfnisse eines Kleinunternehmens
== Kosten-Nutzen-Analyse der vorgeschlagenen Maßnahmen 

= Schlussfolgerung und Ausblick
== Zusammenfassung der wichtigsten Erkenntnisse
== Ausblick auf zukünftige Aufgaben und Herausforderungen
Vorstellung möglicher software tools

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