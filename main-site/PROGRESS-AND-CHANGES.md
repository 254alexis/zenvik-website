# Main Site Progress and Changes

This file tracks high-level progress and implementation changes for `main-site`.

Use this file for project updates that are useful between development sessions. Detailed source-of-truth rules remain in `AGENTS.md` and `/docs`. If this file conflicts with those documents, follow the documented rules.

## Update Rules

- Keep entries short, dated, and reviewable.
- Record meaningful design, content, SEO, architecture, dependency, and deployment changes.
- Do not duplicate commit history line by line.
- Note verification performed, such as lint, build, browser review, or manual QA.
- Keep main-site updates separate from portal work unless a task explicitly spans both.

## Current Direction

- `main-site` is the marketing, sales, SEO, service discovery, and brand authority for `zenviktechnologies.com`.
- The site should stay broad across software, websites, hosting/cloud, marketing/branding, ICT, and AI.
- The main-site visual system guides portal styling, but WHMCS customer workflows remain in `portal-site`.

## Progress Log

### 2026-07-08

- Installed Playwright as a `main-site` dev dependency and downloaded the Chromium browser binary for screenshot/viewport testing.
- Installed required Linux system dependencies for Playwright Chromium.
- Verified Chromium launches successfully when Playwright commands are allowed to run outside the command sandbox.
- Ran `npm audit`; remaining findings are in existing `@babel/core` and `vite` dependency ranges and can be addressed separately with `npm audit fix`.

### 2026-07-08

- Created this progress and changes tracker.
- Confirmed existing Markdown documentation already covers brand, production, SEO, architecture, homepage strategy, services, UI/UX, and website boundaries.
- No source files changed as part of this tracker setup.

## Change Log

### 2026-07-08

- Updated `main-site/package.json` and `main-site/package-lock.json` with Playwright.

### 2026-07-08

- Added `main-site/PROGRESS-AND-CHANGES.md` for future main-site progress and change notes.
