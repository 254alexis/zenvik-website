import { motion } from "framer-motion"

const marketingServices = [
  "Brand Identity Design",
  "Social Media Management",
  "SEO Optimization",
  "Digital Advertising",
  "Content Creation",
  "Corporate Branding",
]

function MarketingSection() {
  return (
    <section className="bg-light py-24">
      <div className="mx-auto max-w-7xl px-6">
        <div className="text-center">
          <p className="mb-4 text-sm font-semibold uppercase tracking-[0.3em] text-gold">
            Marketing & Branding
          </p>

          <h2 className="mx-auto max-w-4xl text-4xl font-black leading-tight text-primary md:text-5xl">
            Build A Strong Digital Presence For Your Business
          </h2>

          <p className="mx-auto mt-6 max-w-3xl text-lg leading-relaxed text-slate-600">
            Beyond technology, Zenvik Technologies helps businesses grow through
            strategic branding, digital marketing, creative design, and modern
            online visibility solutions.
          </p>
        </div>

        <div className="mt-16 grid gap-8 md:grid-cols-2 xl:grid-cols-3">
          {marketingServices.map((service, index) => (
            <motion.div
              key={service}
              initial={{ opacity: 0, y: 40 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5, delay: index * 0.08 }}
              viewport={{ once: true }}
              className="rounded-3xl bg-white p-8 shadow-soft transition hover:-translate-y-2"
            >
              <div className="mb-6 inline-flex rounded-2xl bg-primary px-4 py-2 text-sm font-semibold text-white">
                Growth Solution
              </div>

              <h3 className="text-2xl font-bold text-primary">
                {service}
              </h3>

              <p className="mt-4 leading-relaxed text-slate-600">
                Professional digital solutions designed to improve visibility,
                engagement, and business growth.
              </p>
            </motion.div>
          ))}
        </div>

        <div className="mt-16 rounded-[2rem] bg-primary px-8 py-14 text-center text-white md:px-16">
          <h3 className="text-3xl font-black md:text-4xl">
            Ready To Grow Your Brand?
          </h3>

          <p className="mx-auto mt-5 max-w-2xl text-lg text-white/80">
            Let’s help your business stand out with modern branding,
            marketing strategies, and digital growth solutions.
          </p>

          <div className="mt-8 flex flex-col justify-center gap-4 sm:flex-row">
            <a
              href="#contact"
              className="rounded-full bg-accent px-8 py-4 font-semibold text-white transition hover:-translate-y-1"
            >
              Request Consultation
            </a>

            <a
              href="#services"
              className="rounded-full border border-white/20 px-8 py-4 font-semibold text-white transition hover:bg-white hover:text-primary"
            >
              Explore More Services
            </a>
          </div>
        </div>
      </div>
    </section>
  )
}

export default MarketingSection