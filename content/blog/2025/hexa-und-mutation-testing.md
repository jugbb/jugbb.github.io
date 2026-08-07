---
title: "Hexagonale Architektur und Mutation Testing"
date: 2025-02-01T00:00:00+01:00
author: Oliver B. Fischer
event_type: talk
event_date: 2025-03-06T18:30:00+01:00
event_start: 2025-03-06T19:00:00+01:00
event_host: Europace
event_lang: de
event_seats: 80
event_speaker:
  - Sven Woltmann
  - Dehla Sokenou

meetup_signup_url: https://www.meetup.com/jug-bb/events/306016433/
---

Am **Donnerstag, dem 6. März 2025**, lädt die Java User Group Berlin-Brandenburg und [Europace AG](https://www.europace.de) zu zwei Vorträgen ein.

<!--more-->

## Die Vorträge

**Hexagonale Architektur: Robuste Software dank Schnittstellen statt Schichten** (_Sven Woltmann_)

Wir alle kennen diese Situation: Je älter und größer eine Anwendung wird, desto aufwendiger und teurer wird es, sie zu erweitern und zu warten. 
Die verbreitete Schichtenarchitektur ist als Lösungsansatz unzureichend: Direkte und indirekte Abhängigkeiten aller Schichten zur Datenbank und anderen Infrastrukturkomponenten führen oft zu einer Aufweichung der Schichtengrenzen und einer Verflechtung von technischem und fachlichem Code.

Hexagonale Architektur rückt die Geschäftslogik ins Zentrum, und technische Details werden als Adapter hinter Schnittstellen (Ports) isoliert. 
Fachlicher und technischer Code kann so unabhängig voneinander entwickelt und getestet werden.
Ausgehend von den Zielen einer Softwarearchitektur und einem kritischen Blick auf die Schichtenarchitektur, schauen wir uns die hexagonale Architektur im Detail an. 
Ihr erfahrt, wie die Dependency Rule sicherstellt, dass es keine Abhängigkeiten von fachlichem zu technischem Code gibt und wie der Anwendungskern trotzdem auf die Infrastruktur zugreifen kann. 
Erfüllt die hexagonale Architektur die Ziele einer Softwarearchitektur? 
Welche Herausforderungen bringt sie mit sich? 
Wie unterscheidet sie sich von Onion und Clean Architecture, und welche Synergien ergeben sich im Zusammenspiel mit Microservices und Domain-Driven Design?
Mit neuem Wissen gerüstet, könnt ihr die Qualität und Lebensdauer eurer Softwareprojekte steigern und in Zukunft schneller auf neue Anforderungen reagieren.

**Mutationstests – wieso, weshalb, warum?** (_Dehla Sokenou_)

Mutationstests sind eigentlich ein altes Konzept, das lange in einer Schublade lag. 
Ein Grund für den zurückhaltenden Einsatz war der hohe Rechenaufwand. 
Mit verbesserten Werkzeugen und der heute verfügbaren Rechenleistung sind sie inzwischen dabei, sich als fester Teil der Softwareqqualitätssicherung zu etablieren.
Die Integration in eine Buildpipeline ist einfach, aber verlangsamt diese auch enorm. 
Wenn dann niemand auf das Ergebnis schaut oder es interpretieren kann, helfen sie nicht.
Im Vortrag wird die grundlegende Technik hinter Mutationstests erläutert und anhand von Beispielen aus einem Kotlin-Projekt gezeigt, welche zusätzlichen Findings Mutationstests aufdecken können, selbst wenn der Code zu nahezu 100% durch Tests ist.

## Die Redner

{{< speaker initials="SW" >}}
**Sven Woltmann** ist Java-Entwickler der ersten Stunde. 
Er arbeitet als unabhängiger Entwickler, Trainer und Kursleiter mit Schwerpunkt auf skalierbaren Unternehmensanwendungen, Optimierung von Algorithmen, Clean Code und Clean Architecture. 
Er teilt sein Wissen über Java, Architektur, Algorithmen und Datenstrukturen in Videos, seinem Newsletter und seinem Blog [happycoders.eu](https://www.happycoders.eu)
{{< /speaker >}}

{{< speaker initials="DS" >}}
Dr.-Ing. **Dehla Sokenou** promovierte 2005 an der TU Berlin über UML-basiertes Testen. 
Sie fühlt sich in allen Phasen der Softwareentwicklung zu Hause, einen besonderen Schwerpunkt bilden allerdings auch weiterhin alle Themen rund um Qualitätssicherung und Testen. 
Bei der WPS ist sie als Test- und Qualitätsmanagerin sowie Softwarearchitektin tätig. 
Daneben ist sie Sprecherin der GI-Fachgruppe Test, Analyse und Verifikation von Software (TAV) und im Sprechergremium des Arbeitskreises Innovative Testmethoden.
{{< /speaker >}}

## Der Treffpunkt

{{< location >}}
Europace AG
Heidestraße 8, 10557 Berlin
https://www.google.com/maps/place/Europace+AG/@52.5299083,13.3691551,17z/data=!3m1!4b1!4m6!3m5!1s0x47a84e21814bc7ed:0x9111d1822f54edbb!8m2!3d52.5299083!4d13.3691551!16s%2Fg%2F11fkqy0nst?entry=ttu
{{< /location >}}

## Der Ablauf

{{< agenda >}}
- 18:30 Einlass
- 19:00 Beginn der Vorträge
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](https://www.meetup.com/jug-bb/events/306016433/) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich.
Wir freuen uns auf jeden Teilnehmer.
