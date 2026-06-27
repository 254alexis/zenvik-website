import MainLayout from "./layouts/MainLayout"
import HeroSection from "./sections/HeroSection"
import PartnersTechnologiesSection from "./sections/PartnersTechnologiesSection"
import ServicesSection from "./sections/ServicesSection"
import WhyChooseSection from "./sections/WhyChooseSection"
import FeaturedProjectsSection from "./sections/FeaturedProjectsSection"
import ProcessSection from "./sections/ProcessSection"
import CTASection from "./sections/CTASection"
import ContactSection from "./sections/ContactSection"
import BlogPreviewSection from "./sections/BlogPreviewSection"
import PrivacyPolicy from "./pages/PrivacyPolicy"
import TermsAndConditions from "./pages/TermsAndConditions"
import RefundPolicy from "./pages/RefundPolicy"
import AcceptableUsePolicy from "./pages/AcceptableUsePolicy"
import ServiceLevelAgreement from "./pages/ServiceLevelAgreement"
import LegalCenter from "./pages/LegalCenter"

function App() {
  const pathname = typeof window !== "undefined" ? window.location.pathname.replace(/\/$/, "") : "/"

  const content =
    pathname === "/legal"
      ? <LegalCenter />
      : pathname === "/legal/privacy-policy" || pathname === "/privacy-policy"
      ? <PrivacyPolicy />
      : pathname === "/legal/terms-and-conditions" || pathname === "/terms-and-conditions"
      ? <TermsAndConditions />
      : pathname === "/legal/refund-policy"
      ? <RefundPolicy />
      : pathname === "/legal/acceptable-use-policy"
      ? <AcceptableUsePolicy />
      : pathname === "/legal/service-level-agreement"
      ? <ServiceLevelAgreement />
      : (
        <main className="min-h-screen bg-white text-dark">
          <HeroSection />
          <PartnersTechnologiesSection />
          <ServicesSection />
          <WhyChooseSection />
          <FeaturedProjectsSection />
          <ProcessSection />
          <CTASection />
          <BlogPreviewSection />
          <ContactSection />
        </main>
      )

  return <MainLayout>{content}</MainLayout>
}

export default App
