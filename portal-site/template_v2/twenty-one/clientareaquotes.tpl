{include file="$template/includes/tablelist.tpl" tableName="QuotesList"  noSortColumns="5" filterColumn="4"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableQuotesList').show().DataTable();

        {if $orderby == 'id'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'date'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'validuntil'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'stage'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="zt-billing-workspace">
    <section class="zt-billing-header">
        <div>
            <span class="zt-billing-eyebrow">Billing Workspace</span>
            <h1>Quotes</h1>
            <p>Review proposals, validity dates, current stages, and downloads.</p>
        </div>
    </section>

    <section class="zt-billing-list">
        <div class="zt-billing-list__header">
            <div>
                <span>Quote List</span>
                <h2>Available quotes</h2>
            </div>
        </div>

        <div class="table-container clearfix zt-billing-table-wrap">
            <table id="tableQuotesList" class="table table-list zt-billing-table w-hidden">
                <thead>
                    <tr>
                        <th>{lang key='quotenumber'}</th>
                        <th>{lang key='quotesubject'}</th>
                        <th>{lang key='quotedatecreated'}</th>
                        <th>{lang key='quotevaliduntil'}</th>
                        <th>{lang key='quotestage'}</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $quotes as $quote}
                        <tr class="zt-billing-row" onclick="clickableSafeRedirect(event, 'viewquote.php?id={$quote.id}', true)">
                            <td class="zt-billing-primary"><strong>#{$quote.id}</strong><small>{lang key='quotenumber'}</small></td>
                            <td><strong>{$quote.subject}</strong><small>{lang key='quotesubject'}</small></td>
                            <td><span class="w-hidden">{$quote.normalisedDateCreated}</span><strong>{$quote.datecreated}</strong><small>{lang key='quotedatecreated'}</small></td>
                            <td><span class="w-hidden">{$quote.normalisedValidUntil}</span><strong>{$quote.validuntil}</strong><small>{lang key='quotevaliduntil'}</small></td>
                            <td><span class="zt-billing-status zt-billing-status--{$quote.stageClass}">{$quote.stage}</span></td>
                            <td class="zt-billing-action-cell">
                                <form method="post" action="dl.php" onclick="event.stopPropagation()">
                                    <input type="hidden" name="type" value="q" />
                                    <input type="hidden" name="id" value="{$quote.id}" />
                                    <button type="submit" class="zt-billing-row-action"><i class="fas fa-download"></i> {lang key='quotedownload'}</button>
                                </form>
                            </td>
                        </tr>
                    {foreachelse}
                        <tr class="zt-billing-empty-row">
                            <td colspan="6">
                                <div class="zt-billing-empty">
                                    <i class="fas fa-file-signature" aria-hidden="true"></i>
                                    <strong>No quotes found</strong>
                                    <span>Quotes and proposals will appear here when available.</span>
                                </div>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
            <div class="text-center zt-billing-loading" id="tableLoading">
                <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
            </div>
        </div>
    </section>
</div>
