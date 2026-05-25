import { motion } from "framer-motion"
import Container from "../components/common/Container"

const softwareSolutions = [
  "Business Management Systems",
  "Property Management Systems",
  "Custom SaaS Platforms",
  "E-commerce Platforms",
  "API Integrations",
  "Automation Systems",
]

function SoftwareSection() {
  return (
    <section id="software" className="bg-slate-950 py-24 text-white">
      <Container>
        <div className="grid items-center gap-16 lg:grid-cols-2">
          <motion.div
            initial={{ opacity: 0, y: 40 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.7 }}
            viewport={{ once: true }}
          >
            <p className="mb-4 text-sm font-semibold uppercase tracking-[0.3em] text-accent">
              Software Development
            </p>

            <h2 className="text-4xl font-black leading-tight md:text-5xl">
              Scalable Software Built For Real Businesses
            </h2>

            <p className="mt-6 text-lg leading-relaxed text-slate-300">
              We design and develop enterprise-grade software solutions,
              automation systems, business platforms, and SaaS applications
              tailored for modern organizations and growing companies.
            </p>

            <div className="mt-10 grid gap-4 sm:grid-cols-2">
              {softwareSolutions.map((solution) => (
                <div
                  key={solution}
                  className="rounded-2xl border border-white/10 bg-white/5 px-5 py-4 backdrop-blur"
                >
                  {solution}
                </div>
              ))}
            </div>

            <div className="mt-10 flex flex-col gap-4 sm:flex-row">
              <a
                href="#contact"
                className="rounded-full bg-accent px-8 py-4 text-center font-semibold text-white transition duration-200 hover:-translate-y-1 hover:shadow-soft"
              >
                Start Your Project
              </a>

              <a
                href="#services"
                className="rounded-full border border-white/20 px-8 py-4 text-center font-semibold text-white transition duration-200 hover:bg-white hover:text-slate-950"
              >
                Explore Solutions
              </a>
            </div>
          </motion.div>

          <motion.div
            initial={{ opacity: 0, scale: 0.95 }}
            whileInView={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.7 }}
            viewport={{ once: true }}
          >
            <div className="rounded-[2rem] border border-white/10 bg-white/5 p-8 backdrop-blur-xl">
              <div className="grid gap-6">
                <div className="rounded-3xl bg-primary p-6">
                  <h3 className="text-2xl font-bold">Custom Systems</h3>
                  <p className="mt-3 text-white/80">
                    Tailored software solutions for unique business workflows.
                  </p>
                </div>

                <div className="rounded-3xl bg-white/5 p-6">
                  <h3 className="text-2xl font-bold">Enterprise Automation</h3>
                  <p className="mt-3 text-slate-300">
                    Streamline operations through modern digital automation.
                  </p>
                </div>

                <div className="rounded-3xl bg-white/5 p-6">
                  <h3 className="text-2xl font-bold">Scalable Architecture</h3>
                  <p className="mt-3 text-slate-300">
                    Built for future growth, performance, and long-term scalability.
                  </p>
                </div>
              </div>
            </div>
          </motion.div>
        </div>
      </Container>
    </section>
  )
}

export default SoftwareSection