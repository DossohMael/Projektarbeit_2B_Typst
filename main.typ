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
  date: datetime(year: 2024, month: 9, day: 16), // the date of the report
  language: "de", // en, de
  supervisor: (company:"M.Sc. Benno Schweikert", university: "Prof. Dr. Marcus Strand"),
  university: "Dualen Hochschule Baden-Württemberg",
  university-location: "Karlsruhe",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

= Einleitung

Das Qualitätsmanagement (#acrs("QM")) hat sich als eine fundamentale Disziplin etabliert, deren Ziel es ist, die Qualität von Produkten und Dienstleistungen kontinuierlich zu gewährleisten und zu optimieren. Die historische Entwicklung von #acrs("QM") verdeutlicht, dass ein signifikanter Wandel von der handwerklichen Einzelanfertigung bis zur heutigen Massenproduktion und Dienstleistungsorientierung stattgefunden hat @iso9001de. In seiner Doktorarbeit "Handwerk in der postindustriellen Gesellschaft...Leipzig" zeigt Tobias Werner auf, dass in der Zeit vor dem 20. Jahrhundert die Sicherung der Qualität handwerklicher Produkte in erster Linie durch den jeweiligen Meister erfolgte, der die Verantwortung für die Endqualität der hergestellten Waren trug. Diese Vorgehensweise wurde mit der industriellen Revolution und der damit einhergehenden Massenproduktion jedoch zunehmend als unzureichend erachtet, sodass erste Ansätze zur systematischeren Qualitätskontrolle entwickelt wurden @handwerk2014. 

Die Automobilindustrie kann als Vorreiterin bei der Einführung von Qualitätsmanagementsystemen (#acrs("QMS")) bezeichnet werden. Die Motivation hierfür resultiert aus dem Bestreben, sowohl die Produktqualität als auch die Sicherheit zu erhöhen. Die Normenreihe "ISO 9000", etabliert von der International Organization for Standardization (#acrs("ISO")) in den 1980er Jahren, markierte einen Wendepunkt, indem sie weltweit anerkannte Standards für #acrs("QMS") setzte @iso9000de. Die Konzepte des "Plan-Do-Check-Act-Cycle (#acrs("PDCA")) " des "Process Approach (#acrs("PA"))",  haben in diesem Kontext maßgeblich zur Entwicklung beigetragen und genießen bis heute weltweit Anerkennung. Diese Prinzipien bilden unter anderem die Grundlage für nationale Gesetzgebungen sowie Unternehmensstandards und werden unter anderem eingesetzt, um die Effizienz zu steigern, die Kundenzufriedenheit zu erhöhen, die Wettbewerbsfähigkeit zu verbessern und die Einhaltung gesetzlicher Anforderungen sicherzustellen @iso9001de.
#pagebreak()

Die Implementierung eines formalen #acrs("QMS") stellt für kleine und mittlere Unternehmen #acrs("KMU") eine signifikante Herausforderung dar. Der Mangel an notwendigen finanziellen Mitteln und verantwortlichen Personen führt dazu, dass ein wirksames #acrs("QMS") in diesen Unternehmensformen oft nicht etabliert werden kann. Infolgedessen kann es in diesen Unternehmen an einer etablierten Qualitätskultur sowie an dem notwendigen Engagement für das #acrs("QM") fehlen @qm2015.
In diesem Kontext ist auf den "QM-Leitfaden für kleine und mittlere Unternehmen" des Bayerischen Staatsministeriums für Wirtschaft und Medien, Energie und Technologie zu verweisen, in dem betont wird, dass:

#set quote(block: true) 
#quote["Mit der Einführung eines #acrs("QMS") können #acrs("KMU") u.a. die Transparenz betrieblicher Abläufe erhöht, die Fehlerquoten und somit die Kosten reduziert, höhere Kundenzufriedenheit erzielt, der Marktzugang verbessert und potenzielle Risiken aufgrund von Nichtkonformitäten gesenkt werden."@qm2015]  

Die Implementierung eines #acrs("QMS") eröffnet #acrs("KMU") demnach die Möglichkeit, ihre internen Prozesse klar zu definieren, potenzielle Fehlerquellen und die damit verbundenen Kosten zu reduzieren. Dies ist insbesondere für KMU von Interesse, da sie mit begrenzten Ressourcen arbeiten und eine effiziente Nutzung dieser ihre Wettbewerbsfähigkeit erhöht. Ein verbessertes QM führt zudem zu höherer Kundenzufriedenheit und erleichtert den Marktzugang, da konsistente und zuverlässige Produkte und Dienstleistungen das Vertrauen der Kunden stärken @qm2015.

Die vorliegende Arbeit verfolgt das Ziel, bestehende Unternehmensprozesse mit anerkannten Normen und Standards zu vergleichen, um mögliche Optimierungspotenziale zu identifizieren. 
Im Rahmen der vorliegenden Arbeit erfolgt eine Analyse und Dokumentation der bestehenden Prozesse des #acrs("KMU"). Die Firma ProSystems GmbH entwickelt Softwarelösungen für die Systemintegration in der Gebäudeautomation.  Das Unternehmen ist ein zertifizierter Entwickler für das Niagara-4-Framework und bietet Software (#acrs("SW")), Dienstleistungen und Lösungen an, welche die Funktionalität des Frameworks in diversen Aspekten erweitern @prosy170724. Im Rahmen der Analyse sind insbesondere die Entwicklungs-, Test- und Release-Prozesse von Relevanz, da diese einen entscheidenden Einfluss auf die Gesamteffizienz des Unternehmens ausüben. Eine detaillierte Untersuchung dieser Prozesse erlaubt die Identifikation von Stärken und Schwächen sowie die Ableitung von Optimierungspotenzialen. Dies ist von besonderer Bedeutung da optimale Prozesse eine maßgebliche Verbesserung der Qualität von Softwareprodukten bewirken @iso9001de.

Im Folgenden wird das geplante Vorgehen der vorliegenden Arbeit dargelegt und eine Übersicht über die behandelten Themen und Kapitel gegeben: @grundlagen dient der Einführung in die für das Verständnis dieser Arbeit grundlegenden Konzepte. In @analyse erfolgt eine Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse. Zu Beginn dieses Vorhabens erfolgt eine Befragung der Mitarbeitenden, um deren Meinungen und Erfahrungen mit den bestehenden Prozessen zu erfassen. In Anschluss finden eine Auswertung der gewonnenen Erkenntnisse sowie eine formale Erfassung und Darstellung der Entwicklungsprozesse statt. Die Ergebnisse der durchgeführten Mitarbeiterbefragung, der formalen Analyse sowie etablierter Normen und Industriestandards bilden die Grundlage für den Inhalt von @prozessoptimierung. Im Rahmen dessen erfolgt eine Identifikation und Priorisierung von Verbesserungspotenzialen. Die abgeleiteten Maßnahmen werden daraufhin an die spezifischen Bedürfnisse von ProSystems adaptiert. @schlussfolgerung dient der Zusammenfassung der essenziellen Ergebnisse der Projektarbeit. Darüber hinaus wird ein Ausblick auf potenzielle zukünftige Aufgaben und Herausforderungen gegeben, die sich aus den vorgeschlagenen Optimierungen ergeben können.
// TODO: Kapiteltitel und Inhalte anpassen falls sie sich ändern.

= Grundlagen und Begriffsdefinitionen <grundlagen>
Das vorliegende Kapitel dient der Erläuterung von Konzepten und Begriffen, die für das Verständnis dieser Arbeit erforderlich sind. Der Schwerpunkt liegt dabei auf dem #acrs("QM"), dem daraus entspringenden #acrs("QMS"), #acrs("SW")-Qualitätsanforderungen sowie den spezifischen Anforderungen und Herausforderungen von #acrs("KMU"). Die vorliegende Untersuchung orientiert sich in erster Linie an die Normen "#acrs("ISO") 9000"@iso9000de, "#acrs("ISO") 9001"@iso9001de sowie "#acrs("ISO") 25000"@iso25000en.

== Qualitätsmanagement und Qualitätsmanagementsysteme
Eine Erörterung der spezifischen Anforderungen und Herausforderungen eines #acrs("QMS") erfordert eine grundlegende Begriffsklärung. Von besonderer Relevanz sind dabei die Definitionen der Begriffe "#acrs("QM"), "Qualität" sowie "Management" der #acrs("ISO"), da sie internationale Referenzstandards darstellen.

=== Qualitätsmanagement

Gemäß #acrs("ISO") 9000:2015 wird Qualität definiert als:
#set quote(block: true)
#quote(["Der Grad, in dem ein Satz inhärenter Merkmale Anforderungen erfüllt."  @iso9000de]) 

Unter „Inhärenten Merkmalen“ werden diejenigen Merkmale eines Produkts, einer Dienstleistung oder eines Prozesses verstanden, die diesem innewohnen @iso9000de. Demgegenüber stehen die „Anforderungen“, welche Bedürfnisse oder Erwartungen widerspiegeln, die in der Regel festgelegt, vorausgesetzt oder verpflichtend sind. Die vorliegende Definition verdeutlicht, dass der Begriff der Qualität nicht als absolut, sondern als relativ zu den jeweils spezifischen Anforderungen zu betrachten ist. In diesem Kontext können die Anforderungen sowohl die Bedürfnisse und Erwartungen der Kundinnen und Kunden als auch gesetzliche und regulatorische Vorgaben sowie weitere, festgelegte Anforderungen umfassen. Die Erfüllung dieser Anforderungen ist von entscheidender Bedeutung für die Zufriedenheit der Kundinnen und Kunden sowie für den Erfolg eines Unternehmens. @iso9000de

#pagebreak()

Gemäß #acrs("ISO") 9000:2015 wird "Management" definiert als:

#set quote(block: true)
#quote(["Koordinierte Tätigkeiten zum Leiten und Steuern einer Organisation." @iso9000de])
Die angeführte Definition verdeutlicht, dass Management die Aktivitäten umfasst, die notwendig sind, um die Ziele einer Organisation zu erreichen. Dies umfasst die Planung, Leitung und Koordination sämtlicher Aktivitäten und Ressourcen. Diese Definition ist wesentlich für das Verständnis von #acrs("QM"), da sie die Notwendigkeit einer systematischen und methodischen Herangehensweise betont, die notwendig ist, um eine Organisation effektiv und effizient zu führen und zu steuern. @iso9000de

Die zuvor dargelegten Definitionen bilden in ihrer Kombination die Grundlage für #acrs("QM"). Dieses befasst sich mit der Sicherstellung, dass sämtliche Tätigkeiten innerhalb einer Organisation so geplant und durchgeführt werden, dass sie die festgelegten Anforderungen erfüllen @iso9000de. Ein effektives #acrs("QM") bedingt eine fortwährende Überwachung und Evaluierung der Prozesse und Produkte, um die Einhaltung der definierten Standards sicherzustellen. Dies umfasst regelmäßige Audits sowie Schulungen der Mitarbeitenden, um sicherzustellen, dass alle Organisationsebenen die Qualitätsziele verstehen und darauf hinarbeiten @iso9001de.

#figure(caption: [Die sieben Prinzipien des Qualitätsmanagements @qm7principles], image(width: 7.8cm, "figures/The 7 principles of quality management.png"))<fig-7qmprinciples>

#pagebreak()
Gemäß gemäß #acrs("ISO") bilden die in @fig-7qmprinciples dargestellten Konzepte  9000 das Fundament des #acrs("QM") @iso9000de:

1. Kundenorientierung (Customer Focus): Die Bedürfnisse und Erwartungen der Kunden stellen den Mittelpunkt dar und determinieren die Qualitätsstandards.
2. Führung (Leadership): Führungskräfte müssen eine klare Vision und Richtung vorgeben, um die Qualitätsziele zu erreichen.
3. Einbeziehung von Personen (Engagement of People): Alle Mitarbeitenden sollen einbezogen und motiviert werden, zur Erreichung der Qualitätsziele beizutragen.
4. Prozessorientierter Ansatz (Process Approach): Die Aktivitäten und Ressourcen einer Organisation werden als zusammenhängende Prozesse verstanden, die systematisch verwaltet werden.
5. Verbesserung (Improvement): Die Organisation verpflichtet sich zu einem fortlaufenden Verbesserungsprozess in allen Bereichen.
6. Faktengestützte Entscheidungsfindung (Evidence-based Decision Making): Die Grundlage für Entscheidungen bildet die Auswertung von Daten und Fakten.
7. Beziehungsmanagement (Relationship Management): Die Beziehungen zu Lieferanten werden so gestaltet, dass beide Seiten Vorteile daraus ziehen.

Es kann festgehalten werden, dass der Begriff "#acrs("QM")" eine systematische Vorgehensweise bezeichnet, deren Ziel die Optimierung der Qualität von Produkten und Dienstleistungen ist. Dies erfolgt durch eine kontinuierliche Evaluierung und gegebenenfalls Modifikation der internen Prozesse einer Organisation. #acrs("ISO") 9000 definiert grundlegende Begriffe und Definitionen, die in #acrs("ISO") 9001 verwendet werden. Dadurch wird gewährleistet, dass alle Anwender über ein einheitliches Verständnis der verwendeten Begriffe und Konzepte verfügen. 

#pagebreak()

=== Qualitätsmanagementsystem
Ein Bestandteil des #acrs("QM") ist die Implementierung eines #acrs("QMS"). 
Ein #acrs("QMS"), wie es in der #acrs("ISO") 9001 definiert ist, stellt ein formales System dar, welches die Organisationsstruktur, Prozesse und Ressourcen umfasst. Die Umsetzung der genannten Kriterien ist erforderlich, um die Qualitätsziele zu erreichen. @iso9001de 
Gemäß #acrs("ISO") befolgen #acrs("QMS") die Struktur des #acrs("PDCA"), auch Shewhart- oder Deming-Zyklus gennant. Der Physiker Walter A. Shewhart entwickelte diesen Zyklus im Jahre 1939 für die Qualitätskontrolle in der Produktion der Firma Bell Telephone Laboratories. In seinem Buch "Statistical Method from the Viewpoint of Quality Control" beschrieb Shewhart den ursprünglichen Zyklus so: 

#set quote(block: true)
#quote(["These three steps must go in a circle instead of in a straight line ... In this sense, specification, production and inspection correspond respectively to making a hypothesis, carrying out an experiment, and testing the hypothesis. The three steps constitute a dynamic scientific process of acquiring knowledge" @moen2009pdca])

Der seinerzeit implementierte Zyklus umfasste lediglich drei Phasen : "Specification", "Production" und "Inspection". In den 1950er Jahren erfolgte eine Ergänzung und Weiterentwicklung des Zyklus durch W. Edwards Deming, dem damaligen Editor Shewharts @moen2009pdca. Die ursprünglichen drei Bestandteile wurden in "Plan", "Do" und "Check" umbenannt und die Phase "Act" eingeführt, wodurch der ursprünglich statische Prozess in einen dynamischen und zyklischen Prozess transformiert wurde.
@fig-PDCA veranschaulicht die entsprechende Idee des #acrs("PDCA").

#figure(caption: [Der Plan-Do-Check-Act Zyklus @qmscycle23], image(width: 10.1cm, "figures/PDCA Cycle 1994.png"))<fig-PDCA>


Der #acrs("PDCA") umfasst die folgenden vier Phasen, die in einem kontinuierlichen Kreislauf durchlaufen werden:

1. Plan: In dieser Phase erfolgt die Definition von Zielen sowie die Planung der erforderlichen Maßnahmen zu deren Realisierung. Dies umfasst die Analyse von Daten sowie die Entwicklung von Hypothesen.
2. Do: Die geplanten Schritte werden in der vorgesehenen Weise durchgeführt, wobei die Umsetzung als Experiment im wissenschaftlichen Sinne zu betrachten ist. Die Durchführung erfolgt unter kontrollierten Bedingungen, sodass eine valide Evaluation gewährleistet werden kann.
3. Check: In dieser Phase erfolgt eine Evaluierung der Ergebnisse der Umsetzung, welche mit den zuvor definierten Zielen verglichen wird. Dieser Prozess kann als Test der aufgestellten Hypothese bezeichnet werden. Ziel ist die Identifizierung etwaiger Abweichungen.
4. Act: Die Resultate der Evaluierung dienen als Grundlage für die Implementierung von Modifikationen und Optimierungen. Dieser Schritt stellt den Abschluss des Zyklus dar und ebnet den Weg für eine erneute Durchlaufphase.

Deming zufolge basiert das Konzept des #acrs("PDCA") auf einer systematischen und iterativen Vorgehensweise, welche eine fortlaufende Verbesserung von Prozessen sowie eine kontinuierliche Anpassung an veränderte Bedingungen und Anforderungen ermöglicht.  @moen2009pdca.

Ein #acrs("QMS") gemäß #acrs("ISO") 9001 verwendet eine dem #acrs("QM") angepasste Form des #acrs("PDCA"). Die #acrs("ISO") 9001 umfasst zehn Klauseln, wobei die ersten drei den Anwendungsbereich, normative Verweisungen und Begriffsbestimmungen behandeln. Die folgenden sieben Klauseln werden in @fig-pdcaiso9001 anhand des angepassten #acrs("PDCA") näher beschrieben.

#figure(caption: [Plan-Do-Check-Act Cycle für Qualitätsmanageme @iso9001de], image(width: 13cm, "figures/ISO9001PDCA.png"))<fig-pdcaiso9001>

Die erste Phase des #acrs("PDCA"), "Plan", umfasst die Klauseln vier bis sechs. Die vierte Klausel „Understanding the Organization and Its Context“ thematisiert den Kontext der Organisation, wobei sowohl interne als auch externe Faktoren zu berücksichtigen sind. Es ist von entscheidender Bedeutung, dass die Organisation den Kontext, in dem sie sich befindet, vollständig erfasst und alle relevanten internen sowie externen Einflussfaktoren berücksichtigt. Die fünfte Klausel „Leadership“ ist von zentraler Bedeutung und bildet das Fundament des Systems, da die Führungskräfte darin die Vision und Richtung vorgeben, auf deren Basis die weiteren Elemente aufbauen. Die sechste Klausel „Planning“ umfasst die Festlegung von Maßnahmen zur Bewältigung von Risiken und Nutzung von Chancen sowie die Definition von Qualitätszielen und die Planung von Änderungen. @iso9001de

Die zweite Phase, "Do", umfasst die Klauseln 7 und 8 der ISO 9001. Gegenstand der siebten Klausel, der sogenannten „Support“-Klausel, ist die Auseinandersetzung mit der Bereitstellung von Ressourcen, Kompetenzen, Bewusstsein, Kommunikation und dokumentierten Informationen. In dieser Phase erlangen die Bereitstellung der erforderlichen Ressourcen sowie die Umsetzung der geplanten Maßnahmen eine entscheidende Bedeutung. Die achte Klausel "Operation" umfasst die operative Planung und Steuerung sowie die eigentliche Durchführung der Produktions- und Dienstleistungsprozesse. In dieser Phase erfolgt die Festlegung der Kriterien für die zu erbringenden Leistungen sowie die Auswahl und Überwachung externer Lieferanten. Zudem wird die Durchführung der Produktions- oder Dienstleistungsprozesse selbst sichergestellt, wodurch gewährleistet wird, dass die Produkte und Dienstleistungen den zuvor festgelegten Anforderungen entsprechen und die operativen Tätigkeiten in einer kontrollierten Art und Weise ablaufen. @iso9001de

Die dritte Phase, "Check", wird durch Klausel 9, "Performance evaluation", definiert. Diese umfasst die Bewertung der Leistung, welche die Überwachung, Messung, Analyse und Bewertung des #acrs("QMS")-Leistung beinhaltet. Dies beinhaltet ebenfalls interne Audits und Managementbewertungen. @iso9001de

Die vierte Phase, "Act", ist in Klausel 10, "Improvement", geregelt. Gegenstand dieser Klausel ist die kontinuierliche Verbesserung, die Behandlung von Korrekturmaßnahmen sowie das Management von Nichtkonformitäten. In der Act-Phase werden auf Basis der Ergebnisse der Check-Phase notwendige Verbesserungsmaßnahmen abgeleitet. @iso9001de

Ein Qualitätsmanagementsystem gemäß ISO 9001 stellt einen dynamischen Prozess dar, der eine kontinuierliche Überwachung und Verbesserung erfordert. Die Norm ermöglicht eine systematische Herangehensweise zur Erreichung und Aufrechterhaltung hoher Qualitätsstandards, indem sie diese in die Phasen des PDCA-Zyklus strukturiert. Dies fördert nicht nur die Kundenzufriedenheit, sondern trägt auch zur langfristigen Wettbewerbsfähigkeit und Effizienzsteigerung der Organisation bei. @iso9001de

=== Software-Qualität

Die Qualität von Softwareprodukten ist ein entscheidender Faktor für den Erfolg eines Unternehmens. Die #acrs("ISO") 25000 definiert Softwarequalität als:


#pagebreak()

== Der Prozessansatz
@iso9000de

#pagebreak()

=== Methoden zur Identifikation von Schwachstellen
Capability Maturity Model Integration

== Software Qualität

== Entwicklungs-, Test- und Release-Prozesse
CICD CYCLE SCHAUBILD 
== Kleine und mittlere Unternehmen
=== Erhebung und Dokumentation 
Dokumentationspflicht gegenüber Auftraggebern
// Reihenfolge der Kapitel überdenken.




= Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse <analyse>

== Mitarbeiterumfrage 
- Was, warum? Als Anhang hinzufügen.
- Wie kommen sie mit der priorisierung von Aufgaben zurecht
- Wie kommen sie mit der definition von aufgaen zurecht?
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

= Vorschläge zur Prozessoptimierung <prozessoptimierung>
Basierend auf den Ergebnissen der Mitarbeiterumfrage, der Analyse, sowie den Industriestandards
== Identifikation und Priorisierung von Verbesserungspotenzialen
== Anpassung der Vorschläge auf die Bedürfnisse kleiner und mittlerer Unternehmen
== Kosten-Nutzen-Analyse der vorgeschlagenen Maßnahmen 

= Schlussfolgerung und Ausblick <schlussfolgerung> 
== Zusammenfassung der wichtigsten Erkenntnisse
== Ausblick auf zukünftige Aufgaben und Herausforderungen
// TODO: Vorstellung möglicher software tools (nächste PA).

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