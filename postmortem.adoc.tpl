= Post mortem of the __THING__: __DATE__
__INCIDENT_COMMAND__ <__INCIDENT_COMMAND_EMAIL__>

== What is this document?

A post mortem is a write up of a system or process failure such that causes can be found and tasks created to prevent this class of issues from happening in future. It is blameless, and as such does not focus on past events as they pertain to “Could’ve”, “Should’ve”.

== Abstract

__A_SHORT_SUMMARY__

All related work can be tracked in the canonical bug tracker at:

- __BUG_TRACKER_URL_WITH_FILTER_FOR_TICKETS__

== Contributing Factors

=== __FACTOR_TITLE__

__FACTOR_DESCRIPTION__

== Mitigating Factors

=== __FACTOR_TITLE__

__FACTOR_DESCRIPTION__

== Ongoing Risks

=== __RISK_TITLE__

__RISK_DESCRIPTION__

== Impact

=== Customer

The impacts to the users of the service include:

==== __IMPACT_TITLE__

__A DESCRIPTION OF THE IMPACT__

=== Business

The impacts to the business that owns the service includes:

==== __IMPACT_TITLE__

__A DESCRIPTION OF THE IMPACT__

This can be seen in __THE_NUMERIC_RESULT_OF_THE_IMPACT__

=== Internal

The impacts to those who build and administer the service include:

==== __IMPACT_TITLE__

__A DESCRIPTION OF THE IMPACT__

This can be seen in __THE_NUMERIC_RESULT_OF_THE_IMPACT__

== Timeline

[cols="2,5"]
|===
| Time     | Event
|          |
|===

== Authors

- __INCIDENT_COMMAND__

== Resources

|===
| Resource      | Location
| Slack Channel | __THE_SLACK_CHANNEL_USED_TO_DOCUMENT_FINDINGS__
|===

== Thanks ==

- __OPERATIONAL_WORK__
- __COMMUNICATION__
- __PLANNING__
- __INCIDENT_COMMAND__

== Appendices ==

=== People

|===
| Role                      | Person
| Incident Coordinator      | __INCIDENT_COMMAND__
| Operational Work          | __OPERATIONAL_WORK__
| Communication             | __COMMUNICATION__
| Planning                  | __PLANNING__
|===

== Terms

.Terms
[cols="2,5"]
|===
| Term                          | Meaning
| Customer                      | The users of the application or service
| Project Owner (PO)            | The owner of the project
| Incident Coordinator (IC)     | The person or people responsible for managing and documenting the incident
| Operations (OPS)              | The person or people responsible for investigating and providing a temporary solution for the issue
| Communication (COM)           | The person who is designated the point of contact between all team members
| Planning (PLN)                | The person who provides accountability that all follow up changes need to be made.
| Contributing Factor           | Something that happened that played a role in causing or prolonging the outage. Factors are broken down into "primary" and "secondary" factors.
| Primary Contributing Factor   | Something that caused the outage directly
| Secondary Contributing Factor | Something that prolonged the outage, though it did not directly cause it
| Mitigating Factor             | Something that helped reduce the severity or length of the outage, but was not part of structured procedure or normal circumstance.
| Ongoing Risk                  | Something that could have the outage worse or more likely to occur, but simply due to fortune did not.
|===


=== References ===

.Referenced thing

__THE_THING_BEING_REFERENCED__