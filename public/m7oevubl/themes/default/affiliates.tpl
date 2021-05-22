{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="tabs" id="navTabs">
                        <div class="tab-item selected">推介提现</div>
                    </div>
                    <div class="table-container">
                        <div class="table-header">
                            <div class="table-tools">
                                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
                            </div>
                        </div>
                        {include file="searchform"}
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    {foreach name="titleList" item="tl"}
                                        <th class="center">{$tl}</th>
                                    {/foreach}
                                </tr>
                                </thead>
                                <tbody>
                                {foreach name="data" item="dd"}
                                    <tr>
                                        <td class="center">{$dd.id}</td>
                                        <td class="center"><a href="#">{$dd.username}</a></td>
                                        <td class="center">{$dd.visitors}</td>
                                        <td class="center">{$dd.registcount}</td>
                                        <td class="center">{$dd.payamount}</td>
                                        <td class="center">{$dd.sum}</td>
                                        <td class="center">{$dd.withdrawn}</td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        </div>
                        {include file="pageSize"}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(function() {
        $('#formSelect').bind('change', 'option', function(obj) {
            var myselect = document.getElementById("formSelect");
            var index = myselect.selectedIndex;
            // selectedIndex代表的是你所选中项的index
            var value = myselect.options[index].value;
            $('#uid').val(value);
            myselect.options[index].value = myselect.options[index].label;
        });
    })
</script>
{include file="footer"}
