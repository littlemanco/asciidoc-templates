= Post mortem of the {{ .title }}: {{ .date }}
:title-page:
{{- range $person := .people}}
{{- range $role := $person.roles}}
{{- if eq $role "Author" }}
{{ $person.name }} <{{ $person.email }}>
{{- end }}
{{- end }}
{{- end }}

== What is this document?

A post mortem is a write up of a system or process failure such that causes can be found and tasks created to prevent
this class of issues from happening in future. It is blameless, and as such does not focus on past events as they
pertain to “Could’ve”, “Should’ve”.

== Abstract

{{ .abstract }}

All related work can be tracked in the canonical bug tracker at:

- {{ .discovery.bugTracker.link }}

{{ $allowedTypes := list "Contributing" "Mitigating" }}
{{ $factors := .factors }}
{{ range $allowedType := $allowedTypes }}

== {{ $allowedType }} Factors

{{- /*
 * At the time of writing, Golang does not support "break" or "continue" in templates. See:
 *
 *  https://github.com/golang/go/issues/20531
*/ -}}
{{- range $factors}}
{{ if eq .type $allowedType }}
=== {{ .title }}

{{ .description }}

{{- if .bugTracker.link }}
See:

  - {{ .bugTracker.link }}

{{- end }}
{{- end }}
{{- end }}

{{- end }}

== Ongoing Risks

{{- range .risks }}
=== {{ .title }}

{{ .description }}

{{- if .bugTracker.link }}
See:

  - {{ .bugTracker.link }}
{{- end }}
{{- end }}

== Impact

{{ range .impacts }}
=== {{ .subject }}: {{ .title }}

{{ .description }}
{{- end }}

<<<
== Timeline

[cols="3,12"]
|===
| Time     | Event
{{- range .timeline }}
| {{ .date }} {{ .time }} | {{ .event }}
{{- end }}
|===

<<<

== Resources

[cols="3,7"]
|===
| Resource      | Location
| Slack Channel | {{ .discovery.chat.link }}[{{ .discovery.chat.channel }}]
|===

== Thanks ==

{{ range .people }}
- {{ .name }}
{{ end }}

== Appendices ==

=== People

[cols="3,7"]
|===
| Role                      | Person
{{ range .people }}
| {{ .roles | join ", " }}  | {{ .name }} <{{ .email }}>
{{- end }}
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

<<<
=== References

{{- range .references }}

.{{- .title }}
{{ .content }}

{{ end }}

