import LegalPolicyLayout from "../components/legal/LegalPolicyLayout"

const sections = [
  { id: "overview", title: "Privacy Overview" },
  { id: "information-collected", title: "Information We Collect" },
  { id: "information-use", title: "How Information Is Used" },
  { id: "cookies", title: "Cookies & Tracking" },
  { id: "data-sharing", title: "Data Sharing & Service Providers" },
  { id: "data-security", title: "Data Security" },
  { id: "user-rights", title: "Your Rights" },
  { id: "contact", title: "Privacy Contact" },
]

export default function PrivacyPolicy() {
  return (
    <LegalPolicyLayout
      documentKey="privacy"
      title="Privacy Policy"
      introduction="This page provides the structure for how Zenvik Technologies collects, uses, protects, and manages personal information."
      route="/legal/privacy-policy"
      sections={sections}
    />
  )
}
