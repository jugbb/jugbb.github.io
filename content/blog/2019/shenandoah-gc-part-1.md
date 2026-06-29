---
title: Shenandoah GC Part I
date: 2019-09-03 12:00:00
author: Oliver B. Fischer

todo: yes

event_type: talk
event_date: 2019-09-17T18:30:00+02:00
event_start: 2019-09-17T19:00:00+02:00
event_host: innoQ Deutschland
event_lang: en
event_speaker:
  - Aleksey Shipilëv

meetup_signup_url: http://meetup.com/jug-bb/
---

Am **Dienstag, den 17. September 2019** lädt die Java Usergroup Berlin-Brandenburg und [INNOQ](https://www.innoq.com) zum ersten Teil des Vortrags **Shenandoah GC** mit [Aleksey Shipilëv](https://shipilev.net/) ein.
Der zweite Teil des Vortrags wird am 24. September 2019 gehalten werden.

<!--more-->
## Der Vortrag

**Shenandoah GC** (_Aleksey Shipilëv_)

The major problem for large Java applications is G... (wait for it...) C pauses.
Large heaps storing lots of live data, the failure to adhere to generational hypothesis, fragmentation due to old objects coming and going, exacerbate the issues even more.
OpenJDK GCs managed to solve the first large part of the puzzle, concurrent marking — the ability to estimate the object reachability graph without stopping the application for a long time.
Shenandoah is the new low-pause collector that tries to solve the second large part of the puzzle — the ability to move the objects without stopping the application, cutting the GC pauses even more.
This talk is the basic introduction in Shenandoah's design choices, important internal details, performance benefits and trade-offs.

## Der Redner

{{< speaker initials="AS" >}}
**Aleksey Shipilëv** is working on Java performance for 10+ years.
Today he is employed by Red Hat, where he does OpenJDK development and performance work.
Aleksey develops and maintains a number of OpenJDK subprojects, including JMH, JOL, and JCStress.
He is also an active participant in expert groups and communities dealing with performance and concurrency.
Prior joining Red Hat, Aleksey was working on Apache Harmony at Intel, then moved to Sun Microsystems, which was later consumed by Oracle.
{{< /speaker >}}


## Der Treffpunkt

{{< location >}}
innoQ Deutschland GmbH
Ohlauer Str. 43,  Treppenhaus C, 2. OG, 10999 Berlin
{{< /location >}}

## Der Ablauf

{{< agenda >}}
- 18:30 Einlass
- 19:00 Beginn des Vortrags
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](http://meetup.com/jug-bb/) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich.
Wir freuen uns auf jeden Teilnehmer.
