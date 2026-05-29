<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body class="primary-bg-color zt-body" data-phone-cc-input="{$phoneNumberInputStyle}">
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}

    <header id="header" class="zt-header">
        <div class="zt-header-bar">
            <div class="container zt-header-inner d-flex align-items-center justify-content-between">
                <a class="zt-logo" href="{$WEB_ROOT}/index.php">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}">
                    {else}
                        {$companyname}
                    {/if}
                </a>

                <nav class="zt-desktop-nav d-none d-xl-flex align-items-center">
                    <div class="zt-nav-item zt-dropdown">
                        <a class="zt-nav-link" href="{$WEB_ROOT}/index.php">Services</a>
                        <div class="zt-mega-menu">
                            <div class="zt-mega-menu-column">
                                <h4>Core Technology</h4>
                                <a href="{$WEB_ROOT}/index.php">All Services</a>
                                <a href="https://zenviktechnologies.com/software-development">Software Development</a>
                                <a href="https://zenviktechnologies.com/website-development">Website Development</a>
                                <a href="https://zenviktechnologies.com/api-development">API Development & Integrations</a>
                                <a href="https://zenviktechnologies.com/automation-systems">Automation Systems</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>Digital Growth</h4>
                                <a href="https://zenviktechnologies.com/marketing-branding">Marketing & Branding</a>
                                <a href="https://zenviktechnologies.com/seo-services">SEO Services</a>
                                <a href="https://zenviktechnologies.com/social-media-marketing">Social Media Marketing</a>
                                <a href="https://zenviktechnologies.com/paid-advertising">Paid Advertising</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>ICT & Infrastructure</h4>
                                <a href="https://zenviktechnologies.com/ict-services">ICT Services</a>
                                <a href="https://zenviktechnologies.com/networking">Networking</a>
                                <a href="https://zenviktechnologies.com/cybersecurity">Cybersecurity</a>
                                <a href="https://zenviktechnologies.com/server-management">Server Management</a>
                            </div>
                            <div class="zt-mega-menu-column zt-mega-cta">
                                <p class="zt-cta-label">Need a complete business technology partner?</p>
                                <p class="zt-cta-copy">Zenvik combines hosting, software, websites, branding and ICT support under one ecosystem.</p>
                                <a href="https://zenviktechnologies.com/services" class="zt-btn zt-btn-secondary zt-btn-block">Explore All Services</a>
                            </div>
                        </div>
                    </div>
                    <div class="zt-nav-item zt-dropdown">
                        <a class="zt-nav-link" href="{$WEB_ROOT}/index.php">Hosting</a>
                        <div class="zt-mega-menu">
                            <div class="zt-mega-menu-column">
                                <h4>Shared & Website Hosting</h4>
                                <a href="https://zenviktechnologies.com/web-hosting">Web Hosting</a>
                                <a href="https://zenviktechnologies.com/wordpress-hosting">WordPress Hosting</a>
                                <a href="https://zenviktechnologies.com/woocommerce-hosting">Hosting for WooCommerce</a>
                                <a href="https://zenviktechnologies.com/email-hosting">Email Hosting</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>Cloud & Server Hosting</h4>
                                <a href="https://zenviktechnologies.com/vps-hosting">VPS Hosting</a>
                                <a href="https://zenviktechnologies.com/managed-vps">Managed VPS</a>
                                <a href="https://zenviktechnologies.com/cloud-hosting">Cloud Hosting</a>
                                <a href="https://zenviktechnologies.com/supabase-hosting">Supabase Hosting</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>Business Hosting</h4>
                                <a href="https://zenviktechnologies.com/business-hosting">Business Hosting</a>
                                <a href="https://zenviktechnologies.com/agency-hosting">Agency Hosting</a>
                                <a href="https://zenviktechnologies.com/enterprise-hosting">Enterprise Hosting</a>
                                <a href="https://zenviktechnologies.com/website-migration">Website Migration</a>
                            </div>
                            <div class="zt-mega-menu-column zt-mega-cta">
                                <p class="zt-cta-label">Reliable hosting built for growth</p>
                                <p class="zt-cta-copy">Fast, secure and professionally managed hosting for businesses, developers and agencies.</p>
                                <a href="https://zenviktechnologies.com/hosting" class="zt-btn zt-btn-secondary zt-btn-block">View Hosting Plans</a>
                                <a href="{$WEB_ROOT}/supporttickets.php?action=open" class="zt-link-secondary">Talk to Hosting Support</a>
                            </div>
                        </div>
                    </div>
                    <div class="zt-nav-item zt-dropdown">
                        <a class="zt-nav-link" href="{$WEB_ROOT}/domain-pricing.php">Domains</a>
                        <div class="zt-mega-menu zt-mega-menu--small">
                            <div class="zt-mega-menu-column">
                                <h4>Domains</h4>
                                <a href="{$WEB_ROOT}/domainchecker.php">Buy Domain</a>
                                <a href="{$WEB_ROOT}/domaintransfer.php">Transfer Domain</a>
                                <a href="{$WEB_ROOT}/domain-pricing.php">Domain Prices</a>
                                <a href="{$WEB_ROOT}/whois.php">WHOIS Lookup</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>Security</h4>
                                <a href="{$WEB_ROOT}/configuressl.php">SSL Certificates</a>
                                <a href="https://zenviktechnologies.com/domain-protection">Domain Protection</a>
                                <a href="https://zenviktechnologies.com/business-email">Business Email</a>
                            </div>
                            <div class="zt-mega-menu-column zt-mega-cta">
                                <p class="zt-cta-label">Find your perfect domain</p>
                                <p class="zt-cta-copy">Register, transfer and secure your domain through Zenvik.</p>
                                <a href="{$WEB_ROOT}/domainchecker.php" class="zt-btn zt-btn-secondary zt-btn-block">Search Domain</a>
                            </div>
                        </div>
                    </div>
                    <div class="zt-nav-item zt-dropdown">
                        <a class="zt-nav-link" href="{$WEB_ROOT}/store/affiliates.php">Reseller</a>
                        <div class="zt-mega-menu zt-mega-menu--small">
                            <div class="zt-mega-menu-column">
                                <h4>Reseller Programs</h4>
                                <a href="{$WEB_ROOT}/store/affiliates.php">Domain Resellers</a>
                                <a href="{$WEB_ROOT}/store/affiliates.php">Web Hosting Reseller</a>
                                <a href="{$WEB_ROOT}/store/affiliates.php">LiteSpeed Hosting Reseller</a>
                                <a href="{$WEB_ROOT}/store/affiliates.php">VPS Reseller</a>
                            </div>
                            <div class="zt-mega-menu-column">
                                <h4>Partner Growth</h4>
                                <a href="https://zenviktechnologies.com/affiliate-program">Affiliates</a>
                                <a href="https://zenviktechnologies.com/agency-partner-program">Agency Partner Program</a>
                                <a href="https://zenviktechnologies.com/white-label-hosting">White Label Hosting</a>
                                <a href="https://zenviktechnologies.com/bulk-domain-management">Bulk Domain Management</a>
                            </div>
                            <div class="zt-mega-menu-column zt-mega-cta">
                                <p class="zt-cta-label">Start your own hosting business</p>
                                <p class="zt-cta-copy">Launch a hosting, domain or agency reseller business with Zenvik infrastructure.</p>
                                <a href="https://zenviktechnologies.com/reseller-program" class="zt-btn zt-btn-secondary zt-btn-block">Explore Reseller Options</a>
                            </div>
                        </div>
                    </div>
                    <div class="zt-nav-item">
                        <a class="zt-nav-link" href="{$WEB_ROOT}/supporttickets.php?action=open">Support</a>
                        <div class="zt-submenu">
                            <a href="{$WEB_ROOT}/knowledgebase.php">Knowledgebase</a>
                            <a href="{$WEB_ROOT}/serverstatus.php">Network Status</a>
                            <a href="{$WEB_ROOT}/announcements.php">Announcements</a>
                            <a href="{$WEB_ROOT}/downloads.php">Downloads</a>
                            <a href="{$WEB_ROOT}/supporttickets.php?action=open">Open Ticket</a>
                            <a href="{$WEB_ROOT}/contact.php">Contact Support</a>
                        </div>
                    </div>
                </nav>

                <div class="zt-header-tools d-flex align-items-center ml-auto">
                    {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        <button type="button" class="zt-btn zt-btn-outline zt-btn-sm mr-2" data-toggle="modal" data-target="#modalChooseLanguage">
                            <span class="d-inline-flex align-items-center">
                                <span class="iti-flag {if $activeLocale.countryCode === '001'}us{else}{$activeLocale.countryCode|lower}{/if} mr-2"></span>
                                {$activeLocale.localisedName}/{$activeCurrency.code}
                            </span>
                        </button>
                    {/if}

                    <a class="zt-icon-btn mr-2" href="{$WEB_ROOT}/cart.php?a=view" aria-label="{lang key='carttitle'}">
                        <i class="far fa-shopping-cart"></i>
                        <span class="zt-badge">{$cartitemcount}</span>
                    </a>

                    {if $loggedin}
                        <div class="zt-account-group d-flex align-items-center">
                            <button type="button" class="zt-icon-btn zt-notify-btn mr-2" data-toggle="popover" id="accountNotifications" data-placement="bottom" aria-label="{lang key='notifications'}">
                                <i class="far fa-flag"></i>
                                {if count($clientAlerts) > 0}
                                    <span class="zt-badge zt-badge-notify">{count($clientAlerts)}</span>
                                {/if}
                            </button>
                            <div id="accountNotificationsContent" class="w-hidden">
                                <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                                </ul>
                            </div>
                            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="zt-btn zt-btn-outline mr-2">
                                {if $client.companyname}
                                    {$client.companyname}
                                {else}
                                    {$client.fullName}
                                {/if}
                            </a>
                            {if $adminMasqueradingAsClient || $adminLoggedIn}
                                <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="zt-btn zt-btn-secondary">
                                    <i class="fas fa-redo-alt mr-1"></i>
                                    {if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'}{else}{lang key='adminloggedin'}{/if}
                                </a>
                            {/if}
                        </div>
                    {else}
                        <a class="zt-btn zt-btn-outline mr-2 d-none d-lg-inline-flex" href="{$WEB_ROOT}/login.php">{lang key='login'}</a>
                        <a class="zt-btn zt-btn-primary" href="{$WEB_ROOT}/clientarea.php">Client Area</a>
                    {/if}
                </div>

                <button class="zt-hamburger d-xl-none" type="button" data-toggle="collapse" data-target="#ztMobileMenu" aria-controls="ztMobileMenu" aria-expanded="false" aria-label="Toggle mobile menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </div>

        <div class="collapse zt-mobile-menu" id="ztMobileMenu">
            <div class="zt-mobile-panel container">
                <div class="zt-mobile-header d-flex align-items-center justify-content-between">
                    {if $loggedin}
                        <div class="zt-mobile-account">
                            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="zt-mobile-account-link">
                                {if $client.companyname}{$client.companyname}{else}{$client.fullName}{/if}
                            </a>
                            <a href="{$WEB_ROOT}/supporttickets.php?action=open" class="zt-mobile-secondary-link">{lang key='support'}</a>
                        </div>
                    {else}
                        <div class="zt-mobile-account">
                            <a href="{$WEB_ROOT}/login.php" class="zt-btn zt-btn-outline zt-btn-sm mr-2">{lang key='login'}</a>
                            <a href="{$WEB_ROOT}/clientarea.php" class="zt-btn zt-btn-primary zt-btn-sm">Client Area</a>
                        </div>
                    {/if}
                    <a class="zt-icon-btn" href="{$WEB_ROOT}/cart.php?a=view" aria-label="{lang key='carttitle'}">
                        <i class="far fa-shopping-cart"></i>
                        <span class="zt-badge">{$cartitemcount}</span>
                    </a>
                </div>

                <div class="zt-mobile-sections">
                    <div class="zt-mobile-section">
                        <button class="zt-mobile-toggle" type="button" data-toggle="collapse" data-target="#ztMobileServices" aria-expanded="false">
                            Services
                            <span class="zt-toggle-icon"></span>
                        </button>
                        <div id="ztMobileServices" class="collapse zt-mobile-collapse">
                            <a href="{$WEB_ROOT}/index.php">All Services</a>
                            <a href="https://zenviktechnologies.com/software-development">Software Development</a>
                            <a href="https://zenviktechnologies.com/website-development">Website Development</a>
                            <a href="https://zenviktechnologies.com/marketing-branding">Marketing & Branding</a>
                            <a href="https://zenviktechnologies.com/ict-services">ICT Services</a>
                        </div>
                    </div>
                    <div class="zt-mobile-section">
                        <button class="zt-mobile-toggle" type="button" data-toggle="collapse" data-target="#ztMobileHosting" aria-expanded="false">
                            Hosting
                            <span class="zt-toggle-icon"></span>
                        </button>
                        <div id="ztMobileHosting" class="collapse zt-mobile-collapse">
                            <a href="https://zenviktechnologies.com/web-hosting">Web Hosting</a>
                            <a href="https://zenviktechnologies.com/vps-hosting">VPS Hosting</a>
                            <a href="https://zenviktechnologies.com/woocommerce-hosting">Hosting for WooCommerce</a>
                            <a href="https://zenviktechnologies.com/supabase-hosting">Supabase Hosting</a>
                            <a href="https://zenviktechnologies.com/wordpress-hosting">WordPress Hosting</a>
                            <a href="https://zenviktechnologies.com/email-hosting">Email Hosting</a>
                        </div>
                    </div>
                    <div class="zt-mobile-section">
                        <button class="zt-mobile-toggle" type="button" data-toggle="collapse" data-target="#ztMobileDomains" aria-expanded="false">
                            Domains
                            <span class="zt-toggle-icon"></span>
                        </button>
                        <div id="ztMobileDomains" class="collapse zt-mobile-collapse">
                            <a href="{$WEB_ROOT}/domainchecker.php">Buy Domain</a>
                            <a href="{$WEB_ROOT}/domaintransfer.php">Transfer Domain</a>
                            <a href="{$WEB_ROOT}/configuressl.php">SSL Certificate</a>
                            <a href="{$WEB_ROOT}/domain-pricing.php">Domain Prices</a>
                            <a href="{$WEB_ROOT}/whois.php">WHOIS Lookup</a>
                        </div>
                    </div>
                    <div class="zt-mobile-section">
                        <button class="zt-mobile-toggle" type="button" data-toggle="collapse" data-target="#ztMobileReseller" aria-expanded="false">
                            Reseller
                            <span class="zt-toggle-icon"></span>
                        </button>
                        <div id="ztMobileReseller" class="collapse zt-mobile-collapse">
                            <a href="{$WEB_ROOT}/store/affiliates.php">Domain Resellers</a>
                            <a href="{$WEB_ROOT}/store/affiliates.php">Web Hosting Reseller</a>
                            <a href="{$WEB_ROOT}/store/affiliates.php">LiteSpeed Hosting Reseller</a>
                            <a href="{$WEB_ROOT}/store/affiliates.php">VPS Reseller</a>
                            <a href="https://zenviktechnologies.com/affiliate-program">Affiliates</a>
                        </div>
                    </div>
                    <div class="zt-mobile-section">
                        <button class="zt-mobile-toggle" type="button" data-toggle="collapse" data-target="#ztMobileSupport" aria-expanded="false">
                            Support
                            <span class="zt-toggle-icon"></span>
                        </button>
                        <div id="ztMobileSupport" class="collapse zt-mobile-collapse">
                            <a href="{$WEB_ROOT}/knowledgebase.php">Knowledgebase</a>
                            <a href="{$WEB_ROOT}/serverstatus.php">Network Status</a>
                            <a href="{$WEB_ROOT}/announcements.php">Announcements</a>
                            <a href="{$WEB_ROOT}/downloads.php">Downloads</a>
                            <a href="{$WEB_ROOT}/supporttickets.php?action=open">Open Ticket</a>
                            <a href="{$WEB_ROOT}/contact.php">Contact Support</a>
                        </div>
                    </div>

                    {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        <button type="button" class="zt-btn zt-btn-outline zt-btn-block mt-3" data-toggle="modal" data-target="#modalChooseLanguage">
                            Change Language / Currency
                        </button>
                    {/if}
                </div>
            </div>
        </div>
    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
