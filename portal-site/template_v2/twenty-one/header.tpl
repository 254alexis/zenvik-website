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

    <header id="header" class="header">
        {if $loggedin}
            <div class="topbar">
                <div class="container">
                    <div class="d-flex">
                        <div class="mr-auto">
                            <button type="button" class="btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                                <i class="far fa-flag"></i>
                                {if count($clientAlerts) > 0}
                                    {count($clientAlerts)}
                                    <span class="d-none d-sm-inline">{lang key='notifications'}</span>
                                {else}
                                    <span class="d-sm-none">0</span>
                                    <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
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
                        </div>

                        <div class="ml-auto">
                            <div class="input-group active-client" role="group">
                                <div class="input-group-prepend d-none d-md-inline">
                                    <span class="input-group-text">{lang key='loggedInAs'}:</span>
                                </div>
                                <div class="btn-group">
                                    <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-active-client">
                                        <span>
                                            {if $client.companyname}
                                                {$client.companyname}
                                            {else}
                                                {$client.fullName}
                                            {/if}
                                        </span>
                                    </a>
                                    <a href="{routePath('user-accounts')}" class="btn" data-toggle="tooltip" data-placement="bottom" title="Switch Account">
                                        <i class="fad fa-random"></i>
                                    </a>
                                    {if $adminMasqueradingAsClient || $adminLoggedIn}
                                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                            <i class="fas fa-redo-alt"></i>
                                            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                        </a>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {/if}

        <div class="navbar navbar-light">
            <div class="container">
                <a class="navbar-brand mr-3" href="{$WEB_ROOT}/index.php">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}" class="logo-img">
                    {else}
                        {$companyname}
                    {/if}
                </a>

                <form method="post" action="{routePath('knowledgebase-search')}" class="form-inline ml-auto">
                    <div class="input-group search d-none d-xl-flex">
                        <div class="input-group-prepend">
                            <button class="btn btn-default" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                        <input class="form-control appended-form-control font-weight-light" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                    </div>
                </form>

                <ul class="navbar-nav toolbar">
                    <li class="nav-item ml-3">
                        <a class="btn nav-link cart-btn" href="{$WEB_ROOT}/cart.php?a=view">
                            <i class="far fa-shopping-cart fa-fw"></i>
                            <span id="cartItemCount" class="badge badge-info">{$cartitemcount}</span>
                            <span class="sr-only">{lang key="carttitle"}</span>
                        </a>
                    </li>
                    <li class="nav-item ml-3 d-xl-none">
                        <button class="btn nav-link" type="button" data-toggle="collapse" data-target="#mainNavbar">
                            <span class="fas fa-bars fa-fw"></span>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar navbar-expand-xl main-navbar-wrapper">
            <div class="container">
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <form method="post" action="{routePath('knowledgebase-search')}" class="d-xl-none">
                        <div class="input-group search w-100 mb-2">
                            <div class="input-group-prepend">
                                <button class="btn btn-default" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                            <input class="form-control prepended-form-control" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                        </div>
                    </form>
                    <ul id="nav" class="navbar-nav mr-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    </ul>
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
                            <i class="fas fa-th-large" aria-hidden="true"></i>
                            <span>Workspace</span>
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
