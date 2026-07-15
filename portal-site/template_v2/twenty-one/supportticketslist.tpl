{include file="$template/includes/tablelist.tpl" tableName="TicketsList" filterColumn="2"}

<script>
    jQuery(document).ready(function () {
        var table = jQuery('#tableTicketsList').show().DataTable();
        {if $orderby == 'did' || $orderby == 'dept'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'subject' || $orderby == 'title'}
            table.order(1, '{$sort}');
        {elseif $orderby == 'status'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'lastreply'}
            table.order(3, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="zt-support-center zt-ticket-list-page">
    <div class="zt-support-header">
        <div>
            <span class="zt-support-eyebrow">Support Center</span>
            <h2>My Tickets</h2>
            <p>Track requests, review replies, and continue conversations with the Zenvik support team.</p>
        </div>
        <a href="submitticket.php" class="btn btn-primary zt-support-header__action">
            <i class="fas fa-plus fa-fw"></i>
            Open Ticket
        </a>
    </div>

    <div class="table-container clearfix zt-support-table-card">
        <table id="tableTicketsList" class="table table-list w-hidden zt-support-table">
            <thead>
                <tr>
                    <th>{lang key='supportticketsdepartment'}</th>
                    <th>{lang key='supportticketssubject'}</th>
                    <th>{lang key='supportticketsstatus'}</th>
                    <th>{lang key='supportticketsticketlastupdated'}</th>
                </tr>
            </thead>
            <tbody>
                {foreach $tickets as $ticket}
                    <tr onclick="window.location='viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}'">
                        <td data-label="{lang key='supportticketsdepartment'}">
                            <span class="zt-ticket-department">{$ticket.department}</span>
                        </td>
                        <td data-label="{lang key='supportticketssubject'}">
                            <a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}" class="border-left zt-ticket-subject-link">
                                <span class="ticket-number">#{$ticket.tid}</span>
                                <span class="ticket-subject{if $ticket.unread} unread{/if}">{$ticket.subject}</span>
                            </a>
                        </td>
                        <td data-label="{lang key='supportticketsstatus'}">
                            <span class="label status {if is_null($ticket.statusColor)}status-{$ticket.statusClass}"{else}status-custom" style="background-color:{$ticket.statusColor}"{/if}>
                                {$ticket.status|strip_tags}
                            </span>
                        </td>
                        <td class="text-center" data-label="{lang key='supportticketsticketlastupdated'}">
                            <span class="w-hidden">{$ticket.normalisedLastReply}</span>
                            {$ticket.lastreply}
                        </td>
                    </tr>
                {foreachelse}
                    <tr class="zt-support-empty-row">
                        <td>
                            <div class="zt-support-empty">
                                <i class="far fa-life-ring"></i>
                                <strong>No Support Tickets Yet</strong>
                                <span>When you open a request, it will appear here with its latest status.</span>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
        <div class="text-center zt-support-loading" id="tableLoading">
            <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
        </div>
    </div>
</div>
