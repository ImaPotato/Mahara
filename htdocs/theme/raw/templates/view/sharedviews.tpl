{include file="header.tpl"}
{$searchform|safe}
<p class="lead mtl">{str tag=sharedviewsdescription section=view}</p>

<div class="panel panel-secondary mtl">
    <table id="sharedviewlist" class="fullwidth table">
        <thead>
            <tr>
                <th>{str tag=name}</th>
                <th class="center">{str tag=Comments section=artefact.comment}</th>
                <th>{str tag=lastcomment section=artefact.comment}</th>
            </tr>
        </thead>
        <tbody>
            {include file="view/sharedviewrows.tpl"}
        </tbody>
    </table>
</div>
{$pagination|safe}
{include file="footer.tpl"}
