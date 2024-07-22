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

Das Qualitätsmanagement (#acrs("QM")) hat sich als eine fundamentale Disziplin etabliert, deren Ziel es ist, die Qualität von Produkten und Dienstleistungen kontinuierlich zu gewährleisten und zu optimieren. Die historische Entwicklung von #acrs("QM") verdeutlicht, dass ein signifikanter Wandel von der handwerklichen Einzelanfertigung bis zur heutigen Massenproduktion und Dienstleistungsorientierung stattgefunden hat @iso9001de. In seiner Doktorarbeit "Handwerk in der postindustriellen Gesellschaft...Leipzig" 
// Titel evtl. anders zitieren.
beschreibt Tobias Werner, dass in der Zeit vor dem 20. Jahrhundert die Sicherung der Qualität handwerklicher Produkte in erster Linie durch den jeweiligen Meister erfolgte, der die Verantwortung für die Endqualität der hergestellten Waren trug. Diese Vorgehensweise wurde mit der industriellen Revolution und der damit einhergehenden Massenproduktion jedoch zunehmend als unzureichend erachtet, sodass erste Ansätze zur systematischeren Qualitätskontrolle entwickelt wurden @handwerk2014. 

Die Automobilindustrie kann als Vorreiterin bei der Einführung von Qualitätsmanagementsystemen (#acrs("QMS")) bezeichnet werden. Die Motivation hierfür resultiert aus dem Bestreben, sowohl die Produktqualität als auch die Sicherheit zu erhöhen. Die Normenreihe ISO 9000, etabliert von der International Organization for Standardization (#acrs("ISO")) in den 1980er Jahren, markierte einen Wendepunkt, indem sie weltweit anerkannte Standards für acrs("QMS") setzte @iso9000de. Die Konzepte des "Process Approach (#acrs("PA"))", des "Plan-Do-Check-Act cycle (#acrs("PDCA"))" sowie des "Risk-Based Thinking (#acrs("RBT"))" haben in diesem Kontext maßgeblich zur Entwicklung beigetragen und genießen bis heute weltweit Anerkennung. Diese Prinzipien bilden die Grundlage für nationale Gesetzgebungen sowie Unternehmensstandards und werden unter anderem eingesetzt, um die Effizienz zu steigern, die Kundenzufriedenheit zu erhöhen, die Wettbewerbsfähigkeit zu verbessern und die Einhaltung gesetzlicher Anforderungen sicherzustellen @iso9001de.

Die Implementierung eines formalen #acrs("QMS") stellt für kleine und mittlere Unternehmen (#acrs("KMU")) eine signifikante Herausforderung dar, da in diesen Unternehmensformen oftmals eine klare Organisation und Struktur fehlt.
Diesbezüglich betont das Bayerische Staatsministerium für Wirtschaft und Medien, Energie und Technologie im "QM-Leitfaden für kleine und mittlere Unternehmen", dass:
#pagebreak()
#set quote(block: true) 
#quote["Mit der Einführung eines #acrs("QMS") können #acrs("KMU") u.a. die Transparenz betrieblicher Abläufe erhöht, die Fehlerquoten und somit die Kosten reduziert, höhere Kundenzufriedenheit erzielt, der Marktzugang verbessert und potenzielle Risiken aufgrund von Nichtkonformitäten gesenkt werden."@qm2015]  
// Formatiereung des Par, wohin mit dem Pagebreak?

Demnach kann die Implementierung von Richtlinien auch für #acrs("KMU") eine wesentliche Funktion bei der Optimierung der internen Abläufe erfüllen. Die vorliegende Arbeit verfolgt das Ziel, bestehende Unternehmensprozesse mit anerkannten Normen und Standards zu vergleichen, um deren Effizienz und Effektivität zu bewerten und mögliche Optimierungspotenziale zu identifizieren. 
Im Rahmen der vorliegenden Arbeit erfolgt eine Analyse und Dokumentation der bestehenden Prozesse des #acrs("KMU") ProSystems GmbH unter Berücksichtigung etablierter Normen. 
ProSystems GmbH entwickelt Softwarelösungen und hat sich auf die Systemintegration spezialisiert.
Das Leistungsspektrum des Unternehmens umfasst die komplette Realisierung von IT-basierten Automatisierungsprojekten sowie die Integration von Systemen zur Produktionsplanung, Fertigungssteuerung und Unternehmensressourcenplanung @prosy170724. Im Rahmen der Analyse sind insbesondere die Entwicklungs-, Test- und Release-Prozesse von Relevanz, da diese einen entscheidenden Einfluss auf die Gesamteffizienz des Unternehmens ausüben. Eine detaillierte Untersuchung dieser Prozesse erlaubt die Identifikation von Stärken und Schwächen sowie die Ableitung von Optimierungspotenzialen. Dies ist von besonderer Bedeutung, da die Qualität der Softwareprodukte und die Kundenzufriedenheit maßgeblich von der Effizienz und Effektivität dieser Prozesse abhängen.

Im Folgenden wird das geplante Vorgehen der vorliegenden Arbeit dargelegt und eine Übersicht über die behandelten Themen und Kapitel gegeben: Das nachfolgende Kapitel „Grundlagen und Begriffsdefinitionen” dient der Einführung in die für das Verständnis dieser Arbeit grundlegenden Konzepte. Im Anschluss erfolgt eine Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse im Kapitel „Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse”. Zu Beginn des Prozesses erfolgt eine Befragung der Mitarbeitenden, um deren Meinungen und Erfahrungen mit den bestehenden Prozessen zu erfassen. Daraufhin erfolgt eine Auswertung der Befragung sowie eine formale Erfassung und Darstellung der Entwicklungsprozesse. Das nachfolgende Kapitel, „Vorschläge zur Prozessoptimierung”, basiert auf den Resultaten der durchgeführten Mitarbeiterbefragung, der formalen Analyse sowie auf etablierten Normen und Industriestandards.Im Rahmen dessen erfolgt eine Identifikation und Priorisierung von Verbesserungspotenzialen. Die abgeleiteten Maßnahmen werden daraufhin an die spezifischen Bedürfnisse eines #acrs("KMU") adaptiert. Das finale Kapitel „Fazit und Ausblick” dient der Zusammenfassung der essenziellen Ergebnisse der Projektarbeit. Darüber hinaus wird ein Ausblick auf potenzielle zukünftige Aufgaben und Herausforderungen gegeben, die sich aus den vorgeschlagenen Optimierungen ergeben können.
// Kapiteltitel und Inhalte anpassen falls sie sich ändern.

= Grundlagen und Begriffsdefinitionen
Das vorliegende Kapitel dient der Erläuterung von Konzepten und Begriffen, die für das Verständnis dieser Arbeit erforderlich sind. Der Fokus liegt dabei auf dem #acrs("QM"), dem Prozessansatz sowie den spezifischen Anforderungen und Herausforderungen von #acrs("KMU"). Dabei wird sich hauptsächlich auf die von der #acrs("ISO") in den Normen "#acrs("ISO") 9000", "#acrs("ISO") 9001" sowie "#acrs("ISO") 25000" verwendeten Definitionen bezogen.



== Die Internationale Organisation für Normung
Die #acrs("ISO") ist eine internationale Vereinigung nationaler Normungsorganisationen mit derzeit 172 Mitgliedsländern. Sie wird insgesamt von 839 Technischen Komitees und Unterkomitees unterstützt (Stand Juli 2024). Sie wurde 1947 in Genf, Schweiz, gegründet und hat seitdem 25.488 internationale Normen herausgegeben @isoabout.
#acrs("ISO")-Standards sind Formeln, welche die optimale Vorgehensweise für eine Tätigkeit definieren. Sie werden von internationalen Experten festgelegt und umfassen die Bereiche der Produktfertigung, des Prozessmanagements, der Erbringung von Dienstleistungen sowie der Materialwirtschaft @isostandards. 

Typische Beispiele für von der #acrs("ISO") erarbeitete Standards sind:

- Der MP3-Standard für Audiodateien und Standards für Telefonkarten sind typische Beispiele für  Standards, die von der #acrs("ISO") entwickelt wurden. Sie spielen eine entscheidende Rolle in der Softwareindustrie, indem sie die Kompatibilität und Interoperabilität zwischen verschiedenen Systemen und Anwendungen sicherstellen @isopopstandards.

- Ländercodes wie DE für Deutschland, NL für die Niederlande und JP für Japan basieren auf ISO-Standards. Diese Codes sind in vielen internationalen Anwendungen und Datenbanken unverzichtbar, da sie eine einheitliche Identifizierung und Verwaltung von Länderinformationen ermöglichen @isopopstandards.

Diese Beispiele zeigen, dass die #acrs("ISO") durch ihre Normungsarbeit einen bedeutenden Einfluss auf viele Bereiche ausübt, insbesondere auf die Softwareindustrie, indem sie Normen festlegt, die sowohl technische als auch organisatorische Aspekte abdecken.
// Muss ich quellen wie verschiedene Links auf der ISO Website unterscheiden.

== Qualitätsmanagement
Eine Erörterung der spezifischen Anforderungen und Herausforderungen des #acrs("QM") erfordert eine grundlegende Begriffsklärung. Dabei sind insbesondere die Definitionen der ISO zu den Begriffen "Qualität" und "Management" von entscheidender Bedeutung, da diese Definitionen als weltweite Referenzstandards dienen.

Laut ISO 9000:2015 wird "Qualität" definiert als:
#set quote(block: true)
#quote(["Der Grad, in dem ein Satz inhärenter Merkmale Anforderungen erfüllt."  @iso9000de]) 
Wobei "Inhärente Merkmale", Merkmale sind die einem Produkt, einer Dienstleistung oder einem Prozess innewohnen und "Anforderungen", Bedürfnisse oder Erwartungen, die festgelegt, üblicherweise vorausgesetzt oder verpflichtend sind. Die vorliegende Definition verdeutlicht, dass der Begriff der Qualität nicht als absolut, sondern als relativ zu den jeweils spezifischen Anforderungen zu betrachten ist. In diesem Kontext können die Anforderungen sowohl die Bedürfnisse und Erwartungen der Kundinnen und Kunden als auch gesetzliche und regulatorische Vorgaben sowie weitere, festgelegte Anforderungen umfassen. Die Erfüllung dieser Anforderungen ist von entscheidender Bedeutung für die Zufriedenheit der Kundinnen und Kunden sowie für den Erfolg eines Unternehmens @iso9000de.

Laut ISO 9000:2015 wird "Management" definiert als:

#set quote(block: true)
#quote(["Koordinierte Tätigkeiten zum Leiten und Steuern einer Organisation." @iso9000de])
Diese Definition verdeutlicht, dass Management die Aktivitäten umfasst, die notwendig sind, um die Ziele einer Organisation zu erreichen, einschließlich der Planung, Organisation, Leitung, Koordination und Kontrolle aller Aktivitäten und Ressourcen. Diese Definition ist wesentlich für das Verständnis von #acrs("QM"), da sie die systematische und methodische Herangehensweise betont, die notwendig ist, um eine Organisation effektiv und effizient zu führen und zu steuern @iso9000de.

Die Kombination der beiden zuvor dargelegten Definitionen bildet die Grundlage für das #acrs("QM"), welches sich mit der Sicherstellung befasst, dass sämtliche Tätigkeiten innerhalb einer Organisation so geplant und durchgeführt werden, dass sie die festgelegten Anforderungen erfüllen und somit eine kontinuierliche Verbesserung der Qualität ermöglichen. Dies impliziert die Implementierung eines #acrs("QMS"), welches auf den Grundsätzen der #acrs("ISO") 9001 basiert und eine Struktur für die kontinuierliche Verbesserung und Kundenzufriedenheit bereitstellt.

Ein effektives #acrs("QMS") bedingt eine fortwährende Überwachung und Evaluierung der Prozesse und Produkte, um die Einhaltung der definierten Standards sicherzustellen. Dazu zählen regelmäßige Audits, Überprüfungen sowie Schulungen der Mitarbeitenden, um sicherzustellen, dass alle Organisationsebenen die Qualitätsziele verstehen und darauf hinarbeiten. Des Weiteren ist die Einbeziehung sämtlicher Interessengruppen, einschließlich Lieferanten und Kunden, von entscheidender Bedeutung, um ein umfassendes und erfolgreiches  #acrs("QM")  zu gewährleisten @iso9001de.

Die Prinzipien des Qualitätsmanagements umfassen, laut Iso 9000, 7 Grundlegende Konzepte:

- Kundenorientierung: Die Bedürfnisse und Erwartungen der Kunden stehen im Mittelpunkt und bestimmen die Qualitätsstandards.

- Verantwortlichkeit der Führung: Führungskräfte müssen eine klare Vision und Richtung vorgeben, um die Qualitätsziele zu erreichen.

- Einbeziehung der beteiligten Personen: Alle Mitarbeitenden sollen einbezogen und motiviert werden, zur Erreichung der Qualitätsziele beizutragen.

- Prozessorientierter Ansatz: Die Aktivitäten und Ressourcen einer Organisation werden als zusammenhängende Prozesse verstanden, die systematisch gemanagt werden.

- Kontinuierliche Verbesserung: Die Organisation verpflichtet sich zu einem fortlaufenden Verbesserungsprozess in allen Bereichen.

- Sachbezogener Entscheidungsfindungsansatz: Entscheidungen werden auf der Grundlage von Daten und Fakten getroffen.

=== Software Qualität

== Der Prozessansatz
- "Process Approach (#acrs("PA"))", 
- "Plan-Do-Check-Act (#acrs("PDCA")) cycle" 
- "Risk-Based Thinking (#acrs("RBT"))"

=== Effizienz und Effektivität in der Prozessoptimierung
Wie wird qualität gemessen? Key performance indicators
=== Methoden zur Identifikation von Schwachstellen

== Entwicklungs-, Test- und Release-Prozesse
== Kleine und mittlere Unternehmen

=== Erhebung und Dokumentation 
Dokumentationspflicht gegenüber Auftraggebern
// Reihenfolge der Kapitel überdenken.

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
- Einige Repos durchgehen: Trunk based (SVN), Feature Branche based (GIT) 
- Analyse der Bestehenden Einarbeitungsprozesse, Dokumentation und Schulungsmaterialien
- Analyse der Effizienz und Effektivität der bestehenden Prozesse

= Vorschläge zur Prozessoptimierung 
Basierend auf den Ergebnissen der Mitarbeiterumfrage, der Analyse, sowie den Industriestandards
== Identifikation und Priorisierung von Verbesserungspotenzialen
== Anpassung der Vorschläge auf die Bedürfnisse kleiner und mittlerer Unternehmen
== Kosten-Nutzen-Analyse der vorgeschlagenen Maßnahmen 

= Schlussfolgerung und Ausblick
== Zusammenfassung der wichtigsten Erkenntnisse
== Ausblick auf zukünftige Aufgaben und Herausforderungen
// Vorstellung möglicher software tools (nächste PA).

// Use the `acr` function to insert acronyms, which looks like this #acr("HTTP").
// #acrlpl("API") are used to define the interaction between different software systems.
// #acrs("REST") is an architectural style for networked applications.
// #acrs("URL") is a reference to a web resource.

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