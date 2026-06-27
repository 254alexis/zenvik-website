import LegalPolicyLayout from "../components/legal/LegalPolicyLayout"

const sections = [
  { id: "overview", title: "Policy Overview" },
  { id: "responsible-use", title: "Responsible Use" },
  { id: "prohibited-activity", title: "Prohibited Activity" },
  { id: "security-abuse", title: "Security & Abuse" },
  { id: "content-standards", title: "Content Standards" },
  { id: "resource-usage", title: "Infrastructure & Resource Usage" },
  { id: "enforcement", title: "Enforcement" },
  { id: "reporting", title: "Reporting Violations" },
]

export default function AcceptableUsePolicy() {
  return (
    <LegalPolicyLayout
      documentKey="aup"
      title="Acceptable Use Policy (AUP)"
      introduction="This page provides the structure for responsible use requirements across Zenvik Technologies services and infrastructure."
      route="/legal/acceptable-use-policy"
      sections={sections}
    />
  )
}
