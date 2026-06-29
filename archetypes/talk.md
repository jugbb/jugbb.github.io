---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: <AUTHOR>
event_type: talk
event_date:  <EVENT_DATE>18:00:00+02:00
event_start: <EVENT_DATE>T18:30:00+02:00
event_host: XXXXXXXXXXXX
event_lang: de
event_speaker:
  - XXXXXXXX
  - YYYYYYYY

meetup_signup_url: http://meetup.com/jug-bb/<XXXXXXXXX>
---

Am **<DATUM>**, lädt die Java Usergroup Berlin-Brandenburg und <PARTNER> zum Vortrag **{{ replace .Name "-" " " | title }}** mit <SPEAKER:IN> ein.

<!--more-->
## Der Vortrag

**Titel**(_Speaker:in_): 

abstract

## Der Redner / Die Rednerin

bio

## Der Treffpunkt

{{< location >}} 
Firma
Adresse
Google-Maps-Adresse
{{< /location >}}

## Der Ablauf

{{< agenda >}}
- 18:30 Beginn des Vortrags
- 19:00 Beginn des Vortrags
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](http://meetup.com/jug-bb/) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich. Wir freuen uns auf jeden Teilnehmer.
