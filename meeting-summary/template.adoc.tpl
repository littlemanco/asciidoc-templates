= {{ .subject }}: {{ .date }}

.Schedule
|===
| Location           | Length 

| {{ .location }}    | {{ .length }}
|===

.Attendees
[cols="2,6,2"]
|===                
| Name              | Role                  | Present

| {{ .facilitator}} | Facilitator           | ✓
{{- range .attendees }}
| {{ .name }}       | {{ .role }}           |
|===
{{- end }}

// Todo: Drop "Procedure"
== Procedure

=== Items

// Each raised item should have a:
//
// - title:   Indicates at a high level what the issue is about
// - summary: Indicates the existing state of affairs and ongoing process
// - timebox: How long this topic should take 
{{- range .items}}
==== {{ .title }}: {{ .timebox }}

|===
| Introduced         | Sponsored By

| {{ .introduced }}  | {{ .sponsoredBy}}
|===

{{ .summary }}
// Writing Space
---
---

===== Actions

// Writing Space
---
---
{{- end }}

== Adjournment

.Next Meeting
|===
| By                 | Date          | Time           | Location

// Writing space
| {{ .facilitator }} |               |                |
|===

<<<

== Appendix

=== Document Purpose

This document services the dual purpose of "Agenda" and "Minutes" for conducting and managing meetings. It is designed
to ensure that the maximum value can be derived of each given meeting, and that communication and agreement established
in a meeting can be expressed as text for the record.

=== Additional Reading

- "Roberts Rules of Order", https://robertsrules.org/rulesintro.htm