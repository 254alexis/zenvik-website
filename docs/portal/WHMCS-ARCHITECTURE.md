# WHMCS Architecture Plan

## Goal
Make `portal.zenviktechnologies.com` visually match `zenviktechnologies.com` while keeping WHMCS safe, functional, and upgrade-aware.

The portal is a customer management system, not the main marketing website.

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

## Portal Responsibilities
The WHMCS portal handles:
- Login
- Registration
- Customer accounts
- Client area workflows
- Invoices and payments
- Support
- Tickets
- Checkout
- Customer care

## Portal Homepage Rules
The portal homepage must not be used for:
- Hosting plans as the dominant focus
- Pricing pages
- Full service marketing
- Domain search as the main experience
- Blog or broad service discovery

The portal homepage should focus on:
- Login
- Registration
- Account management
- Invoices
- Support and tickets
- Checkout continuity
- Customer care
- Light guidance back to the main website for service discovery

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

## Safety
If a portal template change breaks behavior:
- Stop editing.
- Compare against `template_v1`.
- Restore the affected behavior in `template_v2`.
- Test locally before deployment.
