<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}

    {* Layer 1: Notification Strip *}
    {include file="$template/includes/zt-notification-strip.tpl"}

    {* Layer 2: Floating Sticky Header *}
    <header class="zt-header">
        <div class="zt-header__container">
            
            {* LEFT SECTION: LOGO *}
            <div class="zt-header__left">
                {* Zenvik Logo - Same as main website *}
                <a href="{$WEB_ROOT}/index.php" class="zt-header__logo-link" title="Go to Portal Home">
                    <div class="zt-header__logo">
                        <img src="/logo.png" alt="Zenvik Technologies" loading="lazy" width="190" height="34">
                    </div>
                </a>
            </div>

            {* CENTER NAVIGATION *}
            <nav class="zt-header__center" aria-label="Main navigation">
                
                {* Portal Home - Only show in header when breadcrumb not visible *}
                {if !isset($breadcrumbs) || !$breadcrumbs || count($breadcrumbs) == 0}
                    <a href="{if $loggedin}{$WEB_ROOT}/clientarea.php{else}{$WEB_ROOT}/index.php{/if}" 
                       class="zt-header__nav-item{if $page == 'home' || $page == 'clientareahome'} active{/if}"
                       title="{if $loggedin}Go to Dashboard{else}Go to Portal Home{/if}">
                        Portal Home
                    </a>
                {/if}

                {* Domains Dropdown *}
                <div class="zt-header__nav-item--dropdown" 
                     onclick="this.classList.toggle('open')" 
                     onblur="this.classList.remove('open')"
                     tabindex="0"
                     role="button"
                     aria-expanded="false"
                     aria-haspopup="menu">
                    <span>Domains</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <nav class="zt-header__dropdown" role="menu" aria-label="Domains submenu">
                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="zt-header__dropdown-item" role="menuitem">
                        <span>Register Domain</span>
                    </a>
                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="zt-header__dropdown-item" role="menuitem">
                        <span>Transfer Domain</span>
                    </a>
                    <a href="{if $loggedin}{$WEB_ROOT}/clientarea.php?action=domains{else}{$WEB_ROOT}/cart.php?a=add&domain=register{/if}" class="zt-header__dropdown-item" role="menuitem">
                        <span>Search Domains</span>
                    </a>
                    <a href="{if $loggedin}{$WEB_ROOT}/clientarea.php?action=domains{else}#{/if}" class="zt-header__dropdown-item" role="menuitem"{if !$loggedin} disabled{/if}>
                        <span>Renew Domain</span>
                    </a>
                </nav>

                {* Support Link *}
                <a href="{routePath('knowledgebase')}" class="zt-header__nav-item" title="Visit Support & Knowledgebase">
                    Support
                </a>

            </nav>

            {* RIGHT SECTION: ACTIONS & USER MENU *}
            <div class="zt-header__right">
                
                {* Knowledgebase Search *}
                <form method="post" action="{routePath('knowledgebase-search')}" class="zt-header__search">
                    <div class="zt-header__search-form">
                        <input type="text" 
                               name="search" 
                               class="zt-header__search-input" 
                               placeholder="Search KB..." 
                               autocomplete="off">
                        <button type="submit" class="zt-header__search-button" title="Search Knowledgebase">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>

                {* Shopping Cart *}
                <a href="{$WEB_ROOT}/cart.php?a=view" class="zt-header__cart" title="View Shopping Cart">
                    <i class="fas fa-shopping-cart"></i>
                    {if $cartitemcount > 0}
                        <span class="zt-header__cart-badge">{$cartitemcount}</span>
                    {/if}
                </a>

                {* User Menu *}
                {if $loggedin}
                    {* Authenticated User *}
                    <button class="zt-header__user" 
                            onclick="this.classList.toggle('open'); this.blur();"
                            title="Account Menu"
                            aria-expanded="false"
                            aria-haspopup="menu">
                        <div class="zt-header__user-icon">
                            <i class="fas fa-user"></i>
                        </div>
                        <span class="zt-header__user-name">
                            Hi, {if $client.firstname}{$client.firstname|escape}{else}{$client.fullName|escape}{/if}
                        </span>
                        <i class="fas fa-chevron-down" style="font-size: 12px; margin-left: 4px;"></i>
                    </button>
                    <nav class="zt-header__user-dropdown" role="menu" aria-label="Account menu">
                        <a href="{$WEB_ROOT}/clientarea.php?action=details" class="zt-header__user-dropdown-item" role="menuitem">
                            Your Profile
                        </a>
                        <a href="{$WEB_ROOT}/logout.php" class="zt-header__user-dropdown-item" role="menuitem">
                            Logout
                        </a>
                    </nav>
                {else}
                    {* Guest User *}
                    <button class="zt-header__user" 
                            onclick="this.classList.toggle('open'); this.blur();"
                            title="Account Menu"
                            aria-expanded="false"
                            aria-haspopup="menu">
                        <div class="zt-header__user-icon">
                            <i class="fas fa-user"></i>
                        </div>
                        <i class="fas fa-chevron-down" style="font-size: 12px; margin-left: 4px;"></i>
                    </button>
                    <nav class="zt-header__user-dropdown" role="menu" aria-label="Account menu">
                        <a href="{$WEB_ROOT}/login.php" class="zt-header__user-dropdown-item" role="menuitem">
                            Sign In
                        </a>
                        <a href="{$WEB_ROOT}/register.php" class="zt-header__user-dropdown-item" role="menuitem">
                            Create Account
                        </a>
                    </nav>
                {/if}

                {* Mobile Menu Toggle (hidden on desktop) *}
                <button class="zt-header__menu-toggle" 
                        onclick="document.getElementById('ztMobileNav').classList.toggle('open')"
                        title="Toggle Menu"
                        aria-expanded="false"
                        aria-controls="ztMobileNav">
                    <i class="fas fa-bars"></i>
                </button>

            </div>

        </div>

        {* Mobile Navigation Menu *}
        <nav class="zt-header__mobile-nav" id="ztMobileNav" aria-label="Mobile navigation">
            {if !isset($breadcrumbs) || !$breadcrumbs || count($breadcrumbs) == 0}
                <a href="{if $loggedin}{$WEB_ROOT}/clientarea.php{else}{$WEB_ROOT}/index.php{/if}" 
                   class="zt-header__mobile-nav-item"
                   onclick="document.getElementById('ztMobileNav').classList.remove('open')">
                    Portal Home
                </a>
            {/if}
            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="zt-header__mobile-nav-item" onclick="document.getElementById('ztMobileNav').classList.remove('open')">
                Register Domain
            </a>
            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="zt-header__mobile-nav-item" onclick="document.getElementById('ztMobileNav').classList.remove('open')">
                Transfer Domain
            </a>
            <a href="{routePath('knowledgebase')}" class="zt-header__mobile-nav-item" onclick="document.getElementById('ztMobileNav').classList.remove('open')">
                Support
            </a>
        </nav>

    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {assign var=ztWorkspaceShell value=false}
    {if $loggedin && !$inShoppingCart && $templatefile != 'homepage'}
        {assign var=ztWorkspaceShell value=true}
    {/if}

    <section id="main-body"{if $ztWorkspaceShell} class="zt-client-workspace"{/if}>
        <div class="{if !$skipMainBodyContainer}container{/if}{if $ztWorkspaceShell} zt-client-workspace__container{/if}">
            <div class="{if $ztWorkspaceShell}zt-client-shell{else}row{/if}">

            {if $ztWorkspaceShell}
                <button type="button" class="zt-shell-mobile-toggle" data-zt-shell-toggle aria-expanded="false">
                    <i class="fas fa-bars" aria-hidden="true"></i>
                    <span>Workspace Menu</span>
                </button>

                <aside class="zt-client-sidebar" aria-label="Client workspace navigation">
                    <div class="zt-shell-brand">
                        <a href="{$WEB_ROOT}/clientarea.php" class="zt-shell-logo" aria-label="Zenvik client workspace">
                            {if $assetLogoPath}
                                <img src="{$assetLogoPath}" alt="Zenvik">
                            {else}
                                <span>Zenvik</span>
                            {/if}
                        </a>
                        <button type="button" class="zt-shell-icon-btn zt-shell-desktop-collapse" data-zt-shell-collapse aria-label="Collapse workspace sidebar">
                            <i class="fas fa-angle-left" aria-hidden="true"></i>
                        </button>
                        <button type="button" class="zt-shell-icon-btn zt-shell-mobile-close" data-zt-shell-toggle aria-label="Close workspace sidebar">
                            <i class="fas fa-times" aria-hidden="true"></i>
                        </button>
                    </div>

                    <div class="zt-support-pin-card">
                        <input type="checkbox" id="ztSupportPinToggle" class="zt-pin-visibility-toggle" aria-label="Hide Support PIN">
                        <div class="zt-support-pin-card__top">
                            <span class="zt-support-pin-card__label">Support PIN</span>
                            <span class="zt-support-pin-card__actions">
                                <label for="ztSupportPinToggle" class="zt-support-pin-card__icon" title="Hide or show Support PIN">
                                    <i class="fas fa-eye zt-pin-eye-show" aria-hidden="true"></i>
                                    <i class="fas fa-eye-slash zt-pin-eye-hide" aria-hidden="true"></i>
                                </label>
                                <button type="button" class="zt-support-pin-card__copy" data-zt-copy-pin data-pin="{$ztSupportPin|escape:'html'}" title="Copy Support PIN">
                                    <i class="fas fa-copy" aria-hidden="true"></i>
                                    <span class="sr-only">Copy PIN</span>
                                </button>
                            </span>
                        </div>
                        <strong class="zt-support-pin-card__value">
                            <span class="zt-pin-real">{$ztSupportPin|escape}</span>
                            <span class="zt-pin-mask" aria-hidden="true">******</span>
                        </strong>
                        <span class="zt-support-pin-card__copied" data-zt-copy-status>Copied</span>
                    </div>

                    <nav class="zt-shell-nav" aria-label="Client workspace">
                        <a href="{$WEB_ROOT}/clientarea.php" class="zt-shell-nav__item{if $templatefile == 'clientareahome'} is-active{/if}">
                            <i class="fas fa-tachometer-alt" aria-hidden="true"></i>
                            <span>Dashboard</span>
                        </a>
                        <a href="{$WEB_ROOT}/clientarea.php?action=services" class="zt-shell-nav__item{if $templatefile == 'clientareaproducts' || $templatefile == 'clientareaproductdetails'} is-active{/if}">
                            <i class="fas fa-server" aria-hidden="true"></i>
                            <span>My Services</span>
                        </a>
                        <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="zt-shell-nav__item{if $templatefile == 'clientareainvoices' || $templatefile == 'viewinvoice'} is-active{/if}">
                            <i class="fas fa-credit-card" aria-hidden="true"></i>
                            <span>Billing</span>
                        </a>
                        <a href="{$WEB_ROOT}/supporttickets.php" class="zt-shell-nav__item{if $templatefile == 'supportticketslist' || $templatefile == 'viewticket'} is-active{/if}">
                            <i class="fas fa-headset" aria-hidden="true"></i>
                            <span>Support</span>
                        </a>
                        <a href="{$WEB_ROOT}/clientarea.php?action=domains" class="zt-shell-nav__item{if $templatefile == 'clientareadomains' || $templatefile == 'clientareadomaindetails'} is-active{/if}">
                            <i class="fas fa-globe" aria-hidden="true"></i>
                            <span>Domains</span>
                        </a>
                        <a href="{$WEB_ROOT}/downloads.php" class="zt-shell-nav__item{if $templatefile == 'downloads' || $templatefile == 'downloadscat'} is-active{/if}">
                            <i class="fas fa-download" aria-hidden="true"></i>
                            <span>Downloads</span>
                        </a>
                        <a href="{$WEB_ROOT}/announcements.php" class="zt-shell-nav__item{if $templatefile == 'announcements' || $templatefile == 'announcement'} is-active{/if}">
                            <i class="fas fa-bullhorn" aria-hidden="true"></i>
                            <span>Announcements</span>
                        </a>
                    </nav>

                    <a href="{$WEB_ROOT}/serverstatus.php" class="zt-shell-status">
                        <span class="zt-shell-status__dot" aria-hidden="true"></span>
                        <span>
                            <strong>System Status</strong>
                            <em>All Systems Operational</em>
                        </span>
                    </a>
                </aside>
                <button type="button" class="zt-shell-backdrop" data-zt-shell-toggle aria-label="Close workspace sidebar"></button>
            {/if}

            {if !$ztWorkspaceShell && !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
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
            <div class="{if $ztWorkspaceShell}zt-shell-main{elseif !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
