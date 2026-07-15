{include file="$template/includes/tablelist.tpl" tableName="InvoicesList" filterColumn="4"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableInvoicesList').show().DataTable();

        {if $orderby == 'default'}
            table.order([4, 'desc'], [2, 'asc']);
        {elseif $orderby == 'invoicenum'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'date'}
            table.order(1, '{$sort}');
        {elseif $orderby == 'duedate'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'total'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'status'}
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
            <h1>My Invoices</h1>
            <p>Review invoice status, due dates, totals, and payment activity.</p>
        </div>
        <a href="clientarea.php?action=masspay&all=true" class="zt-billing-header__action">
            <i class="fas fa-credit-card" aria-hidden="true"></i>
            <span>Mass Payment</span>
        </a>
    </section>

    <section class="zt-billing-list">
        <div class="zt-billing-list__header">
            <div>
                <span>Invoice List</span>
                <h2>Billing records</h2>
            </div>
        </div>

        <div class="table-container clearfix zt-billing-table-wrap">
            <table id="tableInvoicesList" class="table table-list zt-billing-table w-hidden">
                <thead>
                    <tr>
                        <th>{lang key='invoicestitle'}</th>
                        <th>{lang key='invoicesdatecreated'}</th>
                        <th>{lang key='invoicesdatedue'}</th>
                        <th>{lang key='invoicestotal'}</th>
                        <th>{lang key='invoicesstatus'}</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $invoices as $invoice}
                        <tr class="zt-billing-row" onclick="clickableSafeRedirect(event, 'viewinvoice.php?id={$invoice.id}', false)">
                            <td class="zt-billing-primary">
                                <strong>{$invoice.invoicenum}</strong>
                                <small>{lang key='invoicestitle'}</small>
                            </td>
                            <td>
                                <span class="w-hidden">{$invoice.normalisedDateCreated}</span>
                                <strong>{$invoice.datecreated}</strong>
                                <small>{lang key='invoicesdatecreated'}</small>
                            </td>
                            <td>
                                <span class="w-hidden">{$invoice.normalisedDateDue}</span>
                                <strong>{$invoice.datedue}</strong>
                                <small>{lang key='invoicesdatedue'}</small>
                            </td>
                            <td data-order="{$invoice.totalnum}">
                                <strong>{$invoice.total}</strong>
                                <small>{lang key='invoicestotal'}</small>
                            </td>
                            <td>
                                <span class="zt-billing-status zt-billing-status--{$invoice.statusClass}">{$invoice.status}</span>
                            </td>
                        </tr>
                    {foreachelse}
                        <tr class="zt-billing-empty-row">
                            <td colspan="5">
                                <div class="zt-billing-empty">
                                    <i class="fas fa-file-invoice-dollar" aria-hidden="true"></i>
                                    <strong>No invoices found</strong>
                                    <span>Your invoices and payment history will appear here when available.</span>
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
