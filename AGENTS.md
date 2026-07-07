# Zenvik Technologies Agent Rules

## Permanent Architecture
- `main-site` is the design and marketing authority for `zenviktechnologies.com`.
- `portal-site` is the WHMCS customer management system for `portal.zenviktechnologies.com`.
- `portal-site/template_v1` is the locked reference.
- `portal-site/template_v2` is the editable implementation.

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
- Do not upgrade or replace Bootstrap.
- Do not remove WHMCS scripts, overlays, hooks, Smarty variables, or includes.
- Do not remove or rewrite orderforms, invoice logic, ticket logic, cart logic, or clientarea logic.

## Scope Rules
- Do not add unrelated features.
- Keep changes incremental and reversible.
- Before main-site edits, inspect the main-site docs and current design/source files.
- Before portal edits, inspect `docs/portal/WHMCS-ARCHITECTURE.md`, `template_v1`, and `template_v2`.
- Always report files changed.
