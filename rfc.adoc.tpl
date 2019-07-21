// This is an RFC (Request for Comments) template. It's designed to assist in writing proposals that change some sort
// of fundamental process.
//
// It is designed to fulfill several purposes:
//
// - A tool to help determining if a change is a good idea
// - A tool to help illustrate the idea
// - A tool to help sell the idea
//
// There are many comments through the document. Delete them (all lines starting with `//` before publishing the RFC)

// The title is designed to leave the reader in no doubt as to what the proposal intends to change. 
// 
// In many cases, the proposal just serves to demonstrate *the fact* the author has done their due diligence, rather 
// than to provide some burden of proof that will be examined.
//
// Some examples include:
// - "Proposal to adopt Containers as the primary deployable artifact and Kubernetes as the cluster container 
//    management tool."
// - "Proposal to adopt BEM as the primary naming standard for all CSS selectors going forward."
= Request for Comments: __X__
__AUTHOR__ <__AUTHOR_EMAIL__>
:title-logo-image: image:img/logo.png[pdfwidth=.5in,align=right]
:bibtex-file: bibliography.bib
:bibtex-style: ieee
:icons: font

// Readers who are inexperienced in the RFC process will need some capacity to understand the RFC layout, it's goals
// and where to contribute feedback on it.
//
// The introductory paragraph defines this change.
This is a request for comments. It follows a defined format^cite:[rfc2019]^ and is designed to communicate the
justification for a given process or technology change with as much clarity as possible.

This RFC can be accessed at the following URL:

 - __URL__

== Abstract

// A summary of the proposal, including description, benefits, risks and estimated costs. Some general guidelines 
// include:
//
// - Keep this short
// - Pique interest
// 
//  Quite often, it is better to write the abstract last after the proposal has been written.

<<<

== Stakeholders

// A proposal affects more people then it may initially seem. While proposing a change may make sense from the authors 
// point of view, the author should consider the ramifications to others, and document in the proposal how this change
// will affect them. Some example stakeholders include:
//
// - Business Team
// - Marketing Team
// - Development Team
// - Administration Team

<<<

== Problem

// An outline of the problem that the proposed solution will solve. If a proposal does not solve a problem it is 
// worthless. Outline any efficiency improvements as problems. For Example
// 
//     "On mobile, connections are slow"
// 
// rather than
// 
//     "with HTTP/2 mobile load times will decrease".
// 
// Hook into a metric that the reader cares about.
// 
//     "lower page load times are correlated with decreased user engagement and, by association, cart abandonment"
//
// == Fear vs Hope
//
// There are broadly two strategies for engendering change; creating the idea that things will be better after change, 
// or convincing people that it's dangerous not to change. They are both useful strategies, but for different reasons.
// 
// Fear is most useful when trying to get a user to stop a given behaviour, for example "stop posting to social media 
// with each deployment"[1]. Conversely, Hope is useful for eliciting a new behaviour, such as "please adopt my thing
// it will make things better"[1]
//
// == Evidence
//
// Unless the writing can be backed up by references either generated through experience in the company (post mortem,
// case study) or external it will do no good as part of the RFC. If it is not possible to draw some evidence from the
// broader community clearly state that there is a lack of evidence to make a decision either way, and this RFC is
// experimental.
//
// Content without references can be easily picked apart, and will discredit the rest of the RFC regardless of how well
// the rest of the RFC was written.

== Solution 
// The solution to the problem as defined in 'problem' section.
//
//   Example: "Implement HTTP/2 to make the TCP connection more efficient"
//
// When writing the solution out there are ways in which the solution can be expressed that are more likely to lead to
// higher "buy in"[2]
//
// == Benefit Immediacy
//
// Decisions in which the benefits will manifest in the future are subject to biases; the classic example being
// overspending in the short term at the cost of the long term. To address this be sure to make it clear the immediate
// benefits of such a solution[2]
//
// == Effort reduction
//
// When making a proposal it's expected that people will do different things, perhaps more efficiently than they'd done
// previously. However, it's worth noting specifically things that people currently do that they will no longer need to
// as a result of this change.
//
// == Side Benefits
//
// While the proposal is designed to solve a problem that it identifies and defines, adding additional "side benefits"
// or other things that will change positively may provide stakeholders who are looking for a reason to push this
// proposal forward additional evidence to sell stakeholders who are otherwise not seeing the benefits.

=== Verifying Solution
// Any proposal will invariably cause some level of change. In order to determine whether the proposal should be
// retained after an initial trial period it should be clear how to measure the success or failure of such a system.
//
// There should be an anticipated measurable change in some thing that this proposal seeks to change.
//
// If there are no metrics about what it plans to change, first instrument that thing then plan the change.

<<<

== Anticipated Difficulties
// Any set of change will come with it a set of difficulties. The greater the change, the more it's likely to cause
// a disruption - to cause problems.
//
// It is better to find and estimate these new issues, as well as illustrate how they can be addressed to mitigate any
// damage.
//
// Even if a problem does not have a solution, list it regardless. A problem with a solution is better, but opening
// up the problem for discussion may contribute a greater chance of the change being accepted.

== Risks
// Risks are new things that may provide unexpected difficulties as a result of the change.
//
// Risks are different than anticipated problems in that they're accepted as an event that may happen, but not one that
// will definitely happen.
// 
// For example, a proposal may increase costs for a short period. Or it may cause a level of disenfranchisement to the
// affected team.

<<<

== Previous Examples
// Previous examples are useful to give credence to the idea that this proposal is possible, as well as give consumers
// of the proposal ways they can find answers to questions that this proposal does not address.
//
// Even failing examples may be useful as a mechanism to illustrate risks, and how they're mitigated in this particular
// iteration.

== Expert Opinion
// Experts in a given area can help provide a measure of credibility to the proposal, as well as allow users to follow
// up with those users to seek further clarification on the issues that they're raising.
//
// Additionally, it is a more human assessment to make a decision based on the credibility of a perceived expert, rather
// than attempt to determine the logical basis for the analysis.

<<<
    
== Estimated Costs
// Estimated costs are the required expenditure to implement the change.
//
// There can be several facets to the costs:
//
// - Development time, or the time required to roll out the change.
// - New equipment / product / system purchase
// - Reskilling time, or time lost to team members being required to re-skill to operate in the changed environment.
<<<

== Implementation
// IThe steps the organisation will go through to implement the change. It's helpful when thinking about the
// implementation to consider each of the steps that people will take.
//
// For example, users will generally try and fit a new change into their existing workflow as easily as possible,
// using their existing knowledge on this new problem. As much as possible it's important to allow them to do this; 
// while this can mean the change takes longer, it's much more likely to see a wider adoption.
//
// Generally speaking it's easier to roll out a change in stages:

=== Proof of Concept
// A single example of something being useful to a team. Not necessarily a successful proposal, but rather a
// sample and demonstration of what a potential rollout might look like.

=== Scale
// Replication of the proof of concept. This may take the form of being one chunk of the business / entity after the
// other, rather than an all-in-one rollout.

=== Enforcement
// Immediately following the change, as well as indefinitely after if the change requires a greater level of effort
// for users there will be a temptation to fall back into the old behaviour.
//
// To retain the new behaviour there needs to be a control loop; some way of encouraging users to keep to the new
// behavior, even though the old may be easier.
//
// Perhaps the best example of this is Continuous Integration, but simply reminding people periodically of how and why
// we do things is useful.

=== Completion & Evaluation
// Once a proposal has been rolled out, it needs to be subject to evaluation. Change is wildly unpredictable, and
// should be subject to critical analysis.
//
// There should be several points at which a proposal is evaluated:
//
// 30 days  - Determine whether the proposal is being implemented as anticipated, and has sufficient buy in from the 
//            community to push forward
// 90 days  - Determine whether the proposal had the anticipated effect
// 365 days - Determine how well the proposal worked, and if there are any lessons that may impact future proposals.
//
// Changes should have a mechanism for users to submit feedback directly, rather than needing to wait for an evaluation
// window.

=== Rollback
// Though much effort has been put in to making sure proposals are successful, many (perhaps most) of them will fail.
// The nature of the status quo is it's economically given to be the status quote -- to change it will require
// changing the economy itself.
//
// Accordingly, all proposals should have a mechanism to "fail back" to the status quo. Whether this is early
// termination, a limited trial or a specific set of steps required to change defaults from their new state back to
// their previous, changes should be reversable.

<<<

// Terminology exposes any words that may be unfamiliar to the intended audience of this RFC (likely non-specialist
// executive stakeholders)
== Terminology
[cols="1,3"]
|===
| Word | Definition

| 
|===

<<<

== References ==

bibliography::[]  

// [1] - https://www.npr.org/player/embed/519234721/520046420
// [2] - https://en.wikipedia.org/wiki/Choice_architecture#Choice_over_time
// [3] - https://m.signalvnoise.com/what-is-someone-going-to-stop-doing-when-they-start-using-your-product-39f3f7a20c37#.d3e9dlih8