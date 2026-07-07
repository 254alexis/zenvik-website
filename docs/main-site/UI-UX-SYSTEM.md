# Zenvik Technologies UI/UX System

## Overall Design Direction
Zenvik should feel like a premium technology partner across both the main-site and portal.

Main-site style should feel:
- Premium
- Fast
- Trustworthy
- Scalable
- Modern
- Broad enough for software, hosting, marketing, ICT, and AI

Portal style should feel:
- Premium
- Modern
- Account-focused
- Supportive
- Connected to the main-site brand
- Clearly different from default WHMCS

## Visual Authority
The main-site is the visual and design authority. Portal design should adapt the same brand colors, typography feel, button language, spacing, and trust tone while preserving WHMCS behavior.

`template_v1` is not a visual reference for portal work. It is only the WHMCS functionality authority for Smarty logic, WHMCS variables, includes, hooks, routes, forms, cart/domain/ticket/account behavior, guest logic, logged-in logic, and loading constraints.

`template_v2` is the creative portal implementation area. Codex may redesign portal layouts, visual hierarchy, sections, cards, buttons, spacing, shadows, animation, and responsive behavior inside `template_v2` when WHMCS behavior is preserved.

Portal implementation may use any frontend technique compatible with the existing WHMCS/template stack, including the installed Bootstrap version, Bootstrap utilities/components, existing Font Awesome icons, semantic HTML, CSS gradients, glass effects, shadows, transitions, keyframe animations, responsive layouts, and custom `zt-` prefixed CSS.

Portal implementation may create new supporting files when they are scoped to the editable implementation and do not affect WHMCS functionality. Safe examples include custom CSS files, small `template_v2` partials, documentation, or local static assets loaded through WHMCS-compatible paths.

Do not add another Bootstrap version, external design libraries, conflicting framework assets, incompatible scripts, or dependency changes unless explicitly approved.

Do not create files that override WHMCS core files, replace WHMCS scripts, bypass required includes, duplicate Bootstrap, or alter orderform, cart, invoice, ticket, or clientarea behavior.

## Layout Style
- Wide clean sections
- Spacious but purposeful padding
- Modern grid layouts
- Professional shadows
- Strong typography hierarchy
- Clear section contrast
- Avoid overusing cards when a full-width editorial layout is stronger

## Homepage Rhythm
Approved rhythm:
1. Fade blue
2. White
3. Strong blue

CTA sections should not visually merge into the footer.

## Header Behavior
Main-site header may use:
- Transparent or softened hero treatment
- Solid background on scroll
- Smooth transitions
- Clear navigation and CTA access

Portal header should prioritize:
- Login and account actions
- Support access
- Checkout continuity
- WHMCS route safety
- Compatibility with the installed Bootstrap version and WHMCS scripts

## Buttons
Primary Button:
- Primary Blue background
- White text
- Smooth hover animation

Secondary Button:
- Gold or outline style

CTA Buttons:
- Use CTA Orange strategically for high-intent actions.

## Card Design
- Use restrained radius and spacing.
- Use soft shadows when they support hierarchy.
- Use hover lift carefully.
- Keep cards readable on mobile.

## Animations
Use on the main-site:
- Fade up reveals
- Stagger animations
- Hover interactions
- Smooth scrolling
- Subtle counters or hero motion

Avoid:
- Excessive motion
- Slow rendering
- Distracting effects
- Heavy video backgrounds

Portal animation may be polished and modern, but it must not interfere with WHMCS workflows, loading behavior, overlays, forms, or routes.

## Mobile UX
Priority:
- Fast loading
- Easy navigation
- Optimized spacing
- Touch-friendly controls
- Readable text
- Clear account and support actions on portal pages

## Portal Matching Strategy
`portal.zenviktechnologies.com` must visually match:
- Colors
- Typography feel
- Buttons
- Spacing
- Cards
- Navigation tone

WHMCS should feel like part of the same Zenvik ecosystem, but it should remain a customer management system rather than a broad marketing website.

The portal homepage should feel premium, modern, customer-focused, polished, and clearly different from default WHMCS. It may include subtle contextual cross-marketing, but it must not duplicate the main-site or compete with login, invoices, support, tickets, checkout, and account management.
