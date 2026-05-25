import { motion } from "framer-motion"
import { coreServices } from "../data/services"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"

function ServicesSection() {
  return (
    <section id="services" className="bg-light py-20">
      <Container>
        <SectionHeader
          eyebrow="Our Services"
          title="Complete ICT & Digital Solutions"
          description="Zenvik Technologies delivers enterprise-grade hosting, software, websites, branding, marketing, and ICT infrastructure solutions tailored for modern businesses."
        />

        <div className="mt-14 grid gap-6 md:grid-cols-2 xl:grid-cols-3">
          {coreServices.map((service, index) => (
            <motion.div
              key={service.title}
              initial={{ opacity: 0, y: 40 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5, delay: index * 0.1 }}
              viewport={{ once: true }}
              className="group flex h-full flex-col rounded-3xl border border-slate-200 bg-white p-7 shadow-soft transition hover:-translate-y-1 hover:shadow-lg"
            >
              <div className="mb-5 flex h-12 w-12 items-center justify-center rounded-2xl bg-primary text-base font-bold text-white">
                {index + 1}
              </div>

              <h3 className="text-xl font-bold text-primary">
                {service.title}
              </h3>

              <p className="mt-4 leading-relaxed text-slate-600">
                {service.description}
              </p>

              <div className="mt-6">
                <a
                  href="#contact"
                  className="font-semibold text-accent transition group-hover:tracking-wide"
                >
                  Learn More →
                </a>
              </div>
            </motion.div>
          ))}
        </div>
      </Container>
    </section>
  )
}

export default ServicesSection
