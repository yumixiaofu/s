{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="table-container">
                        <form method="get">
                            <input name="uid" value="{$_GET['uid']}" hidden />
                            <div class="table-header">
                                <div class="table-tools">
                                    时间&nbsp;&nbsp;
                                    <input type="text" name="search_time" class="form-control datetime"
                                           value="" id="search_time" placeholder="选择日期">
                                    描述&nbsp;&nbsp;
                                    <input type="text" name="search_desc" class="form-control" value="" id="search_desc">
                                    IP地址&nbsp;&nbsp;
                                    <input type="text" name="search_ip" class="form-control" value="" id="search_ip">
                                    <button class="btn  btn-primary" type="submit">搜索</button>
                                    <button class="btn btn-outline-secondary" type="reset">重置</button>
                                </div>
                            </div>
                        </form>
                        {include file="searchform"}
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    <th class="checkbox">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheckHead"
                                                   name="headCheckbox">
                                            <label class="custom-control-label" for="customCheckHead">&nbsp;</label>
                                        </div>
                                    </th>
                                    {foreach name="titleList" item="tl"}
                                        <th class="center">{$tl}</th>
                                    {/foreach}
                                </tr>
                                </thead>
                                <tbody>
                                {if $data}
                                    {foreach name="data" item="dd"}
                                        <tr>
                                            <td class="checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input row-checkbox"
                                                           id="customCheck1">
                                                    <label class="custom-control-label" for="customCheck1">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td class="center">{$dd.id}</td>
                                            <td class="center">{$dd.create_time}</td>
                                            <td class="center">{$dd.description}</td>
                                            <td class="center">{$dd.user}</td>
                                            <td class="center">{$dd.ipaddr}</td>
                                        </tr>
                                    {/foreach}
                                {else}
                                    <tr>
                                        <td colspan="11" rowspan="3" class="center">暂无数据</td>
                                    </tr>
                                {/if}
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
    $(function(){
        var search_time = getQueryVariable('search_time');
        var search_desc = getQueryVariable('search_desc');
        var search_ip = getQueryVariable('search_ip');
        document.getElementById('search_time').value = search_time ? search_time : '';
        document.getElementById('search_desc').value = search_desc ? search_desc : '';
        document.getElementById('search_ip').value = search_ip ? search_ip : '';
    });

</script>
{include file="footer"}