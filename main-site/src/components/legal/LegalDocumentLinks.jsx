import { motion } from "framer-motion"
import { legalDocuments } from "../../data/legalDocuments"

function LegalDocumentLinks({ currentKey, title = "Related Legal Documents" }) {
  return (
    <motion.section
      initial={{ opacity: 0, y: 18 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, amount: 0.2 }}
      transition={{ duration: 0.55 }}
      aria-labelledby={`${currentKey}-related-legal`}
    >
      <h2 id={`${currentKey}-related-legal`} className="text-2xl font-black text-primary">
        {title}
      </h2>
      <div className="mt-5 grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
        {legalDocuments.map((document) => (
            <a
              key={document.key}
              href={document.href}
              aria-current={document.key === currentKey ? "page" : undefined}
              className={`group rounded-2xl border bg-white p-5 shadow-[0_8px_24px_rgba(15,23,42,0.045)] transition duration-300 hover:-translate-y-0.5 hover:border-primary/25 hover:shadow-[0_12px_30px_rgba(4,58,126,0.09)] ${
                document.key === currentKey
                  ? "border-primary/25 ring-1 ring-primary/[0.06]"
                  : "border-primary/[0.1]"
              }`}
            >
              <h3 className="font-bold text-primary">{document.title}</h3>
              <p className="mt-2 text-sm leading-relaxed text-slate-600">
                {document.description}
              </p>
              <span className="mt-4 inline-flex items-center gap-2 text-sm font-bold text-primary transition group-hover:translate-x-1 group-hover:text-accent">
                View document <span aria-hidden="true">→</span>
              </span>
            </a>
          ))}
      </div>
    </motion.section>
  )
}

export default LegalDocumentLinks
