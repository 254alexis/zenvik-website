<div class="zt-resource-workspace zt-download-page">
    <div class="zt-resource-header">
        <div>
            <span class="zt-resource-eyebrow">Resource Library</span>
            <h2>{lang key='downloadstitle'}</h2>
            <p>Access available customer resources, files, and product downloads.</p>
        </div>
        <a href="{routePath('announcement-index')}" class="btn btn-default zt-resource-header__action">
            <i class="far fa-newspaper fa-fw"></i>
            Announcements
        </a>
    </div>

<form role="form" method="post" action="{routePath('download-search')}" class="zt-resource-search">
    <div class="input-group input-group-lg kb-search margin-bottom">
        <input type="text" name="search" id="inputDownloadsSearch" class="form-control font-weight-light" placeholder="{lang key='downloadssearch'}" />
        <div class="input-group-append">
            <button type="submit" id="btnDownloadsSearch" class="btn btn-primary btn-input-padded-responsive">
                {lang key='search'}
            </button>
        </div>
    </div>
</form>

{if $dlcats}
    <div class="row zt-resource-category-grid">
        {foreach $dlcats as $category}
            <div class="col-xl-6">
                <div class="card kb-category mb-4 zt-resource-card">
                    <a href="{routePath('download-by-cat', {$category.id}, {$category.urlfriendlyname})}" class="card-body">
                        <span class="h5 m-0">
                            <i class="fal fa-folder fa-fw"></i>
                            {$category.name}
                            <span class="badge badge-info float-right">
                                {lang key="downloads.numDownload{if $kbcat.numarticles != 1}s{/if}" num=$category.numarticles}
                            </span>
                        </span>
                        <p class="m-0 text-muted"><small>{$category.description}</small></p>
                    </a>
                </div>
            </div>
        {/foreach}
    </div>
{else}
    <div class="zt-resource-empty">
        <i class="far fa-folder-open"></i>
        <strong>{lang key='downloadsnone'}</strong>
        <span>Available customer downloads and resource categories will appear here.</span>
    </div>
{/if}

{if $mostdownloads}
    <div class="card zt-resource-list-card">
        <div class="card-body">
            <h3 class="card-title m-0">
                <i class="fal fa-star fa-fw"></i>
                {lang key='downloadspopular'}
            </h3>
        </div>
        <div class="list-group list-group-flush">
            {foreach $mostdownloads as $download}
                <a href="{$download.link}" class="list-group-item kb-article-item zt-resource-download-item">
                    {$download.type|replace:'alt':' class="pr-1" alt'}
                    {$download.title}
                    {if $download.clientsonly}
                        <div class="float-md-right">
                            <span class="label label-danger">
                                <i class="fas fa-lock fa-fw"></i>
                                {lang key='restricted'}
                            </span>
                        </div>
                    {/if}
                    <small>
                        {$download.description}
                        <br>
                        <strong>{lang key='downloadsfilesize'}: {$download.filesize}</strong>
                    </small>
                </a>
            {/foreach}
        </div>
    </div>
{/if}
</div>
