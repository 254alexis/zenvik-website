import { siteConfig } from "../constants/site"

function Footer() {
  return (
    <footer className="bg-dark text-white">
      <div className="mx-auto max-w-7xl px-6 py-20">
        <div className="grid gap-12 md:grid-cols-2 lg:grid-cols-4">
          <div>
            <img
              src="/logo.png"
              alt="Zenvik Technologies"
              className="h-16 w-auto object-contain"
              style={{ maxWidth: "280px" }}
            />

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
              <li><a href={`tel:${siteConfig.whatsapp}`} className="transition hover:text-white">+254 717 990 272</a></li>
              <li><a href={`mailto:${siteConfig.email}`} className="transition hover:text-white">{siteConfig.email}</a></li>
              <li><a href={`mailto:${siteConfig.supportEmail}`} className="transition hover:text-white">{siteConfig.supportEmail}</a></li>
              <li><a href={`mailto:${siteConfig.hostingEmail}`} className="transition hover:text-white">{siteConfig.hostingEmail}</a></li>
              <li>
                <a
                  href={`https://wa.me/${siteConfig.whatsapp.replace(/\+/g, "")}`}
                  target="_blank"
                  rel="noreferrer"
                  className="transition hover:text-white"
                >
                  WhatsApp Support
                </a>
              </li>
            </ul>

            <div className="mt-6 flex flex-wrap gap-4 text-sm text-slate-400">
              <a href={siteConfig.socials.instagram} target="_blank" rel="noreferrer" className="transition hover:text-white">Instagram</a>
              <a href={siteConfig.socials.facebook} target="_blank" rel="noreferrer" className="transition hover:text-white">Facebook</a>
              <a href={siteConfig.socials.tiktok} target="_blank" rel="noreferrer" className="transition hover:text-white">TikTok</a>
              <a href={siteConfig.socials.x} target="_blank" rel="noreferrer" className="transition hover:text-white">X</a>
              <a href={siteConfig.socials.linkedin} target="_blank" rel="noreferrer" className="transition hover:text-white">LinkedIn</a>
            </div>

            <div className="mt-6">
              <h5 className="text-sm font-bold text-white">Accepted Payments</h5>
              <div className="mt-3 flex flex-wrap gap-2 text-xs text-slate-400">
                <span className="rounded-full border border-white/10 px-3 py-1">Bank Transfer</span>
                <span className="rounded-full border border-white/10 px-3 py-1">M-Pesa</span>
                <span className="rounded-full border border-white/10 px-3 py-1">PayPal</span>
                <span className="rounded-full border border-white/10 px-3 py-1">Card Payments</span>
              </div>
            </div>
          </div>
        </div>

        <div className="mt-16 flex flex-col gap-5 border-t border-white/10 pt-8 text-sm text-slate-500 md:flex-row md:items-center md:justify-between">
          <p>
            © {siteConfig.copyrightYear} Zenvik Technologies. All rights reserved.
          </p>

          <div className="flex flex-wrap gap-5">
            <a href={siteConfig.legal.privacy} className="transition hover:text-white">Privacy Policy</a>
            <a href={siteConfig.legal.terms} className="transition hover:text-white">Terms & Conditions</a>
          </div>
        </div>
      </div>
    </footer>
  )
}

export default Footer