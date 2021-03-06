{include file="header.tpl"}

{if !$accesslists.views && !$accesslists.collections}
    {if $ADMIN}
        <div class="panel panel-secondary">
            <div class="panel-body">
                <div class="mtxl ptxl mbxl pbxl">
                    <p class="lead  ptxl text-center ">
                         {str tag=youhaventcreatedanyviewsyet section=view}
                    </p>
                </div>
            </div>
        </div>
    {else}
    <div class="mtxl ptxl">
        <p class="lead mtxl ptxl text-center ">
             {str tag=youhaventcreatedanyviewsyet section=view}
        </p>
    </div>
    {/if}

{else}

    {if $accesslists.views && $accesslists.collections}
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active">
                <a href="#collection-tab" aria-controls="home" role="tab" data-toggle="tab">
                    {str tag=Collections section=collection}
                </a>
            </li>
            <li role="presentation">
                <a href="#pages-tab" aria-controls="profile" role="tab" data-toggle="tab">
                    {str tag=Views section=view}
                </a>
            </li>
        </ul>
        <div class="tab-content">
    {/if}
    {if $accesslists.collections}
        <div id="collection-tab" class="panel panel-secondary{if $accesslists.views} tab-pane active{/if}">
            {if !$accesslists.views}<h2 class="panel-heading">{str tag=Collections section=collection}</h2>{/if}
            <table class="fullwidth accesslists table">
                <thead>
                    <tr>
                        <th>{str tag=name section=collection}</th>
                        <th>{str tag=accesslist section=view}</th>
                        <th class="al-edit text-tiny text-center active">{str tag=editaccess section=view}</th>
                        <th class="secreturls text-tiny text-center active">{str tag=secreturls section=view}</th>
                    </tr>
                </thead>
                {foreach from=$accesslists.collections item=collection}
                    <tr class="{cycle values='r0,r1'}">
                    {include file="view/accesslistrow.tpl" item=$collection}
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
    {/if}

    {if $accesslists.views}
    <div id="pages-tab" class="panel panel-secondary{if $accesslists.collections} tab-pane{/if}">
        {if !$accesslists.collections}<h2 class="panel-heading">{str tag=Views section=view}</h2>{/if}
        <table class="fullwidth accesslists table">
            <thead>
                <tr>
                    <th>{str tag=title section=view}</th>
                    <th>{str tag=accesslist section=view}</th>
                    <th class="al-edit text-tiny text-center active">{str tag=editaccess section=view}</th>
                    <th class="secreturls text-tiny text-center active">{str tag=secreturls section=view}</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$accesslists.views item=view}
                <tr class="{cycle values='r0,r1'}">
                {include file="view/accesslistrow.tpl" item=$view}
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
    {/if}
    {if $accesslists.views && $accesslists.collections}</div>{/if}
{/if}
{include file="footer.tpl"}
