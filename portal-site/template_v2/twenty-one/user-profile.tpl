{include file="$template/includes/flashmessage.tpl"}

{assign var=ztAccountActive value='overview'}
{assign var=ztAccountTitle value='Profile Overview'}
{assign var=ztAccountIntro value='Manage your personal profile and account identity from one secure place.'}
{include file="$template/includes/zt-account-layout-start.tpl"}

<div class="zt-account-overview">
    <div class="zt-account-overview__identity">
        <span class="zt-account-overview__avatar" aria-hidden="true">
            <i class="fas fa-user" aria-hidden="true"></i>
        </span>
        <div>
            <span>Customer Profile</span>
            <strong>{$user->firstName} {$user->lastName}</strong>
            <em>{$user->email}</em>
        </div>
    </div>
    <dl class="zt-account-overview__details">
        {if $clientsdetails.userid}
            <div>
                <dt>Customer ID</dt>
                <dd>#{$clientsdetails.userid}</dd>
            </div>
        {/if}
        {if $clientsdetails.companyname}
            <div>
                <dt>Company</dt>
                <dd>{$clientsdetails.companyname}</dd>
            </div>
        {/if}
        {if $clientsdetails.status}
            <div>
                <dt>Status</dt>
                <dd>{$clientsdetails.status}</dd>
            </div>
        {/if}
        {if $clientsdetails.datecreated}
            <div>
                <dt>Registered</dt>
                <dd>{$clientsdetails.datecreated}</dd>
            </div>
        {/if}
        <div>
            <dt>Support PIN</dt>
            <dd>{if $ztSupportPin}{$ztSupportPin|escape}{else}Not Set{/if}</dd>
        </div>
    </dl>
</div>

<div class="card">
    <div class="card-body">
        <h3 class="card-title">{lang key='userProfile.profile'}</h3>

        <form method="post" action="{routePath('user-profile-save')}">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputFirstName" class="col-form-label">
                            {lang key='clientareafirstname'}
                        </label>
                        <input
                            type="text"
                            name="firstname"
                            id="inputFirstName"
                            value="{$user->firstName}"
                            class="form-control"
                            {if in_array('firstname', $uneditableFields)}disabled="disabled"{/if}
                        >
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputLastName" class="col-form-label">
                            {lang key='clientarealastname'}
                        </label>
                        <input
                            type="text"
                            name="lastname"
                            id="inputLastName"
                            value="{$user->lastName}"
                            class="form-control"
                            {if in_array('lastname', $uneditableFields)}disabled="disabled"{/if}
                        >
                    </div>
                </div>
            </div>
            <input class="btn btn-primary" id="btnSaveNameChanges" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
            <input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
        </form>

    </div>
</div>

<div class="card">
    <div class="card-body">
        <h3 class="card-title">{lang key='userProfile.changeEmail'}</h3>

        <p>
            {if $user->needsToCompleteEmailVerification()}
                <span class="label label-default">{lang key='userProfile.notVerified'}</span>
            {elseif $user->emailVerified()}
                <span class="label label-success">{lang key='userProfile.verified'}</span>
            {/if}
        </p>

        <form method="post" action="{routePath('user-profile-email-save')}">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputEmail" class="col-form-label">
                            {lang key='clientareaemail'}
                        </label>
                        <input
                            type="email"
                            name="email"
                            id="inputEmail"
                            value="{$user->email}"
                            class="form-control"
                            {if in_array('email', $uneditableFields)}disabled="disabled"{/if}
                        >
                    </div>

                    {if !in_array('email', $uneditableFields)}
                        <div class="form-group">
                            <label for="emailChangePasswordConfirmation" class="col-form-label">
                                {lang key='existingpassword'}
                            </label>
                            <input
                                type="password"
                                name="existing_password"
                                id="emailChangePasswordConfirmation"
                                class="form-control"
                            >
                        </div>
                    {/if}
                </div>
            </div>
            <input class="btn btn-primary" id="btnSaveEmailChanges" type="submit" name="save" value="{lang key='clientareasavechanges'}" />
            <input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
        </form>

    </div>
</div>

{include file="$template/includes/zt-account-layout-end.tpl"}
