import { useState, useRef, useEffect } from "react"
import {
  accountMenuLinks,
  navigationLinks,
  servicesMenuLinks,
} from "../data/navigation"
import { siteConfig } from "../constants/site"

function Navbar() {
  const [isMenuOpen, setIsMenuOpen] = useState(false)
  const [isServicesDropdownOpen, setIsServicesDropdownOpen] = useState(false)
  const [isAccountDropdownOpen, setIsAccountDropdownOpen] = useState(false)
  const [isMobileServicesOpen, setIsMobileServicesOpen] = useState(false)
  const [isMobileAccountOpen, setIsMobileAccountOpen] = useState(false)
  const servicesDropdownRef = useRef(null)
  const accountDropdownRef = useRef(null)

  const closeMenu = () => {
    setIsMenuOpen(false)
    setIsMobileServicesOpen(false)
    setIsMobileAccountOpen(false)
  }

  const closeDesktopDropdowns = () => {
    setIsServicesDropdownOpen(false)
    setIsAccountDropdownOpen(false)
  }

  useEffect(() => {
    const handleClickOutside = (e) => {
      if (
        servicesDropdownRef.current &&
        !servicesDropdownRef.current.contains(e.target)
      ) {
        setIsServicesDropdownOpen(false)
      }

      if (
        accountDropdownRef.current &&
        !accountDropdownRef.current.contains(e.target)
      ) {
        setIsAccountDropdownOpen(false)
      }
    }

    const handleEscape = (e) => {
      if (e.key === "Escape") {
        closeDesktopDropdowns()
      }
    }

    document.addEventListener("click", handleClickOutside)
    document.addEventListener("keydown", handleEscape)
    return () => {
      document.removeEventListener("click", handleClickOutside)
      document.removeEventListener("keydown", handleEscape)
    }
  }, [])

  return (
    <header className="fixed left-0 top-0 z-50 w-full border-b border-slate-200 bg-white shadow-soft">
      <div className="mx-auto flex w-full max-w-[1280px] items-center justify-between gap-4 px-5 py-4 sm:px-6 lg:px-8">
        <a href="#" onClick={closeMenu} className="flex items-center">
          <img
            src="/logo.png"
            alt="Zenvik Technologies"
            className="h-[34px] w-auto max-w-[190px] object-contain xl:h-[42px] xl:max-w-[240px]"
          />
        </a>

        <nav className="hidden min-w-0 items-center gap-5 xl:flex 2xl:gap-8">
          {navigationLinks.map((link) =>
            link.type === "services" ? (
              <div
                key={link.label}
                ref={servicesDropdownRef}
                className="relative"
                onMouseEnter={() => setIsServicesDropdownOpen(true)}
                onMouseLeave={() => setIsServicesDropdownOpen(false)}
              >
                <button
                  type="button"
                  className={`inline-flex items-center gap-1.5 whitespace-nowrap text-sm font-semibold transition duration-200 ${
                    isServicesDropdownOpen ? "text-accent" : "text-slate-700 hover:text-accent"
                  }`}
                  onClick={() => setIsServicesDropdownOpen((open) => !open)}
                  aria-expanded={isServicesDropdownOpen}
                  aria-controls="services-dropdown-menu"
                >
                  {link.label}
                  <svg
                    className={`h-4 w-4 transition duration-200 ${
                      isServicesDropdownOpen ? "rotate-180" : ""
                    }`}
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    aria-hidden="true"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth={2}
                      d="m6 9 6 6 6-6"
                    />
                  </svg>
                </button>

                <div
                  id="services-dropdown-menu"
                  className={`absolute left-1/2 top-full z-50 w-72 -translate-x-1/2 pt-4 transition duration-200 ${
                    isServicesDropdownOpen
                      ? "visible translate-y-0 opacity-100"
                      : "invisible -translate-y-2 opacity-0 pointer-events-none"
                  }`}
                >
                  <div className="rounded-3xl border border-slate-200 bg-white p-2 shadow-soft">
                    <div className="space-y-1">
                      {servicesMenuLinks.map((item) => (
                        <a
                          key={item.label}
                          href={item.href}
                          className="group flex items-center justify-between gap-3 rounded-2xl px-4 py-3 text-sm font-semibold text-slate-700 transition duration-200 hover:bg-slate-50 hover:text-accent focus:outline-none focus:ring-2 focus:ring-accent"
                        >
                          <span>{item.label}</span>
                          <svg
                            className="h-4 w-4 text-slate-400 transition duration-200 group-hover:translate-x-0.5 group-hover:text-accent"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                            aria-hidden="true"
                          >
                            <path
                              strokeLinecap="round"
                              strokeLinejoin="round"
                              strokeWidth={2}
                              d="m9 5 7 7-7 7"
                            />
                          </svg>
                        </a>
                      ))}
                    </div>
                  </div>
                </div>
              </div>
            ) : (
              <a
                key={link.label}
                href={link.href}
                className="whitespace-nowrap text-sm font-semibold text-slate-700 transition duration-200 hover:text-accent"
              >
                {link.label}
              </a>
            )
          )}
        </nav>

        <div className="hidden shrink-0 items-center gap-3 xl:flex 2xl:gap-4">
          <a
            href={siteConfig.portalUrl}
            className="whitespace-nowrap rounded-full bg-accent px-5 py-2.5 text-sm font-bold text-primary shadow-sm transition duration-200 hover:-translate-y-0.5 hover:bg-accent/90 focus:outline-none focus:ring-2 focus:ring-accent"
          >
            Client Portal
          </a>

          <div
            className="relative"
            ref={accountDropdownRef}
            onMouseEnter={() => setIsAccountDropdownOpen(true)}
            onMouseLeave={() => setIsAccountDropdownOpen(false)}
          >
            <button
              type="button"
              className={`inline-flex h-11 w-11 items-center justify-center rounded-full border transition duration-200 focus:outline-none focus:ring-2 focus:ring-accent ${
                isAccountDropdownOpen
                  ? "border-accent bg-white text-[#dfa408] shadow-sm"
                  : "border-slate-200 bg-white text-[#dfa408] hover:border-accent/60"
              }`}
              onClick={() => setIsAccountDropdownOpen((open) => !open)}
              aria-label="Account menu"
              aria-expanded={isAccountDropdownOpen}
              aria-controls="account-dropdown-menu"
            >
              <svg
                className="h-5 w-5"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
                aria-hidden="true"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="M15.75 7.5a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z"
                />
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="M4.5 20.25a7.5 7.5 0 0 1 15 0"
                />
              </svg>
            </button>

            <div
              id="account-dropdown-menu"
              className={`absolute right-0 top-full z-50 w-64 pt-4 transition duration-200 ${
                isAccountDropdownOpen
                  ? "visible translate-y-0 opacity-100"
                  : "invisible -translate-y-2 opacity-0 pointer-events-none"
              }`}
            >
              <div className="rounded-3xl border border-slate-200 bg-white p-2 shadow-soft">
                <div className="rounded-2xl bg-slate-50 px-4 py-3">
                  <p className="text-xs font-bold uppercase tracking-wider text-slate-500">
                    Account
                  </p>
                </div>

                <div className="mt-1 space-y-1">
                  {accountMenuLinks.map((item) => (
                    <a
                      key={item.label}
                      href={item.href}
                      className="flex items-center justify-between rounded-2xl px-4 py-3 text-sm font-semibold text-slate-700 transition duration-200 hover:bg-slate-50 hover:text-accent focus:outline-none focus:ring-2 focus:ring-accent"
                    >
                      <span>{item.label}</span>
                      <svg
                        className="h-4 w-4 text-slate-400"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                      >
                        <path
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          strokeWidth={2}
                          d="m9 5 7 7-7 7"
                        />
                      </svg>
                    </a>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>

        <button
          type="button"
          className="inline-flex h-11 w-11 shrink-0 items-center justify-center rounded-full border border-slate-200 text-primary transition duration-200 hover:border-accent hover:bg-slate-50 focus:outline-none focus:ring-2 focus:ring-accent xl:hidden"
          aria-label={isMenuOpen ? "Close navigation menu" : "Open navigation menu"}
          aria-expanded={isMenuOpen}
          aria-controls="mobile-navigation"
          onClick={() => setIsMenuOpen((open) => !open)}
        >
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
        className={`overflow-hidden border-t border-slate-200 bg-white transition-all duration-300 ease-out xl:hidden ${
          isMenuOpen ? "max-h-[1120px] opacity-100" : "max-h-0 opacity-0"
        }`}
      >
        <nav className="mx-auto flex w-full max-w-[1280px] flex-col gap-1 px-5 py-4 sm:px-6">
          {navigationLinks.map((link) =>
            link.type === "services" ? (
              <div key={link.label}>
                <button
                  type="button"
                  className="flex w-full items-center justify-between rounded-xl px-3 py-3 text-base font-semibold text-slate-700 transition duration-200 hover:bg-slate-50 hover:text-accent"
                  onClick={() => setIsMobileServicesOpen((open) => !open)}
                  aria-expanded={isMobileServicesOpen}
                  aria-controls="mobile-services-menu"
                >
                  <span>{link.label}</span>
                  <svg
                    className={`h-4 w-4 transition duration-200 ${
                      isMobileServicesOpen ? "rotate-180 text-accent" : ""
                    }`}
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    aria-hidden="true"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth={2}
                      d="m6 9 6 6 6-6"
                    />
                  </svg>
                </button>

                <div
                  id="mobile-services-menu"
                  className={`overflow-hidden transition-all duration-300 ease-out ${
                    isMobileServicesOpen ? "max-h-80 opacity-100" : "max-h-0 opacity-0"
                  }`}
                >
                  <div className="mt-1 space-y-1 rounded-2xl bg-slate-50 p-2">
                    {servicesMenuLinks.map((item) => (
                      <a
                        key={item.label}
                        href={item.href}
                        onClick={closeMenu}
                        className="block rounded-xl px-4 py-3 text-sm font-semibold text-slate-700 transition duration-200 hover:bg-white hover:text-accent"
                      >
                        {item.label}
                      </a>
                    ))}
                  </div>
                </div>
              </div>
            ) : (
              <a
                key={link.label}
                href={link.href}
                onClick={closeMenu}
                className="rounded-xl px-3 py-3 text-base font-semibold text-slate-700 transition duration-200 hover:bg-slate-50 hover:text-accent"
              >
                {link.label}
              </a>
            )
          )}

          <div className="mt-4 border-t border-slate-200 pt-4">
            <button
              type="button"
              className="flex w-full items-center justify-between rounded-xl px-3 py-3 text-base font-semibold text-slate-700 transition duration-200 hover:bg-slate-50 hover:text-accent"
              onClick={() => setIsMobileAccountOpen((open) => !open)}
              aria-expanded={isMobileAccountOpen}
              aria-controls="mobile-account-menu"
            >
              <span className="flex items-center gap-3">
                <span className="flex h-9 w-9 items-center justify-center rounded-full border border-slate-200 bg-white text-[#dfa408]">
                  <svg
                    className="h-5 w-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    aria-hidden="true"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth={2}
                      d="M15.75 7.5a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z"
                    />
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth={2}
                      d="M4.5 20.25a7.5 7.5 0 0 1 15 0"
                    />
                  </svg>
                </span>
                <span>Account</span>
              </span>

              <svg
                className={`h-4 w-4 transition duration-200 ${
                  isMobileAccountOpen ? "rotate-180 text-accent" : ""
                }`}
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
                aria-hidden="true"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="m6 9 6 6 6-6"
                />
              </svg>
            </button>

            <div
              id="mobile-account-menu"
              className={`overflow-hidden transition-all duration-300 ease-out ${
                isMobileAccountOpen ? "max-h-64 opacity-100" : "max-h-0 opacity-0"
              }`}
            >
              <div className="mt-1 space-y-1 rounded-2xl bg-slate-50 p-2">
                {accountMenuLinks.map((item) => (
                  <a
                    key={item.label}
                    href={item.href}
                    onClick={closeMenu}
                    className="block rounded-xl px-4 py-3 text-sm font-semibold text-slate-700 transition duration-200 hover:bg-white hover:text-accent"
                  >
                    {item.label}
                  </a>
                ))}
              </div>
            </div>
          </div>

          <a
            href={siteConfig.portalUrl}
            onClick={closeMenu}
            className="mt-4 inline-flex items-center justify-center rounded-full bg-accent px-5 py-3 text-sm font-bold text-primary transition duration-200 hover:bg-accent/90"
          >
            Client Portal
          </a>
        </nav>
      </div>
    </header>
  )
}

export default Navbar
