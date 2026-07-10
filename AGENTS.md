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
- `portal-site/template_v1` is the locked WHMCS functionality authority only.
- `portal-site/template_v2` is the editable creative implementation area.
- `template_v2` is expected to visually diverge from `template_v1` and become a modern Zenvik customer portal.
- Future portal header and footer work should move toward the main-site visual language; `template_v1` is never a design reference or design target.
- The portal homepage must never become a condensed version of the main website.
- The portal exists primarily for customer accounts, invoices, support, tickets, checkout, and account management.
- The main website remains responsible for service marketing, pricing, hosting pages, blogs, FAQs, legal pages, domains, and detailed service information.

## Design Authority Rules
- The main website is the design authority.
- Before editing any portal page, inspect the main-site and reuse its typography, spacing, buttons, shadows, border radius, colours, animations, and component styling.
- The portal must look like the same Zenvik ecosystem.
- Do not use `template_v1` for visual decisions.
- When the main-site already solves a visual pattern, adapt that quality and language inside the portal instead of copying WHMCS default styling.
- Portal pages may be redesigned boldly inside `template_v2` as long as WHMCS functionality remains intact.

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
- Before modifying any WHMCS template, inspect `template_v1` only to preserve Smarty logic, WHMCS variables, includes, hooks, routes, forms, cart/domain/ticket/account behavior, guest logic, logged-in logic, and loading constraints.
- Reuse existing WHMCS functionality while creatively redesigning the presentation in `template_v2`.
- Do not replace proven WHMCS logic with custom logic for visual reasons.
- Use the existing WHMCS-compatible Bootstrap version already present in `template_v2`.
- Compatible Bootstrap classes and components are allowed when they support the design and do not change WHMCS behavior.
- Do not upgrade, replace, or introduce another Bootstrap version.
- Do not remove WHMCS scripts, overlays, hooks, Smarty variables, or includes.
- Do not remove or rewrite orderforms, invoice logic, ticket logic, cart logic, or clientarea logic.
- Do not modify `scripts.js`, `scripts.min.js`, or `whmcs.js`.
- Do not introduce conflicting Bootstrap versions.
- Do not disable overlay behavior.
- Do not hide the body while waiting for custom JavaScript.
- Do not add JavaScript that blocks DOM ready.

## Compatible Frontend Freedom
- Codex may use any frontend technique that is compatible with the existing WHMCS/template stack.
- Allowed compatible techniques include existing Bootstrap utilities/components, existing Font Awesome icons, semantic HTML, CSS gradients, glass effects, CSS animations, responsive layouts, and custom `zt-` prefixed CSS.
- Codex may create new supporting files when they are scoped to the editable implementation, compatible with WHMCS, and do not replace or disrupt WHMCS behavior.
- Safe supporting files may include custom CSS, small template partials, documentation, or local static assets when the task needs them and they are loaded through existing WHMCS-compatible paths.
- Do not add external design libraries, conflicting framework assets, incompatible scripts, or dependency changes unless explicitly approved.
- Do not create files that override WHMCS core files, replace existing WHMCS scripts, bypass required includes, duplicate Bootstrap, or alter orderform/cart/invoice/ticket/clientarea behavior.
- Compatibility means the page still works with WHMCS Smarty rendering, existing Bootstrap, WHMCS scripts, overlays, forms, routes, and customer workflows.

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
4. Inspect `template_v1` only for WHMCS functionality and logic.
5. Edit `template_v2` creatively.
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
- Inspect `template_v1`.
- Understand the implementation.
- Reuse it.
- Build the new interface around the existing behavior.

This project values long-term stability over aggressive redesign.

A visually simpler page with 100% working functionality is always preferred over a more impressive design that introduces regressions.

This safety rule protects functionality only. It does not prevent strong visual design, premium layout work, animation, custom CSS, or significant homepage redesign inside `template_v2`.

## Portal Cross-Marketing Rules
- Marketing is secondary inside the portal.
- Use brief conversational prompts placed naturally between customer-focused content.
- Each prompt should introduce only one idea, stay visually lightweight, spark curiosity, and link back to the main website.
- Portal prompts must never explain an entire service, show pricing tables, use service cards, or duplicate service pages.
- Cross-marketing opportunities generally follow this revenue priority: Hosting & Cloud, Website & Software Development, Marketing & Branding, ICT Services.
- This priority is a business priority, not a homepage section order.

## Scope Rules
- User-directed scope is mandatory. When the user names a specific section, file, component, behavior, or visual issue, change only that target.
- Do not introduce new design ideas, new sections, new effects, new colors, new layout concepts, new copy, new files, or adjacent fixes unless the user explicitly asked for them.
- If a requested fix reveals a tempting related improvement outside the named scope, stop and ask first before editing it.
- Do not use broad "while I am here" cleanup. Do not make random improvements. Do not reinterpret a narrow request as permission to redesign surrounding areas.
- Section-by-section portal work must stay section-by-section. For example, a Section 3 request must not alter Section 2, Hero, header, footer, scripts, or other homepage sections.
- Do not add unrelated features.
- Keep changes reviewable and reversible; the final visual result may still be bold, polished, and significantly redesigned when the task calls for it.
- Before main-site edits, inspect the main-site docs and current design/source files.
- Before portal edits, inspect `docs/portal/WHMCS-ARCHITECTURE.md`, `template_v1`, and `template_v2`.
- Always report files changed.

## Permanent Development Workflow
For every development task, apply the relevant parts of this workflow. For portal work, use the Safe Implementation Strategy and preserve WHMCS functionality before visual polish.
