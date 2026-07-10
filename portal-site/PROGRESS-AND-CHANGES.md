# Portal Site Progress and Changes

This file tracks high-level progress and implementation changes for `portal-site`.
Use this file for project updates that are useful between development sessions. Detailed source-of-truth rules remain in `AGENTS.md` and `/docs`, especially `docs/portal/WHMCS-ARCHITECTURE.md`. If this file conflicts with those documents, follow the documented rules.

## Update Rules

- Keep entries short, dated, and reviewable.
- Record meaningful template, styling, asset, compatibility, and WHMCS safety changes.
- Always report whether changes were made in `template_v2`.
- Note any `template_v1` inspection used to preserve Smarty logic, WHMCS variables, includes, hooks, routes, forms, account/cart/domain/ticket behavior, guest logic, logged-in logic, or loading constraints.
- Note verification performed, such as static checks, template comparison, browser review, or manual WHMCS QA.
- Keep portal updates separate from main-site work unless a task explicitly spans both.

## Current Direction

- `portal-site` is the WHMCS customer portal for accounts, billing, support, checkout, invoices, tickets, and customer care.
- `portal-site/template_v1` is the locked functionality authority and must not be edited.
- `portal-site/template_v2` is the editable creative implementation area.
- Strong creative design is allowed inside `template_v2` when it remains compatible with WHMCS behavior.
- Supporting files are allowed when they are scoped to the editable implementation, loaded through WHMCS-compatible paths, and do not replace or disrupt WHMCS functionality.
- Custom portal CSS classes must use the `zt-` prefix.
- Homepage work is controlled section by section. If the user asks for one section or one issue, only that section or issue may be changed.
- Do not introduce new design ideas, adjacent fixes, layout changes, colors, copy, files, effects, or section-level changes unless the user explicitly requests them.
- If an improvement outside the stated scope seems useful, ask first and wait before editing.

## Compatibility Notes

- Do not modify `scripts.js`, `scripts.min.js`, or `whmcs.js`.
- Do not remove WHMCS scripts, overlays, hooks, Smarty variables, includes, orderforms, invoice logic, ticket logic, cart logic, or clientarea logic.
- Do not add another Bootstrap version, conflicting framework assets, incompatible scripts, or dependency changes unless explicitly approved.
- If functionality is uncertain, inspect `template_v1` and build around the existing behavior in `template_v2`.
- Modern portal design is allowed when the WHMCS runtime contract remains intact.
- The old endless-loading failure pattern came from mixed template/framework generations, broken shell contracts, and symptom-masking CSS, not from visual polish itself.
- Treat homepage/CSS visual work as lower risk, shell/header/dashboard/page-wrapper work as medium risk, and WHMCS scripts/framework/overlay/orderform/invoice logic as red-line work unless explicitly planned.

## Progress Log

### 2026-07-10

- Rolled back the authenticated/logged-in workspace shell changes in `template_v2`.
- Removed the custom logged-in sidebar, Support PIN card markup, workspace wrapper, shell body class, shell footer closing logic, shell copy/collapse JavaScript, and shell-only CSS.
- Restored the logged-in client area page wrapper to the normal Twenty-One-style `main-body`, container, row, sidebar, and primary-content structure.
- Did not modify guest homepage sections, hero, Section 2, Section 3, header navigation behavior, footer content, WHMCS scripts, orderforms, invoices, tickets, cart, or client dashboard templates.

### 2026-07-09

- Refined guest homepage Section 3 only, keeping Hero, Section 2, Customer Reviews, Support & Resources, FAQ, header, footer, WHMCS scripts, and functional templates unchanged.
- Changed the Section 3 background to `#cee9ea` with subtle brand-blue glow and grid texture.
- Updated `Get Started in Minutes` and `Need a New Digital Solution?` heading treatment to use Zenvik Primary Blue.
- Improved onboarding cards with visible thin blue edging, soft blue glow, accent hover states, and more polished step-number pills.
- Reworked service chips into a safer staggered grid/flex-responsive layout so the pills no longer overlap and keep proper spacing across breakpoints.
- Verified with static Playwright at 1440, 1024, 768, 390, and 320px; confirmed seven service chips, zero chip overlaps, `#cee9ea` computed background, blue headings, and no horizontal overflow.

### 2026-07-09

- Converted the active hero PNG into a real transparent-background RGBA asset so the blue hero background shows through.
- Replaced the previous dark/grey-backed hero image at `template_v2/twenty-one/img/hero-portal-illustration.png`.
- Verified the PNG reports RGBA transparency with 1,061,708 transparent pixels and rechecked the hero with static Playwright at 1440, 1024, 768, 390, and 320px.

### 2026-07-09

- Refined the guest homepage hero to use the local `portal-site/hero-portal-illustration.png` asset through a WHMCS-safe template image path.
- Copied the hero PNG into `template_v2/twenty-one/img/hero-portal-illustration.png` for deployment with the active template.
- Replaced the CSS-built hero workspace fragments with the image-based hero visual while keeping the required portal copy and two primary actions.
- Removed the extra `Visit Main Website` hero action to keep the portal hero focused and tighter.
- Reduced hero top padding, vertical gaps, copy spacing, image sizing, and mobile trust-strip height.
- Verified with static Playwright at 1440, 1024, 768, 390, and 320px; confirmed the image loads, exactly two actions render, and no horizontal overflow appears.

### 2026-07-09

- Updated guest homepage Section 2, `One Portal. Complete Control.`, to use the Zenvik Primary Blue section background.
- Adjusted Section 2 heading/copy contrast, board surface, and PCB trace colors so the existing control-board layout reads properly on blue.
- Verified with static Playwright at 1440, 1024, 768, 390, and 320px; confirmed blue background, white heading, four modules, central hub, and no horizontal overflow.

### 2026-07-09

- Refined guest homepage Section 2, `One Portal. Complete Control.`, without changing the hero, header/footer, WHMCS scripts, checkout, invoices, tickets, or authenticated client workflows.
- Kept the PCB/control-board direction but added a central `Customer Portal` hub so the section reads as one connected workspace instead of loose modules.
- Improved module spacing, hierarchy, board depth, traces, and responsive tablet/mobile stacking.
- Tightened section height after the first viewport render showed the board was too tall.
- Verified the section with a static Playwright render at 1440, 1024, 768, 390, and 320px; confirmed four modules render, the central hub renders, and no horizontal overflow appears.

### 2026-07-09

- Performed a Phase 2 Step 1 compatibility rollback for the authenticated client workspace shell.
- Restored original Twenty-One logged-in topbar/header/profile behavior from `template_v1` by removing the custom shell topbar, custom notification display, and simplified Profile/Logout dropdown from `template_v2`.
- Kept the client workspace sidebar, Support PIN card, system status block, workspace background, and main content wrapper.
- Removed the sidebar company-name/logo text and reduced the visual size of the Support PIN card as requested.
- Kept WHMCS scripts, overlays, Bootstrap assets, orderforms, invoices, tickets, cart logic, dashboard widgets, and core functionality untouched.
- Verified header parity against `template_v1`, `php -l`, `git diff --check`, forbidden overlay/script/custom-profile greps, and a static Playwright viewport pass at 1440, 1024, 768, 390, and 320px with no horizontal overflow.

### 2026-07-09

- Reviewed the previous forensic audit covering endless loading, responsiveness, header/footer coupling, safe design ideas, dangerous changes, and recovery strategy.
- Confirmed the audit does not prevent strong modernization inside `template_v2`; it requires keeping one coherent WHMCS/Twenty-One contract and avoiding partial framework or shell transplants.
- Updated `docs/portal/WHMCS-ARCHITECTURE.md` with forensic audit lessons, green/amber/red change lanes, and loader/overlay safety rules.
- Reinforced that future work may be visually ambitious when it preserves Smarty variables, hooks, routes, modals, overlays, Bootstrap compatibility, WHMCS scripts, and customer workflows.

### 2026-07-09

- Implemented Phase 2 Step 1 authenticated client area workspace shell in `template_v2`.
- Added a logged-in workspace sidebar with logo, Support PIN card, primary customer navigation, and system status area while leaving dashboard widgets unchanged.
- Added a minimal shell top bar with page label, notifications count, and a simplified Profile/Logout dropdown.
- Scoped the soft faded blue workspace background, sidebar, topbar, content surface, responsive drawer, and collapse styles to `zt-` prefixed client shell classes.
- Extended the existing Support PIN hook to expose `ztSupportPin` to Smarty after ensuring the database-backed PIN exists.
- Preserved WHMCS footer, overlay, modals, scripts, orderforms, invoices, tickets, cart logic, and dashboard templates; checkout/cart pages remain outside the shell.
- Verified `php -l`, `git diff --check`, forbidden overlay/script grep, and a static Playwright shell layout pass at 1440, 1024, 768, 390, and 320px with no horizontal overflow.

### 2026-07-08

- Refined the guest homepage Hero section only, keeping Section 2, Section 3, Customer Reviews, Support & Resources, FAQ, header, footer, and WHMCS workflows unchanged.
- Rebuilt the right-side visual as a lightweight CSS/HTML integrated portal workspace scene instead of a separate laptop/image object.
- Added layered blue background depth with radial glow, blueprint grid, faint geometry, particles, light sweep, and gentle CSS-only motion.
- Preserved the required portal copy, Login and Create Account actions, and trust strip, while adding the secondary `Visit Main Website` link.
- Improved hero typography spacing, button hover states, trust-strip styling, and responsive behavior from desktop to 320px mobile.
- Confirmed `portal-site/hero.png` was not present on disk during this pass; no image asset was placed directly, and the new illustration remains CSS-native.
- Rechecked desktop, laptop, tablet, mobile, and 320px layouts with Playwright static rendering; confirmed no horizontal overflow, the mobile hero keeps workspace/glow only, and no WHMCS scripts or functional templates were touched.

### 2026-07-08

- Refined the guest homepage `Support & Resources` section only, keeping Hero, Sections 2/3, Customer Reviews, FAQ, header, footer, and WHMCS workflows unchanged.
- Upgraded the primary blue support background with a soft gradient, radial glow, low-opacity blueprint grid, faint technology lines, moving light sweep, and subtle CSS particles.
- Added the `SUPPORT CENTER` eyebrow, gold accent line, centered heading, and support-focused subtitle.
- Reworked the resource ribbon into a premium CSS-only Support Command Ribbon with glassmorphism capsules, edge fades, continuous right-to-left scrolling, and hover pause.
- Preserved the existing WHMCS-safe resource routes and included the 12 available resources already represented in the template.
- Added a compact micro status bar below the ribbon for support availability, secure portal, ticket response, knowledge base, and network monitoring.
- Rechecked desktop, tablet, mobile, and 320px layouts with Playwright static rendering; confirmed animation runs, hover pauses it, 12 real resources plus 12 loop duplicates render, five status indicators render, and no horizontal overflow appears.

### 2026-07-08

- Refined the guest homepage Customer Reviews section, `Trusted by Businesses. Backed by Great Support.`, without changing Hero, Sections 2/3, Support & Resources, FAQ, header, footer, or WHMCS workflows.
- Added the `CUSTOMER REVIEWS` eyebrow with a gold accent line and removed any need for supporting subtitle text.
- Upgraded the reviews area to a premium CSS-only continuous right-to-left carousel with edge fades and pause-on-hover behavior.
- Reworked review cards with larger gold stars, stronger typography, generous padding, soft shadows, rounded corners, and gold hover glow.
- Added compact trust indicators below the carousel for rated support, 24/7 assistance, fast ticket response, technical team quality, and secure portal confidence.
- Rechecked desktop, tablet, mobile, and 320px layouts with Playwright static rendering; confirmed animation runs, hover pauses it, 12 carousel cards render, five trust indicators render, and no horizontal overflow appears.

### 2026-07-08

- Refined guest homepage Section 6, `Frequently Asked Questions`, into a premium Help Center finish without changing other homepage sections.
- Added a blue Help Center header with subtle radial glow, grid texture, light sweep, centered eyebrow, heading, and subtitle.
- Moved the FAQ accordion into a floating white content shell with improved spacing, shadows, borders, rounded corners, and modern expand indicators.
- Preserved the four existing FAQ questions and Bootstrap `data-parent` collapse behavior so only one item remains open.
- Added the `Still Need Help?` CTA with WHMCS-safe links to support ticket submission and the knowledge base.
- Rechecked desktop, tablet, mobile, and 320px layouts with Playwright static rendering; confirmed no horizontal overflow, four FAQ items, two CTA buttons, and one visible FAQ body with Bootstrap collapse display.

### 2026-07-08

- Refined guest homepage Section 3, `Get Started in Minutes`, without changing its purpose, wording, links, layout concept, or cross-promotion content.
- Changed the Section 3 background to a soft faded blue treatment with subtle radial glow and a low-opacity grid pattern to separate it from Section 2.
- Lightened the onboarding step cards, improved step-number visibility, reduced icon scale, added a subtle desktop gold progress line, and kept mobile stacked without the line.
- Improved the `Need a New Digital Solution?` panel depth, spacing, shadow, and floating white-panel feel above the blue background.
- Reworked service-chip layout into a controlled staggered composition with no overlaps, stronger spacing, improved hover lift, gold accent, and arrow motion.
- Rechecked desktop, tablet, and 320px mobile with Playwright; confirmed no chip overlaps, no horizontal overflow, and responsive Section 3 behavior.

### 2026-07-08

- Redesigned guest homepage Section 2, `One Portal. Complete Control.`, from the previous network/node layout into a premium PCB-inspired board.
- Removed the Section 2 center dashboard, node graphics, connection-line SVG, and old `Portal Control Network` kicker from the active markup.
- Preserved the original section purpose, heading, description, feature groups, and WHMCS-safe links.
- Added four microchip-style modules with blue headers, outlined icons, gold status indicators, subtle PCB traces, and responsive stacked mobile behavior.
- Rechecked desktop, tablet, and 320px mobile with Playwright; confirmed four modules render, no old network stage/nodes remain, and no horizontal overflow appears.

### 2026-07-08

- Reverted the guest homepage hero back to the pre-SVG CSS illustration treatment.
- Removed the temporary SVG/image hero illustration asset from `template_v2`.
- Restored the right-side hero visual to the lightweight CSS laptop/dashboard composition.
- Rechecked desktop, tablet, and 320px mobile with Playwright; confirmed no SVG hero asset is used, desktop/tablet show the CSS laptop, mobile remains clean, and no horizontal overflow appears.

### 2026-07-08

- Reverted the guest homepage hero away from the bad full-background staged SVG treatment.
- Added a new fitted transparent SVG illustration, `zt-portal-hero-illustration.svg`, for the right side of the hero.
- Restored the hero to a clean blue gradient background with the illustration rendered as a contained visual asset, not a cropped wallpaper.
- Removed the unused staged/template SVG copies created during the previous experiment.
- Rechecked desktop, tablet, and 320px mobile with Playwright; confirmed the illustration fits, mobile remains clean, and no horizontal overflow appears.

### 2026-07-08

- Reworked guest homepage Section 2 after live review feedback.
- Replaced the center text block with a visual-only CSS dashboard/control-hub illustration.
- Improved the four surrounding network nodes with stronger surfaces, meta labels, clearer hierarchy, and stable natural-height cards.
- Restored desktop network connection lines with subtle animated flow and moving pulses while keeping lines hidden on small screens.
- Added more reliable separation before Section 3 and removed fade-in opacity issues that made cards appear partially missing on mobile.
- Rechecked desktop and 320px mobile with Playwright; confirmed no horizontal overflow, all Section 2 node cards visible, and the center contains no visible text.

### 2026-07-08

- Removed the pasted PNG hero image treatment and deleted the copied `zt-portal-hero.png` template asset.
- Added a scoped inline homepage hotfix to force true full-bleed guest homepage width inside the WHMCS container.
- Recreated the hero laptop/dashboard visual as lightweight HTML/CSS in the same right-side position, without the previous blue image block behind it.
- Tightened Section 2 and Section 3 spacing so network and launch cards no longer stretch into tall empty columns or overlap following content.
- Rechecked desktop and 320px mobile with Playwright; confirmed no side gutters, no hero image elements, no horizontal overflow, and no launch/promo overlap.

### 2026-07-08

- Fixed the guest homepage width issue by making `.zt-guest-home` full-bleed inside the WHMCS content container without changing header/footer structure.
- Replaced the custom-built hero device illustration with the actual laptop-style `hero.png` visual, copied into `template_v2/twenty-one/img/zt-portal-hero.png` for WHMCS-safe template loading.
- Kept the same laptop visual visible on tablet and mobile, stacked below the hero copy instead of switching to a separate mobile illustration.
- Removed mobile image overlap by restoring the hero visual to normal document flow on small screens.
- Forced homepage section modules to render visible by default so load/animation timing does not leave cards faded or half-rendered.
- Rechecked desktop, tablet, and 320px mobile with Playwright; confirmed full desktop width, visible laptop image, and no horizontal overflow.

### 2026-07-08

- Fixed the guest homepage cascade issue where the inline safety CSS could flatten the richer `custom.css` homepage design.
- Added a post-critical `custom.css` stylesheet load inside the guest homepage so the safety fallback remains available without overriding the final design.
- Polished the guest homepage wording and visual hierarchy across the control network, launch path, service prompt, support ribbon, and mobile layout.
- Strengthened node/card contrast, center portal visibility, icon fallback surfaces, support-ribbon heading contrast, and mobile service-chip stacking.
- Rechecked the rendered homepage with Playwright at 1440px and 320px; confirmed no horizontal overflow, desktop hero visual active, mobile hero visual simplified, and support heading contrast fixed.

### 2026-07-08

- Fixed a live-render styling failure where updated homepage markup could load with stale `custom.css`.
- Added a cache-busting query suffix to the `template_v2` custom stylesheet include in `includes/head.tpl`.
- Added defensive SVG `fill`, `stroke`, and line attributes to the Section 2/3 connection paths so missing/stale CSS cannot render black filled SVG shapes.
- Verified the launch-path SVG no longer renders as a black blob even without custom CSS loaded.

### 2026-07-08

- Added guest homepage Section 4, `Customer Support & Resources`, after `Get Started in Minutes` in `template_v2`.
- Replaced the old post-Section-3 guest content with the requested final support structure: review marquee, blue support resource command ribbon, and FAQ accordion.
- Added CSS-only continuous marquee animations for reviews and support resources, with pause-on-hover behavior and responsive edge fading.
- Used WHMCS/Bootstrap-compatible accordion markup for the FAQ without adding custom JavaScript or editing WHMCS scripts.
- Verified desktop, tablet, mobile, and 320px layouts with Playwright; confirmed 12 live resource links, 12 duplicate ribbon items for looping, hover pause states, and no horizontal overflow.

### 2026-07-08

- Added guest homepage Section 3, `Get Started in Minutes`, immediately after `Portal Control Network` in `template_v2`.
- Built a CSS/SVG `Launch Path` journey with four milestones, path drawing, path pulse, staggered milestone animation, and hover lift/brighten behavior.
- Added the split cross-promotion area with a main-site services CTA and floating service chips for website, software, hosting, domain, AI, branding, and ICT services.
- Verified desktop, tablet, mobile, and 320px layouts with Playwright; mobile uses a vertical path and wrapped chips with no horizontal overflow.

### 2026-07-08

- Replaced the guest homepage Section 2 with `Portal Control Network` directly after the hero in `template_v2`.
- Added a centered glassmorphism customer portal card, four surrounding connected workflow nodes, SVG/CSS connection lines, pulse motion, and CSS-only hover assist text.
- Preserved the hero, header, footer, WHMCS scripts, orderforms, cart, invoices, domains, tickets, and client dashboard templates.
- Verified desktop, laptop, tablet, mobile, and 320px layouts with Playwright; mobile stacks the network and hides/simplifies connection lines.

### 2026-07-08

- Strengthened the guest hero right-side illustration in `template_v2` using `portal-site/hero.png` as visual inspiration only.
- Reworked the CSS illustration toward the reference image's blue panel, dark laptop frame, white/silver dashboard surface, gold accents, and cloud/domain/support/security cues.
- Kept tablet and mobile behavior as integrated blue-background decoration with no separate foreground mobile illustration.
- Rechecked desktop, laptop, tablet, mobile, and 320px widths with Playwright after the illustration update.

### 2026-07-08

- Removed the foreground mobile/tablet compact illustration treatment.
- Converted tablet and mobile hero illustration cues into soft background decoration so the visual feels integrated into the blue hero rather than placed as a separate mobile design.
- Rechecked tablet, mobile, and 320px hero screenshots with Playwright after the change.

### 2026-07-08

- Ran Playwright Chromium viewport checks for the guest hero at 1440, 1366, 1024, 768, 390, and 320px widths.
- Confirmed no horizontal scrolling in the rendered WHMCS container simulation.
- Compact hero sizing was adjusted after the first browser pass found the desktop/tablet illustration too tall.
- Saved verification screenshots under `/tmp/zt-hero-final-desktop.png`, `/tmp/zt-hero-final-tablet.png`, and `/tmp/zt-hero-final-mobile-320.png`.

### 2026-07-08

- Reviewed and refined the `template_v2` guest homepage hero.
- Fixed required hero text: eyebrow, heading, support copy, two actions, and trust strip labels.
- Removed direct `hero.png` placement from the hero; used it only as inspiration for a CSS/HTML premium 3D portal illustration.
- Tightened hero sizing, desktop composition, mobile stacking, and 320px-friendly button/visual behavior.
- Preserved WHMCS scripts, overlays, `template_v1`, invoice behavior, and logged-in homepage logic.

### 2026-07-08

- Created this progress and changes tracker.
- Confirmed current portal architecture uses `template_v1` as read-only WHMCS functionality reference and `template_v2` as the editable creative implementation area.
- Confirmed creativity is not restricted when the implementation remains WHMCS-compatible and customer-workflow safe.
- No WHMCS template files changed as part of this tracker setup.

## Change Log

### 2026-07-08

- Updated `portal-site/template_v2/twenty-one/homepage.tpl` for guest hero copy, actions, trust strip, and CSS-driven illustration markup.
- Updated `portal-site/template_v2/twenty-one/css/custom.css` for responsive hero sizing and the new 3D portal illustration.

### 2026-07-08

- Added `portal-site/PROGRESS-AND-CHANGES.md` for future portal progress and change notes.
