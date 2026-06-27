import { motion } from "framer-motion"
import Container from "../common/Container"
import LegalDocumentLinks from "./LegalDocumentLinks"
import usePageMetadata from "../../hooks/usePageMetadata"
import { legalDocuments } from "../../data/legalDocuments"
import { siteConfig } from "../../constants/site"

const reveal = {
  hidden: { opacity: 0, y: 18 },
  visible: {
    opacity: 1,
    y: 0,
    transition: { duration: 0.55, ease: [0.22, 1, 0.36, 1] },
  },
}

function LegalPolicyLayout({
  documentKey,
  title,
  introduction,
  route,
  sections,
}) {
  usePageMetadata({
    title: `${title} | Zenvik Technologies`,
    description: introduction,
    canonical: `${siteConfig.websiteUrl}${route}`,
    image: `${siteConfig.websiteUrl}/og-image.png`,
  })

  return (
    <main className="min-h-screen bg-slate-50 text-slate-900">
      <section className="relative overflow-hidden bg-gradient-to-br from-white via-[#f8fbff] to-[#eef5ff] pt-28 pb-14">
        <div className="pointer-events-none absolute inset-0 opacity-[0.035]" aria-hidden="true">
          <div className="absolute inset-0 bg-[linear-gradient(rgba(4,58,126,0.55)_1px,transparent_1px),linear-gradient(90deg,rgba(4,58,126,0.55)_1px,transparent_1px)] bg-[size:80px_80px]" />
        </div>
        <Container className="relative">
          <motion.div initial="hidden" animate="visible" className="max-w-4xl">
            <motion.p variants={reveal} className="text-sm font-semibold uppercase tracking-[0.32em] text-gold">
              Legal
            </motion.p>
            <motion.div variants={reveal} className="mt-5 flex flex-wrap items-center gap-3 text-sm text-slate-500">
              <a href="/" className="transition hover:text-primary">Home</a>
              <span className="text-slate-300">/</span>
              <a href="/legal" className="transition hover:text-primary">Legal Center</a>
              <span className="text-slate-300">/</span>
              <span className="font-semibold text-slate-900">{title}</span>
            </motion.div>
            <motion.h1 variants={reveal} className="mt-7 text-4xl font-black leading-tight text-primary sm:text-5xl">
              {title}
            </motion.h1>
            <motion.p variants={reveal} className="mt-5 max-w-3xl text-lg leading-relaxed text-slate-600">
              {introduction}
            </motion.p>
          </motion.div>
        </Container>
      </section>

      <Container className="py-14 lg:py-20">
        <motion.nav
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5, delay: 0.15 }}
          className="mb-8 overflow-x-auto rounded-2xl border border-primary/[0.09] bg-white p-2 shadow-sm lg:hidden"
          aria-label="Legal documents"
        >
          <div className="flex min-w-max gap-2">
            {legalDocuments.map((document) => (
              <a
                key={document.key}
                href={document.href}
                aria-current={document.key === documentKey ? "page" : undefined}
                className={`rounded-xl px-4 py-2.5 text-sm font-semibold transition ${
                  document.key === documentKey
                    ? "bg-primary text-white shadow-sm"
                    : "text-primary hover:bg-primary/[0.06]"
                }`}
              >
                {document.shortTitle}
              </a>
            ))}
          </div>
        </motion.nav>

        <motion.nav
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5, delay: 0.22 }}
          className="mb-8 rounded-2xl border border-primary/[0.09] bg-white p-3 shadow-sm lg:hidden"
          aria-label={`${title} contents`}
        >
          <p className="px-2 pb-2 text-xs font-bold uppercase tracking-[0.2em] text-gold">
            On This Page
          </p>
          <div className="flex gap-2 overflow-x-auto pb-1">
            {sections.map((section) => (
              <a
                key={section.id}
                href={`#${section.id}`}
                className="shrink-0 rounded-xl bg-primary/[0.055] px-3 py-2 text-sm font-medium text-primary transition hover:bg-primary hover:text-white"
              >
                {section.title}
              </a>
            ))}
          </div>
        </motion.nav>

        <div className="grid gap-10 lg:grid-cols-[16rem_minmax(0,1fr)] xl:gap-14">
          <aside className="hidden lg:block">
            <div className="sticky top-28 space-y-6">
              <nav className="rounded-2xl border border-primary/[0.09] bg-white p-4 shadow-sm" aria-label="Legal documents">
                <p className="px-3 pb-3 text-xs font-bold uppercase tracking-[0.2em] text-gold">
                  Legal Documents
                </p>
                <div className="space-y-1">
                  {legalDocuments.map((document) => (
                    <a
                      key={document.key}
                      href={document.href}
                      aria-current={document.key === documentKey ? "page" : undefined}
                      className={`block rounded-xl px-3 py-2.5 text-sm font-semibold transition ${
                        document.key === documentKey
                          ? "bg-primary text-white"
                          : "text-slate-600 hover:bg-primary/[0.055] hover:text-primary"
                      }`}
                    >
                      {document.title}
                    </a>
                  ))}
                </div>
              </nav>

              <nav className="rounded-2xl border border-primary/[0.09] bg-white p-4 shadow-sm" aria-label={`${title} contents`}>
                <p className="px-3 pb-3 text-xs font-bold uppercase tracking-[0.2em] text-gold">
                  On This Page
                </p>
                <div className="space-y-1">
                  {sections.map((section) => (
                    <a
                      key={section.id}
                      href={`#${section.id}`}
                      className="block rounded-xl px-3 py-2 text-sm text-slate-600 transition hover:bg-primary/[0.055] hover:text-primary"
                    >
                      {section.title}
                    </a>
                  ))}
                </div>
              </nav>
            </div>
          </aside>

          <div className="min-w-0">
            <motion.div
              initial="hidden"
              animate="visible"
              transition={{ staggerChildren: 0.08, delayChildren: 0.18 }}
              className="space-y-5"
            >
              {sections.map((section) => (
                <motion.section
                  key={section.id}
                  id={section.id}
                  variants={reveal}
                  className="scroll-mt-28 rounded-3xl border border-primary/[0.09] bg-white p-6 shadow-[0_8px_28px_rgba(15,23,42,0.045)] sm:p-8"
                >
                  <h2 className="text-xl font-bold text-primary sm:text-2xl">
                    {section.title}
                  </h2>
                  <div className="mt-4 rounded-2xl border border-dashed border-primary/15 bg-[#f8fbff] px-5 py-6 text-slate-500">
                    Policy content placeholder — ready for individual legal review and refinement.
                  </div>
                </motion.section>
              ))}
            </motion.div>

            <div className="mt-12">
              <LegalDocumentLinks currentKey={documentKey} />
            </div>

            <motion.section
              initial={{ opacity: 0, y: 18 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true, amount: 0.25 }}
              transition={{ duration: 0.55 }}
              className="mt-10 rounded-3xl bg-gradient-to-br from-primary to-[#0f172a] px-6 py-10 text-center text-white shadow-[0_16px_40px_rgba(4,58,126,0.16)] sm:px-10"
            >
              <h2 className="text-2xl font-black">Need Clarification?</h2>
              <p className="mx-auto mt-3 max-w-2xl leading-relaxed text-white/75">
                Contact Zenvik Technologies if you have questions about this document or how it applies to your services.
              </p>
              <a
                href="/#contact"
                className="mt-6 inline-flex items-center justify-center rounded-full bg-accent px-7 py-3.5 text-sm font-bold text-[#0f172a] transition duration-300 hover:-translate-y-0.5 hover:brightness-110"
              >
                Contact Zenvik Technologies
              </a>
            </motion.section>
          </div>
        </div>
      </Container>
    </main>
  )
}

export default LegalPolicyLayout
