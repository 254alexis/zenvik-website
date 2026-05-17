import { motion } from "framer-motion"
import { testimonials } from "../data/testimonials"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"

function TestimonialsSection() {
  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1,
        delayChildren: 0.2,
      },
    },
  }

  const cardVariants = {
    hidden: { opacity: 0, y: 40 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { duration: 0.6, ease: "easeOut" },
    },
  }

  return (
    <section id="testimonials" className="bg-white py-24">
      <Container>
        <SectionHeader
          eyebrow="Client Success"
          title="Trusted by Leading Businesses"
          description="See how Zenvik Technologies has helped businesses transform their operations through modern software, reliable hosting, and professional digital solutions."
        />

        <motion.div
          variants={containerVariants}
          initial="hidden"
          whileInView="visible"
          viewport={{ once: true, margin: "-100px" }}
          className="mt-16 grid gap-8 md:grid-cols-2 lg:grid-cols-3"
        >
          {testimonials.map((testimonial, index) => (
            <motion.div
              key={`${testimonial.name}-${index}`}
              variants={cardVariants}
              className="group relative overflow-hidden rounded-3xl bg-gradient-to-br from-primary/5 to-transparent border border-slate-200 p-8 shadow-soft transition duration-300 hover:shadow-lg hover:border-gold/30"
            >
              <div className="absolute top-0 right-0 -mt-4 -mr-4 h-20 w-20 rounded-full bg-gold/10 blur-2xl transition-transform duration-300 group-hover:scale-125" />

              <div className="relative z-10">
                <div className="flex items-center gap-1 mb-6">
                  {[...Array(5)].map((_, i) => (
                    <svg
                      key={i}
                      className="h-5 w-5 fill-gold transition-colors duration-300"
                      viewBox="0 0 20 20"
                    >
                      <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                    </svg>
                  ))}
                </div>

                <p className="text-lg leading-relaxed text-slate-700 mb-8">
                  "{testimonial.message}"
                </p>

                <div className="border-t border-slate-200 pt-6">
                  <p className="font-semibold text-primary text-lg">
                    {testimonial.name}
                  </p>
                  <p className="text-sm text-gold font-semibold mt-1">
                    {testimonial.company}
                  </p>
                </div>
              </div>
            </motion.div>
          ))}
        </motion.div>

        <motion.div
          initial={{ opacity: 0, y: 40 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.4 }}
          viewport={{ once: true }}
          className="mt-20 flex flex-col items-center justify-center gap-8 rounded-3xl bg-light px-8 py-16 text-center md:px-12"
        >
          <div>
            <p className="mb-4 text-3xl font-black text-primary">
              Join our growing list of satisfied clients
            </p>
            <p className="text-lg text-slate-600 max-w-2xl mx-auto">
              Experience the difference that professional hosting, custom software, and expert digital solutions can make for your business.
            </p>
          </div>

          <a
            href="#contact"
            className="rounded-full bg-primary px-8 py-4 font-semibold text-white transition hover:-translate-y-1 hover:shadow-soft inline-block"
          >
            Get Started Today
          </a>
        </motion.div>
      </Container>
    </section>
  )
}

export default TestimonialsSection
