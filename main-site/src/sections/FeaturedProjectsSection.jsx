import { motion, useInView, useMotionValue, useTransform, animate } from "framer-motion"
import { useEffect, useRef } from "react"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"

// ─── Project data — structured for future backend integration ─────────────────

const projects = [
  {
    id: "property-management-platform",
    title: "Property Management Platform",
    category: "Software Development",
    summary: "A complete digital property management ecosystem for landlords, tenants, payments, maintenance, and operations.",
    image: null,
    project_url: "#",
    featured: true,
    status: "published",
    sort_order: 1,
  },
  {
    id: "corporate-business-website",
    title: "Corporate Business Website",
    category: "Website Development",
    summary: "A modern business website focused on branding, lead generation, customer engagement, and growth.",
    image: null,
    project_url: "#",
    featured: true,
    status: "published",
    sort_order: 2,
  },
  {
    id: "hosting-client-portal",
    title: "Hosting & Client Portal",
    category: "Hosting & Infrastructure",
    summary: "A hosting ecosystem with account management, billing automation, support systems, and infrastructure management.",
    image: null,
    project_url: "#",
    featured: true,
    status: "published",
    sort_order: 3,
  },
  {
    id: "ai-automation-platform",
    title: "AI Automation Platform",
    category: "AI Solutions",
    summary: "An intelligent automation solution designed to streamline operations, customer engagement, and productivity.",
    image: null,
    project_url: "#",
    featured: true,
    status: "published",
    sort_order: 4,
  },
]

// ─── Stats ────────────────────────────────────────────────────────────────────

const stats = [
  { value: 125, suffix: "+", label: "Websites Built" },
  { value: 35,  suffix: "+", label: "Software Systems" },
  { value: 200, suffix: "+", label: "Websites Hosted" },
  { value: 360, suffix: "+", label: "Projects Delivered" },
]

// ─── Category badge styles ────────────────────────────────────────────────────

const badgeStyle = {
  "Software Development":     "bg-primary/8 text-primary ring-1 ring-primary/16",
  "Website Development":      "bg-[#dfa408]/10 text-[#7a6200] ring-1 ring-[#dfa408]/20",
  "Hosting & Infrastructure": "bg-primary/8 text-primary ring-1 ring-primary/16",
  "AI Solutions":             "bg-[#dfa408]/10 text-[#7a6200] ring-1 ring-[#dfa408]/20",
}

// ─── Stat card with count-up + gold accent line ───────────────────────────────

function StatCard({ value, suffix, label, delay }) {
  const ref      = useRef(null)
  const isInView = useInView(ref, { once: true, margin: "-60px" })
  const count    = useMotionValue(0)
  const display  = useTransform(count, (v) => Math.round(v))

  useEffect(() => {
    if (!isInView) return
    const ctrl = animate(count, value, { duration: 1.5, ease: "easeOut" })
    return ctrl.stop
  }, [isInView, count, value])

  return (
    <motion.div
      ref={ref}
      initial={{ opacity: 0, y: 16 }}
      animate={isInView ? { opacity: 1, y: 0 } : {}}
      transition={{ duration: 0.48, delay, ease: "easeOut" }}
      whileHover={{ y: -3, boxShadow: "0 8px 28px rgba(4,58,126,0.10)", transition: { type: "spring", stiffness: 340, damping: 22 } }}
      className="rounded-2xl border bg-white px-6 py-5 text-center shadow-soft"
      style={{ borderColor: "rgba(4,58,126,0.10)" }}
    >
      <p className="text-3xl font-black tabular-nums text-primary lg:text-4xl">
        <motion.span>{display}</motion.span>{suffix}
      </p>

      {/* Gold accent line — expands left→right */}
      <motion.div
        className="mx-auto mt-2 h-[2px] w-10 origin-left rounded-full bg-accent"
        initial={{ scaleX: 0 }}
        animate={isInView ? { scaleX: 1 } : {}}
        transition={{ duration: 0.55, delay: delay + 0.35, ease: "easeOut" }}
      />

      <p className="mt-2.5 text-sm font-medium text-dark">{label}</p>
    </motion.div>
  )
}

// ─── Preview illustrations ────────────────────────────────────────────────────

function PreviewPropertyMgmt() {
  return (
    <svg viewBox="0 0 480 270" fill="none" className="h-full w-full" aria-hidden="true">
      <rect width="480" height="270" fill="#0e1c30" />
      <rect width="68" height="270" fill="#0a1525" />
      <rect x="14" y="20" width="40" height="8" rx="4" fill="#1e3a5f" />
      {[52, 72, 92, 112, 132].map((y) => (
        <g key={y}>
          <rect x="10" y={y} width="8" height="8" rx="2" fill={y === 52 ? "#043a7e" : "#1a2d45"} />
          <rect x="22" y={y + 1} width="28" height="6" rx="3" fill={y === 52 ? "#1e3a6e" : "#152234"} />
        </g>
      ))}
      <rect x="68" y="0" width="412" height="38" fill="#0c1828" />
      <rect x="84" y="13" width="80" height="12" rx="6" fill="#152234" />
      <circle cx="434" cy="19" r="10" fill="#1e3a5f" />
      <circle cx="458" cy="19" r="8" fill="#162840" />
      {[84, 212, 340].map((x) => (
        <rect key={x} x={x} y="52" width={x === 340 ? 120 : 118} height="62" rx="10" fill="#112033" stroke="#1e3a5f" strokeWidth="1" />
      ))}
      <rect x="96" y="63" width="36" height="7" rx="3.5" fill="#1a2d45" />
      <text x="96" y="100" fill="#dfa408" fontSize="18" fontWeight="800" fontFamily="system-ui">87%</text>
      <rect x="96" y="107" width="55" height="5" rx="2.5" fill="#1a2d45" />
      <rect x="96" y="107" width="48" height="5" rx="2.5" fill="#dfa408" opacity="0.7" />
      <rect x="224" y="63" width="36" height="7" rx="3.5" fill="#1a2d45" />
      <text x="224" y="99" fill="#ffffff" fontSize="16" fontWeight="800" fontFamily="system-ui">$24.8K</text>
      <text x="224" y="111" fill="#22c55e" fontSize="8" fontFamily="system-ui">+12.4%</text>
      <rect x="352" y="63" width="36" height="7" rx="3.5" fill="#1a2d45" />
      <text x="352" y="100" fill="#ffffff" fontSize="18" fontWeight="800" fontFamily="system-ui">142</text>
      <rect x="84" y="126" width="188" height="132" rx="10" fill="#0d1a2b" stroke="#1e3a5f" strokeWidth="1" />
      <rect x="96" y="136" width="80" height="8" rx="4" fill="#1a2d45" />
      {[155, 179, 203, 227].map((y, i) => (
        <g key={y}>
          <circle cx="100" cy={y + 4} r="5" fill={i === 0 ? "#ef4444" : i === 1 ? "#dfa408" : "#22c55e"} opacity="0.9" />
          <rect x="111" y={y} width="90" height="7" rx="3.5" fill="#1e3050" />
          <rect x="111" y={y + 10} width="50" height="5" rx="2.5" fill="#152234" />
          <rect x="215" y={y} width="40" height="16" rx="4" fill="#152234" />
        </g>
      ))}
      <rect x="282" y="126" width="178" height="132" rx="10" fill="#0d1a2b" stroke="#1e3a5f" strokeWidth="1" />
      <rect x="294" y="136" width="60" height="8" rx="4" fill="#1a2d45" />
      {["J", "S", "M", "A"].map((letter, i) => (
        <g key={letter}>
          <circle cx="302" cy={160 + i * 24} r="10" fill="#1e3a5f" />
          <text x="302" y={164 + i * 24} textAnchor="middle" fill="#dfa408" fontSize="8" fontWeight="700" fontFamily="system-ui">{letter}</text>
          <rect x="318" y={154 + i * 24} width="60" height="6" rx="3" fill="#1e3050" />
          <rect x="318" y={163 + i * 24} width="40" height="5" rx="2.5" fill="#152234" />
          <circle cx="440" cy={160 + i * 24} r="4" fill={i === 0 ? "#ef4444" : "#22c55e"} />
        </g>
      ))}
    </svg>
  )
}

function PreviewCorporateWebsite() {
  return (
    <svg viewBox="0 0 480 270" fill="none" className="h-full w-full" aria-hidden="true">
      <rect width="480" height="270" fill="#eef3fb" />
      <rect x="24" y="14" width="432" height="242" rx="10" fill="#ffffff" stroke="#d1ddf0" strokeWidth="1.5" />
      <rect x="24" y="14" width="432" height="34" rx="10" fill="#f1f5fd" />
      <rect x="24" y="38" width="432" height="10" fill="#f1f5fd" />
      <circle cx="42" cy="31" r="5" fill="#ef4444" opacity="0.7" />
      <circle cx="57" cy="31" r="5" fill="#dfa408" opacity="0.7" />
      <circle cx="72" cy="31" r="5" fill="#22c55e" opacity="0.7" />
      <rect x="90" y="25" width="220" height="12" rx="6" fill="#ffffff" stroke="#d1ddf0" strokeWidth="1" />
      <rect x="100" y="29" width="100" height="4" rx="2" fill="#d1ddf0" />
      <rect x="24" y="48" width="432" height="36" fill="#043a7e" />
      <rect x="38" y="58" width="40" height="8" rx="4" fill="rgba(255,255,255,0.9)" />
      {[100, 130, 160, 190, 220].map((x) => (
        <rect key={x} x={x} y={60} width="22" height="6" rx="3" fill="rgba(255,255,255,0.4)" />
      ))}
      <rect x="402" y="55" width="42" height="18" rx="6" fill="#dfa408" />
      <rect x="410" y="60" width="26" height="8" rx="4" fill="rgba(255,255,255,0.9)" />
      <rect x="24" y="84" width="432" height="98" fill="#043a7e" />
      <rect x="80" y="100" width="180" height="12" rx="6" fill="rgba(255,255,255,0.9)" />
      <rect x="80" y="118" width="140" height="8" rx="4" fill="rgba(255,255,255,0.55)" />
      <rect x="80" y="132" width="110" height="8" rx="4" fill="rgba(255,255,255,0.35)" />
      <rect x="80" y="150" width="78" height="22" rx="8" fill="#dfa408" />
      <rect x="168" y="150" width="68" height="22" rx="8" fill="rgba(255,255,255,0.12)" stroke="rgba(255,255,255,0.3)" strokeWidth="1" />
      <circle cx="370" cy="133" r="46" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.1)" strokeWidth="1.5" />
      <circle cx="370" cy="133" r="28" fill="rgba(223,164,8,0.1)" stroke="rgba(223,164,8,0.2)" strokeWidth="1.5" />
      {[36, 176, 316].map((x) => (
        <g key={x}>
          <rect x={x} y="196" width={x === 316 ? 120 : 130} height="60" rx="8" fill="#f8fbff" stroke="#e2eaf6" strokeWidth="1" />
          <rect x={x + 12} y="208" width="30" height="8" rx="4" fill="#043a7e" opacity="0.15" />
          <rect x={x + 12} y="222" width="90" height="5" rx="2.5" fill="#d1ddf0" />
          <rect x={x + 12} y="231" width="70" height="5" rx="2.5" fill="#e2eaf6" />
          <rect x={x + 12} y="244" width="50" height="5" rx="2.5" fill="#e2eaf6" />
        </g>
      ))}
    </svg>
  )
}

function PreviewHostingPortal() {
  return (
    <svg viewBox="0 0 480 270" fill="none" className="h-full w-full" aria-hidden="true">
      <rect width="480" height="270" fill="#0b1929" />
      <rect width="480" height="44" fill="#091422" />
      <rect x="16" y="14" width="56" height="16" rx="5" fill="#112038" />
      <rect x="84" y="17" width="40" height="10" rx="5" fill="#152a45" />
      <rect x="132" y="17" width="40" height="10" rx="5" fill="#152a45" />
      <circle cx="440" cy="22" r="10" fill="#1e3a5f" />
      <circle cx="462" cy="22" r="8" fill="#152234" />
      <rect x="16" y="54" width="28" height="6" rx="3" fill="#1e3a5f" />
      <path d="M49 57l4 3-4 3" stroke="#2a4a7f" strokeWidth="1.5" strokeLinecap="round" />
      <rect x="58" y="54" width="40" height="6" rx="3" fill="#1e3a5f" />
      {[
        { x: 16,  color: "#22c55e", pct: 94 },
        { x: 168, color: "#22c55e", pct: 98 },
        { x: 320, color: "#dfa408", pct: 67 },
      ].map(({ x, color, pct }) => (
        <g key={x}>
          <rect x={x} y="72" width="140" height="68" rx="10" fill="#0f2035" stroke="#1e3a5f" strokeWidth="1" />
          <circle cx={x + 16} cy="90" r="5" fill={color} />
          <rect x={x + 26} y="86" width="55" height="7" rx="3.5" fill="#1e3050" />
          <rect x={x + 12} y="103" width="116" height="5" rx="2.5" fill="#152234" />
          <rect x={x + 12} y="103" width={Math.round(pct * 1.16)} height="5" rx="2.5" fill={color} opacity="0.7" />
          <rect x={x + 12} y="117" width="60" height="6" rx="3" fill="#152234" />
        </g>
      ))}
      <rect x="16" y="152" width="282" height="58" rx="10" fill="#0f2035" stroke="#1e3a5f" strokeWidth="1" />
      <rect x="28" y="162" width="60" height="7" rx="3.5" fill="#1e3050" />
      <rect x="28" y="176" width="180" height="6" rx="3" fill="#152234" />
      <rect x="28" y="187" width="140" height="6" rx="3" fill="#152234" />
      <rect x="218" y="162" width="64" height="24" rx="7" fill="#043a7e" />
      <rect x="226" y="168" width="48" height="12" rx="4" fill="rgba(255,255,255,0.9)" />
      <rect x="310" y="152" width="154" height="58" rx="10" fill="#0f2035" stroke="#1e3a5f" strokeWidth="1" />
      <rect x="322" y="162" width="50" height="7" rx="3.5" fill="#1e3050" />
      {["#ef4444", "#dfa408", "#22c55e"].map((color, i) => (
        <g key={color}>
          <circle cx="330" cy={179 + i * 14} r="4" fill={color} />
          <rect x="340" y={175 + i * 14} width="90" height="6" rx="3" fill="#152234" />
        </g>
      ))}
      <rect x="16" y="222" width="96" height="30" rx="8" fill="#043a7e" />
      <rect x="28" y="231" width="72" height="12" rx="4" fill="rgba(255,255,255,0.85)" />
      <rect x="124" y="222" width="96" height="30" rx="8" fill="#0f2035" stroke="#1e3a5f" strokeWidth="1" />
      <rect x="136" y="231" width="72" height="12" rx="4" fill="#1e3050" />
    </svg>
  )
}

function PreviewAIPlatform() {
  return (
    <svg viewBox="0 0 480 270" fill="none" className="h-full w-full" aria-hidden="true">
      <rect width="480" height="270" fill="#090f1e" />
      {[
        { x: 16,  val: "1,284" },
        { x: 136, val: "98.6%" },
        { x: 256, val: "4.2s" },
        { x: 376, val: "94" },
      ].map(({ x, val }) => (
        <g key={x}>
          <rect x={x} y="12" width="108" height="44" rx="8" fill="#0e1a2e" stroke="#1a3050" strokeWidth="1" />
          <text x={x + 10} y="36" fill="#dfa408" fontSize="13" fontWeight="800" fontFamily="system-ui">{val}</text>
          <rect x={x + 10} y="44" width="70" height="5" rx="2.5" fill="#152234" />
        </g>
      ))}
      {[
        { x: 20,  color: "#043a7e", center: false },
        { x: 108, color: "#062561", center: false },
        { x: 196, color: "#7a6200", center: true },
        { x: 284, color: "#062561", center: false },
        { x: 372, color: "#043a7e", center: false },
      ].map(({ x, color, center }, i) => (
        <g key={x}>
          {i < 4 && (
            <>
              <line x1={x + 78} y1="145" x2={x + 108} y2="145" stroke="#1e3050" strokeWidth="1.5" strokeDasharray="4 3" />
              <circle cx={x + 93} cy="145" r="3" fill="#dfa408" opacity="0.75">
                <animate attributeName="opacity" values="0;1;0" dur="2.4s" begin={`${i * 0.48}s`} repeatCount="indefinite" />
              </circle>
            </>
          )}
          <rect x={x} y="118" width="78" height="54" rx="10" fill={color} stroke={center ? "#dfa408" : "#1e3a5f"} strokeWidth={center ? "1.5" : "1"} />
          {center && <rect x={x} y="118" width="78" height="54" rx="10" fill="rgba(223,164,8,0.06)" />}
          <rect x={x + 10} y="130" width="52" height="7" rx="3.5" fill="rgba(255,255,255,0.15)" />
          <rect x={x + 10} y="142" width="40" height="7" rx="3.5" fill="rgba(255,255,255,0.1)" />
          <rect x={x + 10} y="154" width="52" height="8" rx="4" fill="rgba(255,255,255,0.08)" />
          <rect x={x + 10} y="178" width="52" height="7" rx="3.5" fill="#1e3050" />
        </g>
      ))}
      <circle cx="235" cy="145" r="14" fill="rgba(223,164,8,0.12)" stroke="rgba(223,164,8,0.3)" strokeWidth="1" />
      <circle cx="235" cy="145" r="6" fill="#dfa408" opacity="0.8" />
      <rect x="16" y="198" width="224" height="60" rx="10" fill="#0e1a2e" stroke="#1a3050" strokeWidth="1" />
      <rect x="28" y="208" width="60" height="7" rx="3.5" fill="#1e3050" />
      {["#22c55e", "#dfa408", "#22c55e"].map((color, i) => (
        <g key={i}>
          <circle cx="32" cy={224 + i * 14} r="3.5" fill={color} />
          <rect x="42" y={220 + i * 14} width="140" height="6" rx="3" fill="#152234" />
          <rect x="194" y={220 + i * 14} width="30" height="6" rx="3" fill="#0f1c2e" />
        </g>
      ))}
      <rect x="252" y="198" width="80" height="60" rx="10" fill="#0e1a2e" stroke="#1a3050" strokeWidth="1" />
      <circle cx="292" cy="228" r="20" stroke="#1e3050" strokeWidth="3" />
      <circle cx="292" cy="228" r="20" stroke="#dfa408" strokeWidth="3" strokeDasharray="105 20" strokeLinecap="round" transform="rotate(-90 292 228)" />
      <text x="292" y="232" textAnchor="middle" fill="#dfa408" fontSize="11" fontWeight="800" fontFamily="system-ui">84%</text>
      <rect x="344" y="198" width="120" height="60" rx="10" fill="#0e1a2e" stroke="#1a3050" strokeWidth="1" />
      {["#dfa408", "#3b82f6", "#22c55e"].map((color, i) => (
        <g key={i}>
          <circle cx="356" cy={211 + i * 16} r="4" fill={color} />
          <rect x="366" y={207 + i * 16} width="60" height="6" rx="3" fill="#152234" />
          <rect x="430" y={207 + i * 16} width="26" height="6" rx="3" fill="#0f1c2e" />
        </g>
      ))}
    </svg>
  )
}

const previewMap = {
  "property-management-platform": PreviewPropertyMgmt,
  "corporate-business-website":   PreviewCorporateWebsite,
  "hosting-client-portal":        PreviewHostingPortal,
  "ai-automation-platform":       PreviewAIPlatform,
}

// ─── Project card ─────────────────────────────────────────────────────────────

function ProjectCard({ project, index }) {
  const ref      = useRef(null)
  const isInView = useInView(ref, { once: true, margin: "-60px" })
  const Preview  = previewMap[project.id]
  const badge    = badgeStyle[project.category] ?? badgeStyle["Software Development"]

  return (
    <motion.article
      ref={ref}
      initial={{ opacity: 0, y: 20 }}
      animate={isInView ? { opacity: 1, y: 0 } : {}}
      transition={{ duration: 0.55, delay: index * 0.13, ease: "easeOut" }}
      whileHover={{ y: -4, transition: { type: "spring", stiffness: 320, damping: 24 } }}
      className="group flex flex-col overflow-hidden rounded-3xl border border-slate-100 bg-white shadow-soft transition-shadow duration-300 hover:shadow-lg"
    >
      {/* ── Premium preview stage ─────────────────────────────── */}
      <div
        className="relative h-52 overflow-hidden"
        style={{ background: "linear-gradient(145deg, #062561 0%, #043a7e 55%, #0e1c30 100%)" }}
      >
        {/* Gold radial glow — resting state */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-0 transition-opacity duration-400"
          style={{ background: "radial-gradient(ellipse 90% 55% at 50% 115%, rgba(223,164,8,0.13) 0%, transparent 65%)" }}
        />
        {/* Gold radial glow — hover (stronger) */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
          style={{ background: "radial-gradient(ellipse 90% 55% at 50% 115%, rgba(223,164,8,0.24) 0%, transparent 65%)" }}
        />
        {/* Glass shimmer — top edge */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 top-0 h-16"
          style={{ background: "linear-gradient(to bottom, rgba(248,251,255,0.07) 0%, transparent 100%)" }}
        />
        {/* Subtle inner border highlight */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 top-0 h-px"
          style={{ background: "rgba(255,255,255,0.12)" }}
        />

        {/* Mockup — centered at 82% width, drop shadow for depth */}
        <div className="absolute inset-0 flex items-center justify-center" style={{ padding: "14px 10px 0" }}>
          <motion.div
            className="w-[82%] overflow-hidden rounded-lg transition-transform duration-500 group-hover:scale-[1.03]"
            style={{ boxShadow: "0 10px 40px rgba(0,0,0,0.55), 0 2px 8px rgba(0,0,0,0.3)" }}
            initial={{ clipPath: "inset(0 0 100% 0)" }}
            animate={isInView ? { clipPath: "inset(0 0 0% 0)" } : {}}
            transition={{ duration: 0.65, delay: index * 0.13, ease: [0.22, 1, 0.36, 1] }}
          >
            {Preview && <Preview />}
          </motion.div>
        </div>
      </div>

      {/* Content */}
      <div className="flex flex-1 flex-col p-5">
        <motion.span
          initial={{ opacity: 0 }}
          animate={isInView ? { opacity: 1 } : {}}
          transition={{ duration: 0.3, delay: index * 0.13 + 0.2 }}
          className={`inline-block self-start rounded-full px-3 py-1 text-xs font-semibold ${badge}`}
        >
          {project.category}
        </motion.span>

        <motion.h3
          initial={{ opacity: 0, y: 5 }}
          animate={isInView ? { opacity: 1, y: 0 } : {}}
          transition={{ duration: 0.35, delay: index * 0.13 + 0.3 }}
          className="mt-2.5 text-lg font-bold text-primary"
        >
          {project.title}
        </motion.h3>

        <motion.p
          initial={{ opacity: 0, y: 5 }}
          animate={isInView ? { opacity: 1, y: 0 } : {}}
          transition={{ duration: 0.35, delay: index * 0.13 + 0.4 }}
          className="mt-1.5 flex-1 text-sm leading-relaxed text-slate-500"
        >
          {project.summary}
        </motion.p>

        <motion.div
          initial={{ opacity: 0 }}
          animate={isInView ? { opacity: 1 } : {}}
          transition={{ duration: 0.3, delay: index * 0.13 + 0.5 }}
          className="mt-4"
        >
          <a
            href={project.project_url}
            className="inline-flex items-center gap-1.5 text-sm font-semibold text-primary transition-all duration-200 group-hover:gap-2.5 group-hover:text-accent"
          >
            View Project <span aria-hidden="true" className="transition-transform duration-200 group-hover:translate-x-0.5">→</span>
          </a>
        </motion.div>
      </div>
    </motion.article>
  )
}

// ─── Section ──────────────────────────────────────────────────────────────────

function FeaturedProjectsSection() {
  return (
    <section id="featured-projects" className="bg-white py-16 lg:py-20">
      <Container>
        <SectionHeader
          eyebrow="Our Work"
          title="Projects That Deliver Real Business Results"
          description="Explore how Zenvik Technologies transforms ideas into scalable digital solutions through custom software, websites, hosting infrastructure, and intelligent automation."
        />

        {/* Stats strip */}
        <div className="mt-10 grid grid-cols-1 gap-4 sm:grid-cols-2 lg:mt-12 lg:grid-cols-4">
          {stats.map(({ value, suffix, label }, i) => (
            <StatCard key={label} value={value} suffix={suffix} label={label} delay={i * 0.15} />
          ))}
        </div>

        {/* Projects 2×2 grid */}
        <div className="mt-12 grid gap-7 sm:grid-cols-2 lg:mt-14">
          {projects.map((project, index) => (
            <ProjectCard key={project.id} project={project} index={index} />
          ))}
        </div>
      </Container>
    </section>
  )
}

export default FeaturedProjectsSection
