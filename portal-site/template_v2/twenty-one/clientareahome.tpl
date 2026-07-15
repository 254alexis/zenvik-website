{include file="$template/includes/flashmessage.tpl"}

{foreach $addons_html as $addon_html}
    <div>
        {$addon_html}
    </div>
{/foreach}

{if $captchaError}
    <div class="alert alert-danger">
        {$captchaError}
    </div>
{/if}

{function name=outputHomePanels}
    <div menuItemName="{$item->getName()}" class="zt-dashboard-panel card card-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
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
        {if $item->hasFooterHtml()}
            <div class="card-footer">
                {$item->getFooterHtml()}
            </div>
        {/if}
    </div>
{/function}

<div class="zt-dashboard">
    <section class="zt-dashboard-welcome">
        <div>
            <span class="zt-dashboard-eyebrow">Client Workspace</span>
            <h1>
                Welcome back{if $clientsdetails.firstname}, {$clientsdetails.firstname}{elseif $clientfirstname}, {$clientfirstname}{/if}
            </h1>
            <p>Your Zenvik workspace is ready. Review services, billing, support, and recent account activity from one place.</p>
        </div>
        <div class="zt-dashboard-status">
            <span class="zt-dashboard-status__dot" aria-hidden="true"></span>
            <span>
                <strong>Workspace Status</strong>
                <em>Connected and ready</em>
            </span>
        </div>
    </section>

    <section class="zt-dashboard-section">
        <div class="zt-dashboard-section__header">
            <span>Account Summary</span>
            <h2>What needs your attention</h2>
        </div>
        <div class="zt-dashboard-metrics">
            <a href="clientarea.php?action=services" class="zt-dashboard-metric">
                <span class="zt-dashboard-metric__icon"><i class="fas fa-cube" aria-hidden="true"></i></span>
                <strong>{$clientsstats.productsnumactive}</strong>
                <em>Active Services</em>
                {if !$clientsstats.productsnumactive}
                    <small>No active services yet</small>
                {/if}
            </a>
            <a href="clientarea.php?action=domains" class="zt-dashboard-metric">
                <span class="zt-dashboard-metric__icon"><i class="fas fa-globe" aria-hidden="true"></i></span>
                <strong>{$clientsstats.numactivedomains}</strong>
                <em>Active Domains</em>
                {if !$clientsstats.numactivedomains}
                    <small>No active domains</small>
                {/if}
            </a>
            <a href="supporttickets.php" class="zt-dashboard-metric">
                <span class="zt-dashboard-metric__icon"><i class="fas fa-headset" aria-hidden="true"></i></span>
                <strong>{$clientsstats.numactivetickets}</strong>
                <em>Open Support Tickets</em>
                {if !$clientsstats.numactivetickets}
                    <small>No open tickets</small>
                {/if}
            </a>
            <a href="clientarea.php?action=invoices" class="zt-dashboard-metric{if $clientsstats.numunpaidinvoices} is-attention{/if}">
                <span class="zt-dashboard-metric__icon"><i class="fas fa-credit-card" aria-hidden="true"></i></span>
                <strong>{$clientsstats.numunpaidinvoices}</strong>
                <em>Outstanding Invoices</em>
                {if !$clientsstats.numunpaidinvoices}
                    <small>Nothing outstanding</small>
                {/if}
            </a>
        </div>
    </section>

    <section class="zt-dashboard-section">
        <div class="zt-dashboard-section__header">
            <span>Quick Actions</span>
            <h2>Common tasks</h2>
        </div>
        <div class="zt-dashboard-actions">
            <a href="submitticket.php" class="zt-dashboard-action">
                <i class="fas fa-plus-circle" aria-hidden="true"></i>
                <span>Open Support Ticket</span>
            </a>
            <a href="clientarea.php?action=services" class="zt-dashboard-action">
                <i class="fas fa-server" aria-hidden="true"></i>
                <span>View My Services</span>
            </a>
            <a href="clientarea.php?action=invoices" class="zt-dashboard-action">
                <i class="fas fa-receipt" aria-hidden="true"></i>
                <span>Pay Invoice</span>
            </a>
            <a href="clientarea.php?action=domains" class="zt-dashboard-action">
                <i class="fas fa-globe-africa" aria-hidden="true"></i>
                <span>Manage Domains</span>
            </a>
            <a href="downloads.php" class="zt-dashboard-action">
                <i class="fas fa-download" aria-hidden="true"></i>
                <span>Downloads</span>
            </a>
        </div>
    </section>

    <div class="zt-dashboard-grid">
        <section class="zt-dashboard-section zt-dashboard-section--activity">
            <div class="zt-dashboard-section__header">
                <span>Recent Activity</span>
                <h2>Latest account updates</h2>
            </div>
            <div class="zt-dashboard-panels">
                {assign var=ztActivityPanels value=0}
                {foreach $panels as $item}
                    {if $item->getName() != 'Recent News' && $item->getName() != 'Announcements' && $item->getName() != 'announcements'}
                        {assign var=ztActivityPanels value=$ztActivityPanels+1}
                        {outputHomePanels}
                    {/if}
                {/foreach}
                {if !$ztActivityPanels}
                    <div class="zt-dashboard-empty">
                        <i class="fas fa-stream" aria-hidden="true"></i>
                        <strong>No recent activity</strong>
                        <span>Recent invoices, ticket updates, and service activity will appear here.</span>
                    </div>
                {/if}
            </div>
        </section>

        <section class="zt-dashboard-section zt-dashboard-section--announcements">
            <div class="zt-dashboard-section__header">
                <span>Announcements</span>
                <h2>Portal news</h2>
            </div>
            <div class="zt-dashboard-panels">
                {assign var=ztAnnouncementPanels value=0}
                {foreach $panels as $item}
                    {if $item->getName() == 'Recent News' || $item->getName() == 'Announcements' || $item->getName() == 'announcements'}
                        {assign var=ztAnnouncementPanels value=$ztAnnouncementPanels+1}
                        {outputHomePanels}
                    {/if}
                {/foreach}
                {if !$ztAnnouncementPanels}
                    <div class="zt-dashboard-empty">
                        <i class="fas fa-bullhorn" aria-hidden="true"></i>
                        <strong>No announcements</strong>
                        <span>Important Zenvik portal updates will appear here when available.</span>
                        <a href="announcements.php">Browse announcements</a>
                    </div>
                {/if}
            </div>
        </section>
    </div>
</div>
