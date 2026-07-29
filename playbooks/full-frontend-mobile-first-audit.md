# Full Frontend Mobile-First Audit Playbook

## Purpose

Run a complete, evidence-based frontend audit with `senior-figma-mobile-first-auditor` before implementing visual changes. The goal is a clean, professional, modern, minimalist, intuitive and visually guided product without breaking business logic.

## Recommended agent sequence

```text
senior-figma-mobile-first-auditor
→ implementation-planner
→ senior-fullstack-builder
→ qa-e2e-specialist
→ pr-quality-gate
→ documentation-roadmap
```

The auditor may implement only a specifically approved visual slice. The implementer never approves its own work.

## Master prompt

```text
Use the `senior-figma-mobile-first-auditor` agent in AUDIT_ONLY mode.

Audit 100% of the frontend surfaces discoverable in this repository. The target product direction is clean, professional, modern, minimalist, calm, intuitive, easy to use, clear and visually guided. Do not create a decorative redesign and do not reduce real operational capability.

Mandatory order:
1. Read every applicable AGENTS.md and the project UX, workflow, quality-gate, roadmap and visual-correction documents.
2. Inspect the real route tree, shells, navigation, shared components, design tokens, global styles, forms, lists, details, StepFlows, overlays and frontend tests.
3. Build a route-and-surface inventory and a coverage matrix. Classify every surface and state as TESTED, CODE_REVIEW_ONLY, BLOCKED or NOT_DISCOVERED. Never claim 100% coverage when access is incomplete.
4. Run visible local QA when available. Use synthetic or authorized QA data only. Do not use production data or create remote effects.
5. Audit mobile first at 360x800, 390x844 and 430x932. Define the target hierarchy and interaction model from mobile before considering larger viewports.
6. Validate iPad at 768x1024, 834x1194 and 1024x768. The iPad version may reuse the desktop composition from 768px only when there is no overflow, compressed content, small touch targets, forced columns, empty stretching or loss of reading order.
7. Validate desktop at 1366x900 without allowing excessive width, decorative stretching or competing secondary context.
8. Review every discovered normal, loading, empty, error, saving, saved, success, recovery, disabled, focus and reduced-motion state that can be reached.
9. Audit visual hierarchy, typography, spacing, alignment, color, iconography, buttons, inputs, cards, filters, lists, details, navigation, overlays, responsive behavior, accessibility and scroll length.
10. Detect duplicated actions, card-inside-card composition, unnecessary wrappers, excessive badges, noisy colors, amateur icons, oversized headers, long preambles and any screen showing several equal priorities.
11. Protect routes, props, callbacks, queries, Supabase, Auth, SQL, RLS, RPC, Storage, Edge Functions, calculations, prices, tax, invoice numbering and every business rule. Do not introduce dependencies.
12. Produce P0-P3 findings with route, viewport, state, evidence, user impact, recommended minimal correction, likely files, implementation risk and validation required.
13. Group fixes into safe sprints: visual foundation, shell/navigation, shared primitives, lists/search/filters, detail screens, forms/StepFlows, states/accessibility, iPad/desktop adaptation and final polish.
14. End with the exact first implementation slice and the next prompt for `implementation-planner`. Do not implement during this run.

The intended visual result must be:
- one clear reading per screen;
- one dominant primary action;
- calm neutral surfaces with restrained accent use;
- fewer visual layers and less unnecessary scroll;
- compact, scannable operational lists;
- clear guidance through proximity and hierarchy rather than long explanations;
- consistent premium detail across every module;
- mobile completion of critical workflows;
- iPad and desktop adaptations derived from the mobile solution.

Required deliverables:
- frontend inventory;
- coverage matrix;
- mobile-first audit;
- iPad adaptation decision;
- desktop verification;
- current and target visual-system diagnosis;
- accessibility and state coverage;
- P0-P3 backlog;
- sprint roadmap;
- protected-logic statement;
- validations executed and not executed;
- first implementation prompt.
```

## Implementation rule

After the audit, run only one approved slice at a time. Each slice must:

- define its user outcome;
- name files likely to change;
- state protected logic and non-goals;
- include mobile, iPad and desktop validation;
- run project agent validation, lint, relevant tests and build;
- create before/after evidence;
- commit and push;
- receive independent QA and PR review.

## Stop conditions

Stop and report `BLOCKED` or partial evidence when:

- authenticated routes cannot be reached;
- the local app cannot run;
- the requested state requires production data or remote writes;
- a route or role is unknown;
- visual evidence cannot be captured;
- the required change would alter business logic, Auth or Supabase without a separately approved scope.
