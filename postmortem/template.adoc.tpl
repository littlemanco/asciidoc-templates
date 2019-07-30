{{- $lastEvent := .lifeCycle | last }}
{{- $firstEvent := .lifeCycle | first }}
= Post mortem of the {{ .title }}: {{ toDate "2006-01-02T15:04:05Z07:00" $firstEvent.timeStamp | date "01/02/06"}}
:title-page:
:icons: font
{{- range $person := .people}}
{{- range $role := $person.roles}}
{{- if eq $role "Author" }}
{{ $person.name }} <{{ $person.email }}>
{{- end }}
{{- end }}
{{- end }}

{{- if eq true .output.withHelp }}

== What is this document?

A post mortem is a write up of a system or process failure such that causes can be found and tasks created to prevent
this class of issues from happening in future. It is blameless, and as such does not focus on past events as they
pertain to “Could’ve”, “Should’ve”.
{{- end }}

== Executive Summary
{{- if eq true .output.withHelp }}

NOTE: This is a short summary of the incident designed for a quick, high level overview of the issues. It is as far
      as casual readers need to understand with the rest of the document serving instead to help practitioners
      fully understand and extract value of an incident.
{{- end }}

{{ .abstract }}

All related work can be tracked in the canonical bug tracker at:

- +++{{ .discovery.bugTracker.link }}+++

{{- if ne $lastEvent.type "RESOLUTION" }}

WARNING: This post mortem is currently only in "temporary resolution". It remains open until all items identified in it
         have been explicitly addressed.
{{- end }}

{{ $allowedTypes := list "Contributing" "Mitigating" }}
{{ $factors := .factors }}
{{ range $allowedType := $allowedTypes }}
<<<
== {{ $allowedType }} Factors

{{ if eq "Contributing" $allowedType }}
NOTE: This is the "root cause" section of a post mortem. However, the notion of a root cause is not a good model for
      how complex systems operate. Rather, complex systems are always in a state of failure¹ and multiple failures
      generally chain together to create a "user facing" failure². Accordingly, each of those failures should be
      examined for future risk and either mitigated or deliberately accepted.
{{- end }}

{{ if eq "Mitigating" $allowedType }}
NOTE: Things do not only go "wrong", they also go "right"³. Previous mitigations put in place may be demonstrably
      successful or the organization may have a unique level of subject matter expertise that reduces the severity
      of the issue. These are equally good lines of inquiry for lessons to apply to the broader organization.
{{- end }}

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

<<<
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
| Time             | Event
{{- range .lifeCycle }}
| {{ toDate "2006-01-02T15:04:05Z07:00" .timeStamp | date "2006/01/02 03:04" }} | {{ .description }}
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

{{ if eq true .output.withHelp }}
=== Further Reading

1. K. Estreich, "The myth of the root cause", https://www.scalyr.com/blog/the-myth-of-the-root-cause-how-complex-web-systems-fail/, Oct-2016
2. R. Cook, "How Complex Systems Fail", https://web.mit.edu/2.75/resources/random/How%20Complex%20Systems%20Fail.pdf, 1998
3. S. Dekker, "Why do things go right", http://www.safetydifferently.com/why-do-things-go-right/, Sep-2018
{{- end }}