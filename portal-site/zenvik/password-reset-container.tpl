<div class="zt-auth-container">
    <div class="zt-auth-card zt-password-reset-card">
        <div class="zt-auth-header">
            <h1 class="zt-auth-title">{lang key='pwreset'}</h1>
            <p class="zt-auth-subtitle">{lang key='pwresetcomplete'}</p>
        </div>

        <div class="zt-auth-content">
            {if $loggedin && $innerTemplate}
                {include file="$template/includes/alert.tpl" type="error" msg="{lang key='noPasswordResetWhenLoggedIn'}" textcenter=true}
            {else}
                {if $successMessage}
                    {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                    <p class="zt-success-message">{$successMessage}</p>
                {else}
                    {if $innerTemplate}
                        {include file="$template/password-reset-$innerTemplate.tpl"}
                    {/if}
                {/if}
            {/if}
        </div>
    </div>
</div>
