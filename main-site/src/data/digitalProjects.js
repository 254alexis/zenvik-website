export const digitalProjectCategories = [
  { id: "all", label: "All Projects" },
  { id: "business-websites", label: "Business Websites" },
  { id: "e-commerce", label: "E-commerce" },
  { id: "custom-software", label: "Custom Software" },
  { id: "mobile-applications", label: "Mobile Applications" },
  { id: "ai-solutions", label: "AI Solutions" },
]

// Presentation-ready project schema. This module can be replaced by an API
// response without changing the Featured Projects component.
export const digitalProjects = [
  {
    id: "property-management-platform",
    title: "Property Management Platform",
    industry: "Real Estate",
    category: "custom-software",
    projectType: "Custom Software",
    description: "A connected property operations platform for landlords, tenants, payments, maintenance, and reporting.",
    technologies: ["Laravel", "React", "MySQL"],
    media: { type: "illustration", source: null, alt: "Property management platform interface preview" },
    links: { project: "/contact", caseStudy: null, github: null },
    preview: "property",
  },
  {
    id: "corporate-business-website",
    title: "Corporate Business Website",
    industry: "Professional Services",
    category: "business-websites",
    projectType: "Business Website",
    description: "A modern corporate experience focused on brand credibility, customer engagement, and lead generation.",
    technologies: ["React", "PHP", "Cloudflare"],
    media: { type: "illustration", source: null, alt: "Corporate business website interface preview" },
    links: { project: "/contact", caseStudy: null, github: null },
    preview: "website",
  },
  {
    id: "ai-automation-platform",
    title: "AI Automation Platform",
    industry: "Business Operations",
    category: "ai-solutions",
    projectType: "AI Solution",
    description: "An intelligent workflow platform designed to streamline repetitive operations and customer engagement.",
    technologies: ["OpenAI", "Node.js", "React"],
    media: { type: "illustration", source: null, alt: "AI automation workflow platform preview" },
    links: { project: "/contact", caseStudy: null, github: null },
    preview: "automation",
  },
]
