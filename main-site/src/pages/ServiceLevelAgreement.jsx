import LegalPolicyLayout from "../components/legal/LegalPolicyLayout"

const sections = [
  { id: "overview", title: "Agreement Overview" },
  { id: "service-scope", title: "Service Scope" },
  { id: "availability", title: "Service Availability" },
  { id: "maintenance", title: "Scheduled Maintenance" },
  { id: "incident-response", title: "Incident Response" },
  { id: "service-credits", title: "Service Credits" },
  { id: "exclusions", title: "Exclusions" },
  { id: "support", title: "Support & Escalation" },
]

export default function ServiceLevelAgreement() {
  return (
    <LegalPolicyLayout
      documentKey="sla"
      title="Service Level Agreement (SLA)"
      introduction="This page provides the structure for Zenvik Technologies service availability, maintenance, support, and operational commitments."
      route="/legal/service-level-agreement"
      sections={sections}
    />
  )
}
