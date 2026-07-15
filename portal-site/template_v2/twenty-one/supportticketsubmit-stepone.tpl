<div class="zt-support-center zt-support-home">
    <div class="zt-support-header">
        <div>
            <span class="zt-support-eyebrow">Support Center</span>
            <h2>{lang key="createNewSupportRequest"}</h2>
            <p>{lang key='supportticketsheader'}</p>
        </div>
    </div>

    <div class="zt-support-action-grid">
        <a href="submitticket.php" class="zt-support-action-panel">
            <i class="fas fa-ticket-alt"></i>
            <span>Open Ticket</span>
        </a>
        <a href="supporttickets.php" class="zt-support-action-panel">
            <i class="fas fa-inbox"></i>
            <span>My Tickets</span>
        </a>
        <a href="knowledgebase.php" class="zt-support-action-panel">
            <i class="fas fa-book-open"></i>
            <span>{lang key='knowledgebasetitle'}</span>
        </a>
        <a href="downloads.php" class="zt-support-action-panel">
            <i class="fas fa-download"></i>
            <span>{lang key='downloadstitle'}</span>
        </a>
        <a href="serverstatus.php" class="zt-support-action-panel">
            <i class="fas fa-signal"></i>
            <span>{lang key='serverstatustitle'}</span>
        </a>
        <a href="contact.php" class="zt-support-action-panel">
            <i class="fas fa-envelope"></i>
            <span>{lang key='contactus'}</span>
        </a>
    </div>

    <div class="card zt-support-form-card">
        <div class="card-body extra-padding">

            <div class="mb-4">
                <h3 class="card-title">Choose a Support Department</h3>
                <p class="text-muted mb-0">{lang key='supportticketsheader'}</p>
            </div>

            <div class="zt-support-department-grid">
                {foreach $departments as $num => $department}
                    <a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}" class="zt-support-department">
                        <span class="zt-support-department__icon">
                            <i class="fas fa-envelope"></i>
                        </span>
                        <span class="zt-support-department__body">
                            <strong>{$department.name}</strong>
                            {if $department.description}
                                <small>{$department.description}</small>
                            {/if}
                        </span>
                        <i class="fas fa-arrow-right zt-support-department__arrow"></i>
                    </a>
                {foreachelse}
                    <div class="zt-support-empty">
                        <i class="far fa-life-ring"></i>
                        <strong>{lang key='nosupportdepartments'}</strong>
                    </div>
                {/foreach}
            </div>

        </div>
    </div>
</div>
