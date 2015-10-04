{include file="header.tpl"}

<div class="panel panel-danger mtxl">
    <h2 class="panel-heading">
        {str tag="deleteviewconfirm1" section="view"}
    </h2>
    <div class="panel-body">
        <p class="lead text-small">{if $collectionnote}{$collectionnote|clean_html|safe}{/if}</p>
        <p>{if $view->get('owner')}
        {str tag="deleteviewconfirmbackup" section="view" arg1=$WWWROOT}
        {/if}</p>
        <p>{str tag="deleteviewconfirmnote1" section="view"}</p>
        {$form|safe}
    </div>
</div>

{include file="footer.tpl"}
