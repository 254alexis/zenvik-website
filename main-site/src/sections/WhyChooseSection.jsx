import { motion } from "framer-motion"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"

// ─── Icons ────────────────────────────────────────────────────────────────────

function IconConnectedLayers() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <rect x="8"  y="19" width="28" height="7" rx="3.5" stroke="#043a7e" strokeWidth="1.8" strokeLinejoin="round" />
      <rect x="11" y="12" width="22" height="7" rx="3.5" stroke="#7a6200" strokeWidth="1.8" strokeLinejoin="round" />
      <rect x="5"  y="26" width="34" height="7" rx="3.5" stroke="#043a7e" strokeWidth="1.8" strokeLinejoin="round" />
      <path d="M16 19v-1M22 19v-1M28 19v-1" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M13 26v-1M22 26v-1M31 26v-1" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  )
}

function IconCloudInfra() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <path d="M13 30h18a7 7 0 0 0 1-13.93A10 10 0 0 0 13.2 18 8 8 0 0 0 13 30Z" stroke="#043a7e" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M16 34h12M19 37h6" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M16 30v4M22 30v4M28 30v4" stroke="#7a6200" strokeWidth="1.6" strokeLinecap="round" />
    </svg>
  )
}

function IconCodeBrackets() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <rect x="6" y="8" width="32" height="28" rx="5" stroke="#043a7e" strokeWidth="1.8" strokeLinejoin="round" />
      <path d="M6 14h32" stroke="#043a7e" strokeWidth="1.6" strokeLinecap="round" />
      <circle cx="10.5" cy="11" r="1.2" fill="#dfa408" />
      <circle cx="14.5" cy="11" r="1.2" fill="#7a6200" />
      <circle cx="18.5" cy="11" r="1.2" fill="#043a7e" />
      <path d="M17 22l-4 4 4 4" stroke="#7a6200" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M27 22l4 4-4 4" stroke="#7a6200" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M24 20l-4 12" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  )
}

function IconTargetBriefcase() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <rect x="7" y="19" width="20" height="16" rx="4" stroke="#043a7e" strokeWidth="1.8" strokeLinejoin="round" />
      <path d="M11 19v-2a4 4 0 0 1 4-4h4a4 4 0 0 1 4 4v2" stroke="#043a7e" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M7 27h20" stroke="#7a6200" strokeWidth="1.6" strokeLinecap="round" />
      <circle cx="34" cy="15" r="7" stroke="#dfa408" strokeWidth="1.8" />
      <circle cx="34" cy="15" r="3.5" stroke="#dfa408" strokeWidth="1.6" />
      <circle cx="34" cy="15" r="1" fill="#dfa408" />
    </svg>
  )
}

function IconGrowthArrow() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <path d="M7 34l9-10 7 5 12-16" stroke="#043a7e" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M30 13h6v6" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M9 38h26" stroke="#7a6200" strokeWidth="1.6" strokeLinecap="round" />
      <circle cx="16" cy="24" r="2" fill="#7a6200" />
      <circle cx="23" cy="29" r="2" fill="#7a6200" />
    </svg>
  )
}

function IconShieldHandshake() {
  return (
    <svg viewBox="0 0 44 44" fill="none" aria-hidden="true" className="h-full w-full">
      <path d="M22 6 36 11v11c0 9-5.6 15.4-14 18C13.6 37.4 8 31 8 22V11l14-5Z" stroke="#043a7e" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M15 21.5l2.5 2.5c.8.8 2 .8 2.8 0L22 22.3l1.7 1.7c.8.8 2 .8 2.8 0L29 21.5" stroke="#dfa408" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M17 21.5c0-1.1.9-2 2-2s2 .9 2 2M22 21.5c0-1.1.9-2 2-2s2 .9 2 2" stroke="#7a6200" strokeWidth="1.6" strokeLinecap="round" />
    </svg>
  )
}

// ─── Card Data ────────────────────────────────────────────────────────────────

const reasons = [
  {
    icon: IconConnectedLayers,
    title: "Technology Ecosystem",
    description: "All technology services delivered through one connected and reliable technology partner.",
    accent: "bg-primary/8",
    ring: "ring-primary/12",
  },
  {
    icon: IconCloudInfra,
    title: "Hosting & Infrastructure",
    description: "Reliable hosting, cloud infrastructure, business email, domains, and security foundations.",
    accent: "bg-accent/8",
    ring: "ring-accent/20",
  },
  {
    icon: IconCodeBrackets,
    title: "Custom Development",
    description: "Tailored websites, software platforms, portals, and business systems built around your needs.",
    accent: "bg-primary/8",
    ring: "ring-primary/12",
  },
  {
    icon: IconTargetBriefcase,
    title: "Business-Focused Solutions",
    description: "Technology solutions aligned with operational efficiency, customer growth, and business objectives.",
    accent: "bg-accent/8",
    ring: "ring-accent/20",
  },
  {
    icon: IconGrowthArrow,
    title: "Built To Scale",
    description: "Modern solutions designed to support long-term growth without limiting future opportunities.",
    accent: "bg-primary/8",
    ring: "ring-primary/12",
  },
  {
    icon: IconShieldHandshake,
    title: "Long-Term Partnership",
    description: "Ongoing support, maintenance, guidance, and technology improvements beyond project delivery.",
    accent: "bg-accent/8",
    ring: "ring-accent/20",
  },
]

// ─── Component ────────────────────────────────────────────────────────────────

function WhyChooseSection() {
  return (
    <section className="bg-white py-16 lg:py-20">
      <Container>
        <div className="grid items-center gap-10 lg:gap-14 xl:grid-cols-[minmax(0,1.05fr)_minmax(380px,0.95fr)]">

          {/* Left column — text */}
          <motion.div
            initial={{ opacity: 0, x: -40 }}
            whileInView={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.7 }}
            viewport={{ once: true }}
          >
            <p className="mb-3 text-sm font-semibold uppercase tracking-[0.3em] text-gold">
              Why Choose Zenvik
            </p>

            <h2 className="text-4xl font-black leading-tight text-primary md:text-5xl">
              Technology That Powers Business Growth, Innovation &amp; Scale
            </h2>

            <p className="mt-5 text-lg leading-relaxed text-slate-600">
              Zenvik Technologies brings together software, websites, hosting, AI, marketing, and ICT services into one connected technology ecosystem designed to help businesses launch, grow, automate, secure, and scale.
            </p>
          </motion.div>

          {/* Right column — cards */}
          <div className="grid gap-4 sm:grid-cols-2">
            {reasons.map(({ icon: Icon, title, description, accent, ring }, index) => (
              <motion.div
                key={title}
                initial={{ opacity: 0, y: 30 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.45, delay: index * 0.08 }}
                viewport={{ once: true }}
                className={`group h-full rounded-3xl border border-slate-100 bg-light p-5 shadow-soft ring-1 ${ring} transition-shadow duration-300 hover:shadow-md`}
              >
                {/* Icon container */}
                <div className={`mb-4 flex h-11 w-11 items-center justify-center rounded-2xl p-2.5 ${accent} ring-1 ${ring}`}>
                  <Icon />
                </div>

                <h3 className="text-base font-bold text-primary">{title}</h3>
                <p className="mt-1.5 text-sm leading-relaxed text-slate-500">{description}</p>
              </motion.div>
            ))}
          </div>

        </div>
      </Container>
    </section>
  )
}

export default WhyChooseSection
