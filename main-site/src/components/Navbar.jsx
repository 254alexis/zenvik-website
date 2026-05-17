import { useState } from "react"

const navLinks = [
  { label: "Home", href: "#" },
  { label: "Services", href: "#services" },
  { label: "Hosting", href: "#hosting" },
  { label: "Software", href: "#software" },
  { label: "Contact", href: "#contact" },
]

function Navbar() {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  const closeMenu = () => setIsMenuOpen(false)

  return (
    <header className="fixed left-0 top-0 z-50 w-full border-b border-white/10 bg-[#043a7e]/95 shadow-[0_18px_45px_rgba(4,58,126,0.18)] backdrop-blur-xl">
      <div className="mx-auto flex max-w-7xl items-center justify-between px-5 py-4 sm:px-6 lg:px-8">
        <a href="#" className="text-xl font-bold tracking-tight text-white" onClick={closeMenu}>
          Zenvik<span className="text-accent">.</span>
        </a>

        <nav className="hidden items-center gap-8 md:flex">
          {navLinks.map((link) => (
            <a
              key={link.label}
              href={link.href}
              className="text-sm font-medium text-white/85 transition duration-200 hover:text-[#dfa408]"
            >
              {link.label}
            </a>
          ))}
        </nav>

        <a
          href="https://portal.zenviktechnologies.com"
          className="hidden rounded-full bg-[#dfa408] px-5 py-2.5 text-sm font-semibold text-[#043a7e] shadow-sm shadow-black/10 transition duration-200 hover:-translate-y-0.5 hover:bg-[#f0b21a] focus:outline-none focus:ring-2 focus:ring-[#dfa408] focus:ring-offset-2 focus:ring-offset-[#043a7e] md:inline-flex"
        >
          Client Portal
        </a>

        <button
          type="button"
          className="inline-flex h-11 w-11 items-center justify-center rounded-full border border-white/15 text-white transition duration-200 hover:border-[#dfa408]/70 hover:bg-white/10 focus:outline-none focus:ring-2 focus:ring-[#dfa408] focus:ring-offset-2 focus:ring-offset-[#043a7e] md:hidden"
          aria-label={isMenuOpen ? "Close navigation menu" : "Open navigation menu"}
          aria-expanded={isMenuOpen}
          aria-controls="mobile-navigation"
          onClick={() => setIsMenuOpen((open) => !open)}
        >
          <span className="sr-only">{isMenuOpen ? "Close navigation menu" : "Open navigation menu"}</span>
          <span className="relative h-5 w-5" aria-hidden="true">
            <span
              className={`absolute left-0 top-1 block h-0.5 w-5 rounded-full bg-current transition duration-200 ${
                isMenuOpen ? "translate-y-1.5 rotate-45" : ""
              }`}
            />
            <span
              className={`absolute left-0 top-1/2 block h-0.5 w-5 -translate-y-1/2 rounded-full bg-current transition duration-200 ${
                isMenuOpen ? "opacity-0" : ""
              }`}
            />
            <span
              className={`absolute bottom-1 left-0 block h-0.5 w-5 rounded-full bg-current transition duration-200 ${
                isMenuOpen ? "-translate-y-1.5 -rotate-45" : ""
              }`}
            />
          </span>
        </button>
      </div>

      <div
        id="mobile-navigation"
        className={`overflow-hidden border-t border-white/10 bg-[#043a7e]/98 transition-all duration-300 ease-out md:hidden ${
          isMenuOpen ? "max-h-96 opacity-100" : "max-h-0 opacity-0"
        }`}
      >
        <nav className="mx-auto flex max-w-7xl flex-col gap-1 px-5 py-4 sm:px-6" aria-label="Mobile navigation">
          {navLinks.map((link) => (
            <a
              key={link.label}
              href={link.href}
              onClick={closeMenu}
              className="rounded-lg px-3 py-3 text-base font-medium text-white/90 transition duration-200 hover:bg-white/10 hover:text-[#dfa408] focus:outline-none focus:ring-2 focus:ring-[#dfa408] focus:ring-offset-2 focus:ring-offset-[#043a7e]"
            >
              {link.label}
            </a>
          ))}

          <a
            href="https://portal.zenviktechnologies.com"
            onClick={closeMenu}
            className="mt-3 inline-flex items-center justify-center rounded-full bg-[#dfa408] px-5 py-3 text-sm font-semibold text-[#043a7e] transition duration-200 hover:bg-[#f0b21a] focus:outline-none focus:ring-2 focus:ring-[#dfa408] focus:ring-offset-2 focus:ring-offset-[#043a7e]"
          >
            Client Portal
          </a>
        </nav>
      </div>
    </header>
  )
}

export default Navbar