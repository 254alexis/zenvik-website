import MainLayout from "./layouts/MainLayout"
import HeroSection from "./sections/HeroSection"
import ServicesSection from "./sections/ServicesSection"
import HostingSection from "./sections/HostingSection"
import SoftwareSection from "./sections/SoftwareSection"
import MarketingSection from "./sections/MarketingSection"

function App() {
  return (
    <MainLayout>
      <main className="min-h-screen bg-white text-dark">
        <HeroSection />
      </main>
    </MainLayout>
  )
}

export default App