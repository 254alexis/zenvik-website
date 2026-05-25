import { siteConfig } from "../constants/site"

function Footer() {
  return (
    <footer className="bg-dark text-white">
      <div className="mx-auto max-w-7xl px-6 py-20">
        <div className="grid gap-12 md:grid-cols-2 lg:grid-cols-4">
          <div>
            <h3 className="text-2xl font-black">
              Zenvik<span className="text-accent">.</span>
            </h3>

            <p className="mt-5 leading-relaxed text-slate-400">
              {siteConfig.positioning}
            </p>
          </div>

          <div>
            <h4 className="text-lg font-bold">Services</h4>
            <ul className="mt-5 space-y-3 text-slate-400">
              <li><a href="#hosting" className="transition hover:text-white">Hosting & Cloud</a></li>
              <li><a href="#software" className="transition hover:text-white">Software Development</a></li>
              <li><a href="#services" className="transition hover:text-white">Website Development</a></li>
              <li><a href="#services" className="transition hover:text-white">Marketing & Branding</a></li>
              <li><a href="#services" className="transition hover:text-white">ICT Services</a></li>
            </ul>
          </div>

          <div>
            <h4 className="text-lg font-bold">Company</h4>
            <ul className="mt-5 space-y-3 text-slate-400">
              <li><a href="#" className="transition hover:text-white">Home</a></li>
              <li><a href="#services" className="transition hover:text-white">Our Services</a></li>
              <li><a href="#portfolio" className="transition hover:text-white">Portfolio</a></li>
              <li><a href={siteConfig.portalUrl} className="transition hover:text-white">Client Portal</a></li>
              <li><a href="#contact" className="transition hover:text-white">Contact</a></li>
            </ul>
          </div>

          <div>
            <h4 className="text-lg font-bold">Get In Touch</h4>
            <ul className="mt-5 space-y-3 text-slate-400">
              <li><a href={`mailto:${siteConfig.email}`} className="transition hover:text-white">{siteConfig.email}</a></li>
              <li><a href={`mailto:${siteConfig.supportEmail}`} className="transition hover:text-white">{siteConfig.supportEmail}</a></li>
              <li><a href={siteConfig.portalUrl} className="transition hover:text-white">portal.zenviktechnologies.com</a></li>
            </ul>
          </div>
        </div>

        <div className="mt-16 flex flex-col gap-4 border-t border-white/10 pt-8 text-sm text-slate-500 md:flex-row md:items-center md:justify-between">
          <p>© 2026 Zenvik Technologies. All rights reserved.</p>

          <div className="flex flex-wrap gap-5">
            <a href="/privacy-policy" className="transition hover:text-white">Privacy Policy</a>
            <a href="/terms-and-conditions" className="transition hover:text-white">Terms & Conditions</a>
          </div>
        </div>
      </div>
    </footer>
  )
}

export default Footer