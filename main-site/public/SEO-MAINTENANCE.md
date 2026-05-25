# SEO & Production Metadata Documentation

This document provides guidance on maintaining and updating SEO configurations for Zenvik Technologies.

## 📋 Files Overview

### HTML Head Metadata (`index.html`)
Contains all essential SEO metadata:
- **Title Tags**: Clear, keyword-rich page titles
- **Meta Descriptions**: 155-160 characters for optimal display
- **Open Graph Tags**: Social media preview optimization
- **Twitter Cards**: Enhanced sharing on Twitter/X
- **Structured Data (JSON-LD)**: Organization schema for search engines
- **Theme Colors**: Brand consistency across browsers
- **Canonical URL**: Prevents duplicate content issues

### Search Engine Configuration

#### `robots.txt`
- Controls search engine crawler access
- Specifies crawl delays for different bots
- References sitemap URLs
- Blocks low-quality bots (MJ12bot, AhrefsBot, SemrushBot)
- Location: `/public/robots.txt`
- **Update**: Modify robots rules as needed, update crawl-delay based on server capacity

#### `sitemap.xml`
- Provides URL structure to search engines
- Includes page importance (priority)
- Specifies update frequency
- Contains lastmod dates for cache optimization
- Location: `/public/sitemap.xml`
- **Update**: Add new pages/sections and update lastmod dates quarterly

### Progressive Web App (`site.webmanifest`)
- PWA configuration for mobile app-like experience
- Defines app name, icons, and shortcuts
- Sets theme and background colors
- Location: `/public/site.webmanifest`

### Security (`/.well-known/security.txt`)
- Security contact information
- Vulnerability disclosure guidelines
- Location: `/public/.well-known/security.txt`
- **Update**: Change expiration date annually

## 🎯 SEO Best Practices

### Current Implementation

✅ **Structured Data**: Organization schema with service areas (Kenya, Uganda, Tanzania, Rwanda)
✅ **Open Graph**: Social sharing optimization with 1200x630px image recommendations
✅ **Mobile Friendly**: Viewport meta tags and responsive design
✅ **Keywords**: Focused on hosting, software, branding, ICT solutions
✅ **Canonicalization**: Prevents duplicate content penalties
✅ **Language Tags**: Proper hreflang for international targeting

### Content Recommendations

1. **Meta Descriptions**
   - Keep between 150-160 characters
   - Include primary keyword
   - Match content on page
   - Update for each major page

2. **Page Titles**
   - Primary keyword first
   - Brand name last
   - Keep under 60 characters
   - Unique for each page

3. **Structured Data**
   - Update organization contact info when available
   - Add service-specific schemas for each offering
   - Include business hours when available
   - Add social media profiles as they grow

## 🔄 Maintenance Schedule

### Monthly
- Review Google Search Console for errors
- Monitor Core Web Vitals
- Check for crawl anomalies in robots.txt logs
- Update blog/news articles in sitemap

### Quarterly
- Update lastmod dates in sitemap.xml
- Review and update meta descriptions
- Audit title tags for keyword optimization
- Add new pages/sections to sitemap

### Annually
- Audit all OpenGraph metadata
- Update security.txt expiration
- Review canonical URLs for consistency
- Audit structured data for accuracy

## 📱 Icon/Image Assets Required

The following assets should be created and added to `/public/`:

```
public/
├── favicon.svg                 (Scalable vector icon)
├── favicon-16x16.png          (Small icon)
├── favicon-32x32.png          (Standard favicon)
├── favicon-192x192.png        (Android icon)
├── favicon-512x512.png        (Large Android icon)
├── apple-touch-icon.png       (iOS home screen - 180x180px)
├── og-image.jpg               (Social sharing - 1200x630px)
├── screenshot-540x720.png     (Mobile screenshot)
├── screenshot-1280x720.png    (Desktop screenshot)
└── site.webmanifest           (PWA manifest)
```

## 🚀 Deployment Notes

### cPanel Compatibility
- All files in `/public/` folder will be copied to web root
- robots.txt will be accessible at `/robots.txt`
- sitemap.xml will be accessible at `/sitemap.xml`
- No special server configuration needed

### Vite Build Output
- Production build maintains public folder structure
- Static assets are properly served
- Service workers can be added to enhance PWA functionality

### Domain Configuration
- Replace `zenviktechnologies.com` with actual domain
- Update canonical URLs before going live
- Update sitemap URLs to match domain
- Test all URLs are publicly accessible

## 🔍 Verification Tools

### Essential Tools
1. **Google Search Console**: Monitor indexing and search performance
2. **Google PageSpeed Insights**: Check Core Web Vitals
3. **Schema.org Validator**: Validate structured data
4. **Social Media Debuggers**: Test OG tags
5. **XML Sitemap Validator**: Verify sitemap syntax

### Command Line Testing
```bash
# Check robots.txt accessibility
curl https://zenviktechnologies.com/robots.txt

# Validate XML syntax
xmllint --noout /public/sitemap.xml

# Test meta tags in HTML
curl -I https://zenviktechnologies.com | grep -i meta
```

## 📝 Future Enhancements

- [ ] Add blog/news sitemap
- [ ] Implement dynamic sitemap generation
- [ ] Add FAQ schema markup
- [ ] Add product/service schemas
- [ ] Implement breadcrumb schema
- [ ] Add hreflang tags for language variants
- [ ] Create country-specific landing pages
- [ ] Add performance monitoring

## 📞 Support

For SEO questions or updates needed:
1. Review this documentation
2. Check Search Console for specific issues
3. Consult with development team for implementation
4. Test all changes before deployment

---
**Last Updated**: May 25, 2026
**Version**: 1.0
**Maintained By**: Development Team
