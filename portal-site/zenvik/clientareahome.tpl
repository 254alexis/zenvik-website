{include file="$template/includes/flashmessage.tpl"}

{* Dashboard Welcome Section *}
<section class="zt-dashboard-header mb-5">
    <div class="zt-dashboard-welcome">
        <div class="zt-welcome-content">
            <h1 class="zt-welcome-title">Welcome to Your Zenvik Client Portal</h1>
            <p class="zt-welcome-subtitle">Manage your hosting, domains, invoices, support tickets and account services from one secure dashboard.</p>
        </div>
        <div class="zt-quick-actions">
            <a href="clientarea.php?action=services" class="zt-quick-action-btn">
                <i class="fal fa-cube"></i>
                <span>Manage Services</span>
            </a>
            {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
                <a href="clientarea.php?action=domains" class="zt-quick-action-btn">
                    <i class="fal fa-globe"></i>
                    <span>Manage Domains</span>
                </a>
            {/if}
            <a href="submitticket.php" class="zt-quick-action-btn">
                <i class="fal fa-comment-alt"></i>
                <span>Open Ticket</span>
            </a>
            <a href="clientarea.php?action=invoices" class="zt-quick-action-btn">
                <i class="fal fa-file-invoice"></i>
                <span>View Invoices</span>
            </a>
        </div>
    </div>
</section>

{* Dashboard Stats Tiles *}
<div class="zt-dashboard-stats mb-4">
    <div class="row">
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=services" class="zt-stat-tile">
                <div class="zt-stat-icon zt-icon-blue">
                    <i class="fal fa-cube"></i>
                </div>
                <div class="zt-stat-body">
                    <div class="zt-stat-number">{$clientsstats.productsnumactive}</div>
                    <div class="zt-stat-label">{lang key='navservices'}</div>
                </div>
                <div class="zt-stat-arrow">
                    <i class="fal fa-arrow-right"></i>
                </div>
            </a>
        </div>
        {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=domains" class="zt-stat-tile">
                    <div class="zt-stat-icon zt-icon-green">
                        <i class="fal fa-globe"></i>
                    </div>
                    <div class="zt-stat-body">
                        <div class="zt-stat-number">{$clientsstats.numactivedomains}</div>
                        <div class="zt-stat-label">{lang key='navdomains'}</div>
                    </div>
                    <div class="zt-stat-arrow">
                        <i class="fal fa-arrow-right"></i>
                    </div>
                </a>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="col-6 col-xl-3">
                <a href="affiliates.php" class="zt-stat-tile">
                    <div class="zt-stat-icon zt-icon-green">
                        <i class="fal fa-shopping-cart"></i>
                    </div>
                    <div class="zt-stat-body">
                        <div class="zt-stat-number">{$clientsstats.numaffiliatesignups}</div>
                        <div class="zt-stat-label">{lang key='affiliatessignups'}</div>
                    </div>
                    <div class="zt-stat-arrow">
                        <i class="fal fa-arrow-right"></i>
                    </div>
                </a>
            </div>
        {else}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=quotes" class="zt-stat-tile">
                    <div class="zt-stat-icon zt-icon-green">
                        <i class="fal fa-file-alt"></i>
                    </div>
                    <div class="zt-stat-body">
                        <div class="zt-stat-number">{$clientsstats.numquotes}</div>
                        <div class="zt-stat-label">{lang key='quotes'}</div>
                    </div>
                    <div class="zt-stat-arrow">
                        <i class="fal fa-arrow-right"></i>
                    </div>
                </a>
            </div>
        {/if}
        <div class="col-6 col-xl-3">
            <a href="supporttickets.php" class="zt-stat-tile">
                <div class="zt-stat-icon zt-icon-orange">
                    <i class="fal fa-comments"></i>
                </div>
                <div class="zt-stat-body">
                    <div class="zt-stat-number">{$clientsstats.numactivetickets}</div>
                    <div class="zt-stat-label">{lang key='navtickets'}</div>
                </div>
                <div class="zt-stat-arrow">
                    <i class="fal fa-arrow-right"></i>
                </div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=invoices" class="zt-stat-tile">
                <div class="zt-stat-icon zt-icon-gold">
                    <i class="fal fa-credit-card"></i>
                </div>
                <div class="zt-stat-body">
                    <div class="zt-stat-number">{$clientsstats.numunpaidinvoices}</div>
                    <div class="zt-stat-label">{lang key='navinvoices'}</div>
                </div>
                <div class="zt-stat-arrow">
                    <i class="fal fa-arrow-right"></i>
                </div>
            </a>
        </div>
    </div>
</div>

{* Addons *}
{foreach $addons_html as $addon_html}
    <div class="zt-addon-card">
        {$addon_html}
    </div>
{/foreach}

{if $captchaError}
    <div class="alert alert-danger">
        {$captchaError}
    </div>
{/if}

<div class="client-home-cards">
    <div class="row">
        <div class="col-12">
            {function name=outputHomePanels}
                <div menuItemName="{$item->getName()}" class="card card-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                    <div class="card-header">
                        <h3 class="card-title m-0">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="float-right">
                                    <a href="{$item->getExtra('btn-link')}" class="btn btn-default bg-color-{$item->getExtra('color')} btn-xs">
                                        {if $item->getExtra('btn-icon')}<i class="{$item->getExtra('btn-icon')}"></i>{/if}
                                        {$item->getExtra('btn-text')}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="card-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="card-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
            {/function}

            {foreach $panels as $item}
                {if $item->getExtra('colspan')}
                    {outputHomePanels}
                    {assign "panels" $panels->removeChild($item->getName())}
                {/if}
            {/foreach}

        </div>
        <div class="col-md-6 col-lg-12 col-xl-6">

            {foreach $panels as $item}
                {if $item@iteration is odd}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
        <div class="col-md-6 col-lg-12 col-xl-6">

            {foreach $panels as $item}
                {if $item@iteration is even}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
    </div>
</div>
