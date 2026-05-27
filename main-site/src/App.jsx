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

function App() {
  return (
    <MainLayout>
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
    </MainLayout>
  )
}

export default App