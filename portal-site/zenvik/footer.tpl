                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-lg-none sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <footer id="footer" class="zt-footer">
        <div class="container">
            <div class="zt-footer-grid">
                <div class="zt-footer-brand">
                    <div class="zt-footer-logo-box">
                        {if $assetLogoPath}
                            <img src="{$assetLogoPath}" alt="{$companyname}">
                        {else}
                            <span class="zt-footer-logo-text">{$companyname}</span>
                        {/if}
                    </div>
                    <p class="zt-footer-copy">A full-service ICT and digital solutions company offering hosting, cloud, software, websites, branding and ICT infrastructure solutions.</p>
                    <div class="zt-footer-social mt-3">
                        {include file="$template/includes/social-accounts.tpl"}
                    </div>
                </div>
                <div class="zt-footer-column">
                    <h3>Hosting</h3>
                    <a href="https://zenviktechnologies.com/web-hosting">Web Hosting</a>
                    <a href="https://zenviktechnologies.com/wordpress-hosting">WordPress Hosting</a>
                    <a href="https://zenviktechnologies.com/woocommerce-hosting">WooCommerce Hosting</a>
                    <a href="https://zenviktechnologies.com/vps-hosting">VPS Hosting</a>
                    <a href="https://zenviktechnologies.com/email-hosting">Email Hosting</a>
                    <a href="https://zenviktechnologies.com/reseller-hosting">Reseller Hosting</a>
                </div>
                <div class="zt-footer-column">
                    <h3>Company</h3>
                    <a href="https://zenviktechnologies.com">Main Website</a>
                    <a href="https://zenviktechnologies.com/services">All Services</a>
                    <a href="{$WEB_ROOT}/clientarea.php">Client Area</a>
                    <a href="{$WEB_ROOT}/knowledgebase.php">Knowledgebase</a>
                    <a href="{$WEB_ROOT}/contact.php">Contact Support</a>
                </div>
                <div class="zt-footer-column">
                    <h3>Contact</h3>
                    <a href="tel:+254717990272">+254 717 990 272</a>
                    <a href="mailto:info@zenviktechnologies.com">info@zenviktechnologies.com</a>
                    <a href="mailto:support@zenviktechnologies.com">support@zenviktechnologies.com</a>
                    <a href="mailto:hosting@zenviktechnologies.com">hosting@zenviktechnologies.com</a>
                    <a href="https://wa.me/254717990272" target="_blank" rel="noopener">WhatsApp Support</a>
                </div>
            </div>

            <div class="zt-footer-bottom d-flex flex-column flex-md-row align-items-center justify-content-between pt-5 mt-4 border-top">
                <div class="zt-footer-bottom-links d-flex flex-wrap align-items-center gap-3">
                    <a href="{$WEB_ROOT}/privacy.php">Privacy Policy</a>
                    {if $acceptTOS}
                        <a href="{$tosURL}" target="_blank">Terms &amp; Conditions</a>
                    {/if}
                    {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        <button type="button" class="zt-btn zt-btn-outline zt-btn-sm" data-toggle="modal" data-target="#modalChooseLanguage">
                            <span class="iti-flag {if $activeLocale.countryCode === '001'}us{else}{$activeLocale.countryCode|lower}{/if}"></span>
                            {$activeLocale.localisedName}/{$activeCurrency.code}
                        </button>
                    {/if}
                </div>
                <p class="zt-footer-bottom-copy mb-0 mt-3 mt-md-0">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
            </div>
        </div>
    </footer>

    <a href="https://wa.me/254717990272" class="zt-whatsapp-float" target="_blank" rel="noopener">
        <i class="fab fa-whatsapp"></i>
        WhatsApp Support
    </a>

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                                <input type="hidden" name="language" data-current="{$language}" value="{$language}" />
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" data-current="{$activeCurrency.id}" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}

</body>
</html>
