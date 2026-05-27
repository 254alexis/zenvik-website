import MainLayout from "./layouts/MainLayout"
import HeroSection from "./sections/HeroSection"
import ServicesSection from "./sections/ServicesSection"
import HostingSection from "./sections/HostingSection"
import SoftwareSection from "./sections/SoftwareSection"
import MarketingSection from "./sections/MarketingSection"
import WhyChooseSection from "./sections/WhyChooseSection"
import PortfolioSection from "./sections/PortfolioSection"
import TestimonialsSection from "./sections/TestimonialsSection"
import PricingSection from "./sections/PricingSection"
import FAQSection from "./sections/FAQSection"
import ContactSection from "./sections/ContactSection"
import BlogPreviewSection from "./sections/BlogPreviewSection"
import CTASection from "./sections/CTASection"
import WhatsAppFloat from "./components/WhatsAppFloat"
import PrivacyPolicy from "./pages/PrivacyPolicy"
import TermsAndConditions from "./pages/TermsAndConditions"

function App() {
  const pathname = typeof window !== "undefined" ? window.location.pathname.replace(/\/$/, "") : "/"

  const content =
    pathname === "/privacy-policy"
      ? <PrivacyPolicy />
      : pathname === "/terms-and-conditions"
      ? <TermsAndConditions />
      : (
        <main className="min-h-screen bg-white text-dark">
          <HeroSection />
          <ServicesSection />
          <HostingSection />
          <SoftwareSection />
          <MarketingSection />
          <WhyChooseSection />
          <PortfolioSection />
          <TestimonialsSection />
          <PricingSection />
          <FAQSection />
          <BlogPreviewSection />
          <ContactSection />
          <CTASection />
          <WhatsAppFloat />
        </main>
      )

  return <MainLayout>{content}</MainLayout>
}

export default App