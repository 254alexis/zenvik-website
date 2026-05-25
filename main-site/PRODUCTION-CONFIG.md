# Production Configuration Guide

This document outlines the production-ready configuration for Zenvik Technologies website.

## 🔧 Environment Variables

Create a `.env.production` file in the root directory (if backend services are added later):

```env
# Production API Endpoints
VITE_API_BASE_URL=https://api.zenviktechnologies.com

# Analytics (Optional)
VITE_GOOGLE_ANALYTICS_ID=G-XXXXXXXXXX

# Feature Flags
VITE_ENABLE_ANALYTICS=true
VITE_ENABLE_NEWSLETTER=true
```

## 📦 Build Configuration

### Vite Production Build

```bash
npm run build
```

This generates:
- `/dist/` - Optimized production bundle
- Minified CSS and JavaScript
- Optimized images
- Gzipped assets

### Deployment Checklist

- [ ] All dependencies installed: `npm install`
- [ ] Build successful: `npm run build`
- [ ] No TypeScript errors: `npm run build` completes without errors
- [ ] dist/ folder contains all assets
- [ ] public/ files copied to web root
- [ ] robots.txt accessible at domain root
- [ ] sitemap.xml accessible at domain root

## 🌍 cPanel Deployment

### Prerequisites
- cPanel account with SSH access
- Public folder deployment capability

### Deployment Steps

1. **Connect to Server**
   ```bash
   ssh user@server.com
   cd public_html
   ```

2. **Upload Production Files**
   ```bash
   # Option A: Git deployment (recommended)
   git clone https://github.com/254alexis/zenvik-website.git
   cd zenvik-website/main-site
   npm install
   npm run build
   
   # Option B: Direct file upload
   # Upload dist/ contents to public_html/
   # Upload public/ files to public_html/
   ```

3. **Configure Server**
   - Ensure `.htaccess` is properly configured for SPA routing
   - Set correct permissions (755 for directories, 644 for files)
   - Enable gzip compression
   - Set cache headers for static assets

4. **Verify Deployment**
   - Test main domain: https://zenviktechnologies.com
   - Check robots.txt: https://zenviktechnologies.com/robots.txt
   - Verify sitemap: https://zenviktechnologies.com/sitemap.xml
   - Test all sections (#services, #hosting, etc.)

### .htaccess Configuration Example

```apache
# Enable compression
<IfModule mod_deflate.c>
  AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css text/javascript application/javascript
</IfModule>

# Browser caching
<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType text/html A3600
  ExpiresByType text/css A31536000
  ExpiresByType application/javascript A31536000
  ExpiresByType image/svg+xml A31536000
  ExpiresByType image/jpeg A31536000
  ExpiresByType image/png A31536000
  ExpiresByType image/gif A31536000
  ExpiresByType image/webp A31536000
</IfModule>

# SPA routing
<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteBase /
  RewriteRule ^index\.html$ - [L]
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteRule . /index.html [L]
</IfModule>
```

## 🔐 Security Headers

Add the following headers via `.htaccess` or server configuration:

```apache
# Security Headers
Header set X-Content-Type-Options "nosniff"
Header set X-Frame-Options "SAMEORIGIN"
Header set X-XSS-Protection "1; mode=block"
Header set Referrer-Policy "strict-origin-when-cross-origin"
Header set Permissions-Policy "geolocation=(), microphone=(), camera=()"
```

## 📊 Performance Optimization

### Implemented Optimizations
- ✅ Minified CSS and JavaScript via Vite
- ✅ Image optimization via build process
- ✅ Code splitting for faster page loads
- ✅ Asset fingerprinting for cache busting
- ✅ Responsive image sizing via Tailwind CSS

### Recommended Additional Steps
1. Enable gzip compression on server
2. Set appropriate cache headers
3. Consider CDN for asset delivery
4. Implement lazy loading for images
5. Monitor Core Web Vitals

## 🔍 Monitoring & Analytics

### Google Search Console Setup
1. Verify domain ownership
2. Submit sitemap.xml
3. Monitor search performance
4. Track crawl errors
5. Set up alerts

### Tools to Monitor
- Google Analytics
- Google Search Console
- Lighthouse scores
- Core Web Vitals Dashboard
- Server error logs

## 🌐 DNS & Domain Setup

### Required DNS Records
```dns
# A Record
@ -> your_server_ip

# CNAME (optional, for www)
www -> zenviktechnologies.com

# MX Records (if email needed)
mail -> mail.zenviktechnologies.com
```

### SSL Certificate
- Ensure HTTPS is enabled
- Use Let's Encrypt (free) or commercial SSL
- Force HTTPS redirects via .htaccess or server config

## 📋 Production Checklist

### Pre-Launch
- [ ] Domain purchased and configured
- [ ] SSL certificate installed
- [ ] Build tested locally: `npm run build`
- [ ] Production build size reviewed
- [ ] All environment variables set
- [ ] robots.txt and sitemap.xml verified
- [ ] Meta tags reviewed in HTML
- [ ] Mobile responsive design tested
- [ ] All links tested
- [ ] Contact form tested (when implemented)

### Post-Launch
- [ ] Monitor error logs
- [ ] Set up Google Search Console
- [ ] Set up analytics
- [ ] Test search console integration
- [ ] Monitor Core Web Vitals
- [ ] Set up monitoring alerts
- [ ] Schedule SEO audit
- [ ] Document any issues

## 🚀 Continuous Deployment

### GitHub Actions Example (Optional)

Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to Production

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
        with:
          node-version: '18'
      - run: npm install
      - run: npm run build
      - name: Deploy
        run: |
          # Deploy to your server
          # Add your deployment script here
```

## 📝 Maintenance Tasks

### Daily
- Monitor server error logs
- Check website uptime

### Weekly
- Review Google Search Console errors
- Check Core Web Vitals
- Monitor bounce rate and user engagement

### Monthly
- Audit SEO metadata
- Review performance metrics
- Update analytics reports
- Plan content updates

### Quarterly
- Full website audit
- Update dependencies
- Security assessment
- SEO optimization review

## 🆘 Troubleshooting

### Common Issues

**Issue**: Robots.txt not found
- **Solution**: Ensure file is in public/ folder and deployed to web root

**Issue**: SPA routes not working
- **Solution**: Verify .htaccess rewrite rules are enabled

**Issue**: Images not loading
- **Solution**: Check file permissions and paths

**Issue**: Slow page load
- **Solution**: Check Core Web Vitals, enable compression, review cache settings

## 📞 Support & Contacts

- **Development**: Development Team
- **Hosting**: Server Administrator
- **Domain**: Domain Registrar
- **SSL**: Certificate Provider

---
**Version**: 1.0
**Last Updated**: May 25, 2026
**Environment**: Production
