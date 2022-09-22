---
title: Event Sourcing - You are doing it wrong
date: 2018-10-20
author: Oliver B. Fischer
event_date: 22018-12-06
---

Am **Donnerstag, den 6. Dezember 2018**, lädt die Java Usergroup Berlin-Brandenburg zusammen mit dem [E-Post Tech Talk](https://www.meetup.com/de-DE/eposttechtalk/)
zum Vortrag **Event Sourcing - You are doing it wrong** mit David Schmitz von [Senacor](https://senacor.com/) ein.

_Vortrag auf Deutsch._
<!--more-->
## Der Vortrag

**Event Sourcing - You are doing it wrong**  
(_David Schmitz_): This talk is about staying sane when using eventsouring in your microservices.

Eventsourcing and CQRS are two very useful and popular patterns when dealing with data and microservices. We often find in our customer's projects, that both have a severe impact on your future options and the maintainability of your architecture. Presentations and articles on both topics are often superficial and do not tackle real world problems like security and compliance requirements.

This combination of half-knowledge and technical confusion leads to many projects that either refactor back to a 'non-eventsourced' architecture or reduce eventsourcing to a message queue.

In this talk, I will summarize our experience while applying eventsourcing and CQRS accros multiple large financial and insurance companies over the last 5 years. We will cover the _Good_, the _Not so Good_, and the _'oh my god...all abandon ships!'_ when doing eventsourcing in the real world... and see how we solved these issues.

* Introduction to eventsourcing and CQRS - which problems does ES solve, why do we need it * Your eventstore is not a message queue - why mixing both up is bad for you
* No, Kafka is not an eventsource - choosing the right tool
* Read models are overrated - why you should not start with readmodels
* GDPR, compliance and eventsourcing - what happens if you delete data from an immutable structure
* Transactions, concurrency and your eventsource - why serial writers are bad and how to handle consistency
* Versions, up-front-design and breaking things down the road - how to evolve eventsourced architectures

## Der Redner

**David Schmitz** is a consulting architect, programmer, coach, building applications for various rather large financial institutes and insurance companies for more than 15 years. Since greenfield projects are rare and precious, I have been using various tech stacks ranging from WS-* with EJBs to HapiJS on Node.

## Treffpunkt

E-Post Development GmbH,  
Ehrenbergstr. 11-14,  
10245 Berlin

## Der Ablauf

- 18:30 Uhr Einlaß
- 19:00 Uhr Beginn des Vortrags

Anschließend gibt es die Möglichkeit für Networking und Plausch.

## Die Anmeldung

Dies ist eine Kooperationsveranstaltung mit dem Tech Talk der E-Post Development GmbH. Die **Anmeldung erfolgt daher über die [Meetup-Gruppe des EPD Tech Talks](https://www.meetup.com/de-DE/eposttechtalk/)**.




