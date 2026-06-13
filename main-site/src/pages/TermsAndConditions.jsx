import { motion } from "framer-motion"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"
import Card from "../components/ui/Card"
import usePageMetadata from "../hooks/usePageMetadata"
import { siteConfig } from "../constants/site"

const termsSections = [
  {
    id: "hosting-terms",
    title: "Hosting Terms",
    content:
      "Our hosting agreements cover uptime, maintenance windows, backup responsibility, and automatic renewal notices. Clients receive proactive renewal reminders before each hosting term expires.",
  },
  {
    id: "domain-registration-terms",
    title: "Domain Registration Terms",
    content:
      "Domain registration is processed on your behalf through accredited registrars. Renewals are the client's responsibility, and we provide guidance to keep domain ownership active.",
  },
  {
    id: "payment-billing",
    title: "Payment & Billing",
    content:
      "Invoices are issued in advance and must be paid on schedule. Accepted payment methods include M-Pesa, Bank Transfer, PayPal, and card payments. Late payments may affect service availability.",
  },
  {
    id: "refund-policy",
    title: "Refund Policy",
    content:
      "We offer a 30-day money-back guarantee on eligible hosting and service agreements. Refund requests should be submitted within 30 days of purchase and are evaluated according to contract terms.",
  },
  {
    id: "website-development-services",
    title: "Website Development Services",
    content:
      "Project scopes, timelines, and deliverables are agreed in writing before work begins. Additional revisions beyond the agreed scope may incur extra fees.",
  },
  {
    id: "marketing-branding-services",
    title: "Marketing & Branding Services",
    content:
      "Marketing campaigns, creative assets, and brand strategy are delivered with clear milestones. Strategy revisions are managed through our standard approval and change-request process.",
  },
  {
    id: "acceptable-use-policy",
    title: "Acceptable Use Policy",
    content:
      "Clients must not use our services for abusive, spam, fraudulent, or illegal activity. Any misuse may result in immediate suspension of accounts without refund.",
  },
  {
    id: "client-responsibilities",
    title: "Client Responsibilities",
    content:
      "Clients are responsible for maintaining backups, protecting login credentials, and ensuring that submitted content complies with applicable laws and guidelines.",
  },
  {
    id: "service-availability",
    title: "Service Availability",
    content:
      "We strive for dependable service availability. Scheduled maintenance will be communicated in advance, while emergency maintenance may occur as required for security and stability.",
  },
  {
    id: "suspension-termination",
    title: "Suspension & Termination",
    content:
      "Zenvik Technologies may suspend or terminate service for payment delinquency, policy violations, or security concerns. Termination notices are sent according to the contract terms.",
  },
  {
    id: "intellectual-property",
    title: "Intellectual Property",
    content:
      "All intellectual property rights in project deliverables are handled per agreement terms. Our work remains protected until final payment and rights transfer are complete.",
  },
  {
    id: "liability-limitation",
    title: "Liability Limitation",
    content:
      "Our liability is limited to the amount paid for the relevant service and excludes consequential or indirect damages. We focus on measured, professional outcomes for every engagement.",
  },
  {
    id: "governing-law",
    title: "Governing Law",
    content:
      "These terms are governed by the applicable laws of the jurisdiction where Zenvik Technologies operates. Any disputes are addressed through the procedures described in the service agreement.",
  },
]

export default function TermsAndConditions() {
  usePageMetadata({
    title: "Terms & Conditions | Zenvik Technologies",
    description:
      "Zenvik Technologies terms and conditions covering hosting, payments, refunds, acceptable use, and service availability.",
    canonical: `${siteConfig.websiteUrl}/terms-and-conditions`,
    image: `${siteConfig.websiteUrl}/og-image.png`,
  })

  return (
    <main className="min-h-screen bg-slate-50 text-slate-900">
      <Container className="pt-28 pb-20">
        <div className="mb-4 text-sm font-semibold uppercase tracking-[0.32em] text-slate-500">
          Legal
        </div>

        <div className="mb-10 flex flex-wrap items-center gap-3 text-sm text-slate-500">
          <a href="/" className="transition hover:text-primary">Home</a>
          <span className="text-slate-300">/</span>
          <span className="font-semibold text-slate-900">Terms & Conditions</span>
        </div>

        <div className="grid gap-10">
          <motion.section
            initial={{ opacity: 0, y: 18 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.55 }}
          >
            <SectionHeader
              title="Terms & Conditions"
              description="Read the terms that govern Zenvik Technologies hosting, development, marketing, and client services with clear, enterprise-grade accountability."
            />
          </motion.section>

          <div className="grid gap-6 lg:grid-cols-2">
            {termsSections.slice(0, 6).map((section, index) => (
              <motion.div
                id={section.id}
                key={section.title}
                className="scroll-mt-28"
                initial={{ opacity: 0, y: 16 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.5, delay: index * 0.05 }}
              >
                <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
                  <h3 className="text-xl font-semibold text-slate-900">{section.title}</h3>
                  <p className="mt-4 leading-relaxed text-slate-600">
                    {section.content}
                  </p>
                </Card>
              </motion.div>
            ))}
          </div>

          <div className="grid gap-6 lg:grid-cols-2">
            {termsSections.slice(6).map((section, index) => (
              <motion.div
                id={section.id}
                key={section.title}
                className="scroll-mt-28"
                initial={{ opacity: 0, y: 16 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.5, delay: index * 0.05 }}
              >
                <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
                  <h3 className="text-xl font-semibold text-slate-900">{section.title}</h3>
                  <p className="mt-4 leading-relaxed text-slate-600">
                    {section.content}
                  </p>
                </Card>
              </motion.div>
            ))}
          </div>

          <motion.div
            className="grid gap-6 lg:grid-cols-2"
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.55, delay: 0.2 }}
          >
            <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
              <h3 className="text-xl font-semibold text-slate-900">30-Day Money-Back Guarantee</h3>
              <p className="mt-4 leading-relaxed text-slate-600">
                "We stand behind our services with a 30-day money-back guarantee for eligible hosting and digital services. If you are not satisfied, contact us within 30 days for a prompt review and refund assessment."
              </p>
            </Card>

            <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
              <h3 className="text-xl font-semibold text-slate-900">Client Responsibilities</h3>
              <ul className="mt-4 space-y-3 text-slate-600">
                <li>Maintain your own website backups and content archives.</li>
                <li>Protect account credentials and access controls.</li>
                <li>Ensure all submitted content complies with applicable laws.</li>
                <li>Monitor notifications for renewal and support updates.</li>
              </ul>
            </Card>
          </motion.div>

          <motion.div
            className="rounded-3xl border border-slate-200 bg-white p-8 shadow-soft"
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.55, delay: 0.3 }}
          >
            <h3 className="text-xl font-semibold text-slate-900">Contact Information</h3>
            <div className="mt-4 space-y-3 text-slate-600">
              <p>
                <span className="font-semibold text-slate-900">Email:</span> {siteConfig.email}
              </p>
              <p>
                <span className="font-semibold text-slate-900">Support:</span> {siteConfig.supportEmail}
              </p>
              <p>
                <span className="font-semibold text-slate-900">Phone:</span> {siteConfig.phone}
              </p>
            </div>
          </motion.div>
        </div>
      </Container>
    </main>
  )
}
