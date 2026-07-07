# WHMCS Architecture Plan

## Goal
Make `portal.zenviktechnologies.com` visually match `zenviktechnologies.com` while keeping WHMCS safe, functional, and upgrade-aware.

The portal is a customer management system, not the main marketing website.

The main website is the design authority. Before editing any portal page, inspect the main-site and reuse its typography, spacing, buttons, shadows, border radius, colours, animations, and component styling. The portal must look like the same Zenvik ecosystem, and components that already exist on the main website should not be redesigned.

## Current Portal Structure

```text
portal-site/
├── template_v1/
└── template_v2/
```

## Template Rules
- `portal-site/template_v1` is the locked read-only functionality reference.
- `portal-site/template_v2` is the only editable WHMCS template implementation.
- Do not edit `template_v1`.
- Do not copy outdated `/templates/six/` to `/templates/zenvik/` directions unless the repository structure is formally changed.
- Before portal edits, inspect this document, `template_v1`, and `template_v2`.
- Before modifying any WHMCS template, inspect `template_v1` and identify Smarty variables, includes, homepage conditions, guest logic, logged-in logic, and hooks.
- Reuse existing functionality.
- Wrap new UI around existing functionality.
- Never rebuild homepage logic from scratch.

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
- Disable overlay behavior.
- Hide the body while waiting for custom JavaScript.
- Introduce JavaScript that blocks DOM ready.
- Replace homepage logic instead of extending it.

If uncertain:
- Preserve existing functionality.
- Only wrap new content around it.

## Permanent Development Workflow
For every development task, apply the relevant parts of this workflow. For portal work, every step is required:
1. Read `AGENTS.md`.
2. Read the relevant documentation.
3. Inspect main-site design.
4. Inspect `template_v1`.
5. Edit `template_v2`.
6. Preserve WHMCS functionality.
7. Match main-site visual language.
8. Make incremental changes.
9. Report files changed.

## Editable Surface
Only `template_v2` may be changed for portal implementation work.

Allowed work in `template_v2`:
- Brand-aligned visual styling
- Safer layout refinements
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
