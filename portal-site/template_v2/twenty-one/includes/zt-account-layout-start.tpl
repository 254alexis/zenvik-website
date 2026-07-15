<div class="zt-account-area">
    <aside class="zt-account-nav" aria-label="Account navigation">
        <div class="zt-account-nav__header">
            <span>Account</span>
            <strong>Profile Settings</strong>
        </div>
        <nav class="zt-account-nav__links">
            <a href="{$WEB_ROOT}/user/profile" class="zt-account-nav__link{if $ztAccountActive == 'overview'} is-active{/if}">
                <i class="fas fa-user-circle" aria-hidden="true"></i>
                <span>Profile Overview</span>
            </a>
            <a href="{$WEB_ROOT}/user/profile" class="zt-account-nav__link{if $ztAccountActive == 'profile'} is-active{/if}">
                <i class="fas fa-id-card" aria-hidden="true"></i>
                <span>Personal Information</span>
            </a>
            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="zt-account-nav__link{if $ztAccountActive == 'details'} is-active{/if}">
                <i class="fas fa-address-card" aria-hidden="true"></i>
                <span>Account Details</span>
            </a>
            <a href="{routePath('account-contacts')}" class="zt-account-nav__link{if $ztAccountActive == 'contacts'} is-active{/if}">
                <i class="fas fa-address-book" aria-hidden="true"></i>
                <span>Contacts</span>
            </a>
            <a href="{routePath('account-users')}" class="zt-account-nav__link{if $ztAccountActive == 'users'} is-active{/if}">
                <i class="fas fa-users-cog" aria-hidden="true"></i>
                <span>User Management</span>
            </a>
            <a href="{$WEB_ROOT}/user/security" class="zt-account-nav__link{if $ztAccountActive == 'security'} is-active{/if}">
                <i class="fas fa-shield-alt" aria-hidden="true"></i>
                <span>Security</span>
            </a>
            <a href="{$WEB_ROOT}/user/password" class="zt-account-nav__link{if $ztAccountActive == 'password'} is-active{/if}">
                <i class="fas fa-key" aria-hidden="true"></i>
                <span>Change Password</span>
            </a>
            <a href="{$WEB_ROOT}/user/security" class="zt-account-nav__link{if $ztAccountActive == 'twofactor'} is-active{/if}">
                <i class="fas fa-mobile-alt" aria-hidden="true"></i>
                <span>Two-Factor Authentication</span>
            </a>
            <a href="{routePath('account-paymentmethods')}" class="zt-account-nav__link{if $ztAccountActive == 'payment'} is-active{/if}">
                <i class="fas fa-credit-card" aria-hidden="true"></i>
                <span>Payment Methods</span>
            </a>
            <a href="{$WEB_ROOT}/clientarea.php?action=emails" class="zt-account-nav__link{if $ztAccountActive == 'emails'} is-active{/if}">
                <i class="fas fa-envelope-open-text" aria-hidden="true"></i>
                <span>Email History</span>
            </a>
        </nav>
    </aside>

    <section class="zt-account-content">
        <div class="zt-account-content__header">
            <span>{$ztAccountEyebrow|default:'Account Area'}</span>
            <h1>{$ztAccountTitle|default:'Account Settings'}</h1>
            {if $ztAccountIntro}
                <p>{$ztAccountIntro}</p>
            {/if}
        </div>
