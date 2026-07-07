import { useEffect, useRef, useState } from "react"
import "./DigitalSolutions.css"
import { testimonials } from "../data/testimonials"
import { digitalProjectCategories, digitalProjects } from "../data/digitalProjects"

const quickLinks = [
  { title: "Websites", href: "#websites", icon: "browser" },
  { title: "Software Systems", href: "#software-systems", icon: "software" },
  { title: "Mobile Apps", href: "#mobile-apps", icon: "mobile" },
  { title: "AI & Automation", href: "#ai-automation", icon: "ai" },
]

const codeLines = [
  { indent: 0, width: "58%" },
  { indent: 1, width: "76%" },
  { indent: 1, width: "46%" },
  { indent: 2, width: "68%" },
  { indent: 2, width: "54%" },
  { indent: 1, width: "82%" },
  { indent: 0, width: "39%" },
]

const terminalUpdates = [
  "Building production bundle...",
  "Running application tests...",
  "Connecting secure API...",
  "Deployment completed.",
]

const webSolutions = [
  { title: "Business Websites", description: "Professional websites that build trust and generate opportunities.", icon: "business" },
  { title: "Corporate Websites", description: "Structured platforms for established brands and institutions.", icon: "corporate" },
  { title: "E-commerce Stores", description: "Secure online stores designed to simplify selling and growth.", icon: "commerce" },
  { title: "School Websites", description: "Clear digital experiences for schools, parents, and students.", icon: "school" },
  { title: "Hotel & Booking Websites", description: "Conversion-focused hospitality sites with booking journeys.", icon: "booking" },
  { title: "Real Estate Websites", description: "Property platforms that make listings easy to explore.", icon: "property" },
  { title: "NGO & Organization Websites", description: "Mission-led websites for programs, impact, and engagement.", icon: "organization" },
  { title: "Portfolio Websites", description: "Focused showcases for professionals, studios, and creators.", icon: "portfolio" },
]

const softwareSolutions = [
  { title: "Business Management Systems", description: "Connected tools for managing daily business operations.", icon: "management" },
  { title: "CRM Systems", description: "Customer management platforms that strengthen relationships.", icon: "crm" },
  { title: "Inventory Systems", description: "Accurate stock visibility, movement, and reporting workflows.", icon: "inventory" },
  { title: "Booking Systems", description: "Flexible scheduling and reservation experiences for customers.", icon: "booking" },
  { title: "HR Systems", description: "Practical tools for employee records and workforce processes.", icon: "hr" },
  { title: "Custom Web Platforms", description: "Scalable browser-based products tailored to your model.", icon: "platform" },
  { title: "APIs & Integrations", description: "Reliable connections between applications, services, and data.", icon: "api" },
  { title: "AI & Automation", description: "Intelligent workflows that reduce repetitive operational work.", icon: "ai" },
]

const digitalSolutionReviews = testimonials.map((testimonial, index) => ({
  id: `digital-review-${index + 1}`,
  customerName: testimonial.name,
  organization: testimonial.company,
  source: "Zenvik Reviews",
  rating: 5,
  reviewText: testimonial.message,
  reviewDate: null,
}))

const digitalReviewPlatforms = ["Google Reviews", "Trustpilot", "HelloPeter"]

const developmentPackages = {
  website: [
    {
      name: "Starter Website",
      description: "A focused online presence for individuals and new businesses.",
      price: "Price on request",
      features: ["Responsive website", "Essential business pages", "Contact integration", "Launch support"],
    },
    {
      name: "Business Website",
      description: "A polished business platform built to attract and convert customers.",
      price: "Price on request",
      features: ["Conversion-led design", "Content management", "Search foundations", "Analytics integration"],
      recommended: true,
    },
    {
      name: "Professional Website",
      description: "A richer digital experience for established and growing organizations.",
      price: "Price on request",
      features: ["Custom user journeys", "Advanced integrations", "Performance optimization", "Team training"],
    },
    {
      name: "Enterprise Website",
      description: "A scalable web platform for complex teams, content, and operations.",
      price: "Price on request",
      features: ["Enterprise architecture", "Custom integrations", "Security hardening", "Priority support"],
    },
  ],
  software: [
    {
      name: "MVP Solution",
      description: "Validate your idea with a focused, production-ready first release.",
      price: "Price on request",
      features: ["Product discovery", "Core workflows", "Responsive interface", "Deployment support"],
    },
    {
      name: "Business Solution",
      description: "Digitize essential operations with software tailored to your team.",
      price: "Price on request",
      features: ["Custom workflows", "Role-based access", "Reports and insights", "System integrations"],
      recommended: true,
    },
    {
      name: "Enterprise Solution",
      description: "A secure and scalable platform for complex organizational needs.",
      price: "Price on request",
      features: ["Scalable architecture", "Advanced security", "Multiple integrations", "Managed rollout"],
    },
    {
      name: "Custom Solution",
      description: "A fully tailored engagement for unique products and ambitious ideas.",
      price: "Custom Quote",
      features: ["Technical consultation", "Tailored project scope", "Flexible delivery model", "Dedicated expertise"],
      custom: true,
    },
  ],
}

const includedProjectFeatures = [
  { title: "Responsive Design", description: "A seamless experience across desktop, tablet, and mobile screens.", icon: "mobile" },
  { title: "Security Setup", description: "Essential safeguards configured to protect your platform and users.", icon: "security" },
  { title: "Performance Optimization", description: "Fast, efficient experiences engineered around real-world usage.", icon: "performance" },
  { title: "SEO Foundation", description: "Search-friendly structure and metadata ready for ongoing growth.", icon: "seo" },
  { title: "Contact Forms", description: "Reliable enquiry journeys that connect customers with your team.", icon: "contact" },
  { title: "Analytics Setup", description: "Clear measurement tools for understanding traffic and engagement.", icon: "analytics" },
  { title: "User Training", description: "Practical guidance that helps your team manage the solution confidently.", icon: "training" },
  { title: "Documentation", description: "Useful technical and operational references for long-term clarity.", icon: "documentation" },
  { title: "Maintenance Options", description: "Flexible ongoing support to keep your digital solution healthy.", icon: "maintenance" },
  { title: "API Integration Support", description: "Expert assistance connecting your platform with essential services.", icon: "api" },
]

const developmentProcessSteps = [
  { number: "01", title: "Discover", description: "We learn about your goals, users, challenges, and definition of success.", icon: "discover" },
  { number: "02", title: "Plan", description: "We shape the scope, technical approach, milestones, and delivery roadmap.", icon: "plan" },
  { number: "03", title: "Design", description: "We create intuitive experiences and interfaces aligned with your brand.", icon: "design" },
  { number: "04", title: "Develop", description: "We build your solution using secure, scalable, and maintainable technology.", icon: "software" },
  { number: "05", title: "Test", description: "We verify functionality, usability, performance, and device compatibility.", icon: "test" },
  { number: "06", title: "Launch", description: "We deploy carefully, guide your team, and support a confident go-live.", icon: "launch" },
]

const beyondLaunchServices = [
  {
    title: "Hosting & Cloud",
    description: "Keep your website or application secure, reliable, and always available.",
    icon: "cloud",
    href: "/hosting-cloud-services",
  },
  {
    title: "Marketing & Branding",
    description: "Grow your online presence through SEO, digital marketing, branding, and content strategy.",
    icon: "marketing",
    href: "/marketing-branding",
  },
  {
    title: "ICT Services",
    description: "Strengthen your business with networking, cybersecurity, IT support, and infrastructure solutions.",
    icon: "ict",
    href: "/ict-services",
  },
  {
    title: "AI & Business Automation",
    description: "Automate repetitive tasks, improve customer engagement, and streamline business operations using intelligent solutions.",
    icon: "ai",
    href: "/ai-solutions",
  },
]

function SolutionIcon({ type }) {
  const props = {
    viewBox: "0 0 24 24",
    fill: "none",
    stroke: "currentColor",
    strokeWidth: "1.8",
    strokeLinecap: "round",
    strokeLinejoin: "round",
    "aria-hidden": "true",
  }

  const icons = {
    browser: <><rect x="3" y="4" width="18" height="16" rx="2" /><path d="M3 9h18M7 6.5h.01M10 6.5h.01M8 14h8" /></>,
    software: <><path d="m8 8-4 4 4 4M16 8l4 4-4 4M14 4l-4 16" /></>,
    mobile: <><rect x="7" y="2" width="10" height="20" rx="2" /><path d="M10 5h4M11 19h2" /></>,
    ai: <><rect x="6" y="6" width="12" height="12" rx="3" /><path d="M9 2v4M15 2v4M9 18v4M15 18v4M2 9h4M18 9h4M2 15h4M18 15h4M9.5 12c1.3-2.5 3.7-2.5 5 0" /></>,
    business: <><path d="M4 21V7l8-4 8 4v14M8 10h2M14 10h2M8 14h2M14 14h2M10 21v-3h4v3" /></>,
    corporate: <><path d="M3 21h18M5 21V8h14v13M8 8V4h8v4M8 12h2M14 12h2M8 16h2M14 16h2" /></>,
    commerce: <><path d="M3 4h2l2 11h10l3-8H6M9 20h.01M17 20h.01" /></>,
    school: <><path d="m3 9 9-5 9 5-9 5-9-5Z" /><path d="M7 12v5c3 2 7 2 10 0v-5M21 9v6" /></>,
    booking: <><rect x="3" y="5" width="18" height="16" rx="2" /><path d="M7 3v4M17 3v4M3 10h18M8 14h3M13 14h3M8 18h3" /></>,
    property: <><path d="m3 11 9-8 9 8M5 10v11h14V10M9 21v-6h6v6" /></>,
    organization: <><circle cx="12" cy="7" r="3" /><circle cx="5" cy="17" r="2.5" /><circle cx="19" cy="17" r="2.5" /><path d="M10 9.5 6.5 15M14 9.5l3.5 5M7.5 17h9" /></>,
    portfolio: <><rect x="3" y="6" width="18" height="14" rx="2" /><path d="M9 6V4h6v2M3 11h18M10 11v2h4v-2" /></>,
    management: <><rect x="3" y="3" width="8" height="8" rx="2" /><rect x="13" y="3" width="8" height="8" rx="2" /><rect x="3" y="13" width="8" height="8" rx="2" /><rect x="13" y="13" width="8" height="8" rx="2" /></>,
    crm: <><circle cx="9" cy="8" r="3" /><path d="M3 20v-2a6 6 0 0 1 12 0v2M16 6h5M18.5 3.5v5M16 14h5M16 18h4" /></>,
    inventory: <><path d="m4 7 8-4 8 4-8 4-8-4Z" /><path d="m4 7 8 4 8-4v10l-8 4-8-4V7ZM12 11v10" /></>,
    hr: <><circle cx="8" cy="8" r="3" /><circle cx="17" cy="9" r="2.5" /><path d="M2 20v-2a6 6 0 0 1 12 0v2M14 15a5 5 0 0 1 8 4v1" /></>,
    platform: <><rect x="3" y="4" width="18" height="16" rx="2" /><path d="M3 9h18M8 13h3M13 13h3M8 17h8" /></>,
    api: <><path d="M8 6H6a3 3 0 0 0-3 3v6a3 3 0 0 0 3 3h2M16 6h2a3 3 0 0 1 3 3v6a3 3 0 0 1-3 3h-2M8 12h8" /><circle cx="8" cy="12" r="2" /><circle cx="16" cy="12" r="2" /></>,
    security: <><path d="M12 3 4.5 6v5.5c0 4.5 3 7.8 7.5 9.5 4.5-1.7 7.5-5 7.5-9.5V6L12 3Z" /><path d="m9 12 2 2 4-5" /></>,
    performance: <><path d="M4.2 17a9 9 0 1 1 15.6 0M7.5 14.5 12 10l4.5 4.5" /><path d="M12 6v4" /></>,
    seo: <><circle cx="10.5" cy="10.5" r="6.5" /><path d="m15.5 15.5 5 5M8 11l2 2 4-5" /></>,
    contact: <><rect x="3" y="5" width="18" height="14" rx="2" /><path d="m4 7 8 6 8-6" /></>,
    analytics: <><path d="M4 20V10M10 20V4M16 20v-7M22 20H2" /></>,
    training: <><path d="m3 8 9-5 9 5-9 5-9-5Z" /><path d="M7 11v5c3 2.5 7 2.5 10 0v-5M21 8v7" /></>,
    documentation: <><path d="M6 3h9l4 4v14H6V3Z" /><path d="M15 3v5h4M9 12h6M9 16h6" /></>,
    maintenance: <><path d="M14.5 6.5a5 5 0 0 0-6.3 6.3L3 18l3 3 5.2-5.2a5 5 0 0 0 6.3-6.3L14 13l-3-3 3.5-3.5Z" /></>,
    discover: <><circle cx="11" cy="11" r="7" /><path d="m16 16 5 5M8 11h6M11 8v6" /></>,
    plan: <><rect x="5" y="4" width="14" height="17" rx="2" /><path d="M9 4V2h6v2M8 9h8M8 13h8M8 17h5" /></>,
    design: <><path d="m4 20 4.5-1 10-10-3.5-3.5-10 10L4 20ZM13.5 7l3.5 3.5M14 4.5 16.5 2 22 7.5 19.5 10" /></>,
    test: <><path d="M9 3h6M10 3v5l-5 9a2.5 2.5 0 0 0 2.2 4h9.6A2.5 2.5 0 0 0 19 17l-5-9V3M7 15h10" /><path d="m9.5 17 1.5 1.5 3.5-3.5" /></>,
    launch: <><path d="M14 4c3-2 6-2 6-2s0 3-2 6l-6 6-4-4 6-6Z" /><path d="m9 9-4 1-3 3 6 1M15 15l-1 6-3 1-1-4M7 17l-3 3" /></>,
    cloud: <><path d="M7 19h11a4 4 0 0 0 .4-8A7 7 0 0 0 5 9.2 5 5 0 0 0 7 19Z" /><path d="M9 15h6M12 12v6" /></>,
    marketing: <><path d="m4 13 13-6v10L4 13Z" /><path d="M4 13v5h4l2-3M17 10c2 0 3-1 3-3M17 14c2 0 3 1 3 3" /></>,
    ict: <><rect x="3" y="4" width="18" height="12" rx="2" /><path d="M8 20h8M12 16v4M7 10h.01M11 10h6" /></>,
  }

  return <svg {...props}>{icons[type]}</svg>
}

function DevelopmentWorkspace() {
  const prefersReducedMotion =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches
  const [terminalIndex, setTerminalIndex] = useState(
    prefersReducedMotion ? terminalUpdates.length - 1 : 0
  )
  const [deploymentComplete, setDeploymentComplete] = useState(prefersReducedMotion)

  useEffect(() => {
    if (prefersReducedMotion) return undefined

    const terminalTimer = window.setInterval(() => {
      setTerminalIndex((current) => {
        const next = (current + 1) % terminalUpdates.length
        setDeploymentComplete(next === terminalUpdates.length - 1)
        return next
      })
    }, 2400)

    return () => window.clearInterval(terminalTimer)
  }, [prefersReducedMotion])

  return (
    <div
      className="development-workspace"
      role="img"
      aria-label="Animated development workspace showing code, testing, API integration, and deployment"
    >
      <svg className="development-workspace__connections" viewBox="0 0 700 610" aria-hidden="true">
        <path d="M350 212 C455 184 492 150 576 146" />
        <path d="M348 300 C455 324 494 388 578 394" />
        <path d="M300 382 C345 438 392 468 466 480" />
        <circle r="4"><animateMotion dur="6s" repeatCount="indefinite" path="M350 212 C455 184 492 150 576 146" /></circle>
        <circle r="4"><animateMotion dur="7.5s" begin="-2s" repeatCount="indefinite" path="M348 300 C455 324 494 388 578 394" /></circle>
      </svg>

      <div className="workspace-editor">
        <div className="workspace-panel__bar">
          <span /><span /><span />
          <strong>product-platform.jsx</strong>
        </div>
        <div className="workspace-editor__body">
          <aside>
            <i /><i /><i /><i /><i />
          </aside>
          <div className="workspace-editor__code">
            {codeLines.map((line, index) => (
              <div
                key={index}
                className="workspace-code-line"
                style={{
                  "--code-delay": `${index * .38}s`,
                  "--code-indent": `${line.indent * 18}px`,
                  "--code-width": line.width,
                }}
              >
                <span>{index + 1}</span>
                <i />
              </div>
            ))}
            <b className="workspace-code-cursor" aria-hidden="true" />
          </div>
        </div>
      </div>

      <div className="workspace-browser">
        <div className="workspace-panel__bar">
          <span /><span /><span />
          <i />
        </div>
        <div className="workspace-browser__preview">
          <header><i /><span /><b /></header>
          <main>
            <span />
            <strong />
            <div><i /><i /><i /></div>
          </main>
          <em aria-hidden="true" />
        </div>
      </div>

      <div className="workspace-mobile">
        <div className="workspace-mobile__screen">
          <header><i /><span /></header>
          <main><strong /><span /><div><i /><i /></div></main>
        </div>
      </div>

      <div className="workspace-terminal">
        <div className="workspace-terminal__bar">
          <span>Terminal</span>
          <i />
        </div>
        <p><b aria-hidden="true">$</b> {terminalUpdates[terminalIndex]}</p>
      </div>

      <div className={`workspace-deployment ${deploymentComplete ? "is-complete" : ""}`}>
        <span><i /></span>
        <div>
          <small>DEPLOYMENT</small>
          <strong>{deploymentComplete ? "Success" : "In progress"}</strong>
        </div>
      </div>

      <ol className="workspace-flow" aria-hidden="true">
        {["Idea", "Design", "Code", "Test", "Deploy", "Live"].map((step) => <li key={step}>{step}</li>)}
      </ol>
    </div>
  )
}

function SolutionCategoryBlock({ id, eyebrow, title, description, solutions, className }) {
  return (
    <section id={id} className={`solution-category-block ${className}`}>
      <header>
        <p>{eyebrow}</p>
        <h3>{title}</h3>
        <span>{description}</span>
      </header>
      <div className="solution-category-grid">
        {solutions.map((solution, index) => (
          <article
            key={solution.title}
            className="solution-type-card"
            style={{ "--solution-delay": `${index * .055}s` }}
          >
            <span className="solution-type-card__icon">
              <SolutionIcon type={solution.icon} />
            </span>
            <div>
              <h4>{solution.title}</h4>
              <p>{solution.description}</p>
            </div>
            <svg className="solution-type-card__arrow" viewBox="0 0 20 20" aria-hidden="true">
              <path d="M4 10h12M11 5l5 5-5 5" />
            </svg>
          </article>
        ))}
      </div>
    </section>
  )
}

function DigitalSolutionsOverview() {
  const sectionRef = useRef(null)
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )

  useEffect(() => {
    if (typeof IntersectionObserver === "undefined") return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true)
          observer.disconnect()
        }
      },
      { threshold: 0.1 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      ref={sectionRef}
      className={`digital-solutions-overview ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="digital-solutions-overview-title"
    >
      <div className="digital-solutions-overview__inner">
        <header className="digital-solutions-overview__header">
          <p>What We Build</p>
          <h2 id="digital-solutions-overview-title">Digital Solutions for Every Stage of Growth</h2>
          <span>
            From professional websites to custom business systems, Zenvik designs and
            develops solutions that help organizations operate, sell, and scale online.
          </span>
        </header>

        <SolutionCategoryBlock
          id="websites"
          className="solution-category-block--web"
          eyebrow="Web Solutions"
          title="Web Experiences Built to Perform"
          description="Purposeful websites and online platforms for every kind of organization."
          solutions={webSolutions}
        />

        <SolutionCategoryBlock
          id="software-systems"
          className="solution-category-block--software"
          eyebrow="Software Solutions"
          title="Systems Designed Around Your Operations"
          description="Custom software and connected platforms that make complex work simpler."
          solutions={softwareSolutions}
        />
      </div>
    </section>
  )
}

function DigitalReviewStars({ rating }) {
  return (
    <span className="digital-review-stars" role="img" aria-label={`${rating} out of 5 stars`}>
      {Array.from({ length: 5 }).map((_, index) => (
        <svg key={index} viewBox="0 0 20 20" aria-hidden="true">
          <path d="m10 1.8 2.35 4.76 5.25.76-3.8 3.7.9 5.23L10 13.78l-4.7 2.47.9-5.23-3.8-3.7 5.25-.76L10 1.8Z" />
        </svg>
      ))}
    </span>
  )
}

function DigitalClientReviews() {
  const sectionRef = useRef(null)
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )
  const reviewCount = digitalSolutionReviews.length
  const averageRating =
    digitalSolutionReviews.reduce((total, review) => total + review.rating, 0) /
    reviewCount

  useEffect(() => {
    if (typeof IntersectionObserver === "undefined") return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true)
          observer.disconnect()
        }
      },
      { threshold: 0.14 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      ref={sectionRef}
      className={`digital-client-reviews ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="digital-client-reviews-title"
    >
      <div className="digital-client-reviews__inner">
        <header className="digital-client-reviews__header">
          <p>Client Reviews</p>
          <h2 id="digital-client-reviews-title">Trusted by Clients Building Their Digital Future</h2>
          <span>
            See what businesses, organizations, and project owners say about working
            with Zenvik Technologies.
          </span>
        </header>

        <div className="digital-review-summary">
          <div>
            <DigitalReviewStars rating={averageRating} />
            <strong>Rated Excellent</strong>
            <span>{averageRating.toFixed(1)} average from {reviewCount} featured reviews</span>
          </div>
          <aside aria-label="Supported review platforms">
            {digitalReviewPlatforms.map((platform) => <span key={platform}>{platform}</span>)}
          </aside>
        </div>

        <div className="digital-testimonial-grid">
          {digitalSolutionReviews.map((review, index) => (
            <article
              className="digital-testimonial-card"
              key={review.id}
              style={{ "--testimonial-delay": `${.3 + index * .1}s` }}
            >
              <div className="digital-testimonial-card__top">
                <DigitalReviewStars rating={review.rating} />
                <span>{review.source}</span>
              </div>
              <blockquote><p>“{review.reviewText}”</p></blockquote>
              <footer>
                <b aria-hidden="true">{review.customerName.charAt(0)}</b>
                <div>
                  <strong>{review.customerName}</strong>
                  {review.organization && <span>{review.organization}</span>}
                </div>
                {review.reviewDate && <time dateTime={review.reviewDate}>{review.reviewDate}</time>}
              </footer>
            </article>
          ))}
        </div>

        <div className="digital-client-reviews__action">
          <a href="/reviews">
            View All Reviews
            <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
          </a>
        </div>
      </div>
    </section>
  )
}

function DevelopmentPackages() {
  const [activeCategory, setActiveCategory] = useState("website")
  const sectionRef = useRef(null)

  useEffect(() => {
    const section = sectionRef.current
    if (!section) return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          section.classList.add("is-visible")
          observer.disconnect()
        }
      },
      { threshold: .12 },
    )

    observer.observe(section)
    return () => observer.disconnect()
  }, [])

  const packages = developmentPackages[activeCategory]

  return (
    <section
      className="development-packages"
      aria-labelledby="development-packages-title"
      ref={sectionRef}
    >
      <div className="development-packages__inner">
        <header className="development-packages__header">
          <p>Development Packages</p>
          <h2 id="development-packages-title">Choose the Right Solution for Your Project</h2>
          <span>
            Whether you&apos;re launching a business website or building a custom
            software platform, we have flexible solutions tailored to your goals.
          </span>
        </header>

        <div className="development-package-tabs" role="tablist" aria-label="Development package categories">
          <button
            id="website-packages-tab"
            type="button"
            role="tab"
            aria-selected={activeCategory === "website"}
            aria-controls="development-package-panel"
            tabIndex={activeCategory === "website" ? 0 : -1}
            onClick={() => setActiveCategory("website")}
          >
            Website Packages
          </button>
          <button
            id="software-packages-tab"
            type="button"
            role="tab"
            aria-selected={activeCategory === "software"}
            aria-controls="development-package-panel"
            tabIndex={activeCategory === "software" ? 0 : -1}
            onClick={() => setActiveCategory("software")}
          >
            Software Packages
          </button>
        </div>

        <div
          className="development-package-grid"
          id="development-package-panel"
          role="tabpanel"
          aria-labelledby={`${activeCategory}-packages-tab`}
          key={activeCategory}
        >
          {packages.map((item, index) => (
            <article
              className={`development-package-card${item.recommended ? " is-recommended" : ""}`}
              key={item.name}
              style={{ "--package-delay": `${index * .08}s` }}
            >
              {item.recommended && <span className="development-package-card__badge">Recommended</span>}
              <div className="development-package-card__heading">
                <h3>{item.name}</h3>
                <p>{item.description}</p>
              </div>
              <div className="development-package-card__price">
                <span>{item.custom ? "Project pricing" : "Starting at"}</span>
                <strong>{item.price}</strong>
              </div>
              <ul>
                {item.features.map((feature) => (
                  <li key={feature}>
                    <svg viewBox="0 0 20 20" aria-hidden="true"><path d="m5 10 3 3 7-7" /></svg>
                    {feature}
                  </li>
                ))}
              </ul>
              <div className="development-package-card__actions">
                <a href="/contact" className="development-package-card__primary">
                  {item.custom ? "Request Consultation" : "Get Started"}
                </a>
                <a href="/contact" className="development-package-card__secondary">
                  View Details
                  <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
                </a>
              </div>
            </article>
          ))}
        </div>
      </div>
    </section>
  )
}

function DevelopmentProcess() {
  const sectionRef = useRef(null)

  useEffect(() => {
    const section = sectionRef.current
    if (!section) return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          section.classList.add("is-visible")
          observer.disconnect()
        }
      },
      { threshold: .12 },
    )

    observer.observe(section)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      className="development-process"
      aria-labelledby="development-process-title"
      ref={sectionRef}
    >
      <div className="development-process__inner">
        <header className="development-process__header">
          <p>Our Development Process</p>
          <h2 id="development-process-title">From Idea to a Confident Launch</h2>
          <span>
            A clear, collaborative process keeps your project focused, transparent,
            and aligned with the outcomes your organization needs.
          </span>
        </header>

        <ol className="development-process__steps">
          {developmentProcessSteps.map((step, index) => (
            <li
              className="development-process-step"
              key={step.number}
              style={{ "--process-delay": `${.18 + index * .09}s` }}
            >
              <div className="development-process-step__top">
                <span className="development-process-step__icon">
                  <SolutionIcon type={step.icon} />
                </span>
                <b>{step.number}</b>
              </div>
              <h3>{step.title}</h3>
              <p>{step.description}</p>
            </li>
          ))}
        </ol>
      </div>
    </section>
  )
}

function EverythingIncluded() {
  const sectionRef = useRef(null)

  useEffect(() => {
    const section = sectionRef.current
    if (!section) return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          section.classList.add("is-visible")
          observer.disconnect()
        }
      },
      { threshold: .12 },
    )

    observer.observe(section)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      className="everything-included"
      aria-labelledby="everything-included-title"
      ref={sectionRef}
    >
      <div className="everything-included__inner">
        <header className="everything-included__header">
          <p>What&apos;s Included</p>
          <h2 id="everything-included-title">Everything Your Digital Solution Needs</h2>
          <span>
            Every Zenvik project is built with performance, security, usability,
            and long-term growth in mind.
          </span>
        </header>

        <div className="everything-included__grid">
          {includedProjectFeatures.map((feature, index) => (
            <article
              className="included-feature-card"
              key={feature.title}
              style={{ "--included-delay": `${.2 + index * .06}s` }}
            >
              <span className="included-feature-card__icon">
                <SolutionIcon type={feature.icon} />
              </span>
              <h3>{feature.title}</h3>
              <p>{feature.description}</p>
            </article>
          ))}
        </div>
      </div>
    </section>
  )
}

function ProjectPreview({ project }) {
  const media = project.media

  if (media?.type === "image" && media.source) {
    return <img src={media.source} alt={media.alt || ""} loading="lazy" />
  }

  if (media?.type === "video" && media.source) {
    return (
      <video muted playsInline preload="metadata" aria-label={media.alt || `${project.title} preview`}>
        <source src={media.source} />
      </video>
    )
  }

  return (
    <div className={`project-preview-project project-preview-project--${project.preview}`} role="img" aria-label={media?.alt}>
      <div className="project-preview-project__bar"><i /><i /><i /><span /></div>
      <div className="project-preview-project__canvas">
        <aside><b /><i /><i /><i /><i /></aside>
        <main>
          <span />
          <strong />
          <div><i /><i /><i /></div>
          <em />
        </main>
      </div>
    </div>
  )
}

function FeaturedDigitalProjects() {
  const [activeCategory, setActiveCategory] = useState("all")
  const sectionRef = useRef(null)

  useEffect(() => {
    const section = sectionRef.current
    if (!section) return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          section.classList.add("is-visible")
          observer.disconnect()
        }
      },
      { threshold: .1 },
    )

    observer.observe(section)
    return () => observer.disconnect()
  }, [])

  const visibleProjects = activeCategory === "all"
    ? digitalProjects
    : digitalProjects.filter((project) => project.category === activeCategory)

  return (
    <section
      className="featured-digital-projects"
      aria-labelledby="featured-digital-projects-title"
      ref={sectionRef}
    >
      <div className="featured-digital-projects__inner">
        <header className="featured-digital-projects__header">
          <p>Featured Projects</p>
          <h2 id="featured-digital-projects-title">See What We&apos;ve Built</h2>
          <span>
            Explore selected digital solutions developed by Zenvik across different
            industries and business needs.
          </span>
        </header>

        <div className="project-category-filter" role="tablist" aria-label="Filter featured projects">
          {digitalProjectCategories.map((category) => (
            <button
              type="button"
              role="tab"
              aria-selected={activeCategory === category.id}
              aria-controls="featured-project-list"
              tabIndex={activeCategory === category.id ? 0 : -1}
              key={category.id}
              onClick={() => setActiveCategory(category.id)}
            >
              {category.label}
            </button>
          ))}
        </div>

        <div
          className="featured-project-grid"
          id="featured-project-list"
          role="tabpanel"
          key={activeCategory}
        >
          {visibleProjects.length > 0 ? visibleProjects.map((project, index) => (
            <article
              className="featured-project-card"
              key={project.id}
              style={{ "--project-delay": `${index * .09}s` }}
            >
              <div className="featured-project-card__media">
                <ProjectPreview project={project} />
                <span>{project.projectType}</span>
              </div>
              <div className="featured-project-card__content">
                <p>{project.industry}</p>
                <h3>{project.title}</h3>
                <span>{project.description}</span>
                <ul aria-label={`Technologies used for ${project.title}`}>
                  {project.technologies.map((technology) => <li key={technology}>{technology}</li>)}
                </ul>
                <a href={project.links.project}>
                  View Project
                  <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
                </a>
              </div>
            </article>
          )) : (
            <div className="featured-projects-empty" role="status">
              <span><SolutionIcon type="portfolio" /></span>
              <h3>Projects coming soon</h3>
              <p>Selected work in this category will be published here.</p>
            </div>
          )}
        </div>
      </div>
    </section>
  )
}

function BeyondLaunch() {
  const sectionRef = useRef(null)

  useEffect(() => {
    const section = sectionRef.current
    if (!section) return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          section.classList.add("is-visible")
          observer.disconnect()
        }
      },
      { threshold: .14 },
    )

    observer.observe(section)
    return () => observer.disconnect()
  }, [])

  return (
    <section className="beyond-launch" aria-labelledby="beyond-launch-title" ref={sectionRef}>
      <div className="beyond-launch__inner">
        <header className="beyond-launch__header">
          <p>Beyond Launch</p>
          <h2 id="beyond-launch-title">Your Digital Journey Doesn&apos;t End at Launch</h2>
          <span>
            From hosting and maintenance to marketing, AI, and business growth,
            Zenvik continues supporting your digital success long after your project
            is delivered.
          </span>
        </header>

        <div className="beyond-launch__grid">
          {beyondLaunchServices.map((service, index) => (
            <article
              className="beyond-launch-card"
              key={service.title}
              style={{ "--beyond-delay": `${.2 + index * .09}s` }}
            >
              <span className="beyond-launch-card__icon">
                <SolutionIcon type={service.icon} />
              </span>
              <h3>{service.title}</h3>
              <p>{service.description}</p>
              <a href={service.href}>
                Learn More
                <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
              </a>
            </article>
          ))}
        </div>
      </div>
    </section>
  )
}

function DigitalSolutions() {
  return (
    <main className="digital-solutions-page">
      <section className="digital-solutions-hero" aria-labelledby="digital-solutions-title">
        <div className="digital-solutions-hero__glow" aria-hidden="true" />
        <div className="digital-solutions-hero__grid">
          <div className="digital-solutions-hero__content">
            <p className="digital-solutions-hero__eyebrow">Digital Solutions</p>
            <h1 id="digital-solutions-title">
              Websites, Software &amp; Digital Platforms Built for Growth
            </h1>
            <p className="digital-solutions-hero__intro">
              From business websites and e-commerce stores to custom software, mobile
              apps, APIs, and AI-powered automation, Zenvik builds digital solutions
              that help organizations work smarter and grow faster.
            </p>

            <div className="digital-solutions-hero__actions">
              <a href="/contact" className="digital-solutions-hero__primary">Start a Project</a>
              <a href="/#portfolio" className="digital-solutions-hero__secondary">View Our Work</a>
            </div>

            <nav className="digital-solutions-quick-nav" aria-label="Digital solution categories">
              {quickLinks.map((link) => (
                <a href={link.href} key={link.title}>
                  <span><SolutionIcon type={link.icon} /></span>
                  <strong>{link.title}</strong>
                  <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
                </a>
              ))}
            </nav>
          </div>

          <div className="digital-solutions-hero__visual">
            <DevelopmentWorkspace />
          </div>
        </div>
      </section>
      <DigitalSolutionsOverview />
      <DigitalClientReviews />
      <DevelopmentPackages />
      <DevelopmentProcess />
      <EverythingIncluded />
      <FeaturedDigitalProjects />
      <BeyondLaunch />
    </main>
  )
}

export default DigitalSolutions
