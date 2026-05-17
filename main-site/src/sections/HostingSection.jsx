import { motion } from "framer-motion"

const hostingFeatures = [
  "High Performance Hosting",
  "Free SSL Certificates",
  "Professional Email Hosting",
  "Domain Registration",
  "Daily Backups",
  "24/7 Technical Support",
]

function HostingSection() {
  return (
    <section id="hosting" className="bg-white py-24">
      <div className="mx-auto grid max-w-7xl items-center gap-16 px-6 lg:grid-cols-2">
        <motion.div
          initial={{ opacity: 0, x: -40 }}
          whileInView={{ opacity: 1, x: 0 }}
          transition={{ duration: 0.7 }}
          viewport={{ once: true }}
        >
          <p className="mb-4 text-sm font-semibold uppercase tracking-[0.3em] text-gold">
            Hosting & Cloud Solutions
          </p>

          <h2 className="text-4xl font-black leading-tight text-primary md:text-5xl">
            Reliable Infrastructure For Modern Businesses
          </h2>

          <p className="mt-6 text-lg leading-relaxed text-slate-600">
            From websites and business emails to enterprise cloud infrastructure,
            Zenvik Technologies provides secure, scalable, and performance-focused
            hosting solutions designed for growth.
          </p>

          <div className="mt-10 grid gap-4 sm:grid-cols-2">
            {hostingFeatures.map((feature) => (
              <div
                key={feature}
                className="rounded-2xl border border-slate-200 bg-light px-5 py-4 font-medium text-slate-700"
              >
                {feature}
              </div>
            ))}
          </div>

          <div className="mt-10 flex flex-col gap-4 sm:flex-row">
            <a
              href="https://portal.zenviktechnologies.com"
              className="rounded-full bg-primary px-8 py-4 text-center font-semibold text-white transition hover:-translate-y-1"
            >
              View Hosting Plans
            </a>

            <a
              href="#contact"
              className="rounded-full border border-primary px-8 py-4 text-center font-semibold text-primary transition hover:bg-primary hover:text-white"
            >
              Request Consultation
            </a>
          </div>
        </motion.div>

        <motion.div
          initial={{ opacity: 0, x: 40 }}
          whileInView={{ opacity: 1, x: 0 }}
          transition={{ duration: 0.7 }}
          viewport={{ once: true }}
          className="relative"
        >
          <div className="rounded-[2rem] bg-primary p-10 text-white shadow-soft">
            <div className="grid gap-6">
              <div className="rounded-3xl bg-white/10 p-6 backdrop-blur">
                <h3 className="text-2xl font-bold">99.9% Uptime</h3>
                <p className="mt-2 text-white/70">
                  Reliable infrastructure with enterprise-grade stability.
                </p>
              </div>

              <div className="rounded-3xl bg-white/10 p-6 backdrop-blur">
                <h3 className="text-2xl font-bold">Fast Deployment</h3>
                <p className="mt-2 text-white/70">
                  Quick setup for websites, emails, and hosting services.
                </p>
              </div>

              <div className="rounded-3xl bg-white/10 p-6 backdrop-blur">
                <h3 className="text-2xl font-bold">Secure Environment</h3>
                <p className="mt-2 text-white/70">
                  Security-first hosting with backups and protection layers.
                </p>
              </div>
            </div>
          </div>
        </motion.div>
      </div>
    </section>
  )
}

export default HostingSection