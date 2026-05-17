const navLinks = [
  { label: "Home", href: "#" },
  { label: "Services", href: "#services" },
  { label: "Hosting", href: "#hosting" },
  { label: "Software", href: "#software" },
  { label: "Contact", href: "#contact" },
]

function Navbar() {
  return (
    <header className="fixed left-0 top-0 z-50 w-full border-b border-white/10 bg-primary/95 backdrop-blur">
      <div className="mx-auto flex max-w-7xl items-center justify-between px-6 py-4">
        <a href="#" className="text-xl font-bold text-white">
          Zenvik<span className="text-accent">.</span>
        </a>

        <nav className="hidden items-center gap-8 md:flex">
          {navLinks.map((link) => (
            <a key={link.label} href={link.href} className="text-sm font-medium text-white/85 hover:text-accent">
              {link.label}
            </a>
          ))}
        </nav>

        <a
          href="https://portal.zenviktechnologies.com"
          className="rounded-full bg-accent px-5 py-2 text-sm font-semibold text-white transition hover:-translate-y-0.5"
        >
          Client Portal
        </a>
      </div>
    </header>
  )
}

export default Navbar