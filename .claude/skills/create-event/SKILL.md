---
name: create-event
description: Erstellt eine Hugo-Veranstaltungsseite aus einer Meetup-URL. Nutze diesen Skill, wenn eine neue JUG-Veranstaltungsseite auf Basis einer Meetup-Einladung angelegt werden soll.
argument-hint: <meetup-url>
allowed-tools: WebFetch(domain:www.meetup.com) Bash(mkdir *)
---

# Veranstaltungsseite aus Meetup-URL erstellen

## Schritt 1: Meetup-Seite abrufen

Rufe `$ARGUMENTS` mit `WebFetch` ab und extrahiere:
- Veranstaltungstitel
- Datum und Uhrzeiten (Einlass und Beginn des Vortrags)
- Veranstaltungsort (Firmenname, Straße, PLZ, Stadt)
- Sprache des Vortrags (Deutsch oder Englisch — erkennbar am Titel oder Beschreibungstext)
- Anzahl Plätze (falls angegeben, sonst `"n/a"`)
- Name(n) der Sprecherinnen
- Abstract(s) der Vorträge
- Bio(s) der Sprecher
- Initialen der Sprecher (erster Buchstabe Vorname + erster Buchstabe Nachname, z. B. `FS` für "Falk Sippach")

Falls einzelne Informationen auf der Meetup-Seite fehlen (z. B. Speaker-Bio), setze Platzhalter: `<!-- TODO: Bio ergänzen -->`.

## Schritt 2: Dateinamen und Pfad bestimmen

- Jahresverzeichnis: `content/blog/<YYYY>/` (Jahr aus dem Veranstaltungsdatum)
- Dateiname: Slug aus dem Veranstaltungstitel — alles Kleinbuchstaben, Leerzeichen und Sonderzeichen durch `-`, Umlaute ersetzen (ä→ae, ö→oe, ü→ue, ß→ss), max. ~60 Zeichen, Endung `.md`.
  - Beispiel: `data-contracts-und-ausfuehrbare-dokumentation.md`

Lege das Verzeichnis ggf. mit `Bash(mkdir -p ...)` an.

## Schritt 3: Frontmatter aufbauen

```yaml
---
title: "<Veranstaltungstitel>"
date: <YYYY-MM-DD>T00:00:00+02:00
author: Oliver B. Fischer
event_type: talk
event_date:  <YYYY-MM-DD>T<HH:MM>:00+02:00
event_start: <YYYY-MM-DD>T<HH:MM>:00+02:00
event_host: <Firmenname des Veranstaltungsorts>
event_lang: <de|en>
event_seats: <Anzahl oder "n/a">
event_speaker:
  - <Vollständiger Name des ersten Sprechers>
  - <Vollständiger Name des zweiten Sprechers, wenn es mehr als einen Sprecher gibt>

meetup_signup_url: <meetup-url>
---
```

Hinweise:
- `date` = Veranstaltungsdatum mit Uhrzeit `00:00:00`
- `event_date` = Einlassuhrzeit, `event_start` = Beginn des Vortrags
- Zeitzone: `+02:00` (Sommerzeit Apr–Okt), `+01:00` (Winterzeit Nov–Mär)
- Bei mehreren Sprecher:innen jeden Namen als eigenen Listeneintrag

## Schritt 4: Inhalt aufbauen

- Die Sprache des Inhalts richtet sich nach `event_lang`.
- Nutze nur Inhalte, die auf der Meetup-Seite zu finden sind. 
- Nutze niemals andere Quellen als Meetup-Seite, um fehlende Inhalte zu ergänzen. 
- Stellen, für die keine Inhalte auf der Meetup Seite gefunden werden können, markiere mit einem Kommentar
- Prüfe bei der Erstellung der Inhalte, ob die Agenda, auch als Program für die Veranstaltung bezeichnet, weitere Einträge enthält, die nicht in den Vorlagen enthalten sind. Falls dem so ist, füge sie dem Abschnitt "Der Ablauf" hinzu.

**Deutsch (`event_lang: de`):**

```markdown
Am **<Wochentag>, dem <Tag>. <Monat ausgeschrieben> <Jahr>**, laden die Java User Group Berlin-Brandenburg und <Partnerfirma> zum Vortrag **<Titel>** mit <Sprecher> ein.

<!--more-->

## Der Vortrag

**<Titel>** (_<Sprecher:in>_)

<Abstract>

## Der Redner / Die Rednerin

{{< speaker initials="<XX>" >}}
<Bio>
{{< /speaker >}}

## Der Treffpunkt

{{< location >}}
<Firmenname>
<Straße und Hausnummer>, <PLZ> <Stadt>
<URL zur Adresse des Veranstaltungsorts auf Google-Maps>
{{< /location >}}

## Der Ablauf

{{< agenda >}}
- <HH:MM> Einlass
- <HH:MM> Beginn des Vortrags
{{< /agenda >}}

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## Die Anmeldung

Über eine Voranmeldung zu der Veranstaltung über die [Meetup-Gruppe der JUG Berlin-Brandenburg](<meetup-url>) würden wir uns freuen, jedoch ist die Anmeldung nicht zwingend erforderlich.
Wir freuen uns auf jeden Teilnehmer.
```

**Englisch (`event_lang: en`):**

```markdown
The Java User Group Berlin-Brandenburg and our partner <Partner> invite you to the talk **<Title>** by <Speaker> on <Month> the <Day>th, <Year>.

<!--more-->

## The Talk

**<Title>** (_<Speaker>_)

<Abstract>

## The Speaker

{{< speaker initials="<XX>" >}}
<Bio>
{{< /speaker >}}

## The Location

{{< location >}}
<Company>
<Street>, <ZIP> <City>
{{< /location >}}

## The Program

{{< agenda >}}
- <HH:MM> Doors open
- <HH:MM> Start of the talk
{{< /agenda >}}

Afterwards, there will be time for networking and a chat.

## The Registration

We would appreciate it if you could pre-register for the event via the [JUG Berlin-Brandenburg Meetup Group](<meetup-url>), but registration is not mandatory.
We look forward to seeing everyone.
```

Bei **mehreren Vorträgen** verwende `## Die Vorträge` / `## The Talks` mit je einem Block pro Vortrag, und `## Die Redner` / `## The Speakers` mit je einem `{{< speaker >}}`-Block.

## Schritt 5: Datei anlegen

Schreibe die fertige Datei mit dem `Write`-Tool.

## Schritt 6: Abschlussmeldung

Gib eine kurze Zusammenfassung aus:
- Pfad der erstellten Datei
- Extrahierte Eckdaten (Datum, Sprecher:innen, Ort)
- Felder, die manuell nachgepflegt werden müssen
