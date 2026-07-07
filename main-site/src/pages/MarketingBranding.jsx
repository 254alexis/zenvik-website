import { useEffect, useRef, useState } from "react"
import "./MarketingBranding.css"

const marketingPageSections = [
  { id: "marketing-solutions", component: "MarketingSolutions", label: "Marketing solutions" },
  { id: "marketing-client-reviews", component: "MarketingClientReviews", label: "Trusted by our clients" },
  { id: "marketing-packages", component: "MarketingPackages", label: "Marketing packages" },
  { id: "growth-strategy", component: "GrowthStrategy", label: "Our growth strategy" },
  { id: "marketing-included", component: "MarketingEverythingIncluded", label: "Everything included" },
  { id: "marketing-success-stories", component: "MarketingSuccessStories", label: "Success stories" },
  { id: "grow-beyond-marketing", component: "GrowBeyondMarketing", label: "Grow beyond marketing" },
  { id: "marketing-faq", component: "MarketingFaq", label: "Marketing and branding frequently asked questions" },
  { id: "marketing-final-cta", component: "MarketingFinalCta", label: "Book a marketing strategy session" },
]

const quickLinks = [
  { title: "SEO", icon: "search" },
  { title: "Social Media", icon: "social" },
  { title: "Paid Advertising", icon: "advertising" },
  { title: "Branding", icon: "branding" },
]

const marketingSolutions = [
  {
    title: "Search Engine Optimization (SEO)",
    description: "Improve search visibility and attract high-intent customers through sustainable organic growth.",
    icon: "search",
  },
  {
    title: "Social Media Management",
    description: "Build an active, consistent presence that strengthens engagement and brand confidence.",
    icon: "social",
  },
  {
    title: "Google Ads",
    description: "Reach customers when they are actively searching with focused, measurable campaigns.",
    icon: "googleAds",
  },
  {
    title: "Facebook & Instagram Ads",
    description: "Connect with the right audiences through strategic social advertising and creative targeting.",
    icon: "socialAds",
  },
  {
    title: "Branding & Identity",
    description: "Create a distinctive visual identity that communicates your value clearly and consistently.",
    icon: "branding",
  },
  {
    title: "Content Creation",
    description: "Turn business ideas into purposeful content that informs, engages, and inspires action.",
    icon: "content",
  },
  {
    title: "Email Marketing",
    description: "Nurture customer relationships with relevant campaigns and automated communication journeys.",
    icon: "email",
  },
  {
    title: "Analytics & Reporting",
    description: "Understand performance through clear insights, meaningful metrics, and actionable reporting.",
    icon: "analytics",
  },
]

function MarketingIcon({ type }) {
  const icons = {
    search: <><circle cx="10.5" cy="10.5" r="6.5" /><path d="m15.5 15.5 5 5M8 12l2-2 2 1 3-4" /></>,
    social: <><circle cx="12" cy="12" r="3" /><circle cx="5" cy="7" r="2" /><circle cx="19" cy="7" r="2" /><path d="M7 8.5 9.5 11M17 8.5 14.5 11M9.5 14 7 17M14.5 14l2.5 3" /></>,
    advertising: <><path d="m4 13 13-6v10L4 13Z" /><path d="M4 13v5h4l2-3M17 10c2 0 3-1 3-3M17 14c2 0 3 1 3 3" /></>,
    branding: <><path d="M12 3 4 7v10l8 4 8-4V7l-8-4Z" /><path d="m4 7 8 4 8-4M12 11v10M8 5l8 4" /></>,
    googleAds: <><path d="m12 3 8 15h-5l-3-6-3 6H4l8-15Z" /><path d="M9 18h6" /></>,
    socialAds: <><rect x="3" y="3" width="18" height="18" rx="5" /><circle cx="12" cy="12" r="4" /><path d="M17.5 6.5h.01M5 18l4-4" /></>,
    content: <><path d="M5 3h10l4 4v14H5V3Z" /><path d="M15 3v5h4M8 12h8M8 16h6" /></>,
    email: <><rect x="3" y="5" width="18" height="14" rx="2" /><path d="m4 7 8 6 8-6" /></>,
    analytics: <><path d="M4 20V10M10 20V4M16 20v-7M22 20H2" /><path d="m4 8 6-5 6 8 5-4" /></>,
  }

  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
      {icons[type]}
    </svg>
  )
}

function MarketingCommandCenter() {
  const reducedMotion =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches
  const [cycle, setCycle] = useState(reducedMotion ? 3 : 0)

  useEffect(() => {
    if (reducedMotion) return undefined
    const timer = window.setInterval(() => setCycle((current) => (current + 1) % 4), 2800)
    return () => window.clearInterval(timer)
  }, [reducedMotion])

  const visitors = [12840, 13490, 14170, 14860][cycle]
  const leads = [384, 412, 447, 482][cycle]

  return (
    <div className="marketing-command-center" aria-label="Animated digital marketing command center">
      <div className="marketing-command-center__ambient" aria-hidden="true" />
      <header className="command-center-bar">
        <div><i /><i /><i /></div>
        <strong>Growth Command Center</strong>
        <span><i /> Live</span>
      </header>

      <div className="command-center-layout">
        <aside className="command-center-nav" aria-hidden="true">
          <b>Z</b>
          <i className="is-active" /><i /><i /><i /><i />
        </aside>

        <div className="command-center-main">
          <div className="command-center-title">
            <div><span>Campaign overview</span><strong>Growth performance</strong></div>
            <em>Last 30 days</em>
          </div>

          <div className="command-center-metrics">
            <article>
              <span>Website traffic</span>
              <strong>{visitors.toLocaleString()}</strong>
              <small>↗ 18.4%</small>
            </article>
            <article>
              <span>Qualified leads</span>
              <strong>{leads}</strong>
              <small>↗ 12.8%</small>
            </article>
            <article>
              <span>Campaign ROI</span>
              <strong>{(3.8 + cycle * .1).toFixed(1)}x</strong>
              <small>On target</small>
            </article>
          </div>

          <div className="command-center-panels">
            <section className="traffic-panel" aria-label="Website traffic analytics">
              <header><strong>Audience growth</strong><span>Organic + Paid</span></header>
              <div className="traffic-chart" aria-hidden="true">
                {[38, 49, 44, 62, 58, 74, 69, 86, 82, 96].map((height, index) => (
                  <i key={height} style={{ "--chart-height": `${height}%`, "--chart-delay": `${index * .08}s` }} />
                ))}
                <svg viewBox="0 0 300 100" preserveAspectRatio="none">
                  <path d="M0 82 C30 78 44 63 70 67 S112 48 142 54 S181 34 211 39 S255 18 300 21" />
                </svg>
              </div>
            </section>

            <section className="seo-panel" aria-label="SEO keyword rankings">
              <header><strong>SEO rankings</strong><span>Improving</span></header>
              <ul>
                <li><b>business solutions</b><span>12 → <em>5</em></span></li>
                <li><b>digital partner</b><span>9 → <em>3</em></span></li>
                <li><b>growth strategy</b><span>18 → <em>8</em></span></li>
              </ul>
            </section>

            <section className="campaign-panel" aria-label="Advertising campaign manager">
              <header><strong>Active campaigns</strong><span>{cycle % 2 ? "Optimizing" : "Healthy"}</span></header>
              <div><i /><p><b>Brand Awareness</b><span>Running · 72%</span></p></div>
              <div><i /><p><b>Lead Generation</b><span>Running · 84%</span></p></div>
            </section>

            <section className="calendar-panel" aria-label="Social media content calendar">
              <header><strong>Content calendar</strong><span>Week 24</span></header>
              <div>{["M", "T", "W", "T", "F"].map((day, index) => <i className={index <= cycle ? "is-scheduled" : ""} key={`${day}-${index}`}>{day}</i>)}</div>
              <small>Next post scheduled in 2h</small>
            </section>
          </div>
        </div>
      </div>

      <div className="automation-workflow" aria-label="Marketing automation workflow">
        <span><i /> Audience</span><b /><span><i /> Campaign</span><b /><span><i /> Conversion</span>
      </div>
      <div className={`command-notification${cycle === 3 ? " is-visible" : ""}`} role="status">
        <i>✓</i><span><strong>Campaign milestone</strong>Lead target achieved</span>
      </div>
    </div>
  )
}

function MarketingHero() {
  return (
    <section id="marketing-hero" className="marketing-hero" aria-labelledby="marketing-hero-title">
      <div className="marketing-hero__shape marketing-hero__shape--one" aria-hidden="true" />
      <div className="marketing-hero__shape marketing-hero__shape--two" aria-hidden="true" />
      <div className="marketing-hero__inner">
        <div className="marketing-hero__content">
          <p className="marketing-hero__eyebrow">Marketing &amp; Branding</p>
          <h1 id="marketing-hero-title">Grow Your Brand. Reach More Customers. Drive Real Results.</h1>
          <p className="marketing-hero__intro">
            From SEO and social media to paid advertising, branding, and content
            strategy, Zenvik helps businesses attract the right audience, generate
            quality leads, and achieve sustainable digital growth.
          </p>

          <div className="marketing-hero__actions">
            <a href="/contact" className="marketing-hero__primary">Start Your Campaign</a>
            <a href="#marketing-success-stories" className="marketing-hero__secondary">View Our Work</a>
          </div>

          <nav className="marketing-quick-nav" aria-label="Marketing solution shortcuts">
            {quickLinks.map((link) => (
              <a href="#marketing-solutions" key={link.title}>
                <span><MarketingIcon type={link.icon} /></span>
                <strong>{link.title}</strong>
                <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
              </a>
            ))}
          </nav>
        </div>

        <div className="marketing-hero__visual">
          <MarketingCommandCenter />
        </div>
      </div>
    </section>
  )
}

function MarketingSolutions() {
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
      id="marketing-solutions"
      className="marketing-solutions"
      aria-labelledby="marketing-solutions-title"
      ref={sectionRef}
    >
      <div className="marketing-solutions__inner">
        <header className="marketing-solutions__header">
          <p>Marketing Solutions</p>
          <h2 id="marketing-solutions-title">Digital Marketing Solutions Built for Growth</h2>
          <span>
            From visibility and engagement to lead generation and brand positioning,
            Zenvik helps businesses grow through strategic and measurable marketing
            solutions.
          </span>
        </header>

        <div className="marketing-solutions__grid">
          {marketingSolutions.map((solution, index) => (
            <article
              className="marketing-solution-card"
              key={solution.title}
              style={{ "--solution-delay": `${.2 + index * .07}s` }}
            >
              <span className="marketing-solution-card__icon">
                <MarketingIcon type={solution.icon} />
              </span>
              <h3>{solution.title}</h3>
              <p>{solution.description}</p>
              <span className="marketing-solution-card__arrow" aria-hidden="true">
                <svg viewBox="0 0 20 20"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
              </span>
            </article>
          ))}
        </div>
      </div>
    </section>
  )
}

function SectionSlot({ id, component, label }) {
  return (
    <section
      id={id}
      className="marketing-branding-section"
      aria-label={label}
      data-section-component={component}
    />
  )
}

function MarketingBranding() {
  return (
    <main className="marketing-branding-page">
      <MarketingHero />
      {marketingPageSections.map((section) => (
        section.id === "marketing-solutions"
          ? <MarketingSolutions key={section.id} />
          : <SectionSlot {...section} key={section.id} />
      ))}
    </main>
  )
}

export default MarketingBranding
