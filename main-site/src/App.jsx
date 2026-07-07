import { lazy, Suspense } from "react"
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

const LegalCenter = lazy(() => import("./pages/LegalCenter"))
const HostingCloudServices = lazy(() => import("./pages/HostingCloudServices"))
const DigitalSolutions = lazy(() => import("./pages/DigitalSolutions"))
const MarketingBranding = lazy(() => import("./pages/MarketingBranding"))

function App() {
  const pathname = typeof window !== "undefined" ? window.location.pathname.replace(/\/$/, "") : "/"

  const content =
    pathname === "/legal"
      ? (
        <Suspense fallback={<main className="min-h-screen bg-[#f8fbff]" />}>
          <LegalCenter />
        </Suspense>
      )
      : pathname === "/hosting" || pathname === "/hosting-cloud-services"
        ? (
          <Suspense fallback={<main className="min-h-screen bg-white" />}>
            <HostingCloudServices />
          </Suspense>
        )
      : pathname === "/digital-solutions"
        ? (
          <Suspense fallback={<main className="min-h-screen bg-white" />}>
            <DigitalSolutions />
          </Suspense>
        )
      : pathname === "/marketing-branding"
        ? (
          <Suspense fallback={<main className="min-h-screen bg-white" />}>
            <MarketingBranding />
          </Suspense>
        )
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
