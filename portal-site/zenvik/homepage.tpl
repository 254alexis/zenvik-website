{* SECTION 1: HERO *}
<section class="zt-hero">
    <div class="container-fluid">
        <div class="zt-hero-content">
            <div class="zt-hero-text">
                <h1 class="zt-hero-title">Reliable Hosting. Built for Business Growth.</h1>
                <p class="zt-hero-subtitle">
                    Launch faster with secure web hosting, VPS, WordPress hosting, WooCommerce hosting, business email, domains and managed support from Zenvik Technologies.
                </p>
                <div class="zt-hero-ctas">
                    <a href="#zt-hosting-plans" class="zt-btn zt-btn-primary">
                        <i class="fal fa-rocket"></i> Explore Hosting Plans
                    </a>
                    <a href="#zt-domain-section" class="zt-btn zt-btn-outline">
                        <i class="fal fa-search"></i> Search a Domain
                    </a>
                </div>
                <div class="zt-hero-badges">
                    <div class="zt-badge-item">
                        <i class="fal fa-headset"></i>
                        <span>24/7 Support</span>
                    </div>
                    <div class="zt-badge-item">
                        <i class="fal fa-exchange"></i>
                        <span>Free Migration</span>
                    </div>
                    <div class="zt-badge-item">
                        <i class="fal fa-shield"></i>
                        <span>Secure Infrastructure</span>
                    </div>
                    <div class="zt-badge-item">
                        <i class="fal fa-envelope"></i>
                        <span>Business Email Ready</span>
                    </div>
                    <div class="zt-badge-item">
                        <i class="fal fa-certificate"></i>
                        <span>Domain & SSL Support</span>
                    </div>
                </div>
            </div>
            <div class="zt-hero-visual">
                <div class="zt-server-card">
                    <div class="zt-server-header">
                        <div class="zt-server-dot"></div>
                        <div class="zt-server-dot"></div>
                        <div class="zt-server-dot"></div>
                    </div>
                    <div class="zt-server-body">
                        <div class="zt-stat">
                            <div class="zt-stat-icon"><i class="fal fa-arrow-up"></i></div>
                            <div class="zt-stat-content">
                                <div class="zt-stat-value">99.9%</div>
                                <div class="zt-stat-label">Uptime</div>
                            </div>
                        </div>
                        <div class="zt-stat">
                            <div class="zt-stat-icon"><i class="fal fa-bolt"></i></div>
                            <div class="zt-stat-content">
                                <div class="zt-stat-value">Fast SSD</div>
                                <div class="zt-stat-label">NVMe Hosting</div>
                            </div>
                        </div>
                        <div class="zt-stat">
                            <div class="zt-stat-icon"><i class="fal fa-cog"></i></div>
                            <div class="zt-stat-content">
                                <div class="zt-stat-value">Managed</div>
                                <div class="zt-stat-label">Support</div>
                            </div>
                        </div>
                        <div class="zt-stat">
                            <div class="zt-stat-icon"><i class="fal fa-lock"></i></div>
                            <div class="zt-stat-content">
                                <div class="zt-stat-value">SSL Ready</div>
                                <div class="zt-stat-label">Certificates</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{* SECTION 2: TRUST BADGES *}
<section class="zt-trust-badges">
    <div class="container-fluid">
        <div class="zt-trust-grid">
            <div class="zt-trust-item">
                <i class="fal fa-city"></i>
                <span>Local Support</span>
            </div>
            <div class="zt-trust-item">
                <i class="fal fa-globe-americas"></i>
                <span>Global Standards</span>
            </div>
            <div class="zt-trust-item">
                <i class="fal fa-shield-alt"></i>
                <span>Secure Hosting</span>
            </div>
            <div class="zt-trust-item">
                <i class="fal fa-tachometer-alt"></i>
                <span>Fast Deployment</span>
            </div>
            <div class="zt-trust-item">
                <i class="fal fa-expand-arrows"></i>
                <span>Scalable Plans</span>
            </div>
        </div>
    </div>
</section>

{* SECTION 3: HOSTING PLANS / PRODUCT GROUPS *}
{if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
<section class="zt-hosting-plans" id="zt-hosting-plans">
    <div class="container-fluid">
        <div class="zt-section-header">
            <h2>{lang key='clientHomePanels.productsAndServices'}</h2>
            <p>Choose the perfect hosting plan for your business needs</p>
        </div>
        <div class="zt-plans-grid">
            {foreach $productGroups as $productGroup}
                <div class="zt-plan-card">
                    <div class="zt-plan-icon">
                        <i class="fal fa-cube"></i>
                    </div>
                    <h3 class="zt-plan-title">{$productGroup->name}</h3>
                    <p class="zt-plan-tagline">{$productGroup->tagline}</p>
                    <a href="{$productGroup->getRoutePath()}" class="zt-btn zt-btn-primary zt-btn-block">
                        {lang key='browseProducts'} <i class="fal fa-arrow-right"></i>
                    </a>
                </div>
            {/foreach}

            {if $registerdomainenabled}
                <div class="zt-plan-card">
                    <div class="zt-plan-icon">
                        <i class="fal fa-globe"></i>
                    </div>
                    <h3 class="zt-plan-title">{lang key='orderregisterdomain'}</h3>
                    <p class="zt-plan-tagline">{lang key='secureYourDomain'}</p>
                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="zt-btn zt-btn-primary zt-btn-block">
                        {lang key='navdomainsearch'} <i class="fal fa-arrow-right"></i>
                    </a>
                </div>
            {/if}

            {if $transferdomainenabled}
                <div class="zt-plan-card">
                    <div class="zt-plan-icon">
                        <i class="fal fa-exchange"></i>
                    </div>
                    <h3 class="zt-plan-title">{lang key='transferYourDomain'}</h3>
                    <p class="zt-plan-tagline">{lang key='transferExtend'}</p>
                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="zt-btn zt-btn-primary zt-btn-block">
                        {lang key='transferYourDomain'} <i class="fal fa-arrow-right"></i>
                    </a>
                </div>
            {/if}
        </div>
    </div>
</section>
{/if}

{* SECTION 4: DOMAIN SEARCH *}
<section class="zt-domain-section" id="zt-domain-section">
    <div class="container-fluid">
        <div class="zt-domain-content">
            <div class="zt-domain-text">
                <h2>Find and secure your perfect domain name.</h2>
                <p>Search, register, transfer and protect your business domain with SSL and professional hosting support.</p>
                <div class="zt-domain-ctas">
                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="zt-btn zt-btn-primary">
                        <i class="fal fa-plus"></i> Register Domain
                    </a>
                    {if $transferdomainenabled}
                        <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="zt-btn zt-btn-secondary">
                            <i class="fal fa-exchange"></i> Transfer Domain
                        </a>
                    {/if}
                    <a href="https://whois.zenviktechnologies.com" target="_blank" class="zt-btn zt-btn-outline">
                        <i class="fal fa-search"></i> WHOIS Lookup
                    </a>
                </div>
            </div>
            <div class="zt-domain-visual">
                <div class="zt-domain-card">
                    <div class="zt-domain-card-top">
                        <i class="fal fa-globe"></i>
                    </div>
                    <div class="zt-domain-card-body">
                        <div class="zt-domain-example">zenvik.technologies</div>
                        <div class="zt-domain-available">Available for registration</div>
                        <div class="zt-domain-price">
                            <span class="zt-price">$9.99</span>
                            <span class="zt-period">/year</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{* SECTION 5: WHY CHOOSE ZENVIK *}
<section class="zt-why-choose">
    <div class="container-fluid">
        <div class="zt-section-header">
            <h2>Why Choose Zenvik?</h2>
            <p>Reasons businesses trust us for their hosting needs</p>
        </div>
        <div class="zt-features-grid">
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-bolt"></i>
                </div>
                <h3>Fast Hosting Performance</h3>
                <p>Lightning-fast LiteSpeed servers with NVMe SSD storage for optimal website performance and SEO rankings.</p>
            </div>
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-shield-alt"></i>
                </div>
                <h3>Secure Infrastructure</h3>
                <p>Advanced security features, SSL certificates, firewalls, and regular backups to protect your business data.</p>
            </div>
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-headset"></i>
                </div>
                <h3>24/7 Support</h3>
                <p>Responsive support team available round-the-clock to help with technical issues and questions.</p>
            </div>
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-exchange"></i>
                </div>
                <h3>Free Website Migration</h3>
                <p>Our team handles the technical migration process, moving your website with zero downtime.</p>
            </div>
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-envelope"></i>
                </div>
                <h3>Business Email Ready</h3>
                <p>Professional email hosting integrated with your domain for seamless business communications.</p>
            </div>
            <div class="zt-feature-card">
                <div class="zt-feature-icon">
                    <i class="fal fa-expand-arrows"></i>
                </div>
                <h3>Scalable for Growth</h3>
                <p>Start small and scale up as your business grows with flexible, upgrade-friendly hosting plans.</p>
            </div>
        </div>
    </div>
</section>

{* SECTION 6: HOSTING FEATURES *}
<section class="zt-hosting-features">
    <div class="container-fluid">
        <div class="zt-section-header">
            <h2>Powerful Hosting Features</h2>
            <p>Everything you need to run a successful online business</p>
        </div>
        <div class="zt-features-list">
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>LiteSpeed-Ready Hosting</h4>
                    <p>High-performance web server technology for faster page loads</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>SSL Certificate Support</h4>
                    <p>Free and paid SSL options to secure your website and customer data</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>cPanel Management</h4>
                    <p>Industry-standard control panel for easy server and account management</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>Email Hosting</h4>
                    <p>Professional business email with your own domain name</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>Daily/Regular Backups</h4>
                    <p>Automated backup routines to protect your important data</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>Malware & Security Support</h4>
                    <p>Regular security scans and support for malware removal</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>Domain Management</h4>
                    <p>Easy DNS management and domain control from your account</p>
                </div>
            </div>
            <div class="zt-feature-item">
                <div class="zt-feature-check"><i class="fal fa-check"></i></div>
                <div>
                    <h4>Developer-Friendly Setup</h4>
                    <p>Support for PHP, Node.js, Python, and modern development tools</p>
                </div>
            </div>
        </div>
    </div>
</section>

{* SECTION 7: VPS / CLOUD HIGHLIGHT *}
<section class="zt-vps-highlight">
    <div class="container-fluid">
        <div class="zt-vps-content">
            <div class="zt-vps-text">
                <h2>Need more power? Scale with VPS and managed cloud hosting.</h2>
                <p>For growing websites, applications, agencies and businesses that need more control, security and performance.</p>
                <ul class="zt-vps-features">
                    <li><i class="fal fa-check"></i> <span>Managed VPS options</span></li>
                    <li><i class="fal fa-check"></i> <span>Scalable resources</span></li>
                    <li><i class="fal fa-check"></i> <span>Server setup support</span></li>
                    <li><i class="fal fa-check"></i> <span>cPanel/WHM options</span></li>
                    <li><i class="fal fa-check"></i> <span>Suitable for business systems and SaaS applications</span></li>
                </ul>
                <a href="#zt-hosting-plans" class="zt-btn zt-btn-secondary">
                    <i class="fal fa-cloud"></i> View VPS Hosting
                </a>
            </div>
            <div class="zt-vps-visual">
                <div class="zt-vps-card">
                    <div class="zt-vps-card-header">
                        <i class="fal fa-server"></i>
                        <span>Cloud Server</span>
                    </div>
                    <div class="zt-vps-card-stats">
                        <div class="zt-vps-stat">
                            <span class="zt-vps-stat-icon"><i class="fal fa-microchip"></i></span>
                            <span>Dedicated CPU</span>
                        </div>
                        <div class="zt-vps-stat">
                            <span class="zt-vps-stat-icon"><i class="fal fa-memory"></i></span>
                            <span>Flexible RAM</span>
                        </div>
                        <div class="zt-vps-stat">
                            <span class="zt-vps-stat-icon"><i class="fal fa-hdd"></i></span>
                            <span>SSD Storage</span>
                        </div>
                        <div class="zt-vps-stat">
                            <span class="zt-vps-stat-icon"><i class="fal fa-network-wired"></i></span>
                            <span>Dedicated IP</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{* SECTION 8: MIGRATION SECTION *}
<section class="zt-migration">
    <div class="container-fluid">
        <div class="zt-migration-content">
            <div class="zt-migration-visual">
                <div class="zt-migration-graphic">
                    <div class="zt-migration-box">
                        <i class="fal fa-code"></i>
                        <span>Your Current Host</span>
                    </div>
                    <div class="zt-migration-arrow">
                        <i class="fal fa-arrow-right"></i>
                    </div>
                    <div class="zt-migration-box zt-migration-box-zenvik">
                        <i class="fal fa-cloud"></i>
                        <span>Zenvik</span>
                    </div>
                </div>
            </div>
            <div class="zt-migration-text">
                <h2>Move to Zenvik without the technical stress.</h2>
                <p>Our team helps businesses migrate websites, emails and hosting environments with minimal disruption.</p>
                <ul class="zt-migration-list">
                    <li><i class="fal fa-check"></i> <span>Website migration</span></li>
                    <li><i class="fal fa-check"></i> <span>Email migration guidance</span></li>
                    <li><i class="fal fa-check"></i> <span>DNS support</span></li>
                    <li><i class="fal fa-check"></i> <span>SSL setup</span></li>
                    <li><i class="fal fa-check"></i> <span>cPanel support</span></li>
                </ul>
                <a href="submitticket.php" class="zt-btn zt-btn-primary">
                    <i class="fal fa-paper-plane"></i> Request Migration Help
                </a>
            </div>
        </div>
    </div>
</section>

{* SECTION 9: SUPPORT / HELP SECTION *}
<section class="zt-support-section">
    <div class="container-fluid">
        <div class="zt-section-header">
            <h2>{lang key='howCanWeHelp'}</h2>
            <p>Access resources and support channels</p>
        </div>
        <div class="zt-support-grid">
            <a href="{routePath('announcement-index')}" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-bullhorn"></i>
                </div>
                <h3>{lang key='announcementstitle'}</h3>
                <p>Latest news and announcements from Zenvik</p>
            </a>
            <a href="serverstatus.php" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-server"></i>
                </div>
                <h3>{lang key='networkstatustitle'}</h3>
                <p>Check server status and uptime</p>
            </a>
            <a href="{routePath('knowledgebase-index')}" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-book"></i>
                </div>
                <h3>{lang key='knowledgebasetitle'}</h3>
                <p>Browse helpful articles and guides</p>
            </a>
            <a href="{routePath('download-index')}" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-download"></i>
                </div>
                <h3>{lang key='downloadstitle'}</h3>
                <p>Download tools and resources</p>
            </a>
            <a href="submitticket.php" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-life-ring"></i>
                </div>
                <h3>{lang key='homepage.submitTicket'}</h3>
                <p>Open a support ticket</p>
            </a>
            <a href="clientarea.php" class="zt-support-card">
                <div class="zt-support-icon">
                    <i class="fal fa-user-circle"></i>
                </div>
                <h3>Client Area</h3>
                <p>Access your account and services</p>
            </a>
        </div>
    </div>
</section>

{* SECTION 10: FINAL CTA *}
<section class="zt-final-cta">
    <div class="container-fluid">
        <div class="zt-cta-content">
            <h2>Ready to host your website with Zenvik?</h2>
            <p>Choose reliable hosting, secure your domain and manage your services from one professional portal.</p>
            <div class="zt-cta-buttons">
                <a href="#zt-hosting-plans" class="zt-btn zt-btn-light">
                    <i class="fal fa-rocket"></i> Get Started
                </a>
                <a href="submitticket.php" class="zt-btn zt-btn-outline-light">
                    <i class="fal fa-comments"></i> Contact Support
                </a>
            </div>
        </div>
    </div>
</section>

{* SECTION 11: ACCOUNT SHORTCUTS *}
<section class="zt-account-shortcuts">
    <div class="container-fluid">
        <div class="zt-section-header">
            <h2>{lang key='homepage.yourAccount'}</h2>
            <p>Quick access to your account and services</p>
        </div>
        <div class="zt-shortcuts-grid">
            <a href="clientarea.php" class="zt-shortcut-card">
                <div class="zt-shortcut-icon">
                    <i class="fal fa-home"></i>
                </div>
                <h3>{lang key='homepage.yourAccount'}</h3>
                <p>View dashboard</p>
            </a>
            <a href="clientarea.php?action=services" class="zt-shortcut-card">
                <div class="zt-shortcut-icon">
                    <i class="far fa-cubes"></i>
                </div>
                <h3>{lang key='homepage.manageServices'}</h3>
                <p>Manage services</p>
            </a>
            {if $registerdomainenabled || $transferdomainenabled || $numberOfDomains}
                <a href="clientarea.php?action=domains" class="zt-shortcut-card">
                    <div class="zt-shortcut-icon">
                        <i class="fal fa-globe"></i>
                    </div>
                    <h3>{lang key='homepage.manageDomains'}</h3>
                    <p>Manage domains</p>
                </a>
            {/if}
            <a href="supporttickets.php" class="zt-shortcut-card">
                <div class="zt-shortcut-icon">
                    <i class="fal fa-comments"></i>
                </div>
                <h3>{lang key='homepage.supportRequests'}</h3>
                <p>Support tickets</p>
            </a>
            <a href="clientarea.php?action=masspay&all=true" class="zt-shortcut-card">
                <div class="zt-shortcut-icon">
                    <i class="fal fa-credit-card"></i>
                </div>
                <h3>{lang key='homepage.makeAPayment'}</h3>
                <p>Make a payment</p>
            </a>
        </div>
    </div>
</section>
