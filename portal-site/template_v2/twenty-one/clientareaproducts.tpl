{include file="$template/includes/tablelist.tpl" tableName="ServicesList" filterColumn="4" noSortColumns="0"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableServicesList').show().DataTable();

        {if $orderby == 'product'}
            table.order([1, '{$sort}'], [4, 'asc']);
        {elseif $orderby == 'amount' || $orderby == 'billingcycle'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'nextduedate'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'domainstatus'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="zt-services-workspace">
    <section class="zt-services-header">
        <div>
            <span class="zt-services-eyebrow">My Services</span>
            <h1>Service Management</h1>
            <p>Review active services, billing cycles, status, and available actions.</p>
        </div>
        <div class="zt-services-total">
            <span>{$clientsstats.productsnumactive}</span>
            <strong>Active Services</strong>
        </div>
    </section>

    <section class="zt-services-list">
        <div class="zt-services-list__header">
            <div>
                <span>Service Overview</span>
                <h2>Your services</h2>
            </div>
            <a href="submitticket.php" class="zt-services-support">
                <i class="fas fa-headset" aria-hidden="true"></i>
                <span>Open Support</span>
            </a>
        </div>

        <div class="table-container clearfix zt-services-table-wrap">
            <table id="tableServicesList" class="table table-list zt-services-table w-hidden">
                <thead>
                    <tr>
                        <th></th>
                        <th>{lang key='orderproduct'}</th>
                        <th>{lang key='clientareaaddonpricing'}</th>
                        <th>{lang key='clientareahostingnextduedate'}</th>
                        <th>{lang key='clientareastatus'}</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $services as $service}
                        <tr class="zt-service-row" onclick="clickableSafeRedirect(event, 'clientarea.php?action=productdetails&amp;id={$service.id}', false)">
                            <td class="zt-service-ssl{if $service.sslStatus} ssl-info{/if}" data-element-id="{$service.id}" data-type="service"{if $service.domain} data-domain="{$service.domain}"{/if}>
                                {if $service.sslStatus}
                                    <img src="{$service.sslStatus->getImagePath()}" data-toggle="tooltip" title="{$service.sslStatus->getTooltipContent()}" class="{$service.sslStatus->getClass()}" width="25">
                                {elseif !$service.isActive}
                                    <img src="{$BASE_PATH_IMG}/ssl/ssl-inactive-domain.png" data-toggle="tooltip" title="{lang key='sslState.sslInactiveService'}" width="25">
                                {else}
                                    <span class="zt-service-ssl__placeholder"><i class="fas fa-check" aria-hidden="true"></i></span>
                                {/if}
                            </td>
                            <td class="zt-service-primary">
                                <div class="zt-service-title">
                                    <strong>{$service.product}</strong>
                                    {if $service.domain}
                                        <a href="http://{$service.domain}" target="_blank" onclick="event.stopPropagation()">{$service.domain}</a>
                                    {else}
                                        <span>No domain attached</span>
                                    {/if}
                                </div>
                            </td>
                            <td class="zt-service-billing" data-order="{$service.amountnum}">
                                <span>{$service.amount}</span>
                                <small>{$service.billingcycle}</small>
                            </td>
                            <td class="zt-service-date">
                                <span class="w-hidden">{$service.normalisedNextDueDate}</span>
                                <strong>{$service.nextduedate}</strong>
                                <small>{lang key='clientareahostingnextduedate'}</small>
                            </td>
                            <td class="zt-service-status-cell">
                                <span class="zt-service-status zt-service-status--{$service.status|strtolower}">{$service.statustext}</span>
                                <a href="clientarea.php?action=productdetails&amp;id={$service.id}" class="zt-service-manage" onclick="event.stopPropagation()">
                                    <span>Manage</span>
                                    <i class="fas fa-arrow-right" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    {foreachelse}
                        <tr class="zt-service-empty-row">
                            <td colspan="5">
                                <div class="zt-services-empty">
                                    <i class="fas fa-server" aria-hidden="true"></i>
                                    <strong>No services yet</strong>
                                    <span>Your active Zenvik services will appear here after purchase or activation.</span>
                                    <a href="cart.php">Browse Services</a>
                                </div>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
            <div class="text-center zt-services-loading" id="tableLoading">
                <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
            </div>
        </div>
    </section>
</div>
