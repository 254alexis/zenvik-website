# WHMCS Architecture Plan

## Goal
Make `portal.zenviktechnologies.com` visually match `zenviktechnologies.com` while keeping WHMCS safe, functional, and upgrade-aware.

The portal is a customer management system, not the main marketing website.

The main website is the design authority. Before editing any portal page, inspect the main-site and reuse its layout quality, typography, spacing, buttons, shadows, border radius, colours, animations, responsive behavior, and premium Zenvik visual style.

`template_v1` is not a design reference. It exists only to protect WHMCS functionality and logic.

The portal must look like the same Zenvik ecosystem while remaining a customer management system.

## Current Portal Structure

```text
portal-site/
├── template_v1/
└── template_v2/
```

## Template Rules
- `portal-site/template_v1` is the locked read-only WHMCS functionality authority only.
- `portal-site/template_v2` is the editable creative WHMCS template implementation area.
- Do not edit `template_v1`.
- Do not treat `template_v1` as a visual reference, design reference, or design target.
- `template_v2` is expected to visually diverge from `template_v1` and become a modern Zenvik customer portal.
- Future portal header and footer work should move toward the main-site visual language while preserving WHMCS logic.
- Do not copy outdated `/templates/six/` to `/templates/zenvik/` directions unless the repository structure is formally changed.
- Before portal edits, inspect this document, `template_v1`, and `template_v2`.
- Before modifying any WHMCS template, inspect `template_v1` only to preserve Smarty logic, WHMCS variables, includes, hooks, routes, forms, cart/domain/ticket/account behavior, guest logic, logged-in logic, and loading constraints.
- Reuse existing WHMCS functionality while creatively redesigning presentation in `template_v2`.
- Do not replace proven WHMCS logic with custom logic for visual reasons.

## Creative Implementation Rules
Codex has creative freedom inside `template_v2`.

Allowed visual work includes:
- Significant homepage layout redesigns
- Strong custom CSS
- Improved visual hierarchy
- Premium customer-center sections
- Better spacing, cards, shadows, buttons, and responsive behavior
- Tasteful animations that do not interfere with WHMCS loading or workflows
- Modern portal UI that is clearly different from default WHMCS
- Compatible Bootstrap utilities and components from the existing WHMCS Bootstrap version
- Existing Font Awesome icons and other assets already loaded by the template
- New supporting files scoped to the editable implementation when they are WHMCS-safe

Codex should act like a senior frontend engineer within WHMCS compatibility limits.

Compatible implementation means the work remains compatible with the existing WHMCS template stack, Smarty rendering, Bootstrap version, WHMCS scripts, overlays, forms, routes, and customer workflows.

## Forensic Audit Lessons
The previous endless-loading and layout failures were caused by broken WHMCS template contracts, not by modern visual design itself.

The key failure pattern was a mixed-generation or partial transplant:
- copying large parts of a broken theme tree instead of rebuilding selectively
- mixing incompatible Bootstrap/theme assets, markup, and scripts
- replacing WHMCS shell files without preserving their paired header/footer/script contract
- removing or bypassing dynamic WHMCS navigation, hooks, modals, overlays, and output blocks
- masking layout or loader problems with destructive CSS instead of fixing the source

Modern portal UI is still allowed inside `template_v2`, including ambitious homepage sections, authenticated workspace layouts, refined dashboards, and premium page styling. The limit is the WHMCS runtime contract.

Current `template_v1` and `template_v2` are Twenty-One style templates using the same WHMCS-compatible generation. Do not treat old Bootstrap mismatch warnings as a ban on modern design. Treat them as a ban on mixing framework generations or copying partial shell stacks.

## Change Risk Lanes
Use these lanes before starting portal work.

### Green Lane
These changes are generally safe when scoped to `template_v2` and verified responsively:
- custom CSS in the active template
- `zt-` prefixed visual wrappers and layout classes
- guest homepage section design
- typography, spacing, shadows, gradients, card styling, and responsive polish
- CSS-only animation that does not block loading
- local visual assets loaded through WHMCS-compatible template paths

### Amber Lane
These changes are allowed, but need stricter comparison against `template_v1` and live WHMCS QA:
- header and footer presentation changes
- authenticated client area shell changes
- dashboard layout wrappers
- account/profile menu simplification
- sidebar/navigation presentation changes
- login/register presentation changes
- service, billing, support, domain, download, invoice, and ticket page visual wrappers
- small local UI JavaScript that does not replace WHMCS scripts or block DOM ready

For amber-lane work, preserve the original WHMCS data surfaces and routes, then build the new interface around them.

### Red Lane
Do not do these without an explicit architecture decision and full WHMCS regression plan:
- editing `scripts.js`, `scripts.min.js`, or `whmcs.js`
- changing `theme.yaml` framework declarations
- replacing Bootstrap or adding another Bootstrap version
- replacing `theme.min.css` or other WHMCS foundation assets
- copying an entire broken theme tree over a working template
- hardcoding WHMCS navigation in place of dynamic `$primaryNavbar` or `$secondaryNavbar` without preserving equivalent WHMCS behavior
- disabling or globally hiding WHMCS overlays, loaders, modals, or body scroll to mask bugs
- changing orderform, cart, invoice, payment, ticket, or clientarea business logic

## Loader And Overlay Safety
Never hide loader or overlay problems with broad CSS.

Avoid:
- `#fullpage-overlay { display: none !important; }`
- global `html, body { overflow-x: hidden; }` as a layout fix
- custom preloaders or blocking loaders
- JavaScript that must run before WHMCS can finish its own ready sequence

If loading gets stuck, inspect the exact overlay element, asset path, hidden class, Bootstrap behavior, console errors, and WHMCS script contract before changing CSS.

## Safe File Creation
Codex may create new files when they are needed for the task and do not affect WHMCS functionality.

Allowed examples:
- Custom CSS files loaded through existing WHMCS-compatible asset paths
- Small `template_v2` partials that preserve Smarty behavior and required includes
- Local static assets that do not replace WHMCS core assets
- Documentation files

Do not create files that:
- Override WHMCS core files
- Replace `scripts.js`, `scripts.min.js`, `whmcs.js`, Bootstrap, orderforms, invoice logic, ticket logic, cart logic, or clientarea logic
- Bypass required includes, hooks, Smarty variables, overlays, or routes
- Add another Bootstrap version or incompatible frontend framework
- Require dependency changes unless explicitly approved

## Portal Responsibilities
The WHMCS portal handles:
- Login
- Registration
- Customer accounts
- Billing
- Client area workflows
- Invoices and payments
- Support
- Tickets
- Checkout
- Customer care

Marketing is secondary inside the portal.

The main website remains responsible for:
- Service marketing
- Pricing
- Hosting pages
- Blogs
- FAQs
- Legal pages
- Domains
- Detailed service information

## Portal Homepage Rules
The portal homepage must not be used for:
- Hosting plans as the dominant focus
- Pricing pages
- Full service marketing
- Domain search as the main experience
- Blog or broad service discovery
- A condensed version of the main website

The portal homepage should focus on:
- Login
- Registration
- Account management
- Invoices
- Support and tickets
- Checkout continuity
- Customer care
- Light guidance back to the main website for service discovery

The portal homepage should be:
- Premium
- Modern
- Customer-focused
- Visually aligned with the main-site
- Clearly different from default WHMCS
- Creative and polished

It should not become a full duplicate of the main website.

Cross-marketing is optional, subtle, contextual, and secondary to customer workflows.

## Portal Cross-Marketing Philosophy
Portal cross-marketing should use brief conversational prompts placed naturally between customer-focused content.

Each prompt should:
- Introduce only one idea.
- Remain visually lightweight.
- Spark curiosity.
- Link users back to the main website.
- Avoid predictable service sections.
- Avoid introducing every service.
- Never explain an entire service.
- Never contain pricing tables.
- Never contain service cards.
- Never duplicate service pages.

Cross-marketing opportunities should generally follow this revenue priority:
1. Hosting & Cloud
2. Website & Software Development
3. Marketing & Branding
4. ICT Services

This is a business priority, not a homepage section order.

## WHMCS Safety Rules
Do not edit WHMCS core files.

Preserve:
- Smarty variables
- WHMCS routes
- Hooks
- Includes
- Overlays
- Bootstrap version
- JavaScript files
- Orderforms
- Invoice logic
- Ticket logic
- Cart logic
- Clientarea logic

Do not replace WHMCS behavior with custom marketing-site behavior.

Use the existing WHMCS-compatible Bootstrap version already present in `template_v2`. Bootstrap classes and components are allowed when they are compatible with the installed version and do not conflict with WHMCS behavior.

Do not add external design libraries, dependency changes, conflicting framework assets, another Bootstrap version, or incompatible scripts unless explicitly approved.

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

If uncertain:
- Preserve existing functionality.
- Improve presentation around the existing behavior.

## Permanent Development Workflow
For every development task, apply the relevant parts of this workflow. For portal work, every step is required:
1. Read `AGENTS.md`.
2. Read the relevant documentation.
3. Inspect the main-site for design direction.
4. Inspect `template_v1` only for WHMCS functionality and logic.
5. Edit `template_v2` creatively.
6. Preserve WHMCS behavior.
7. Use only the existing compatible Bootstrap version and compatible frontend techniques.
8. Produce a polished result.
9. Report files changed and tests needed.

## Editable Surface
Only `template_v2` may be changed for portal implementation work.

Allowed work in `template_v2`:
- Brand-aligned visual styling
- Creative layout redesigns
- Strong custom CSS
- Premium visual hierarchy
- Compatible Bootstrap utilities and components
- Existing compatible icons/assets
- Header and footer presentation
- Login/register presentation
- Client dashboard presentation
- Support/ticket presentation
- Invoice/payment presentation
- Checkout presentation

Every custom portal CSS class must use the `zt-` prefix.

## Shared Brand Rules
Use the same:
- Logo direction
- Primary Blue: `#043a7e`
- Gold Accent: `#7a6200`
- CTA Orange: `#dfa408`
- Button style
- Card style
- SaaS spacing
- Trust-focused tone

The main-site is the visual authority. The portal should feel like the same Zenvik ecosystem while remaining a WHMCS customer portal.

`template_v1` must not be used for design direction.

Before editing portal UI, reuse main-site:
- Typography
- Spacing
- Buttons
- Shadows
- Border radius
- Colours
- Animations
- Component styling

## Safety
If a portal template change breaks behavior:
- Stop editing.
- Compare against `template_v1`.
- Restore the affected behavior in `template_v2`.
- Test locally before deployment.
