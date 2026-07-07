import { useEffect, useRef, useState } from "react"
import "./HostingCloudServices.css"
import licensedDataCenter from "../../reference/center.png"
import { siteConfig } from "../constants/site"
import {
  emailHostingPlans,
  hostingPlans,
  wordpressHostingPlans,
} from "../data/hostingPlans"

const hostingQuickLinks = [
  { title: "Shared Hosting", icon: "shared", href: "#shared-hosting" },
  { title: "WordPress Hosting", icon: "wordpress", href: "#wordpress-hosting" },
  { title: "Business Email", icon: "email", href: "#email-hosting" },
  { title: "Reseller Hosting", icon: "reseller", href: "#reseller-hosting" },
]

const heroHeading = "Powerful Hosting & Cloud Infrastructure for Modern Businesses"
const domainPrices = [
  { extension: ".co.ke", price: "KSh 463" },
  { extension: ".com", price: "KSh 2,120" },
  { extension: ".africa", price: "KSh 1,059" },
  { extension: ".ke", price: "KSh 3,000" },
  { extension: ".org", price: "KSh 2,000" },
]

const domainServices = [
  {
    title: "Domain Registration",
    description: "Secure the right domain for your brand in a few simple steps.",
    icon: "domain-register",
    href: `${siteConfig.portalUrl}/cart.php?a=add&domain=register`,
  },
  {
    title: "Domain Transfer",
    description: "Move your domain to Zenvik with guided, reliable support.",
    icon: "domain-transfer",
    href: `${siteConfig.portalUrl}/cart.php?a=add&domain=transfer`,
  },
  {
    title: "Domain Renewal",
    description: "Keep your business identity active through one secure portal.",
    icon: "domain-renewal",
    href: `${siteConfig.portalUrl}/clientarea.php?action=domains`,
  },
  {
    title: "WHOIS Lookup",
    description: "Review public registration details for an existing domain.",
    icon: "domain-whois",
    href: `${siteConfig.portalUrl}/domainchecker.php`,
  },
  {
    title: "DNS Management",
    description: "Manage records and direct your domain services with confidence.",
    icon: "domain-dns",
    href: `${siteConfig.portalUrl}/clientarea.php?action=domains`,
  },
  {
    title: "Domain Security",
    description: "Protect access, ownership, and critical domain configurations.",
    icon: "domain-security",
    href: "#domain-services",
  },
  {
    title: "Domain Privacy",
    description: "Add identity protection for eligible domain extensions.",
    icon: "domain-privacy",
    href: "#domain-services",
  },
  {
    title: "Transparent Pricing",
    description: "See clear extension pricing before making your decision.",
    icon: "domain-pricing",
    href: "#domain-pricing",
  },
]

const reviewPlatforms = ["Google Reviews", "Trustpilot", "HelloPeter"]

const featuredReviews = [
  {
    id: "google-shared-hosting",
    customerName: "Shared Hosting Client",
    organization: "Small Business Website",
    source: "Google Reviews",
    rating: 5,
    reviewText: "Our website loads quickly, stays available, and the hosting setup was handled with clear guidance from the start.",
  },
  {
    id: "google-wordpress-hosting",
    customerName: "WordPress Hosting Client",
    organization: "Online Publisher",
    source: "Google Reviews",
    rating: 5,
    reviewText: "The WordPress environment is fast, secure, and easy to manage. Support has been responsive whenever we needed help.",
  },
  {
    id: "google-business-email",
    customerName: "Business Email Client",
    organization: "Professional Services Team",
    source: "Google Reviews",
    rating: 5,
    reviewText: "Moving our business email was straightforward, and our team now has a reliable professional communication platform.",
  },
  {
    id: "trustpilot-reseller-hosting",
    customerName: "Reseller Hosting Client",
    organization: "Digital Agency",
    source: "Trustpilot",
    rating: 5,
    reviewText: "The reseller platform gives us dependable performance and practical tools for managing multiple client websites.",
  },
  {
    id: "trustpilot-domain-services",
    customerName: "Domain Services Client",
    organization: "Growing Retail Brand",
    source: "Trustpilot",
    rating: 5,
    reviewText: "Domain registration and DNS management are clear and efficient, with knowledgeable support available when required.",
  },
  {
    id: "trustpilot-migration",
    customerName: "Website Migration Client",
    organization: "Ecommerce Business",
    source: "Trustpilot",
    rating: 5,
    reviewText: "Our website migration was carefully coordinated and completed with minimal disruption to customers and daily operations.",
  },
  {
    id: "hellopeter-cloud-hosting",
    customerName: "Cloud Hosting Client",
    organization: "SaaS Operations Team",
    source: "HelloPeter",
    rating: 5,
    reviewText: "The cloud environment gives our platform the stability and room to scale that our growing customer base requires.",
  },
  {
    id: "hellopeter-managed-hosting",
    customerName: "Managed Hosting Client",
    organization: "Regional Organization",
    source: "HelloPeter",
    rating: 5,
    reviewText: "Monitoring, backups, and ongoing technical support give our organization confidence in its online infrastructure.",
  },
  {
    id: "hellopeter-infrastructure",
    customerName: "Infrastructure Client",
    organization: "Enterprise Technology Team",
    source: "HelloPeter",
    rating: 5,
    reviewText: "Zenvik provides a professional infrastructure service with strong communication, reliable delivery, and responsive support.",
  },
]

const preparePlans = (plans, category, storePath) =>
  plans.map((plan) => ({
    ...plan,
    id: `${category}-${plan.name.toLowerCase().replace(/\s+/g, "-")}`,
    featured: plan.recommended,
    placeholder: false,
    checkoutUrl: `${siteConfig.portalUrl}${storePath}`,
    detailsUrl: "#compare-hosting-prices",
  }))

const sharedHostingPlans = preparePlans(
  hostingPlans,
  "shared",
  "/index.php?rp=/store/shared-hosting"
)

const wordpressPlans = preparePlans(
  wordpressHostingPlans,
  "wordpress",
  "/index.php?rp=/store/wordpress-hosting"
)

const emailPlans = preparePlans(
  emailHostingPlans,
  "email",
  "/index.php?rp=/store/email-hosting"
)

const hostingCategories = [
  {
    id: "shared-hosting",
    label: "Shared Hosting",
    plans: sharedHostingPlans,
  },
  {
    id: "wordpress-hosting",
    label: "WordPress Hosting",
    plans: wordpressPlans,
  },
  {
    id: "email-hosting",
    label: "Business Email",
    plans: emailPlans,
  },
  {
    id: "reseller-hosting",
    label: "Reseller Hosting",
    comingSoon: true,
    plans: [],
  },
]

const comparisonGroups = [
  {
    id: "core",
    title: "Core Resources",
    icon: "tech-nvme",
    rows: [
      { label: "Hosted Websites", pattern: /website/i },
      { label: "Storage Capacity", pattern: /storage|nvme|ssd/i },
      { label: "Professional Email Accounts", pattern: /email account|professional email|mailbox/i },
      { label: "MySQL Databases", pattern: /mysql|database/i },
      { label: "Monthly Bandwidth", pattern: /bandwidth/i },
    ],
  },
  {
    id: "performance",
    title: "Performance",
    icon: "performance",
    rows: [
      { label: "Web Server & Caching", pattern: /litespeed|caching/i },
      { label: "Availability", pattern: /uptime/i },
      { label: "Performance Level", pattern: /performance|priority resource/i },
    ],
  },
  {
    id: "security",
    title: "Security",
    icon: "security",
    rows: [
      { label: "SSL", pattern: /ssl/i },
      { label: "Malware Protection", pattern: /malware/i },
      { label: "Account Protection", pattern: /security|brute force|two-factor|2fa|anti-spam|anti-virus/i },
    ],
  },
  {
    id: "email",
    title: "Email",
    icon: "email",
    rows: [
      { label: "Mailbox & Storage", pattern: /mailbox|mail storage|email account/i },
      { label: "Email Access", pattern: /webmail|imap|pop3|smtp|mobile.*sync|desktop.*sync/i },
      { label: "Collaboration", pattern: /calendar|contacts|team chat|cloud file/i },
      { label: "Email Intelligence", pattern: /ai email|email summar|send later|template/i },
    ],
  },
  {
    id: "wordpress",
    title: "WordPress Tools",
    icon: "wordpress",
    rows: [
      { label: "Managed WordPress", pattern: /managed wordpress|wordpress pre-installed|wordpress toolkit/i },
      { label: "Automatic Updates", pattern: /automatic.*update/i },
      { label: "Staging", pattern: /staging/i },
      { label: "WooCommerce & Redis", pattern: /woocommerce|redis/i },
    ],
  },
  {
    id: "backups",
    title: "Backups",
    icon: "tech-backup",
    rows: [
      { label: "Backup Service", pattern: /backup/i },
    ],
  },
  {
    id: "developer",
    title: "Developer Features",
    icon: "growth-software",
    rows: [
      { label: "Control Panel", pattern: /cpanel|control panel/i },
      { label: "Application Installer", pattern: /softaculous|one-click/i },
      { label: "PHP", pattern: /php/i },
      { label: "Developer Access", pattern: /ftp|addon domain|subdomain/i },
    ],
  },
  {
    id: "support",
    title: "Support",
    icon: "support",
    rows: [
      { label: "Support Level", pattern: /support/i },
      { label: "Service Guarantee", pattern: /money-back|guarantee/i },
    ],
  },
]

const getPlanItems = (plan) => [...plan.resources, ...plan.features]

const getComparisonValue = (plan, pattern) => {
  const matches = getPlanItems(plan).filter((item) => pattern.test(item))
  return matches.length ? matches.join(" · ") : "—"
}

const hostingPlatformPillars = [
  {
    title: "Performance & Infrastructure",
    description: "A high-performance foundation engineered for fast delivery, workload isolation, and dependable growth.",
    icon: "performance",
    badges: ["LiteSpeed", "NVMe SSD", "CloudLinux", "Enterprise"],
    features: ["LiteSpeed Web Server", "NVMe SSD Storage", "CloudLinux OS", "Enterprise Infrastructure", "High Availability", "Optimized Performance"],
    visual: "network",
  },
  {
    title: "Security & Protection",
    description: "Layered safeguards continuously protect websites, data, access, and recovery points.",
    icon: "security",
    badges: ["SSL", "Firewall", "Malware Protection", "Monitoring"],
    features: ["Free SSL Certificates", "Layered Security", "Secure Access", "Active Monitoring", "Malware Protection", "Resilient Backups"],
    visual: "security",
  },
  {
    title: "Hosting Management",
    description: "Practical controls and intelligent monitoring make daily hosting administration clear and efficient.",
    icon: "tech-cpanel",
    badges: ["cPanel", "Daily Backups", "Automation", "Resource Monitoring"],
    features: ["cPanel Control Panel", "Daily Backups", "Resource Monitoring", "Easy Administration", "One-click Management"],
    visual: "management",
  },
  {
    title: "Migration & Expert Support",
    description: "Guided migration and experienced technical support help businesses move smoothly and operate confidently.",
    icon: "migration-website",
    badges: ["Website Migration", "WordPress", "Email Migration", "Expert Support"],
    features: ["Free Website Migration", "WordPress Migration", "Email Migration", "Managed Services", "Expert Technical Support"],
    visual: "migration",
  },
]

const hostingCrossSellJourney = {
  statement: "Your Hosting Is Ready. What Will You Build on It?",
  description:
    "Hosting gives your idea a home. Zenvik can take the next step with you—designing the website customers experience and developing the software your business runs on.",
  cta: {
    label: "Explore Development Services",
    href: "/digital-solutions",
  },
  steps: [
    {
      title: "Website Development",
      description: "A responsive, polished website designed around your brand, customers, and goals.",
      type: "website",
    },
    {
      title: "Software Development",
      description: "Connected business systems, integrations, and automation built for the way you work.",
      type: "software",
    },
  ],
}

const hostingFaqs = [
  {
    question: "Which hosting plan is right for me?",
    answer: "Choose based on the number of websites, storage, email capacity, and performance you need. Use the comparison above or contact us for a recommendation.",
  },
  {
    question: "Can I upgrade my hosting later?",
    answer: "Yes. You can move to a higher-capacity plan as your websites, traffic, email, or business requirements grow.",
  },
  {
    question: "Do you offer free website migration?",
    answer: "Free migration is available for eligible plans, including supported websites, WordPress installations, email, and databases.",
  },
  {
    question: "How do I get support?",
    answer: "Existing customers can open the client portal for service management and support. New customers can contact our team using the form below.",
  },
]

function TypedHeading() {
  const prefersReducedMotion =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches
  const [visibleText, setVisibleText] = useState(prefersReducedMotion ? heroHeading : "")
  const [isComplete, setIsComplete] = useState(prefersReducedMotion)

  useEffect(() => {
    if (prefersReducedMotion) return undefined

    let characterIndex = 0
    const typingTimer = window.setInterval(() => {
      characterIndex += 1
      setVisibleText(heroHeading.slice(0, characterIndex))

      if (characterIndex >= heroHeading.length) {
        window.clearInterval(typingTimer)
        setIsComplete(true)
      }
    }, 65)

    return () => window.clearInterval(typingTimer)
  }, [prefersReducedMotion])

  return (
    <h1 id="hosting-hero-title" className="hosting-hero__main-heading" aria-label={heroHeading}>
      <span className="hosting-hero__heading-measure" aria-hidden="true">{heroHeading}</span>
      <span className="hosting-hero__heading-typed" aria-hidden="true">
        {visibleText}
        <span className={`hosting-hero__typing-caret ${isComplete ? "is-complete" : ""}`} />
      </span>
    </h1>
  )
}

function ArrowIcon() {
  return (
    <svg viewBox="0 0 20 20" aria-hidden="true">
      <path d="M4 10h12M11 5l5 5-5 5" />
    </svg>
  )
}

function HostingEcosystemVisual({ type }) {
  if (type === "security") {
    return (
      <div className="hosting-ecosystem-visual is-security" aria-hidden="true">
        <svg viewBox="0 0 220 160">
          <circle className="security-ring security-ring--outer" cx="110" cy="80" r="60" />
          <circle className="security-ring security-ring--inner" cx="110" cy="80" r="46" />
          <path className="security-shield" d="M110 30 151 45v31c0 27-15 45-41 56-26-11-41-29-41-56V45l41-15Z" />
          <rect className="security-lock" x="96" y="70" width="28" height="25" rx="5" />
          <path className="security-lock" d="M101 70v-8a9 9 0 0 1 18 0v8M110 80v7" />
          <path className="security-scan" d="M110 80 164 57" />
          <circle className="security-packet" cx="49" cy="80" r="4" />
          <circle className="security-packet security-packet--two" cx="171" cy="80" r="4" />
        </svg>
      </div>
    )
  }

  if (type === "management") {
    return (
      <div className="hosting-ecosystem-visual is-management" aria-hidden="true">
        <svg viewBox="0 0 220 160">
          <rect className="management-shell" x="22" y="22" width="176" height="116" rx="12" />
          <path className="management-nav" d="M22 45h176M54 45v93" />
          <circle cx="35" cy="34" r="3" /><circle cx="45" cy="34" r="3" />
          <rect className="management-widget" x="66" y="57" width="52" height="30" rx="6" />
          <rect className="management-widget management-widget--two" x="128" y="57" width="58" height="30" rx="6" />
          <path className="management-chart" d="m68 119 18-16 17 7 18-20 20 11 20-18 23 8" />
          <path className="management-bars" d="M73 80v-9M83 80V65M93 80v-13M103 80V61" />
          <circle className="management-backup" cx="157" cy="72" r="9" />
          <path className="management-backup" d="m153 72 3 3 6-7" />
        </svg>
      </div>
    )
  }

  if (type === "migration") {
    return (
      <div className="hosting-ecosystem-visual is-migration" aria-hidden="true">
        <svg viewBox="0 0 220 160">
          <path className="migration-cloud migration-cloud--source" d="M27 65c0-11 9-20 20-20 8-15 32-9 32 9 12 0 18 8 18 17 0 10-8 17-19 17H47c-12 0-20-9-20-23Z" />
          <path className="migration-cloud migration-cloud--target" d="M123 78c0-11 9-20 20-20 8-15 32-9 32 9 12 0 18 8 18 17 0 10-8 17-19 17h-31c-12 0-20-9-20-23Z" />
          <path className="migration-route" d="M84 101c18 21 37 23 55 5" />
          <path className="migration-arrow" d="m132 101 9 5-7 8" />
          <rect className="migration-file migration-file--one" x="82" y="96" width="15" height="19" rx="3" />
          <rect className="migration-file migration-file--two" x="104" y="105" width="15" height="19" rx="3" />
          <ellipse className="migration-database" cx="57" cy="68" rx="13" ry="5" />
          <path className="migration-database" d="M44 68v12c0 3 6 5 13 5s13-2 13-5V68" />
          <circle className="migration-complete" cx="161" cy="80" r="13" />
          <path className="migration-complete" d="m155 80 4 4 8-9" />
        </svg>
      </div>
    )
  }

  return (
    <div className="hosting-ecosystem-visual is-network" aria-hidden="true">
      <svg viewBox="0 0 220 160">
        <path className="network-cloud" d="M76 47c0-13 11-23 24-23 9-17 36-10 36 10 13 0 21 9 21 20 0 11-9 19-22 19H99c-14 0-23-10-23-26Z" />
        <rect className="network-server" x="28" y="87" width="52" height="44" rx="7" />
        <rect className="network-server network-server--two" x="140" y="87" width="52" height="44" rx="7" />
        <path className="network-route" d="M54 87V71h56M166 87V71h-56M110 71V54" />
        <circle className="network-node" cx="110" cy="71" r="6" />
        <circle className="network-packet network-packet--one" cx="54" cy="71" r="4" />
        <circle className="network-packet network-packet--two" cx="166" cy="71" r="4" />
        <path className="network-server-lines" d="M38 99h32M38 108h24M150 99h32M150 108h24" />
        <path className="network-performance" d="m93 118 9-12 8 7 12-18 8 8" />
      </svg>
    </div>
  )
}

function CrossSellJourneyVisual({ type }) {
  if (type === "software") {
    return (
      <svg className="cross-sell-journey__software" viewBox="0 0 300 190" aria-hidden="true">
        <rect className="software-module software-module--core" x="113" y="67" width="74" height="56" rx="12" />
        <rect className="software-device" x="36" y="24" width="38" height="60" rx="8" />
        <path className="software-device-ui" d="M43 36h24M43 44h17M43 54h10M57 54h10M43 64h24" />
        <circle className="software-device-home" cx="55" cy="76" r="2.5" />
        <circle className="software-automation" cx="245" cy="54" r="22" />
        <circle className="software-automation software-automation--inner" cx="245" cy="54" r="8" />
        <path className="software-automation" d="M245 25v7M245 76v7M216 54h7M267 54h7M225 34l5 5M260 69l5 5M265 34l-5 5M230 69l-5 5" />
        <path className="software-cloud" d="M220 144c0-10 8-18 18-18 7-13 28-8 28 8 10 0 16 7 16 15 0 9-7 15-17 15h-28c-10 0-17-7-17-20Z" />
        <circle className="software-cloud-node" cx="250" cy="145" r="5" />
        <ellipse className="software-database" cx="55" cy="140" rx="27" ry="9" />
        <path className="software-database" d="M28 140v23c0 5 12 9 27 9s27-4 27-9v-23" />
        <path className="software-route" d="M74 54h48v26M214 54h-36v26M82 148h39v-35M220 148h-41v-35" />
        <circle className="software-packet" r="4">
          <animateMotion dur="1.6s" repeatCount="indefinite" path="M74 54h48v26" />
        </circle>
        <circle className="software-packet" r="4">
          <animateMotion begin="-.55s" dur="1.6s" repeatCount="indefinite" path="M214 54h-36v26" />
        </circle>
        <circle className="software-packet" r="4">
          <animateMotion begin="-1.1s" dur="1.6s" repeatCount="indefinite" path="M82 148h39v-35" />
        </circle>
        <circle className="software-packet" r="4">
          <animateMotion begin="-.8s" dur="1.6s" repeatCount="indefinite" path="M220 148h-41v-35" />
        </circle>
        <path className="software-api" d="m137 88-10 8 10 8M163 88l10 8-10 8M157 80l-14 32" />
      </svg>
    )
  }

  return (
    <svg className="cross-sell-journey__website" viewBox="0 0 300 190" aria-hidden="true">
      <rect className="website-browser" x="25" y="23" width="250" height="145" rx="13" />
      <path className="website-browser-bar" d="M25 49h250" />
      <circle cx="41" cy="36" r="3" /><circle cx="51" cy="36" r="3" /><circle cx="61" cy="36" r="3" />
      <rect className="website-hero-block" x="43" y="66" width="105" height="56" rx="8" />
      <rect className="website-text-line" x="164" y="69" width="82" height="8" rx="4" />
      <rect className="website-text-line website-text-line--two" x="164" y="84" width="62" height="7" rx="3.5" />
      <rect className="website-button" x="164" y="103" width="48" height="18" rx="6" />
      <rect className="website-layout" x="43" y="136" width="58" height="16" rx="5" />
      <rect className="website-layout website-layout--two" x="108" y="136" width="58" height="16" rx="5" />
      <rect className="website-layout website-layout--three" x="173" y="136" width="73" height="16" rx="5" />
      <path className="website-cursor" d="m224 93 19 8-9 4-4 10-6-22Z" />
      <circle className="website-launch" cx="250" cy="145" r="10" />
      <path className="website-launch" d="m246 145 3 3 6-7" />
    </svg>
  )
}

function EnterpriseAIDataCenter() {
  return (
    <div
      className="licensed-data-center"
      role="img"
      aria-label="Enterprise cloud data center with illuminated server infrastructure"
    >
      <img src={licensedDataCenter} alt="" aria-hidden="true" />
      <div className="licensed-data-center__light" aria-hidden="true" />
      <div className="licensed-data-center__rack-leds" aria-hidden="true">
        {Array.from({ length: 18 }).map((_, index) => (
          <i
            key={index}
            className={index === 4 || index === 13 ? "is-premium" : ""}
            style={{
              "--led-left": `${5 + ((index * 13) % 88)}%`,
              "--led-top": `${20 + ((index * 17) % 54)}%`,
              "--led-delay": `${index * -.32}s`,
            }}
          />
        ))}
      </div>
      <div className="licensed-data-center__reflection" aria-hidden="true" />
      <div className="licensed-data-center__particles" aria-hidden="true">
        {Array.from({ length: 12 }).map((_, index) => (
          <i
            key={index}
            style={{
              "--particle-left": `${7 + ((index * 19) % 88)}%`,
              "--particle-top": `${10 + ((index * 23) % 75)}%`,
              "--particle-delay": `${index * -.8}s`,
            }}
          />
        ))}
      </div>
    </div>
  )
}

function DomainSearchSection() {
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
      { threshold: 0.2 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      ref={sectionRef}
      className={`domain-search-section ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="domain-search-title"
    >
      <div className="domain-search-section__inner">
        <header className="domain-search-section__header">
          <p>Domain Services</p>
          <h2 id="domain-search-title">Find the Perfect Domain Name</h2>
          <span>Search, register, transfer, and manage your domain with ease.</span>
        </header>

        <form
          className="domain-search-bar"
          action={`${siteConfig.portalUrl}/cart.php`}
          method="get"
        >
          <input type="hidden" name="a" value="add" />
          <input type="hidden" name="domain" value="register" />
          <label htmlFor="domain-query">Find your new domain</label>
          <div className="domain-search-bar__fields">
            <span className="domain-search-bar__prefix" aria-hidden="true">www.</span>
            <input
              id="domain-query"
              name="query"
              type="text"
              placeholder="Search your perfect domain..."
              inputMode="url"
              autoComplete="off"
              required
              aria-label="Domain name"
            />
            <button type="submit">Check Domain Availability</button>
          </div>
        </form>

        <ul id="domain-pricing" className="domain-price-strip" aria-label="Domain extension prices">
          {domainPrices.map((domain) => (
            <li key={domain.extension}>
              <strong>{domain.extension}</strong>
              <span>{domain.price}</span>
            </li>
          ))}
        </ul>

        <div id="domain-services" className="domain-services">
          <header className="domain-services__header">
            <span>Domain Services</span>
            <h3>Everything Your Domain Needs</h3>
            <p>More than just domain registration—access the tools and services you need to secure, manage, and grow your online presence.</p>
          </header>

          <div className="domain-services__grid">
            {domainServices.map((service, index) => (
              <a
                key={service.title}
                href={service.href}
                className="domain-service-card"
                style={{ "--domain-service-delay": `${.7 + index * .07}s` }}
              >
                <span className="domain-service-card__icon">
                  <HostingValueIcon type={service.icon} />
                </span>
                <h4>{service.title}</h4>
                <p>{service.description}</p>
                <svg className="domain-service-card__arrow" viewBox="0 0 20 20" aria-hidden="true">
                  <path d="M4 10h12M11 5l5 5-5 5" />
                </svg>
              </a>
            ))}
          </div>
        </div>
      </div>
    </section>
  )
}

function HostingValueIcon({ type }) {
  const iconProps = {
    viewBox: "0 0 24 24",
    fill: "none",
    stroke: "currentColor",
    strokeWidth: "1.8",
    strokeLinecap: "round",
    strokeLinejoin: "round",
    "aria-hidden": "true",
  }

  const paths = {
    infrastructure: <><rect x="4" y="3" width="16" height="18" rx="2" /><path d="M8 7h8M8 12h8M8 17h5" /><circle cx="17" cy="17" r="1" /></>,
    performance: <><path d="M4 14a8 8 0 1 1 16 0" /><path d="m12 14 4-5M5 18h14" /></>,
    security: <><path d="M12 3 5.5 6v5.5c0 4 2.6 7.4 6.5 9 3.9-1.6 6.5-5 6.5-9V6L12 3Z" /><path d="m9.5 12 1.7 1.7 3.5-3.8" /></>,
    support: <><path d="M4 13v-2a8 8 0 0 1 16 0v2M4 13a2 2 0 0 1 2-2h1v6H6a2 2 0 0 1-2-2v-2ZM20 13a2 2 0 0 0-2-2h-1v6h1a2 2 0 0 0 2-2v-2Z" /><path d="M17 19c-1 1-2.7 1.5-5 1.5" /></>,
    uptime: <><circle cx="12" cy="12" r="9" /><path d="M12 7v5l3 2M17.5 4.5l2 2" /></>,
    ssl: <><rect x="5" y="10" width="14" height="10" rx="2" /><path d="M8 10V7a4 4 0 0 1 8 0v3M12 14v2" /></>,
    backup: <><path d="M5 8a8 8 0 1 1-1 7" /><path d="M5 3v5H0M12 8v4l3 2" /></>,
    speed: <><path d="M4 14a8 8 0 1 1 16 0M12 14l5-6M5 18h14" /></>,
    email: <><rect x="3" y="5" width="18" height="14" rx="2" /><path d="m4 7 8 6 8-6" /></>,
    migration: <><path d="M5 7h11M13 4l3 3-3 3M19 17H8M11 14l-3 3 3 3" /></>,
    shared: <><rect x="4" y="4" width="16" height="6" rx="2" /><rect x="4" y="14" width="16" height="6" rx="2" /><path d="M8 7h.01M8 17h.01M12 7h5M12 17h5" /></>,
    wordpress: <><circle cx="12" cy="12" r="9" /><path d="M7 8.5 10.5 18M17 8.5 13.5 18M8.5 8.5h4M14.5 8.5h2" /><path d="M15.5 6.5c1.5 1.6 1.2 3 .4 4.8" /></>,
    reseller: <><path d="M5 8a4 4 0 0 1 7.5-2M19 16a4 4 0 0 1-7.5 2" /><path d="m9 3 3 3-3 3M15 13l-3 3 3 3" /><circle cx="5" cy="16" r="2" /><circle cx="19" cy="8" r="2" /></>,
    "domain-register": <><circle cx="12" cy="12" r="9" /><path d="M3.5 10h17M3.5 14h17M12 3a14 14 0 0 1 0 18M12 3a14 14 0 0 0 0 18" /><path d="M17 5v4M15 7h4" /></>,
    "domain-transfer": <><path d="M4 8h12M13 5l3 3-3 3M20 16H8M11 13l-3 3 3 3" /><circle cx="5" cy="16" r="2" /><circle cx="19" cy="8" r="2" /></>,
    "domain-renewal": <><path d="M5 8a8 8 0 1 1-1 7" /><path d="M5 3v5H0M12 8v4l3 2" /></>,
    "domain-whois": <><circle cx="10.5" cy="10.5" r="6.5" /><path d="m15.5 15.5 5 5M8.5 8.5a2 2 0 1 1 3 1.7c-.8.5-1 1-1 1.8M10.5 14h.01" /></>,
    "domain-dns": <><circle cx="6" cy="6" r="2.5" /><circle cx="18" cy="6" r="2.5" /><circle cx="12" cy="18" r="2.5" /><path d="m8.2 7.2 2.7 8.4M15.8 7.2l-2.7 8.4M8.5 6h7" /></>,
    "domain-security": <><path d="M12 3 5.5 6v5.5c0 4 2.6 7.4 6.5 9 3.9-1.6 6.5-5 6.5-9V6L12 3Z" /><path d="m9.5 12 1.7 1.7 3.5-3.8" /></>,
    "domain-privacy": <><path d="M3 12s3.5-6 9-6 9 6 9 6-3.5 6-9 6-9-6-9-6Z" /><circle cx="12" cy="12" r="2.5" /><path d="m4 4 16 16" /></>,
    "domain-pricing": <><path d="M4 5h10l6 6-9 9-7-7V5Z" /><circle cx="8" cy="9" r="1" /><path d="m13 11-3 3M10 11h.01M13 14h.01" /></>,
    "tech-litespeed": <><path d="m13 2-8 12h7l-1 8 8-12h-7l1-8Z" /></>,
    "tech-nvme": <><rect x="3" y="6" width="18" height="12" rx="2" /><path d="M7 10h7M7 14h4M18 10v4M5 3v3M9 3v3M13 3v3M17 3v3M5 18v3M9 18v3M13 18v3M17 18v3" /></>,
    "tech-cloudlinux": <><path d="M7 18h10a4 4 0 0 0 .7-7.9A6 6 0 0 0 6.2 8.7 4.5 4.5 0 0 0 7 18Z" /><path d="M9 14h6M12 11v6" /></>,
    "tech-cpanel": <><rect x="3" y="4" width="18" height="16" rx="2" /><path d="M3 9h18M8 9v11M6 6h.01M9 6h.01M12 6h.01M11 13h7M11 16h5" /></>,
    "tech-imunify": <><path d="M12 3 5.5 6v5.5c0 4 2.6 7.4 6.5 9 3.9-1.6 6.5-5 6.5-9V6L12 3Z" /><path d="M9 12h6M12 9v6" /></>,
    "tech-backup": <><path d="M5 8a8 8 0 1 1-1 7" /><path d="M5 3v5H0" /><rect x="9" y="9" width="7" height="6" rx="1" /></>,
    "tech-ssl": <><rect x="5" y="10" width="14" height="10" rx="2" /><path d="M8 10V7a4 4 0 0 1 8 0v3M12 14v2" /></>,
    "migration-request": <><path d="M5 3h10l4 4v14H5V3Z" /><path d="M15 3v5h4M8 12h8M8 16h5" /></>,
    "migration-assessment": <><circle cx="10.5" cy="10.5" r="6.5" /><path d="m15.5 15.5 5 5M8 10.5l1.7 1.7 3.5-3.8" /></>,
    "migration-transfer": <><path d="M4 8h12M13 5l3 3-3 3M20 16H8M11 13l-3 3 3 3" /><path d="M12 10v4" /></>,
    "migration-live": <><circle cx="12" cy="12" r="9" /><path d="m8.5 12 2.2 2.2 4.8-5.1" /></>,
    "migration-website": <><rect x="3" y="4" width="18" height="16" rx="2" /><path d="M3 9h18M7 6.5h.01M10 6.5h.01M8 14h8M13 11l3 3-3 3" /></>,
    "migration-database": <><ellipse cx="12" cy="5" rx="7" ry="3" /><path d="M5 5v7c0 1.7 3.1 3 7 3s7-1.3 7-3V5M5 12v7c0 1.7 3.1 3 7 3s7-1.3 7-3v-7" /></>,
    "managed-monitoring": <><path d="M3 12h4l2-5 4 10 2-5h6" /><rect x="3" y="3" width="18" height="18" rx="3" /></>,
    "security-access": <><circle cx="8" cy="12" r="4" /><path d="M12 12h9M18 12v3M15 12v2" /></>,
    "growth-website": <><rect x="3" y="4" width="18" height="16" rx="2" /><path d="M3 9h18M7 6.5h.01M10 6.5h.01M8 14h8" /></>,
    "growth-software": <><path d="m8 8-4 4 4 4M16 8l4 4-4 4M14 4l-4 16" /></>,
    "growth-mobile": <><rect x="7" y="2" width="10" height="20" rx="2" /><path d="M10 5h4M11 19h2" /></>,
    "growth-api": <><path d="M8 6H6a3 3 0 0 0-3 3v6a3 3 0 0 0 3 3h2M16 6h2a3 3 0 0 1 3 3v6a3 3 0 0 1-3 3h-2M8 12h8" /><circle cx="8" cy="12" r="2" /><circle cx="16" cy="12" r="2" /></>,
    "growth-ai": <><rect x="6" y="6" width="12" height="12" rx="3" /><path d="M9 2v4M15 2v4M9 18v4M15 18v4M2 9h4M18 9h4M2 15h4M18 15h4M9.5 12c1.3-2.5 3.7-2.5 5 0" /></>,
    "growth-automation": <><path d="M12 3v3M12 18v3M3 12h3M18 12h3M5.6 5.6l2.1 2.1M16.3 16.3l2.1 2.1M18.4 5.6l-2.1 2.1M7.7 16.3l-2.1 2.1" /><circle cx="12" cy="12" r="4" /></>,
  }

  return <svg {...iconProps}>{paths[type]}</svg>
}

function ReviewStars({ rating, label = `${rating} out of 5 stars` }) {
  return (
    <span className="client-review-stars" role="img" aria-label={label}>
      {Array.from({ length: 5 }).map((_, index) => (
        <svg key={index} viewBox="0 0 20 20" aria-hidden="true">
          <path d="m10 1.8 2.35 4.76 5.25.76-3.8 3.7.9 5.23L10 13.78l-4.7 2.47.9-5.23-3.8-3.7 5.25-.76L10 1.8Z" />
        </svg>
      ))}
    </span>
  )
}

function ClientReviewsSection() {
  const sectionRef = useRef(null)
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )
  const [activePlatform, setActivePlatform] = useState(reviewPlatforms[0])
  const totalReviews = featuredReviews.length
  const averageRating =
    featuredReviews.reduce((total, review) => total + review.rating, 0) / totalReviews
  const displayedReviews = featuredReviews.filter(
    (review) => review.source === activePlatform
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
      { threshold: 0.2 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  useEffect(() => {
    if (!isVisible) return undefined

    const rotation = window.setInterval(() => {
      setActivePlatform((currentPlatform) => {
        const currentIndex = reviewPlatforms.indexOf(currentPlatform)
        return reviewPlatforms[(currentIndex + 1) % reviewPlatforms.length]
      })
    }, 6000)

    return () => window.clearInterval(rotation)
  }, [isVisible])

  return (
    <section
      ref={sectionRef}
      className={`client-reviews-section ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="client-reviews-title"
    >
      <div className="client-reviews-section__inner">
        <header className="client-reviews-section__header">
          <p>Client Reviews</p>
          <h2 id="client-reviews-title">Trusted by Our Clients</h2>
          <span>
            See what businesses, organizations, and individuals say about their
            experience with Zenvik Technologies.
          </span>
        </header>

        <div className="client-review-summary">
          <div className="client-review-summary__rating">
            <ReviewStars rating={averageRating} />
            <strong>Excellent Hosting Experience</strong>
            <span>{averageRating.toFixed(1)}/5 average across {totalReviews} hosting and cloud reviews</span>
          </div>
          <div className="client-review-summary__platforms" aria-label="Supported review platforms">
            {reviewPlatforms.map((platform) => (
              <button
                type="button"
                key={platform}
                className={`platform-${platform.toLowerCase().replace(/\s+/g, "-")} ${
                  platform === activePlatform ? "is-active" : ""
                }`}
                aria-pressed={platform === activePlatform}
                onClick={() => setActivePlatform(platform)}
              >
                {platform}
              </button>
            ))}
          </div>
        </div>

        <div className="client-testimonial-grid" key={activePlatform}>
          {displayedReviews.map((review, index) => (
            <article
              className="client-testimonial-card"
              key={review.id}
              style={{ "--review-delay": `${.28 + index * .1}s` }}
            >
              <div className="client-testimonial-card__top">
                <ReviewStars rating={review.rating} />
                <span className="client-testimonial-card__source">{review.customerName}</span>
              </div>
              <blockquote>
                <p>“{review.reviewText}”</p>
              </blockquote>
            </article>
          ))}
        </div>
      </div>
    </section>
  )
}

function HostingPlanCard({ plan, index }) {
  return (
    <article
      className={`hosting-plan-card ${plan.featured ? "is-featured" : ""}`}
      style={{ "--plan-delay": `${index * .08}s` }}
    >
      {plan.featured && <span className="hosting-plan-card__badge">Most Popular</span>}
      <div className="hosting-plan-card__heading">
        <div>
          <h3>{plan.name}</h3>
          {plan.badge && (
            <span className="hosting-plan-card__saving">
              <svg viewBox="0 0 20 20" aria-hidden="true">
                <path d="M3 10V4a1 1 0 0 1 1-1h6l7 7-7 7-7-7Z" />
                <circle cx="7" cy="7" r="1.2" />
              </svg>
              {plan.badge}
            </span>
          )}
        </div>
        <p>{plan.description}</p>
      </div>

      <div className={`hosting-plan-card__price ${plan.placeholder ? "is-placeholder" : ""}`}>
        <strong>{plan.price}</strong>
        {plan.period && <span>{plan.period}</span>}
        <small>{plan.renewalPrice}</small>
      </div>

      <div className="hosting-plan-card__resources">
        <h4>Key Resources</h4>
        <ul>
          {plan.resources.map((resource) => <li key={resource}>{resource}</li>)}
        </ul>
      </div>

      <div className="hosting-plan-card__features">
        <h4>Included Features</h4>
        <ul>
          {plan.features.map((feature) => (
            <li key={feature}>
              <svg viewBox="0 0 20 20" aria-hidden="true"><path d="m4 10 4 4 8-9" /></svg>
              {feature}
            </li>
          ))}
        </ul>
      </div>

      <div className="hosting-plan-card__actions">
        <a className="hosting-plan-card__primary" href={plan.checkoutUrl}>Get Started</a>
        <a className="hosting-plan-card__secondary" href={plan.detailsUrl}>
          Learn More
          <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M4 10h12M11 5l5 5-5 5" /></svg>
        </a>
      </div>
    </article>
  )
}

function HostingPackagesSection() {
  const sectionRef = useRef(null)
  const [activeCategory, setActiveCategory] = useState("shared-hosting")
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )
  const activeCategoryData =
    hostingCategories.find((category) => category.id === activeCategory) ??
    hostingCategories[0]
  const activePlans = activeCategoryData.plans

  useEffect(() => {
    const selectCategoryFromHash = () => {
      const categoryId = window.location.hash.slice(1)
      if (hostingCategories.some((category) => category.id === categoryId)) {
        setActiveCategory(categoryId)
      }
    }

    selectCategoryFromHash()
    window.addEventListener("hashchange", selectCategoryFromHash)
    return () => window.removeEventListener("hashchange", selectCategoryFromHash)
  }, [])

  useEffect(() => {
    if (typeof IntersectionObserver === "undefined") return undefined

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true)
          observer.disconnect()
        }
      },
      { threshold: 0.12 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      id="hosting-plans"
      ref={sectionRef}
      className={`hosting-packages-section ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="hosting-packages-title"
    >
      {hostingCategories.map((category) => (
        <span className="hosting-package-anchor" id={category.id} key={category.id} aria-hidden="true" />
      ))}

      <div className="hosting-packages-section__inner">
        <header className="hosting-packages-section__header">
          <p>Hosting Packages</p>
          <h2 id="hosting-packages-title">Choose the Right Hosting Plan</h2>
          <span>
            Flexible hosting solutions designed for individuals, businesses,
            organizations, and growing digital projects.
          </span>
        </header>

        <div className="hosting-category-tabs" role="tablist" aria-label="Hosting categories">
          {hostingCategories.map((category) => (
            <button
              key={category.id}
              id={`${category.id}-tab`}
              type="button"
              role="tab"
              aria-selected={activeCategory === category.id}
              aria-controls="hosting-package-panel"
              className={activeCategory === category.id ? "is-active" : ""}
              onClick={() => setActiveCategory(category.id)}
            >
              {category.label}
            </button>
          ))}
        </div>

        <div
          id="hosting-package-panel"
          className="hosting-package-grid"
          role="tabpanel"
          aria-labelledby={`${activeCategory}-tab`}
          key={activeCategory}
        >
          {activeCategoryData.comingSoon ? (
            <div className="hosting-packages-coming-soon">
              <span>Coming Soon</span>
              <h3>Reseller Hosting</h3>
              <p>Our reseller hosting packages are being prepared and will be available soon.</p>
            </div>
          ) : (
            activePlans.map((plan, index) => (
              <HostingPlanCard plan={plan} index={index} key={plan.id} />
            ))
          )}
        </div>
      </div>
    </section>
  )
}

function EnterpriseTechnologySection() {
  const sectionRef = useRef(null)
  const [activePillar, setActivePillar] = useState(0)
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
      { threshold: 0.16 }
    )

    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      ref={sectionRef}
      className={`hosting-ecosystem-section ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="hosting-ecosystem-title"
    >
      <div className="hosting-ecosystem-section__inner">
        <header className="hosting-ecosystem-section__intro">
          <p>Why Host with Zenvik</p>
          <h2 id="hosting-ecosystem-title">One Complete Hosting Ecosystem</h2>
          <span>
            Performance, protection, management, and expert support work together
            as one dependable platform for your business.
          </span>
          <a href="/contact">
            Talk to a Hosting Expert
            <ArrowIcon />
          </a>
        </header>

        <div className="hosting-ecosystem-pillars">
          {hostingPlatformPillars.map((pillar, index) => {
            const isActive = activePillar === index
            return (
            <article
              className={`hosting-ecosystem-pillar ${isActive ? "is-active" : ""}`}
              key={pillar.title}
              style={{ "--pillar-delay": `${index * .08}s` }}
            >
              <button
                type="button"
                aria-expanded={isActive}
                aria-controls={`hosting-pillar-${index}`}
                onClick={() => setActivePillar(index)}
              >
                <span className="hosting-ecosystem-pillar__number">0{index + 1}</span>
                <span className="hosting-ecosystem-pillar__icon">
                  <HostingValueIcon type={pillar.icon} />
                </span>
                <span className="hosting-ecosystem-pillar__title">{pillar.title}</span>
                <span className="hosting-ecosystem-pillar__toggle" aria-hidden="true" />
              </button>

              <div
                id={`hosting-pillar-${index}`}
                className="hosting-ecosystem-pillar__content"
                aria-hidden={!isActive}
              >
                <div>
                  <p>{pillar.description}</p>
                  <ul>
                    {pillar.features.map((feature) => (
                      <li key={feature}>{feature}</li>
                    ))}
                  </ul>
                  <div className="hosting-ecosystem-pillar__badges">
                    {pillar.badges.map((badge) => <span key={badge}>{badge}</span>)}
                  </div>
                </div>
                <HostingEcosystemVisual type={pillar.visual} />
              </div>
            </article>
            )
          })}
        </div>
      </div>
    </section>
  )
}

function HostingPlanComparisonSection() {
  const sectionRef = useRef(null)
  const [activeCategory, setActiveCategory] = useState("shared-hosting")
  const [openGroups, setOpenGroups] = useState(["core"])
  const [differencesOnly, setDifferencesOnly] = useState(false)
  const [selectedPlanIndex, setSelectedPlanIndex] = useState(0)
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )

  const category = hostingCategories.find((item) => item.id === activeCategory) ?? hostingCategories[0]
  const plans = category.plans
  const categoryLabels = {
    "shared-hosting": "Web Hosting",
    "wordpress-hosting": "WordPress Hosting",
    "email-hosting": "Email Hosting",
    "reseller-hosting": "Reseller Hosting",
  }

  const availableGroups = comparisonGroups
    .map((group) => {
      const rows = group.rows.filter((row) => {
        const values = plans.map((plan) => getComparisonValue(plan, row.pattern))
        const hasValue = values.some((value) => value !== "—")
        const hasDifference = new Set(values).size > 1
        return hasValue && (!differencesOnly || hasDifference)
      })
      return { ...group, rows }
    })
    .filter((group) => group.rows.length > 0)

  const sharedItems = plans.length
    ? getPlanItems(plans[0]).filter((item) =>
        plans.every((plan) => getPlanItems(plan).includes(item))
      )
    : []

  useEffect(() => {
    if (typeof IntersectionObserver === "undefined") return undefined
    const observer = new IntersectionObserver(([entry]) => {
      if (entry.isIntersecting) {
        setIsVisible(true)
        observer.disconnect()
      }
    }, { threshold: .12 })
    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  const selectCategory = (categoryId) => {
    setActiveCategory(categoryId)
    setOpenGroups(["core"])
    setSelectedPlanIndex(0)
  }

  const toggleGroup = (groupId) => {
    setOpenGroups((current) =>
      current.includes(groupId)
        ? current.filter((id) => id !== groupId)
        : [...current, groupId]
    )
  }

  const toggleAllGroups = () => {
    const allOpen = availableGroups.every((group) => openGroups.includes(group.id))
    setOpenGroups(allOpen ? [] : availableGroups.map((group) => group.id))
  }

  return (
    <section
      id="compare-hosting-prices"
      ref={sectionRef}
      className={`hosting-comparison-section ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="hosting-comparison-title"
    >
      <div className="hosting-comparison-section__inner">
        <header className="hosting-comparison-section__intro">
          <p>Plan Comparison</p>
          <h2 id="hosting-comparison-title">Compare Hosting Plans</h2>
          <span>
            Explore the features, limits, and included tools across Zenvik hosting
            packages so you can choose the right solution with confidence.
          </span>
          <small>Switch categories, open only what matters, or focus on plan differences.</small>
        </header>

        <div className="hosting-comparison">
          <div className="hosting-comparison__tabs" role="tablist" aria-label="Comparison categories">
            {hostingCategories.map((item) => (
              <button
                type="button"
                role="tab"
                key={item.id}
                aria-selected={activeCategory === item.id}
                className={activeCategory === item.id ? "is-active" : ""}
                onClick={() => selectCategory(item.id)}
              >
                {categoryLabels[item.id]}
                {item.comingSoon && <small>Soon</small>}
              </button>
            ))}
          </div>

          {category.comingSoon ? (
            <div className="hosting-comparison__coming-soon" role="tabpanel">
              <div aria-hidden="true"><span /><span /><span /></div>
              <p>Coming Soon</p>
              <h3>Reseller Hosting Coming Soon</h3>
              <span>
                Flexible reseller packages are being prepared for agencies,
                developers, and hosting businesses.
              </span>
              <a href="/contact">Contact Sales</a>
            </div>
          ) : (
            <div className="hosting-comparison__panel" key={activeCategory} role="tabpanel">
              <div className="hosting-comparison__tools">
                <label>
                  <input
                    type="checkbox"
                    checked={differencesOnly}
                    onChange={(event) => setDifferencesOnly(event.target.checked)}
                  />
                  <span aria-hidden="true" />
                  Differences only
                </label>
                <button type="button" onClick={toggleAllGroups}>
                  {availableGroups.every((group) => openGroups.includes(group.id))
                    ? "Collapse all"
                    : "Show all"}
                </button>
              </div>

              {sharedItems.length > 0 && (
                <div className="hosting-comparison__shared">
                  <strong>Included in Every Plan</strong>
                  <div>
                    {sharedItems.slice(0, 6).map((item) => <span key={item}>{item}</span>)}
                    {sharedItems.length > 6 && <span>+{sharedItems.length - 6} more</span>}
                  </div>
                </div>
              )}

              <div
                className="hosting-comparison__plan-header"
                style={{ "--comparison-plans": plans.length }}
              >
                <span>Feature</span>
                {plans.map((plan) => (
                  <strong className={plan.featured ? "is-featured" : ""} key={plan.id}>
                    {plan.name}
                  </strong>
                ))}
              </div>

              <div className="hosting-comparison__mobile-plans" aria-label="Select a plan">
                {plans.map((plan, index) => (
                  <button
                    type="button"
                    key={plan.id}
                    className={selectedPlanIndex === index ? "is-active" : ""}
                    onClick={() => setSelectedPlanIndex(index)}
                  >
                    {plan.name}
                  </button>
                ))}
              </div>

              <div className="hosting-comparison__groups">
                {availableGroups.map((group) => {
                  const isOpen = openGroups.includes(group.id)
                  return (
                    <article className={isOpen ? "is-open" : ""} key={group.id}>
                      <button
                        type="button"
                        aria-expanded={isOpen}
                        aria-controls={`comparison-${activeCategory}-${group.id}`}
                        onClick={() => toggleGroup(group.id)}
                      >
                        <span><HostingValueIcon type={group.icon} /></span>
                        <strong>{group.title}</strong>
                        <i aria-hidden="true" />
                      </button>
                      <div
                        id={`comparison-${activeCategory}-${group.id}`}
                        className="hosting-comparison__group-content"
                      >
                        <div>
                          <div className="hosting-comparison__desktop-table">
                            {group.rows.map((row) => (
                              <div
                                className="hosting-comparison__row"
                                style={{ "--comparison-plans": plans.length }}
                                key={row.label}
                              >
                                <strong>{row.label}</strong>
                                {plans.map((plan) => (
                                  <span className={plan.featured ? "is-featured" : ""} key={plan.id}>
                                    {getComparisonValue(plan, row.pattern)}
                                  </span>
                                ))}
                              </div>
                            ))}
                          </div>
                          <div className="hosting-comparison__mobile-table">
                            {group.rows.map((row) => (
                              <div key={row.label}>
                                <strong>{row.label}</strong>
                                <span>{getComparisonValue(plans[selectedPlanIndex], row.pattern)}</span>
                              </div>
                            ))}
                          </div>
                        </div>
                      </div>
                    </article>
                  )
                })}
              </div>
            </div>
          )}
        </div>
      </div>
    </section>
  )
}

function GrowthServicesSection({ journey = hostingCrossSellJourney }) {
  const sectionRef = useRef(null)
  const [activeStep, setActiveStep] = useState(0)
  const [isVisible, setIsVisible] = useState(
    () => typeof IntersectionObserver === "undefined"
  )

  useEffect(() => {
    if (typeof IntersectionObserver === "undefined") return undefined
    const observer = new IntersectionObserver(([entry]) => {
      if (entry.isIntersecting) {
        setIsVisible(true)
        observer.disconnect()
      }
    }, { threshold: 0.14 })
    if (sectionRef.current) observer.observe(sectionRef.current)
    return () => observer.disconnect()
  }, [])

  return (
    <section
      ref={sectionRef}
      className={`cross-sell-journey ${isVisible ? "is-visible" : ""}`}
      aria-labelledby="cross-sell-journey-title"
    >
      <div className="cross-sell-journey__ambient" aria-hidden="true">
        <i /><i /><i /><i /><i />
      </div>
      <div className="cross-sell-journey__inner">
        <header className="cross-sell-journey__header">
          <h2 id="cross-sell-journey-title">{journey.statement}</h2>
          <p>{journey.description}</p>
        </header>

        <div className={`cross-sell-journey__path is-step-${activeStep + 1}`}>
          <div className="cross-sell-journey__connection" aria-hidden="true">
            <span /><i /><i /><i />
          </div>
          {journey.steps.map((step, index) => (
            <article
              key={step.title}
              className={activeStep === index ? "is-active" : ""}
              tabIndex={0}
              onMouseEnter={() => setActiveStep(index)}
              onFocus={() => setActiveStep(index)}
            >
              <span className="cross-sell-journey__number">0{index + 1}</span>
              <div className="cross-sell-journey__visual">
                <CrossSellJourneyVisual type={step.type} />
              </div>
              <div className="cross-sell-journey__copy">
                <h3>{step.title}</h3>
                <p>{step.description}</p>
              </div>
            </article>
          ))}
        </div>

        <a className="cross-sell-journey__cta" href={journey.cta.href}>
          {journey.cta.label}
          <ArrowIcon />
        </a>
      </div>
    </section>
  )
}

function HostingFaqSection() {
  const [activeQuestion, setActiveQuestion] = useState(null)
  const [isContactOpen, setIsContactOpen] = useState(false)

  const handleContactSubmit = (event) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const subject = encodeURIComponent(`Hosting enquiry from ${data.get("name")}`)
    const body = encodeURIComponent(
      `Name: ${data.get("name")}\nEmail: ${data.get("email")}\nCompany: ${data.get("company") || "Not provided"}\n\nMessage:\n${data.get("message")}`
    )
    setIsContactOpen(false)
    event.currentTarget.reset()
    window.location.href = `mailto:${siteConfig.hostingEmail}?subject=${subject}&body=${body}`
  }

  return (
    <section className="hosting-help-section" aria-labelledby="hosting-help-title">
      <div className="hosting-help-section__inner">
        <header>
          <h2 id="hosting-help-title">Need Help?</h2>
          <p>Choose the best way to reach us.</p>
        </header>

        <div className="hosting-help-faq">
          {hostingFaqs.map((faq, index) => {
            const isOpen = activeQuestion === index
            return (
              <article key={faq.question} className={isOpen ? "is-open" : ""}>
                <button
                  type="button"
                  aria-expanded={isOpen}
                  aria-controls={`hosting-faq-answer-${index}`}
                  onClick={() => setActiveQuestion(isOpen ? null : index)}
                >
                  <span>{faq.question}</span>
                  <i aria-hidden="true" />
                </button>
                <div
                  id={`hosting-faq-answer-${index}`}
                  className="hosting-help-faq__answer"
                  aria-hidden={!isOpen}
                >
                  <div><p>{faq.answer}</p></div>
                </div>
              </article>
            )
          })}
        </div>

        <div className="hosting-support-actions">
          <button
            type="button"
            className={isContactOpen ? "is-active" : ""}
            aria-expanded={isContactOpen}
            aria-controls="hosting-inline-contact"
            onClick={() => setIsContactOpen((current) => !current)}
          >
            <span className="hosting-support-actions__icon">
              <svg viewBox="0 0 24 24" aria-hidden="true">
                <path d="M5 5h14a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H9l-5 4v-4a2 2 0 0 1-1-2V7a2 2 0 0 1 2-2Z" />
                <path d="M8 10h8M8 13h5" />
              </svg>
            </span>
            <span>
              <strong>Talk to Us</strong>
              <small>Need advice before you buy?</small>
            </span>
            <b>Contact Us</b>
          </button>

          <a href={siteConfig.portalUrl}>
            <span className="hosting-support-actions__icon">
              <svg viewBox="0 0 24 24" aria-hidden="true">
                <rect x="3" y="4" width="18" height="16" rx="3" />
                <path d="M3 9h18M8 14h3M15 13v3M18 12v4" />
              </svg>
            </span>
            <span>
              <strong>Support</strong>
              <small>Already a customer?</small>
            </span>
            <b>Open Portal</b>
          </a>
        </div>

        <div
          id="hosting-inline-contact"
          className={`hosting-inline-contact ${isContactOpen ? "is-open" : ""}`}
          aria-hidden={!isContactOpen}
          inert={!isContactOpen}
        >
          <div>
            <form onSubmit={handleContactSubmit}>
              <div>
                <label htmlFor="hosting-contact-name">Name</label>
                <input id="hosting-contact-name" name="name" type="text" autoComplete="name" required />
              </div>
              <div>
                <label htmlFor="hosting-contact-email">Email</label>
                <input id="hosting-contact-email" name="email" type="email" autoComplete="email" required />
              </div>
              <div>
                <label htmlFor="hosting-contact-company">Company <span>(Optional)</span></label>
                <input id="hosting-contact-company" name="company" type="text" autoComplete="organization" />
              </div>
              <div className="hosting-inline-contact__message">
                <label htmlFor="hosting-contact-message">Message</label>
                <textarea id="hosting-contact-message" name="message" rows="4" required />
              </div>
              <div className="hosting-inline-contact__actions">
                <button type="submit">Send Message</button>
                <button type="button" onClick={() => setIsContactOpen(false)}>Cancel</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  )
}

function HostingCloudServices() {
  return (
    <main className="hosting-page">
      <section className="hosting-hero" aria-labelledby="hosting-hero-title">
        <div className="hosting-hero__visual">
          <EnterpriseAIDataCenter />
        </div>
        <div className="hosting-hero__wash" aria-hidden="true" />
        <div className="hosting-hero__orb hosting-hero__orb--one" aria-hidden="true" />
        <div className="hosting-hero__orb hosting-hero__orb--two" aria-hidden="true" />
        <div className="hosting-hero__grid">
          <div className="hosting-hero__content">
            <p className="hosting-hero__eyebrow">
              <span className="hosting-hero__eyebrow-text">Enterprise Hosting Infrastructure</span>
            </p>
            <TypedHeading />
            <p className="hosting-hero__intro">
              From fast and secure web hosting to business email, domain management,
              and managed cloud solutions, Zenvik provides the reliable infrastructure
              your business needs to launch, grow, and scale with confidence.
            </p>

            <div className="hosting-hero__actions">
              <a className="hosting-hero__button hosting-hero__button--primary" href="#hosting-plans">
                View Hosting Plans
                <ArrowIcon />
              </a>
              <a className="hosting-hero__button hosting-hero__button--secondary" href="/contact">
                Talk to an Expert
              </a>
            </div>

            <nav className="hosting-quick-nav" aria-label="Hosting solutions">
              {hostingQuickLinks.map((solution) => (
                <a key={solution.title} href={solution.href}>
                  <span className="hosting-quick-nav__icon">
                    <HostingValueIcon type={solution.icon} />
                  </span>
                  <strong>{solution.title}</strong>
                  <svg className="hosting-quick-nav__arrow" viewBox="0 0 20 20" aria-hidden="true">
                    <path d="M4 10h12M11 5l5 5-5 5" />
                  </svg>
                </a>
              ))}
            </nav>
          </div>
        </div>
      </section>
      <DomainSearchSection />
      <ClientReviewsSection />
      <HostingPackagesSection />
      <EnterpriseTechnologySection />
      <HostingPlanComparisonSection />
      <GrowthServicesSection />
      <HostingFaqSection />
    </main>
  )
}

export default HostingCloudServices
