# Frontend Architecture Plan

## Scope
This document controls the public main-site at `zenviktechnologies.com`.

The main-site is the marketing, sales, service discovery, pricing, blog, FAQ, legal, and brand authority for Zenvik Technologies. It should guide visitors into the right service journey and send customer account actions to `portal.zenviktechnologies.com`.

## Main Site Stack
- React
- Vite
- Tailwind CSS
- Framer Motion where it adds useful polish

## Why This Stack
- Fast local development
- Static production build
- cPanel-compatible deployment after build
- Flexible interface work
- Good performance when assets and animation are controlled

## Main Site Folder Structure

```text
main-site/
├── public/
├── src/
│   ├── assets/
│   ├── components/
│   ├── layouts/
│   ├── pages/
│   ├── sections/
│   ├── styles/
│   ├── animations/
│   ├── data/
│   └── utils/
├── package.json
├── vite.config.js
└── tailwind.config.js
```

## Main-Site Responsibilities
- Service discovery
- Hosting and cloud marketing
- Domain and SSL marketing
- Software and web development
- Websites and ecommerce
- Digital marketing and branding
- ICT infrastructure and support
- AI services and responsible AI positioning
- Blog, FAQs, legal pages, and pricing pages

## Portal Boundary
The main-site can link to the WHMCS portal for login, registration, checkout, invoices, tickets, support, and customer care.

Do not move WHMCS account workflows into the main-site. Do not make the WHMCS portal responsible for broad service marketing.

## Component Strategy
Reusable components should support:
- Navigation and footer
- Buttons and CTAs
- Cards and feature blocks
- Service blocks
- Pricing cards
- Legal and content displays
- Cross-marketing sections

## Section Strategy
Sections should be modular and reusable, but pages should not feel like the same generic service grid repeated everywhere.

Homepage and service pages should combine:
- Editorial brand moments
- Service-led discovery
- Proof and trust signals
- Natural cross-marketing
- Focused conversion paths

## Styling Strategy
- Use the Zenvik brand colors from `docs/core/BRAND-GUIDE.md`.
- Maintain shared spacing, type, button, and card patterns.
- Keep page-specific visual identities where services require different positioning.
- Avoid one-note palettes and overly generic SaaS layouts.

## Animation Strategy
Use lightweight animations:
- Fade and reveal transitions
- Staggered section entrances
- Hover lift where useful
- Subtle hero motion

Animations must remain performant, mobile-safe, and non-blocking.

## SEO Strategy
- Use semantic HTML.
- Maintain optimized headings.
- Add page-specific meta tags and Open Graph data.
- Keep assets optimized.
- Keep legal, pricing, FAQ, and service pages indexable where appropriate.

## Deployment Strategy
Development:
- GitHub
- Codespaces
- VS Code

Production:
- Run the approved build command.
- Upload static build output to cPanel `public_html`.

## Portal Visual Strategy
The main-site is the design authority for the portal. Portal styling should borrow the main-site's colors, typography feel, buttons, spacing, and trust tone while preserving WHMCS behavior.
