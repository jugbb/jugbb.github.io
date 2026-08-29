---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: <AUTHOR>
event_type: talk
event_date:  <EVENT_DATE>18:00:00+02:00
event_start: <EVENT_DATE>T18:30:00+02:00
event_host: XXXXXXXXXXXX
event_lang: de/en/??
event_seats: XXXXXXXX
event_speaker:
  - XXXXXXXX
  - YYYYYYYY

meetup_signup_url: http://meetup.com/jug-bb/<XXXXXXXXX>
---

The Java User Group Berlin-Brandenburg and our partner XXXXX invite you to the talk **YYYYY** by YYYY on **month the 13th, YYYY.

oder 
Am **<DATUM>**, lädt die Java User Group Berlin-Brandenburg und <PARTNER> zum Vortrag **{{ replace .Name "-" " " | title }}** mit <SPEAKER:IN> ein.

<!--more-->
## The Talk

oder 

## Der Vortrag

**Titel** (_Speaker:in_): 

abstract

## The Speaker

oder 

## Der Redner / Die Rednerin

{{< speaker initials="SM" >}}
bio
{{< /speaker >}}


## Der Treffpunkt

oder

## The Location

{{< location >}} 
Firma
Adresse
Google-Maps-Adresse 
{{< /location >}}

## The Program

{{< agenda >}}
- 18:30 Doors open
- 19:00 Start of the talk
{{< /agenda >}}
- 
Afterwards there will be time for networking and a chat.

ODER

## Der Ablauf

{{< agenda >}}
- 18:30 Beginn des Vortrags
- 19:00 Beginn des Vortrags
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## The Registration

We would appreciate it if you could pre-register for the event via the [JUG Berlin-Brandenburg Meetup Group](https://www.meetup.com/jug-bb/), but registration is not mandatory.
We look forward to seeing everyone.

oder 

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](http://meetup.com/jug-bb/) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich. Wir freuen uns auf jeden Teilnehmer.
