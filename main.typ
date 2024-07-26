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

// Edit this content to your likings

= Einleitung

Das Qualitätsmanagement (#acrs("QM")) hat sich als eine fundamentale Disziplin etabliert, deren Ziel es ist, die Qualität von Produkten und Dienstleistungen kontinuierlich zu gewährleisten und zu optimieren. Die historische Entwicklung von #acrs("QM") verdeutlicht, dass ein signifikanter Wandel von der handwerklichen Einzelanfertigung bis zur heutigen Massenproduktion und Dienstleistungsorientierung stattgefunden hat @iso9001de. In seiner Doktorarbeit "Handwerk in der postindustriellen Gesellschaft...Leipzig" beschreibt Tobias Werner, dass in der Zeit vor dem 20. Jahrhundert die Sicherung der Qualität handwerklicher Produkte in erster Linie durch den jeweiligen Meister erfolgte, der die Verantwortung für die Endqualität der hergestellten Waren trug. Diese Vorgehensweise wurde mit der industriellen Revolution und der damit einhergehenden Massenproduktion jedoch zunehmend als unzureichend erachtet, sodass erste Ansätze zur systematischeren Qualitätskontrolle entwickelt wurden @handwerk2014. 

Die Automobilindustrie kann als Vorreiterin bei der Einführung von Qualitätsmanagementsystemen (#acrs("QMS")) bezeichnet werden. Die Motivation hierfür resultiert aus dem Bestreben, sowohl die Produktqualität als auch die Sicherheit zu erhöhen. Die Normenreihe "ISO 9000", etabliert von der International Organization for Standardization (#acrs("ISO")) in den 1980er Jahren, markierte einen Wendepunkt, indem sie weltweit anerkannte Standards für #acrs("QMS") setzte @iso9000de. Die Konzeptedes "Plan-Do-Check-Act-Cycle (#acrs("PDCA")) " des "Process Approach (#acrs("PA"))",  haben in diesem Kontext maßgeblich zur Entwicklung beigetragen und genießen bis heute weltweit Anerkennung. Diese Prinzipien bilden unter anderem die Grundlage für nationale Gesetzgebungen sowie Unternehmensstandards und werden unter anderem eingesetzt, um die Effizienz zu steigern, die Kundenzufriedenheit zu erhöhen, die Wettbewerbsfähigkeit zu verbessern und die Einhaltung gesetzlicher Anforderungen sicherzustellen @iso9001de.
#pagebreak()

Die Implementierung eines formalen #acrs("QMS") stellt für kleine und mittlere Unternehmen #acrs("KMU") eine signifikante Herausforderung dar. Der Mangel an notwendigen finanziellen Mitteln und verantwortlichen Personen führt dazu, dass ein wirksames #acrs("QMS") in diesen Unternehmensformen oft nicht etabliert werden kann. Infolgedessen kann es in diesen Unternehmen an einer etablierten Qualitätskultur sowie an dem notwendigen Engagement für das #acrs("QM") fehlen.
In diesem Kontext ist auf den "QM-Leitfaden für kleine und mittlere Unternehmen" des Bayerischen Staatsministeriums für Wirtschaft und Medien, Energie und Technologie zu verweisen, in dem betont wird, dass:

#set quote(block: true) 
#quote["Mit der Einführung eines #acrs("QMS") können #acrs("KMU") u.a. die Transparenz betrieblicher Abläufe erhöht, die Fehlerquoten und somit die Kosten reduziert, höhere Kundenzufriedenheit erzielt, der Marktzugang verbessert und potenzielle Risiken aufgrund von Nichtkonformitäten gesenkt werden."@qm2015]  

Die Implementierung eines #acrs("QMS") eröffnet #acrs("KMU") demnach die Möglichkeit, ihre internen Prozesse klar zu definieren, potenzielle Fehlerquellen und die damit verbundenen Kosten zu reduzieren. Dies ist insbesondere für KMU von Interesse, da sie mit begrenzten Ressourcen arbeiten und eine effiziente Nutzung dieser ihre Wettbewerbsfähigkeit erhöht. Ein verbessertes QM führt zudem zu höherer Kundenzufriedenheit und erleichtert den Marktzugang, da konsistente und zuverlässige Produkte und Dienstleistungen das Vertrauen der Kunden stärken @qm2015.

Die vorliegende Arbeit verfolgt das Ziel, bestehende Unternehmensprozesse mit anerkannten Normen und Standards zu vergleichen, um mögliche Optimierungspotenziale zu identifizieren. 
Im Rahmen der vorliegenden Arbeit erfolgt eine Analyse und Dokumentation der bestehenden Prozesse des #acrs("KMU") Die Firma ProSystems GmbH entwickelt Softwarelösungen für die Systemintegration in der Gebäudeautomation. Als zertifizierter Entwickler für das Niagara 4 Framework entwickelt das Unternehmen Software, bietet Dienstleistungen und Lösungen an, die die Funktionalität des Frameworks in diversen Aspekten erweitern @prosy170724. Im Rahmen der Analyse sind insbesondere die Entwicklungs-, Test- und Release-Prozesse von Relevanz, da diese einen entscheidenden Einfluss auf die Gesamteffizienz des Unternehmens ausüben. Eine detaillierte Untersuchung dieser Prozesse erlaubt die Identifikation von Stärken und Schwächen sowie die Ableitung von Optimierungspotenzialen. Dies ist von besonderer Bedeutung da optimale Prozesse eine maßgebliche Verbesserung der Qualität von Softwareprodukten bewirken @iso9001de.

Im Folgenden wird das geplante Vorgehen der vorliegenden Arbeit dargelegt und eine Übersicht über die behandelten Themen und Kapitel gegeben: Das nachfolgende Kapitel „Grundlagen und Begriffsdefinitionen” dient der Einführung in die für das Verständnis dieser Arbeit grundlegenden Konzepte. Im Anschluss erfolgt eine Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse im Kapitel „Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse”. Zu Beginn des Prozesses erfolgt eine Befragung der Mitarbeitenden, um deren Meinungen und Erfahrungen mit den bestehenden Prozessen zu erfassen. Daraufhin erfolgt eine Auswertung der Befragung sowie eine formale Erfassung und Darstellung der Entwicklungsprozesse. Das nachfolgende Kapitel, „Vorschläge zur Prozessoptimierung”, basiert auf den Resultaten der durchgeführten Mitarbeiterbefragung, der formalen Analyse sowie auf etablierten Normen und Industriestandards. Im Rahmen dessen erfolgt eine Identifikation und Priorisierung von Verbesserungspotenzialen. Die abgeleiteten Maßnahmen werden daraufhin an die spezifischen Bedürfnisse von ProSystems adaptiert. Das finale Kapitel „Fazit und Ausblick” dient der Zusammenfassung der essenziellen Ergebnisse der Projektarbeit. Darüber hinaus wird ein Ausblick auf potenzielle zukünftige Aufgaben und Herausforderungen gegeben, die sich aus den vorgeschlagenen Optimierungen ergeben können.
// Kapiteltitel und Inhalte anpassen falls sie sich ändern.

= Grundlagen und Begriffsdefinitionen
Das vorliegende Kapitel dient der Erläuterung von Konzepten und Begriffen, die für das Verständnis dieser Arbeit erforderlich sind. Der Fokus liegt dabei auf dem #acrs("QM"), dem daraus entspringedem #acrs("QMS"), Software-Qualitätsanforderungen sowie den spezifischen Anforderungen und Herausforderungen von #acrs("KMU"). Dabei erfolgt eine primäre Orientierung an den Definitionen der #acrs("ISO") in den Normen "#acrs("ISO") 9000 "@iso9000de, "#acrs("ISO") 9001"@iso9001de sowie "#acrs("ISO") 25000"@iso25000en.

== Die Internationale Organisation für Normung
Die #acrs("ISO") wurde 1947 in Genf, Schweiz, gegründet und ist eine internationale Vereinigung nationaler Normungsorganisationen mit derzeit 172 Mitgliedsländern. Insgesamt wird die Organisation von 839 technischen Komitees und Unterkomitees unterstützt und hat bis heute 25.488 internationale Normen herausgegeben (Stand Juli 2024) @isoabout.
#acrs("ISO")-Standards sind Formeln, welche die optimale Vorgehensweise für eine Tätigkeit definieren. Sie werden von internationalen Experten festgelegt und umfassen die Bereiche der Produktfertigung, des Prozessmanagements, der Erbringung von Dienstleistungen sowie der Materialwirtschaft @isostandards. 

Typische Beispiele für von der #acrs("ISO") erarbeitete Standards sind:

- Der MP3-Standard für Audiodateien und Standards für Telefonkarten. Sie spielen eine wichtige Rolle in der Software- und Telekommunikationsindustrie, indem sie die Kompatibilität und Interoperabilität zwischen verschiedenen Systemen und Anwendungen gewährleisten @isopopstandards.

- Ländercodes wie "DE" für Deutschland, "NL" für die Niederlande und "JP" für Japan. Diese Codes sind in vielen internationalen Anwendungen und Datenbanken unverzichtbar, da sie eine einheitliche Identifizierung und Verwaltung von Länderinformationen ermöglichen @isopopstandards.

Diese Beispiele zeigen, dass die #acrs("ISO") durch ihre Normungsarbeit einen bedeutenden Einfluss auf viele Bereiche ausübt, insbesondere auf die Softwareindustrie, indem sie Normen festlegt, die sowohl technische als auch organisatorische Aspekte abdecken.
// Muss ich quellen wie verschiedene Links auf der ISO Website unterscheiden.

== Qualitätsmanagement und Qualitätsmanagementsystem
Eine Diskussion der spezifischen Anforderungen und Herausforderungen eines #acrs("QMS") erfordert eine grundlegende Begriffsklärung. Dabei sind insbesondere die Definitionen der Begriffe "Qualität" und "Management" der #acrs("ISO") von zentraler Bedeutung, da sie internationale Referenzstandards darstellen.

Gemäß #acrs("ISO") 9000:2015 wird Qualität definiert als:
#set quote(block: true)
#quote(["Der Grad, in dem ein Satz inhärenter Merkmale Anforderungen erfüllt."  @iso9000de]) 

Unter „Inhärenten Merkmalen“ werden diejenigen Merkmale eines Produkts, einer Dienstleistung oder eines Prozesses verstanden, die diesem innewohnen. Demgegenüber stehen die „Anforderungen“, welche Bedürfnisse oder Erwartungen widerspiegeln, die in der Regel festgelegt, vorausgesetzt oder verpflichtend sind. Die vorliegende Definition verdeutlicht, dass der Begriff der Qualität nicht als absolut, sondern als relativ zu den jeweils spezifischen Anforderungen zu betrachten ist. In diesem Kontext können die Anforderungen sowohl die Bedürfnisse und Erwartungen der Kundinnen und Kunden als auch gesetzliche und regulatorische Vorgaben sowie weitere, festgelegte Anforderungen umfassen. Die Erfüllung dieser Anforderungen ist von entscheidender Bedeutung für die Zufriedenheit der Kundinnen und Kunden sowie für den Erfolg eines Unternehmens. @iso9000de

Gemäß #acrs("ISO") 9000:2015 wird "Management" definiert als:

#set quote(block: true)
#quote(["Koordinierte Tätigkeiten zum Leiten und Steuern einer Organisation." @iso9000de])
Die angeführte Definition verdeutlicht, dass Management die Aktivitäten umfasst, die notwendig sind, um die Ziele einer Organisation zu erreichen. Dies umfasst die Planung, Organisation, Leitung, Koordination und Kontrolle aller Aktivitäten und Ressourcen. Diese Definition ist wesentlich für das Verständnis von #acrs("QM"), da sie die Notwendigkeit einer systematischen und methodischen Herangehensweise betont, die notwendig ist, um eine Organisation effektiv und effizient zu führen und zu steuern. @iso9000de

#pagebreak()

Die zuvor dargelegten Definitionen bilden in ihrer Kombination die Grundlage für #acrs("QM"). Dieses befasst sich mit der Sicherstellung, dass sämtliche Tätigkeiten innerhalb einer Organisation so geplant und durchgeführt werden, dass sie die festgelegten Anforderungen erfüllen @iso9000de. Ein effektives #acrs("QM") bedingt eine fortwährende Überwachung und Evaluierung der Prozesse und Produkte, um die Einhaltung der definierten Standards sicherzustellen. Dazu zählen regelmäßige Audits sowie Schulungen der Mitarbeitenden, um sicherzustellen, dass alle Organisationsebenen die Qualitätsziele verstehen und darauf hinarbeiten @iso9001de.

 Die in @fig-7qmprinciples dargestellten Konzepte bilden gemäß #acrs("ISO") 9000 das Fundament des #acrs("QM") @iso9000de:

#figure(caption: [7 Prinzipien des Qualitätsmanagements @qm7principles], image(width: 9cm, "figures/The 7 principles of quality management.png"))<fig-7qmprinciples>

#pagebreak()

1. Kundenorientierung: Die Bedürfnisse und Erwartungen der Kunden stellen den Mittelpunkt dar und determinieren die Qualitätsstandards.
2. Führung: Führungskräfte müssen eine klare Vision und Richtung vorgeben, um die Qualitätsziele zu erreichen.
3. Einbeziehung von Personen: Alle Mitarbeitenden sollen einbezogen und motiviert werden, zur Erreichung der Qualitätsziele beizutragen.
4. Prozessorientierter Ansatz: Die Aktivitäten und Ressourcen einer Organisation werden als zusammenhängende Prozesse verstanden, die systematisch verwaltet werden.
5. Verbesserung: Die Organisation verpflichtet sich zu einem fortlaufenden Verbesserungsprozess in allen Bereichen.
6. Faktengestützte Entscheidungsfindung: Die Grundlage für Entscheidungen bildet die Auswertung von Daten und Fakten.
7. Beziehungsmanagement: Die Beziehungen zu Lieferanten werden so gestaltet, dass beide Seiten Vorteile daraus ziehen.

Es kann festgehalten werden, dass der Begriff "#acrs("QM")" eine systematische Vorgehensweise bezeichnet, deren Ziel die Optimierung der Qualität von Produkten und Dienstleistungen ist. Dies erfolgt durch eine kontinuierliche Evaluierung und gegebenenfalls Modifikation der internen Prozesse einer Organisation. #acrs("ISO") 9000 definiert grundlegende Begriffe und Definitionen, die in #acrs("ISO") 9001 verwendet werden. Dies gewährleistet, dass alle Anwender über ein einheitliches Verständnis der verwendeten Begriffe und Konzepte verfügen. 

#pagebreak()

Ein Bestandteil des #acrs("QM") ist die Implementierung eines #acrs("QMS"). 
Ein #acrs("QMS"), wie es in der #acrs("ISO") 9001 definiert ist, stellt ein formales System dar, welches die Organisationsstruktur, Verfahren, Prozesse und Ressourcen umfasst. Die Umsetzung der genannten Aspekte ist erforderlich, um die Qualitätsziele zu erreichen. @iso9001de 
Gemäß #acrs("ISO") befolgen #acrs("QMS") die Struktur des #acrs("PDCA"), auch Shewhart- oder Deming-Zyklus gennant. Der Physiker Walter A. Shewhart entwickelte diesen Zyklus im Jahre 1939 für die Qualitätskontrolle in der Produktion der Firma Bell Telephone Laboratories. 
Der ursprüngliche Zyklus umfasste lediglich drei Phasen (Specification, Production und Inspection):

#set quote(block: true)
#quote(["These three steps must go in a circle instead of in a straight line ... In this sense, specification, production and inspection correspond respectively to making a hypothesis, carrying out an experiment, and testing the hypothesis. The three steps constitute a dynamic scientific process of acquiring knowledge" @moen2009pdca])

In den 1950er Jahren wurde der in diesem Zitat beschriebene Zyklus von W. Edwards Deming ergänzt und weiterentwickelt. Die ursprünglichen drei Bestandteile wurden in "Plan", "Do" und "Check" umbenannt und die Phase "Act" eingeführt, wodurch der ursprünglich statische Prozess in einen dynamischen und zyklischen Prozess transformiert wurde. Der #acrs("PDCA") basiert auf einer systematischen und iterativen Vorgehensweise, die eine fortlaufende Verbesserung von Prozessen und eine kontinuierliche Anpassung an veränderte Bedingungen und Anforderungen ermöglicht. @moen2009pdca

#figure(caption: [Der Plan-Do-Check-Act Zyklus @qmscycle23], image(width: 7cm, "figures/PDCA Cycle 1994.png"))<fig-PDCA>


Wie Der #acrs("PDCA") umfasst die folgenden vier Phasen, die in einem kontinuierlichen Kreislauf durchlaufen werden:

1. Plan: In dieser Phase werden Ziele festgelegt und die notwendigen Schritte zur Erreichung dieser Ziele geplant. Dies beinhaltet die Analyse von Daten und die Entwicklung von Hypothesen.
2. Die geplanten Schritte werden in der vorgesehenen Weise durchgeführt, wobei die Umsetzung als Experiment im wissenschaftlichen Sinne zu betrachten ist. Die Durchführung erfolgt unter kontrollierten Bedingungen.
3. Check: In dieser Phase erfolgt eine Evaluierung der Ergebnisse der Umsetzung, welche mit den zuvor definierten Zielen verglichen wird. Dieser Prozess kann als Test der aufgestellten Hypothese sowie als Analyse der Daten bezeichnet werden, mit dem Ziel, etwaige Abweichungen zu identifizieren.
4. Act: Auf Basis der Resultate der Evaluierung werden erforderliche Modifikationen vorgenommen und Optimierungen implementiert. Dieser Schritt schließt den Zyklus ab und ebnet den Weg für eine erneute Durchlaufphase.

Durch diese systematische und iterative Vorgehensweise ermöglicht der #acrs("PDCA") eine fortlaufende Verbesserung von Prozessen und die kontinuierliche Anpassung an veränderte Bedingungen und Anforderungen. Die Einführung dieses Zyklus durch Deming hatte weitreichende Auswirkungen auf das Qualitätsmanagement und trug maßgeblich zur Entwicklung moderner Managementpraktiken bei @moen2009pdca.

#pagebreak()

#acrs("QMS") sowie wie #acrs("ISO") 9001 sie definiert verwenden eine dem #acrs("QM") angepasste form des #acrs("PDCA"): 

#figure(caption: [Plan-Do-Check-Act Cycle für Qualitätsmanageme @iso9001de], image(width: 13cm, "figures/ISO9001PDCA.png"))
 
#pagebreak()



== Der Prozessansatz
- "Process Approach (#acrs("PA"))", 
- "Plan-Do-Check-Act (#acrs("PDCA")) cycle" 
- Wie wird qualität gemessen? Key performance indicators
=== Methoden zur Identifikation von Schwachstellen
Capability Maturity Model Integration

== Software Qualität

== Entwicklungs-, Test- und Release-Prozesse
CICD CYCLE SCHAUBILD 
== Kleine und mittlere Unternehmen
=== Erhebung und Dokumentation 
Dokumentationspflicht gegenüber Auftraggebern
// Reihenfolge der Kapitel überdenken.




= Analyse der bestehenden Entwicklungs-, Test- und Release-Prozesse

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