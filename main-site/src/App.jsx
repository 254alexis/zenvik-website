import MainLayout from "./layouts/MainLayout"
import HeroSection from "./sections/HeroSection"
import ServicesSection from "./sections/ServicesSection"

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