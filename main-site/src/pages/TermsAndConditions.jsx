import LegalPolicyLayout from "../components/legal/LegalPolicyLayout"

const sections = [
  { id: "overview", title: "Terms Overview" },
  { id: "services", title: "Services & Agreements" },
  { id: "accounts", title: "Accounts & Client Responsibilities" },
  { id: "billing", title: "Billing & Payments" },
  { id: "intellectual-property", title: "Intellectual Property" },
  { id: "suspension", title: "Suspension & Termination" },
  { id: "liability", title: "Liability & Disclaimers" },
  { id: "governing-law", title: "Governing Law" },
]

export default function TermsAndConditions() {
  return (
    <LegalPolicyLayout
      documentKey="terms"
      title="Terms & Conditions"
      introduction="This page provides the structure for the terms governing Zenvik Technologies services, client responsibilities, billing, and agreements."
      route="/legal/terms-and-conditions"
      sections={sections}
    />
  )
}
