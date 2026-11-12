---
title: "{{ replace .Name "-" " " | title }}"
date: "{{ .Date }}"
author: <AUTHOR>
event_type: talk
event_date:  <EVENT_DATE>T18:00:00+02:00
event_start: <EVENT_DATE>T18:30:00+02:00
event_host: XXXXXXXXXXXX
event_lang: "de" oder "en"
event_seats: XXXXXXXX
event_speaker:
  - XXXXXXXX
  - YYYYYYYY

meetup_signup_url: http://meetup.com/jug-bb/<XXXXXXXXX>
---

The Java User Group Berlin-Brandenburg and our partner [NAME_PARTNER](HOME_PAGE_URL) invite you to the talk **YYYYY** by SPEAKER on **month the 13th, YYYY.

oder 

Am **<DATUM>**, lädt die Java User Group Berlin-Brandenburg und [NAME_PARTNER](HOME_PAGE_URL) zum Vortrag **{{ replace .Name "-" " " | title }}** mit <SPEAKER:IN> ein.

<!--more-->
## The Talk

**Titel** (_Speaker:in_):

oder 

## Der Vortrag

**Titel** (_Speaker:in_): 

abstract

{{% comment %}}
Kurzbiografie der Redner oder des Redners
{{% /comment %}}

## The Speaker / The Speakers

oder 

## Der Redner / Die Rednerin / Die Redner

{{< speaker initials="SM" >}}
bio
{{< /speaker >}}

{{% comment %}}
Abschnitt zum Treffpunkt
{{% /comment %}}


## Der Treffpunkt

oder

## The Location

{{< location >}} 
Firma
Adresse
Google-Maps-Adresse 
{{< /location >}}

{{% comment %}}
Das Programm des  Abends

* Hier darauf achten, dass das Programm zeitlich korrekt ist.
  Manchmal gibt es zeitlich abweichende Veranstaltungen
{{% /comment %}}

## The Program

{{< agenda >}}
- 18:30 Doors open
- 19:00 Start of the talk
{{< /agenda >}}

Afterward, there will be time for networking and a chat.

ODER

## Der Ablauf

{{< agenda >}}
- 18:30 Beginn des Vortrags
- 19:00 Beginn des Vortrags
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

{{% comment %}}
Anmeldung
{{% /comment %}}

## The Registration

We would appreciate it if you could pre-register for the event via the [JUG Berlin-Brandenburg Meetup Group](https://www.meetup.com/jug-bb/), but registration is not mandatory.
We look forward to seeing everyone.

oder 

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](http://meetup.com/jug-bb/) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich. Wir freuen uns auf jeden Teilnehmer.
