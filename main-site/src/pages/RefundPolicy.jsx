import LegalPolicyLayout from "../components/legal/LegalPolicyLayout"

const sections = [
  { id: "overview", title: "Policy Overview" },
  { id: "eligibility", title: "Refund Eligibility" },
  { id: "non-refundable-services", title: "Non-Refundable Services" },
  { id: "request-process", title: "Request Process" },
  { id: "review-timeline", title: "Review & Processing Timeline" },
  { id: "payment-methods", title: "Payment Method Considerations" },
  { id: "changes", title: "Policy Changes" },
  { id: "contact", title: "Contact Information" },
]

export default function RefundPolicy() {
  return (
    <LegalPolicyLayout
      documentKey="refund"
      title="Refund Policy"
      introduction="This page provides the structure for Zenvik Technologies refund eligibility, request review, and processing terms."
      route="/legal/refund-policy"
      sections={sections}
    />
  )
}
