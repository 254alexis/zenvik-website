# Production Rules for Zenvik Technologies

## Build Requirement
The main-site must remain compatible with cPanel hosting through a static/frontend-first build.

Allowed for the main-site:
- HTML
- CSS
- JavaScript
- React/Vite when the final build exports static files

Avoid on the main-site:
- Server-side-only framework features
- Backend logic inside frontend pages
- Database dependency for marketing content
- Anything that cannot run from normal cPanel hosting after build

## Portal Requirement
The portal is WHMCS. Production safety depends on preserving WHMCS behavior.

For portal work:
- Do not edit WHMCS core files.
- Do not edit `portal-site/template_v1`.
- Only edit `portal-site/template_v2`.
- Do not upgrade or replace Bootstrap.
- Do not remove WHMCS scripts, overlays, hooks, Smarty variables, includes, orderforms, invoice logic, ticket logic, cart logic, or clientarea logic.

## Quality Standard
Both properties must be:
- Production-grade
- Fast-loading
- Mobile responsive
- Accessible
- Secure
- Professional
- Visually aligned with the Zenvik ecosystem

The main-site should be competitive with modern ICT, hosting, software, AI, and digital agency websites. The portal should be a clear, reliable customer-care system.

## Development Method
- Work step by step.
- Keep changes incremental and reversible.
- Do not mix main-site and portal-site files unless the task explicitly requires both.
- Main-site defines the brand style.
- Portal-site should visually match the main-site without becoming a marketing homepage.
- Report all files changed.

## Animation Requirements
- Use modern, smooth animations on the main-site when they support the message.
- Keep animations lightweight and fast.
- Avoid motion that slows the site or distracts from conversion.
- Respect mobile performance.
- Keep the experience usable without animations.

Portal animation should be minimal and functional. Customer workflows should feel stable, not theatrical.
