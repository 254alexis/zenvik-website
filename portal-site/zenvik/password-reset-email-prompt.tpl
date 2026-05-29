<div class="mb-4">
    <h2 class="zt-form-title">{lang key='pwreset'}</h2>
    <p class="zt-form-subtitle">{lang key='pwresetemailneeded'}</p>
</div>

{if $errorMessage}
    {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
{/if}

<form method="post" action="{routePath('password-reset-validate-email')}" class="zt-auth-form" role="form">
    <input type="hidden" name="action" value="reset" />

    <div class="zt-form-group">
        <label for="inputEmail" class="zt-form-label">{lang key='loginemail'}</label>
        <div class="zt-input-icon-wrapper">
            <i class="fal fa-envelope"></i>
            <input type="email" class="zt-form-control" name="email" id="inputEmail" placeholder="name@example.com" autofocus>
        </div>
    </div>

    {if $captcha->isEnabled()}
        <div class="zt-captcha-container">
            {include file="$template/includes/captcha.tpl"}
        </div>
    {/if}

    <div class="zt-form-actions">
        <button type="submit" class="zt-btn-primary{$captcha->getButtonClass($captchaForm)}">
            {lang key='pwresetsubmit'}
        </button>
    </div>

    <div class="zt-auth-footer">
        <a href="{routePath('login')}" class="zt-auth-back-link">← {lang key='returnTo'} {lang key='loginbutton'}</a>
    </div>
</form>
