# Zenvik Technologies Portal

This folder contains frontend/theme files for portal.zenviktechnologies.com.

Purpose:
- WHMCS customer portal
- Cart and checkout styling
- Login and registration styling
- Client dashboard styling
- Hosting/domain/payment pages

Important:
Only edit frontend/theme files.
Do not edit WHMCS core files.
The visual style must match zenviktechnologies.com.

Architecture:
- `template_v1` is the locked WHMCS functionality reference.
- `template_v2` is the editable modern portal implementation.
- Follow `../docs/portal/WHMCS-ARCHITECTURE.md` before changing portal templates.

Forensic safety:
- Modern UI work is allowed in `template_v2` when WHMCS functionality is preserved.
- Do not copy broken theme trees or mix framework generations.
- Do not edit WHMCS scripts, overlay behavior, orderform logic, invoice logic, ticket logic, or cart logic unless explicitly planned.
- Do not hide loader/layout problems with destructive CSS such as forced overlay hiding or global overflow masking.
