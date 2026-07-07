# Master Codex Development Rules

## Permanent Architecture
1. `zenviktechnologies.com` is the main marketing and sales website.
2. `portal.zenviktechnologies.com` is the WHMCS customer portal.
3. The main-site handles service discovery, hosting marketing, domains, software, websites, marketing, ICT services, AI services, blog, FAQs, legal pages, and pricing pages.
4. The WHMCS portal handles customer accounts, invoices, tickets, checkout, support, and customer care only.
5. The portal homepage must not become a hosting sales homepage.
6. The portal homepage may lightly guide users back to the main website.
7. The main-site is the visual and design authority.
8. `portal-site/template_v1` is the locked functionality reference.
9. `portal-site/template_v2` is the only editable WHMCS template implementation.
10. Portal and main-site must look like one Zenvik ecosystem.

## AI Workflow Rules
- Keep changes incremental, reviewable, and reversible.
- Before main-site edits, inspect the relevant files in `docs/main-site/` plus the current main-site design/source files.
- Before portal edits, inspect `docs/portal/WHMCS-ARCHITECTURE.md`, `portal-site/template_v1`, and `portal-site/template_v2`.
- Never edit `portal-site/template_v1`.
- Only edit `portal-site/template_v2` for portal implementation work.
- Always report the files changed at the end of the task.
- Do not add unrelated features while completing a focused request.
- Preserve approved wording, structure, and routes unless the user explicitly asks to change them.

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
- Preserve JS files, orderforms, invoice logic, ticket logic, cart logic, and clientarea logic.
- Do not replace WHMCS core behavior with custom marketing-site logic.
- Do not move domain search, hosting pricing, or full service marketing into the portal homepage.
- Custom portal CSS classes must use the `zt-` prefix.

## Brand Rules
- Use Zenvik brand colors only:
  - Primary Blue: `#043a7e`
  - Gold Accent: `#7a6200`
  - CTA Orange: `#dfa408`
- Main-site styling defines the visual direction.
- Portal styling should match the ecosystem while remaining a customer management interface.

## Production Rules
- Do not mix main-site and portal-site changes unless the task explicitly requires both.
- Do not edit WHMCS core files.
- Do not edit locked references.
- Verify documentation links and paths after moving or restructuring docs.
