{* Notification Strip - Layer 1 of the Zenvik Portal Header *}
{if isset($ztNotificationStrip) && $ztNotificationStrip}
    <div class="zt-notification-strip" id="ztNotificationStrip" role="alert">
        <div class="zt-notification-strip__content">
            <div class="zt-notification-strip__text">
                {$ztNotificationStrip.message}
                {if isset($ztNotificationStrip.link) && $ztNotificationStrip.link}
                    <a href="{$ztNotificationStrip.link}" class="zt-notification-strip__link" target="{if isset($ztNotificationStrip.linkTarget)}{$ztNotificationStrip.linkTarget}{else}_self{/if}">
                        {if isset($ztNotificationStrip.linkText)}{$ztNotificationStrip.linkText}{else}Learn More{/if}
                    </a>
                {/if}
            </div>
            {if !isset($ztNotificationStrip.hideClose) || !$ztNotificationStrip.hideClose}
                <button class="zt-notification-strip__close" onclick="this.closest('.zt-notification-strip').classList.add('hidden')" aria-label="Close notification">
                    <i class="fas fa-times"></i>
                </button>
            {/if}
        </div>
    </div>
{/if}
