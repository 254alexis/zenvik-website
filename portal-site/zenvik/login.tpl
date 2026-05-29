<div class="zt-auth-container">
    <div class="zt-auth-card zt-login-card">
        <div class="zt-auth-header">
            <h1 class="zt-auth-title">Login to Your Account</h1>
            <p class="zt-auth-subtitle">Access your hosting, domains, invoices and support services.</p>
        </div>

        <form method="post" action="{routePath('login-validate')}" class="zt-auth-form" role="form">
            <div class="zt-form-group">
                <label for="inputEmail" class="zt-form-label">{lang key='clientareaemail'}</label>
                <div class="zt-input-icon-wrapper">
                    <i class="fal fa-envelope"></i>
                    <input type="email" class="zt-form-control" name="username" id="inputEmail" placeholder="name@example.com" autofocus>
                </div>
            </div>

            <div class="zt-form-group">
                <div class="zt-form-label-row">
                    <label for="inputPassword" class="zt-form-label">{lang key='clientareapassword'}</label>
                    <a href="{routePath('password-reset-begin')}" class="zt-form-link">{lang key='forgotpw'}</a>
                </div>
                <div class="zt-input-icon-wrapper zt-input-with-toggle">
                    <i class="fal fa-lock"></i>
                    <input type="password" class="zt-form-control pw-input" name="password" id="inputPassword" placeholder="••••••••" autocomplete="off">
                    <button class="zt-toggle-password" type="button" tabindex="-1">
                        <i class="fal fa-eye"></i>
                    </button>
                </div>
            </div>

            {if $captcha->isEnabled()}
                <div class="zt-captcha-container">
                    {include file="$template/includes/captcha.tpl"}
                </div>
            {/if}

            <div class="zt-form-actions">
                <button id="login" type="submit" class="zt-btn-primary{$captcha->getButtonClass($captchaForm)}">
                    {lang key='loginbutton'}
                </button>
            </div>

            <div class="zt-form-remember">
                <label class="zt-checkbox">
                    <input type="checkbox" name="rememberme" />
                    <span>{lang key='loginrememberme'}</span>
                </label>
            </div>
        </form>

        {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}

        <div class="zt-auth-footer">
            <p class="zt-auth-footer-text">{lang key='userLogin.notRegistered'}</p>
            <a href="{$WEB_ROOT}/register.php" class="zt-auth-footer-link">{lang key='userLogin.createAccount'}</a>
        </div>
    </div>
</div>
