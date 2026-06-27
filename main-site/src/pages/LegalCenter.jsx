import { motion } from "framer-motion"
import Container from "../components/common/Container"
import LegalDocumentIcon from "../components/legal/LegalDocumentIcon"
import usePageMetadata from "../hooks/usePageMetadata"
import { legalDocuments } from "../data/legalDocuments"
import { siteConfig } from "../constants/site"

const reveal = {
  hidden: { opacity: 0, y: 18 },
  visible: {
    opacity: 1,
    y: 0,
    transition: { duration: 0.55, ease: [0.22, 1, 0.36, 1] },
  },
}

export default function LegalCenter() {
  usePageMetadata({
    title: "Legal Center | Zenvik Technologies",
    description:
      "Access Zenvik Technologies terms, privacy, refund, acceptable use, and service level documents.",
    canonical: `${siteConfig.websiteUrl}/legal`,
    image: `${siteConfig.websiteUrl}/og-image.png`,
  })

  return (
    <main className="min-h-screen bg-slate-50 text-slate-900">
      <section className="relative overflow-hidden bg-gradient-to-br from-white via-[#f8fbff] to-[#eef5ff] pt-28 pb-16">
        <div className="pointer-events-none absolute inset-0 opacity-[0.035]" aria-hidden="true">
          <div className="absolute inset-0 bg-[linear-gradient(rgba(4,58,126,0.55)_1px,transparent_1px),linear-gradient(90deg,rgba(4,58,126,0.55)_1px,transparent_1px)] bg-[size:80px_80px]" />
        </div>
        <Container className="relative">
          <motion.div initial="hidden" animate="visible" className="max-w-4xl">
            <motion.p variants={reveal} className="text-sm font-semibold uppercase tracking-[0.32em] text-gold">
              LEGAL
            </motion.p>
            <motion.div variants={reveal} className="mt-5 flex items-center gap-3 text-sm text-slate-500">
              <a href="/" className="transition hover:text-primary">Home</a>
              <span className="text-slate-300">/</span>
              <span className="font-semibold text-slate-900">Legal Center</span>
            </motion.div>
            <motion.h1 variants={reveal} className="mt-7 text-4xl font-black leading-tight text-primary sm:text-5xl">
              Legal Center
            </motion.h1>
            <motion.p variants={reveal} className="mt-5 max-w-3xl text-lg leading-relaxed text-slate-600">
              Review the policies and service documents that explain how Zenvik Technologies operates, protects information, and delivers its services.
            </motion.p>
          </motion.div>
        </Container>
      </section>

      <Container className="py-14 lg:py-20">
        <motion.section
          initial="hidden"
          whileInView="visible"
          viewport={{ once: true, amount: 0.15 }}
          transition={{ staggerChildren: 0.09 }}
          aria-labelledby="legal-documents-heading"
        >
          <motion.div variants={reveal} className="max-w-3xl">
            <p className="text-sm font-semibold uppercase tracking-[0.3em] text-gold">
              LEGAL DOCUMENTS
            </p>
            <h2 id="legal-documents-heading" className="mt-3 text-3xl font-black text-primary sm:text-4xl">
              Policies &amp; Service Documents
            </h2>
          </motion.div>

          <div className="mt-9 grid gap-5 md:grid-cols-2 xl:grid-cols-3">
            {legalDocuments.map((document) => (
              <motion.a
                key={document.key}
                variants={reveal}
                href={document.href}
                className="group flex min-h-64 flex-col rounded-3xl border border-primary/[0.11] bg-white p-7 shadow-[0_10px_30px_rgba(15,23,42,0.05)] transition duration-300 hover:-translate-y-1 hover:border-primary/25 hover:shadow-[0_16px_38px_rgba(4,58,126,0.1)]"
              >
                <span className="flex h-14 w-14 items-center justify-center rounded-2xl bg-primary/[0.07] text-primary transition duration-300 group-hover:bg-primary group-hover:text-white">
                  <LegalDocumentIcon type={document.key} />
                </span>
                <h3 className="mt-6 text-xl font-bold text-primary">{document.title}</h3>
                <p className="mt-3 leading-relaxed text-slate-600">{document.description}</p>
                <span className="mt-auto inline-flex items-center gap-2 pt-6 text-sm font-bold text-primary transition duration-300 group-hover:translate-x-1 group-hover:text-accent">
                  Read Policy <span aria-hidden="true">→</span>
                </span>
              </motion.a>
            ))}
          </div>
        </motion.section>
      </Container>
    </main>
  )
}
