import { useEffect } from "react"

function setMetaTag(attribute, value, content) {
  const selector = `meta[${attribute}="${value}"]`
  let element = document.head.querySelector(selector)

  if (!element) {
    element = document.createElement("meta")
    element.setAttribute(attribute, value)
    document.head.appendChild(element)
  }

  element.setAttribute("content", content)
}

function setCanonicalLink(url) {
  let link = document.head.querySelector("link[rel='canonical']")

  if (!link) {
    link = document.createElement("link")
    link.setAttribute("rel", "canonical")
    document.head.appendChild(link)
  }

  link.setAttribute("href", url)
}

export default function usePageMetadata({
  title,
  description,
  canonical,
  image,
  type = "website",
}) {
  useEffect(() => {
    const previousTitle = document.title
    document.title = title

    if (description) {
      setMetaTag("name", "description", description)
      setMetaTag("property", "og:description", description)
    }

    setMetaTag("property", "og:title", title)
    setMetaTag("property", "og:type", type)
    setMetaTag("property", "og:url", canonical)

    if (image) {
      setMetaTag("property", "og:image", image)
    }

    setCanonicalLink(canonical)

    return () => {
      document.title = previousTitle
    }
  }, [title, description, canonical, image, type])
}
