# Frontend Architecture Plan

## Main Site Stack
- React
- Vite
- Tailwind CSS
- Framer Motion

## Why This Stack
- Fast
- Modern
- Easy static deployment
- cPanel compatible after build
- Excellent UI flexibility
- Good performance

## Main Site Folder Structure

main-site/
│
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
│
├── package.json
├── vite.config.js
└── tailwind.config.js

## Component Strategy
Reusable components:
- Navbar
- Footer
- Buttons
- Cards
- Service blocks
- CTA sections
- Testimonials
- Pricing cards

## Section Strategy
Homepage sections stored independently:
- HeroSection
- ServicesSection
- HostingSection
- SoftwareSection
- MarketingSection
- PortfolioSection
- CTASection

## Styling Strategy
- Tailwind utility-first
- Shared color variables
- Shared spacing system
- Shared typography system

## Animation Strategy
Centralized animation presets:
- fadeUp
- staggerContainer
- floatingElements
- hoverLift

## SEO Strategy
- Meta tags
- Open Graph support
- Semantic HTML
- Optimized headings
- Fast loading assets

## Deployment Strategy
Development:
- GitHub
- Codespaces
- VS Code

Production:
- npm run build
- Upload dist files to cPanel public_html

## WHMCS Integration Strategy
Later:
- replicate design system
- adapt shared CSS
- customize WHMCS theme frontend
- maintain visual consistency
