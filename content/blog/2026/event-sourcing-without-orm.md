---
title: "Event Sourcing: Simpler Persistence Without ORMs"
date: 2026-11-03T22:55:00+01:00
author: 
event_type: talk
event_date:  2026-11-10T18:30:00+02:00
event_start: 2026-11-10T19:00:00+02:00
event_host: "n/a"
event_lang: en
event_seats: "n/a"
event_speaker:
  - Ted M. Young
meetup_signup_url: https://www.meetup.com/jug-bb/events/317277437
---

<!-- 
todo Partner einsetzen, sobald bekannt.
our partner [codecentric](https://www.codecentric.de/)
-->
The Java User Group Berlin-Brandenburg and invites you to the talk **Event Sourcing: Simpler Persistence Without ORMs** by Ted M. Young on **November the 10th, 2026**.

<!--more-->
## The Talk

**Event Sourcing: Simpler Persistence Without ORMs** (_Ted M. Young_): 

Event Sourcing is not just a different way to persist data, but a different way of thinking about data. 
With ORMs like Hibernate, we have to consider query performance, fetch strategies, mapping domain models to database schemas, caching, etc. 
With Event Sourcing, we can use a few simple patterns to build our systems:

* Commands: user actions representing an intention, e.g., "Buy Concert Ticket"
* Events: meaningful changes to state as a result of executing Commands, e.g., "Ticket Purchased"
* Read Models: up-to-date views of Events, derived specifically for a particular way of looking at the data, e.g., "My Tickets", or "All Ticket Sales"

Need caching for the ticket sales report? 
That’s a Read Model. 
Display tickets for a Customer? 
That’s another Read Model, using the same principles to derive the desired view of state. 
Performance isn’t an issue, as replaying events is very fast. 
Even in a system with millions or billions of events, we only need to replay events related directly to a specific entity or state view.

You’ll see what makes Event Sourcing a mindshift rather than just a different persistence mechanism: updates are just appends to a log, mapping objects is no longer needed, and you keep the history of changes to data, so you can always know what happened and ask questions you didn’t expect to have.


## The Speaker

{{< speaker initials="TY" >}}
**Ted M. Young** is a Java technical coach and live coder. 
He's been in software development for over 30 years, following eXtreme Programming practices since 2000. 
Ted loves helping folks make their code more testable and teaches Test-Driven Development (TDD), Refactoring, Domain-Driven Design, and Event Sourcing through hands-on, shared experiences. 
Ted created the acclaimed "JitterTed's TDD Game" used at events and companies worldwide to help people understand the nuances and benefits of TDD in a fun way.
{{< /speaker >}}



## The Location

We are currently looking for a host for this event. 
If you would like to be the host of this talk, please send a [mail](mailto:hallo@jug-berlin-brandenburg.de).

<!-- todo Location
{{< location >}} 
Firma
Adresse
Google-Maps-Adresse
{{< /location >}}
-->

## The Program

{{< agenda >}}
- 18:30 Open Doors
- 19:00 Official Opening
- 19:05 Talk – Event Sourcing: Simpler Persistence Without ORMs by Ted M. Young
- 20:00 Q&A
- 20:30 Doors Close
{{< /agenda >}}

Afterward, there will be time for networking and a chat.

## The Registration

We would appreciate it if you could pre-register for the event via the [JUG Berlin-Brandenburg Meetup Group](https://www.meetup.com/jug-bb/), but registration is not mandatory.
We look forward to seeing everyone.
