{if $warnings}
    {include file="$template/includes/alert.tpl" type="warning" msg=$warnings textcenter=true}
{/if}
<div class="zt-domain-workspace zt-domain-list-page">
    <div class="zt-domain-header">
        <div>
            <span class="zt-domain-eyebrow">Domain Workspace</span>
            <h2>My Domains</h2>
            <p>Monitor domain status, expiry dates, auto renewal, and management actions from one secure workspace.</p>
        </div>
    </div>

<div class="tab-content">
    <div class="tab-pane fade show active" id="tabOverview">
        {include file="$template/includes/tablelist.tpl" tableName="DomainsList" noSortColumns="0, 1" startOrderCol="2" filterColumn="5"}
        <script>
            jQuery(document).ready(function () {
                var table = jQuery('#tableDomainsList').show().DataTable();

                {if $orderby == 'domain'}
                    table.order(2, '{$sort}');
                {elseif $orderby == 'regdate' || $orderby == 'registrationdate'}
                    table.order(3, '{$sort}');
                {elseif $orderby == 'nextduedate'}
                    table.order(4, '{$sort}');
                {elseif $orderby == 'autorenew'}
                    table.order(5, '{$sort}');
                {elseif $orderby == 'status'}
                    table.order(6, '{$sort}');
                {/if}
                table.draw();
                jQuery('#tableLoading').hide();
            });
        </script>
        <form id="domainForm" method="post" action="clientarea.php?action=bulkdomain">
            <input id="bulkaction" name="update" type="hidden" />

            <div class="btn-group btn-group-sm mb-3 zt-domain-bulk-actions" role="group">
                <button type="button" class="btn btn-default setBulkAction" id="nameservers">
                    <i class="fal fa-globe fa-fw"></i>
                    {lang key='domainmanagens'}
                </button>
                <button type="button" class="btn btn-default setBulkAction" id="contactinfo">
                    <i class="fal fa-user"></i>
                    {lang key='domaincontactinfoedit'}
                </button>
                {if $allowrenew}
                    <button type="button" class="btn btn-default setBulkAction" id="renewDomains">
                        <i class="fal fa-sync"></i>
                        {lang key='domainmassrenew'}
                    </button>
                {/if}
                <div class="btn-group btn-group-sm" role="group">
                    <button id="btnGroupDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      {lang key="more"}...
                    </button>
                    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                      <a class="dropdown-item setBulkAction" href="#" id="autorenew"><i class="fal fa-sync"></i>
                    {lang key='domainautorenewstatus'}</a>
                      <a class="dropdown-item setBulkAction" href="#" id="reglock"><i class="fal fa-lock"></i>
                    {lang key='domainreglockstatus'}</a>
                    </div>
                  </div>
            </div>

            <div class="table-container clearfix zt-domain-table-card">
                <table id="tableDomainsList" class="table table-list w-hidden zt-domain-table">
                    <thead>
                        <tr>
                            <th class="width-fixed-20"></th>
                            <th></th>
                            <th>{lang key='orderdomain'}</th>
                            <th>{lang key='clientareahostingregdate'}</th>
                            <th>{lang key='clientareahostingnextduedate'}</th>
                            <th>{lang key='domainstatus'}</th>
                        </tr>
                    </thead>
                    <tbody>
                    {foreach $domains as $domain}
                        <tr onclick="clickableSafeRedirect(event, 'clientarea.php?action=domaindetails&amp;id={$domain.id}', false)">
                            <td data-label="Select">
                                <input type="checkbox" name="domids[]" class="domids stopEventBubble" value="{$domain.id}" />
                            </td>
                            <td class="text-center ssl-info" data-label="SSL" data-element-id="{$domain.id}" data-type="domain" data-domain="{$domain.domain}">
                                {if $domain.sslStatus}
                                    <img src="{$domain.sslStatus->getImagePath()}" width="25" data-toggle="tooltip" title="{$domain.sslStatus->getTooltipContent()}" class="{$domain.sslStatus->getClass()}" width="25">
                                {elseif !$domain.isActive}
                                    <img src="{$BASE_PATH_IMG}/ssl/ssl-inactive-domain.png" width="25" data-toggle="tooltip" title="{lang key='sslState.sslInactiveDomain'}" width="25">
                                {/if}
                            </td>
                            <td data-label="{lang key='orderdomain'}">
                                <a href="http://{$domain.domain}" target="_blank" class="zt-domain-name">{$domain.domain}</a>
                                <br>
                                <small class="zt-domain-autorenew">
                                    {if $domain.autorenew}
                                        <i class="fas fa-fw fa-check text-success"></i>
                                        {lang key='domainsautorenew'}
                                    {else}
                                        <i class="fas fa-fw fa-times text-danger"></i>
                                        {lang key='domainsautorenew'}
                                    {/if}
                                </small>
                            </td>
                            <td data-label="{lang key='clientareahostingregdate'}"><span class="w-hidden">{$domain.normalisedRegistrationDate}</span>{$domain.registrationdate}</td>
                            <td data-label="{lang key='clientareahostingnextduedate'}"><span class="w-hidden">{$domain.normalisedNextDueDate}</span>{$domain.nextduedate}</td>
                            <td data-label="{lang key='domainstatus'}">
                                <span class="label status status-{$domain.statusClass}">{$domain.statustext}</span>
                                <span class="w-hidden">
                                    {if $domain.expiringSoon}<span>{lang key="domainsExpiringSoon"}</span>{/if}
                                </span>
                            </td>
                        </tr>
                    {foreachelse}
                        <tr class="zt-domain-empty-row">
                            <td>
                                <div class="zt-domain-empty">
                                    <i class="far fa-compass"></i>
                                    <strong>No Domains Yet</strong>
                                    <span>Registered domains will appear here with status, renewal, and management options.</span>
                                    <a href="https://zenviktechnologies.com" class="btn btn-primary">Explore Domains</a>
                                </div>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
                <div class="text-center zt-domain-loading" id="tableLoading">
                    <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
                </div>
            </div>
        </form>
    </div>
</div>
</div>
