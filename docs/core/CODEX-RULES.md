# Master Codex Development Rules

## Standard Prompt Header
Prepend this header to future Codex prompts for the Zenvik project:

```text
Read AGENTS.md and the relevant /docs before making changes. If any instruction in this prompt conflicts with the documentation, the documentation takes precedence unless this prompt explicitly states it is superseding a documented rule.
```

This keeps the documentation as the single source of truth while still allowing intentional future architectural overrides.

## Permanent Architecture
1. `zenviktechnologies.com` is the main marketing and sales website.
2. `portal.zenviktechnologies.com` is the WHMCS customer portal.
3. The main-site handles service discovery, hosting marketing, domains, software, websites, marketing, ICT services, AI services, blog, FAQs, legal pages, and pricing pages.
4. The WHMCS portal handles customer accounts, invoices, tickets, checkout, support, and customer care only.
5. The portal homepage must not become a hosting sales homepage.
6. The portal homepage may lightly guide users back to the main website.
7. The main-site is the visual and design authority.
8. `portal-site/template_v1` is the locked WHMCS functionality authority only.
9. `portal-site/template_v2` is the editable creative WHMCS template implementation area.
10. Portal and main-site must look like one Zenvik ecosystem.
11. The portal homepage must never become a condensed version of the main website.

## Design Authority Rules
- The main website is the design authority.
- Before editing any portal page, inspect the main-site and reuse its typography, spacing, buttons, shadows, border radius, colours, animations, and component styling.
- The portal must look like the same Zenvik ecosystem.
- `portal-site/template_v1` is not a design reference.
- When the main-site already establishes a visual pattern, adapt that quality and language inside the portal instead of copying WHMCS default styling.
- Codex may redesign portal layouts creatively inside `template_v2` when the underlying WHMCS behavior is preserved.

## AI Workflow Rules
- Keep changes reviewable and reversible; do not interpret this as a ban on strong visual design.
- Before main-site edits, inspect the relevant files in `docs/main-site/` plus the current main-site design/source files.
- Before portal edits, inspect `docs/portal/WHMCS-ARCHITECTURE.md`, `portal-site/template_v1`, and `portal-site/template_v2`.
- Never edit `portal-site/template_v1`.
- Only edit `portal-site/template_v2` for portal implementation work.
- Do not treat `portal-site/template_v1` as a visual or design target.
- `portal-site/template_v2` is expected to visually diverge from `template_v1` and become a modern Zenvik customer portal.
- Codex is allowed to redesign homepage layouts creatively inside `template_v2`.
- Codex is allowed to write strong custom CSS, improve visual hierarchy, spacing, cards, sections, animation, and responsive behavior.
- Codex should act like a senior frontend engineer inside WHMCS compatibility limits.
- Codex may use compatible Bootstrap classes/components and any compatible frontend technique that works with the existing WHMCS/template stack.
- Always report the files changed at the end of the task.
- Do not add unrelated features while completing a focused request.
- Preserve approved wording, structure, and routes unless the user explicitly asks to change them.

## Permanent Development Workflow
For every development task, apply the relevant parts of this workflow. For portal work, use the Safe Implementation Strategy and preserve WHMCS functionality before visual polish.

## Main-Site Rules
- Preferred stack: React, Vite, Tailwind CSS, and Framer Motion where appropriate.
- Final output must support static build export and cPanel hosting deployment.
- Main-site pages should be modular, responsive, SEO-ready, accessible, fast, and production-grade.
- The homepage must stay broad across software, websites, hosting/cloud, marketing/branding, ICT, and AI.
- Do not make hosting plans the dominant homepage focus.

## Portal WHMCS Rules
- Preserve WHMCS Smarty variables.
- Preserve WHMCS routes, hooks, includes, overlays, and system scripts.
- Preserve the existing Bootstrap version.
- Use the existing WHMCS-compatible Bootstrap version already present in `template_v2`.
- Compatible Bootstrap utilities and components are allowed.
- Preserve JS files, orderforms, invoice logic, ticket logic, cart logic, and clientarea logic.
- Do not replace WHMCS core behavior with custom marketing-site logic.
- Do not move domain search, hosting pricing, or full service marketing into the portal homepage.
- Custom portal CSS classes must use the `zt-` prefix.

Compatible portal frontend work may include:
- Existing Bootstrap utilities and components
- Existing Font Awesome icons
- Semantic HTML
- CSS gradients, glass effects, shadows, transitions, and keyframe animations
- Responsive layouts
- Custom `zt-` prefixed CSS
- New supporting files scoped to the editable implementation

Do not add external design libraries, dependency changes, conflicting framework assets, or incompatible scripts unless explicitly approved.

New supporting files are allowed when they are WHMCS-safe, scoped, and compatible. Examples include custom CSS, small template partials, documentation, or local static assets when the task needs them and they are loaded through existing WHMCS-compatible paths.

Do not create files that override WHMCS core files, replace WHMCS scripts, duplicate Bootstrap, bypass required includes, or alter orderform, cart, invoice, ticket, or clientarea behavior.

Before modifying any WHMCS template:
- Inspect `portal-site/template_v1` only for WHMCS functionality and logic.
- Identify Smarty logic, WHMCS variables, includes, hooks, routes, forms, cart/domain/ticket/account behavior, guest logic, logged-in logic, and loading constraints.
- Reuse existing WHMCS functionality while creatively redesigning presentation in `template_v2`.
- Do not replace proven WHMCS logic with custom logic for visual reasons.
- Never remove required Smarty variables.
- Never remove required includes.

## WHMCS Development Principle
When working on the WHMCS portal, functionality always takes priority over appearance.

Never sacrifice working WHMCS functionality for visual improvements.

If there is a choice between redesigning a component and preserving existing WHMCS behaviour, always preserve the existing behaviour.

Improve the user interface by extending, wrapping, styling, or reorganizing existing WHMCS functionality in `template_v2` instead of replacing the underlying behavior.

The objective is to modernize the portal while remaining fully compatible with WHMCS updates and existing customer workflows.

## Safe Implementation Strategy
Every portal task must follow this order:
1. Read `AGENTS.md`.
2. Read the relevant documentation.
3. Inspect the main-site for design direction.
4. Inspect `portal-site/template_v1` only for WHMCS functionality and logic.
5. Edit `portal-site/template_v2` creatively.
6. Preserve WHMCS behavior.
7. Use only the existing compatible Bootstrap version and compatible frontend techniques.
8. Produce a polished result.
9. Report files changed and tests needed.

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
- Inspect `portal-site/template_v1`.
- Understand the implementation.
- Reuse it.
- Build the new interface around it.

This project values long-term stability over aggressive redesign.

A visually simpler page with 100% working functionality is always preferred over a more impressive design that introduces regressions.

This safety rule protects functionality only. It does not prevent strong custom CSS, premium layouts, responsive redesigns, animation, polished cards, or major visual improvements inside `template_v2`.

## Endless Loading Prevention
Never:
- Remove required includes.
- Break Smarty control structures.
- Remove WHMCS hooks.
- Modify `scripts.js`.
- Modify `scripts.min.js`.
- Modify `whmcs.js`.
- Replace Bootstrap.
- Introduce conflicting Bootstrap versions.
- Add incompatible frontend libraries or framework assets.
- Create files that override or replace WHMCS core behavior.
- Disable overlay behavior.
- Hide the body while waiting for custom JavaScript.
- Introduce JavaScript that blocks DOM ready.
- Replace homepage logic instead of extending it.

If uncertain, preserve existing functionality and improve presentation around it.

## Portal Design Philosophy
- The portal exists primarily for customer accounts, billing, invoices, tickets, checkout, and customer support.
- Marketing is secondary inside the portal.
- The portal homepage must never become a condensed version of the main website.
- The portal homepage should feel premium, modern, customer-focused, visually aligned with the main-site, clearly different from default WHMCS, creative, and polished.
- The main website remains responsible for service marketing, pricing, hosting pages, blogs, FAQs, legal pages, domains, and detailed service information.
- Portal cross-marketing should use brief conversational prompts placed naturally between customer-focused content.
- Each prompt should introduce only one idea, remain visually lightweight, spark curiosity, and link users back to the main website.
- Portal prompts must never explain an entire service, contain pricing tables, contain service cards, or duplicate service pages.
- Avoid predictable service sections and avoid introducing every service in the portal.

## Business Priority
Cross-marketing opportunities should generally follow this long-term revenue priority:
1. Hosting & Cloud
2. Website & Software Development
3. Marketing & Branding
4. ICT Services

This is a business priority, not a homepage section order.

## Brand Rules
- Use Zenvik brand colors only:
  - Primary Blue: `#043a7e`
  - Gold Accent: `#7a6200`
  - CTA Orange: `#dfa408`
- Main-site styling defines the visual direction, including typography, spacing, buttons, shadows, border radius, colours, animations, and component styling.
- Portal styling should match the ecosystem while remaining a customer management interface.

## Production Rules
- Do not mix main-site and portal-site changes unless the task explicitly requires both.
- Do not edit WHMCS core files.
- Do not edit locked references.
- Verify documentation links and paths after moving or restructuring docs.
