import { motion } from "framer-motion"
import Container from "../components/common/Container"
import SectionHeader from "../components/common/SectionHeader"
import Card from "../components/ui/Card"
import usePageMetadata from "../hooks/usePageMetadata"
import { siteConfig } from "../constants/site"

const sections = [
  {
    title: "Information We Collect",
    content:
      "We collect contact details, service usage data, billing information, and feedback to support your relationship with Zenvik Technologies. This includes information collected directly from you and data gathered automatically through our systems.",
  },
  {
    title: "How We Use Information",
    content:
      "Your data enables secure onboarding, service delivery, invoicing, support, and stronger security controls. We use information to personalize service experiences, process payments, and share updates about product improvements.",
  },
  {
    title: "Cookies & Tracking",
    content:
      "We use essential cookies and tracking technologies to operate our website, improve performance, and analyze usage patterns. These tools help us maintain a reliable hosting experience and deliver relevant communications.",
  },
  {
    title: "Hosting & Client Data",
    content:
      "Zenvik Technologies provides managed hosting and client portal services for website management, backups, and secure data access. We store client information on protected infrastructure designed for uptime and confidentiality.",
  },
  {
    title: "Payments & Billing",
    content:
      "Payments are processed securely through accepted methods including M-Pesa, Bank Transfer, PayPal, and card payments. We retain billing records to manage renewals, receipts, and customer support.",
  },
  {
    title: "Third-Party Services",
    content:
      "We may work with trusted third-party providers for analytics, payment processing, and infrastructure services. These partners are selected to meet our security and compliance expectations.",
  },
  {
    title: "Data Security",
    content:
      "We apply industry-standard safeguards, encryption, and access controls to protect your data. Regular security reviews and hardened hosting protocols support the integrity of client systems.",
  },
  {
    title: "User Rights",
    content:
      "You have the right to access, correct, or delete your personal data. Contact us to update your information or to request more details about how your data is managed.",
  },
  {
    title: "International Services",
    content:
      "Zenvik Technologies operates internationally and may transfer data across borders to support global clients. We maintain responsible controls over international data transfers in compliance with relevant regulations.",
  },
]

export default function PrivacyPolicy() {
  usePageMetadata({
    title: "Privacy Policy | Zenvik Technologies",
    description:
      "Zenvik Technologies privacy policy for hosting, client data, cookies, payments, and international services.",
    canonical: `${siteConfig.websiteUrl}/privacy-policy`,
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
          <span className="font-semibold text-slate-900">Privacy Policy</span>
        </div>

        <div className="grid gap-10">
          <motion.section
            initial={{ opacity: 0, y: 18 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.55 }}
          >
            <SectionHeader
              title="Privacy Policy"
              description="Discover how Zenvik Technologies protects your data through secure hosting, transparent billing, and trusted client services."
            />
          </motion.section>

          <motion.div
            className="grid gap-6 lg:grid-cols-2"
            initial="hidden"
            animate="visible"
            variants={{
              hidden: {},
              visible: {},
            }}
          >
            {sections.map((section, index) => (
              <motion.div
                key={section.title}
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
          </motion.div>

          <motion.div
            className="grid gap-6 lg:grid-cols-2"
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.55, delay: 0.2 }}
          >
            <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
              <h3 className="text-xl font-semibold text-slate-900">Accepted Payment Methods</h3>
              <ul className="mt-4 space-y-3 text-slate-600">
                <li>M-Pesa</li>
                <li>Bank Transfer</li>
                <li>PayPal</li>
                <li>Card Payments</li>
              </ul>
            </Card>

            <Card className="transition duration-300 hover:-translate-y-1 hover:shadow-xl">
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
            </Card>
          </motion.div>
        </div>
      </Container>
    </main>
  )
}
