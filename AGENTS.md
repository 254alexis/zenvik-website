# Zenvik Technologies Agent Rules

## Project Golden Rule
The Zenvik ecosystem consists of two complementary platforms.

1. `zenviktechnologies.com`
   Marketing, sales, SEO, service discovery, and brand experience.

2. `portal.zenviktechnologies.com`
   Customer accounts, billing, support, checkout, and service management.

The portal must feel like the same premium brand while never replacing the role of the main website.

Every design and development decision must reinforce this separation of responsibilities.

## Standard Prompt Header
Prepend this header to future Codex prompts for the Zenvik project:

```text
Read AGENTS.md and the relevant /docs before making changes. If any instruction in this prompt conflicts with the documentation, the documentation takes precedence unless this prompt explicitly states it is superseding a documented rule.
```

This keeps the documentation as the single source of truth while still allowing intentional future architectural overrides.

## Permanent Architecture
- `main-site` is the design and marketing authority for `zenviktechnologies.com`.
- `portal-site` is the WHMCS customer management system for `portal.zenviktechnologies.com`.
- `portal-site/template_v1` is the locked reference.
- `portal-site/template_v2` is the editable implementation.
- The portal homepage must never become a condensed version of the main website.
- The portal exists primarily for customer accounts, invoices, support, tickets, checkout, and account management.
- The main website remains responsible for service marketing, pricing, hosting pages, blogs, FAQs, legal pages, domains, and detailed service information.

## Design Authority Rules
- The main website is the design authority.
- Before editing any portal page, inspect the main-site and reuse its typography, spacing, buttons, shadows, border radius, colours, animations, and component styling.
- The portal must look like the same Zenvik ecosystem.
- Never redesign components that already exist on the main website.

## Brand Rules
- Use Zenvik brand colors only:
  - Primary Blue: `#043a7e`
  - Gold Accent: `#7a6200`
  - CTA Orange: `#dfa408`
- Portal and main-site must look like one Zenvik ecosystem.
- Custom portal CSS must use the `zt-` prefix.

## WHMCS Rules
- Do not edit `portal-site/template_v1`.
- Only edit `portal-site/template_v2` for portal work.
- Before modifying any WHMCS template, inspect `template_v1` and identify Smarty variables, includes, homepage conditions, guest logic, logged-in logic, and hooks.
- Reuse existing functionality and wrap new UI around it.
- Never rebuild homepage logic from scratch.
- Do not upgrade or replace Bootstrap.
- Do not remove WHMCS scripts, overlays, hooks, Smarty variables, or includes.
- Do not remove or rewrite orderforms, invoice logic, ticket logic, cart logic, or clientarea logic.
- Do not modify `scripts.js`, `scripts.min.js`, or `whmcs.js`.
- Do not introduce conflicting Bootstrap versions.
- Do not disable overlay behavior.
- Do not hide the body while waiting for custom JavaScript.
- Do not add JavaScript that blocks DOM ready.

## WHMCS Development Principle
When working on the WHMCS portal, functionality always takes priority over appearance.

Never sacrifice working WHMCS functionality for visual improvements.

If there is a choice between redesigning a component and preserving existing WHMCS behaviour, always preserve the existing behaviour.

Improve the user interface by extending, wrapping, or styling existing functionality instead of replacing it.

The objective is to modernize the portal while remaining fully compatible with WHMCS updates and existing customer workflows.

## Safe Implementation Strategy
Every portal task must follow this order:
1. Read `AGENTS.md`.
2. Read the relevant documentation.
3. Inspect the main-site and reuse its design language.
4. Inspect `template_v1` completely.
5. Understand the existing WHMCS functionality.
6. Improve the appearance.
7. Preserve all behaviour.
8. Test compatibility.
9. Report files changed.

Never redesign functionality before understanding how WHMCS currently implements it.

## No Regression Policy
Every portal modification must satisfy all of the following before completion:
- Existing WHMCS functionality still works.
- No endless loading introduced.
- No broken Smarty logic.
- No missing includes.
- No broken hooks.
- Bootstrap compatibility preserved.
- Responsive layout preserved.
- No JavaScript errors.
- No console errors.
- No PHP template errors.

If any of the above cannot be guaranteed, preserve the existing implementation and improve only the presentation.

## Fail Safe Rule
If uncertain about any WHMCS functionality:
- Do not replace it.
- Do not rewrite it.
- Do not simplify it.

Instead:
- Inspect `template_v1`.
- Understand the implementation.
- Reuse it.
- Wrap the new interface around it.

This project values long-term stability over aggressive redesign.

A visually simpler page with 100% working functionality is always preferred over a more impressive design that introduces regressions.

## Portal Cross-Marketing Rules
- Marketing is secondary inside the portal.
- Use brief conversational prompts placed naturally between customer-focused content.
- Each prompt should introduce only one idea, stay visually lightweight, spark curiosity, and link back to the main website.
- Portal prompts must never explain an entire service, show pricing tables, use service cards, or duplicate service pages.
- Cross-marketing opportunities generally follow this revenue priority: Hosting & Cloud, Website & Software Development, Marketing & Branding, ICT Services.
- This priority is a business priority, not a homepage section order.

## Scope Rules
- Do not add unrelated features.
- Keep changes incremental and reversible.
- Before main-site edits, inspect the main-site docs and current design/source files.
- Before portal edits, inspect `docs/portal/WHMCS-ARCHITECTURE.md`, `template_v1`, and `template_v2`.
- Always report files changed.

## Permanent Development Workflow
For every development task, apply the relevant parts of this workflow. For portal work, use the Safe Implementation Strategy and preserve WHMCS functionality before visual polish.
