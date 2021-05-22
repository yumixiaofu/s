{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="table-container">
                        <div class="table-header">
                            <form method="get">
                                <input name="uid" value="{$_GET['uid']}" hidden/>
                                <input name="type" hidden="hidden" value="{$type}"/>
                                <div class="table-tools">
                                    {if $type == 'station'}
                                        时间&nbsp;&nbsp;
                                        <input type="text" name="search_time" class="form-control datetime"
                                               value="" id="search_time" placeholder="选择日期">
                                        至
                                        <input type="text" name="search_time" class="form-control datetime"
                                               value="" id="search_time" placeholder="选择日期">
                                    {else}
                                        时间&nbsp;&nbsp;
                                        <input type="text" name="search_time" class="form-control datetime"
                                               value="" id="search_time" placeholder="选择日期">
                                    {/if}
                                    {if $type == 'SMS'}
                                        电话&nbsp;&nbsp;
                                        <input type="text" name="phone" class="form-control" value="" id="phone">
                                    {else}
                                        主题&nbsp;&nbsp;
                                        <input type="text" name="subject" class="form-control" value="" id="subject">
                                    {/if}
                                    <button class="btn  btn-primary" type="submit">搜索</button>
                                    <button class="btn btn-outline-secondary" type="reset">重置</button>
                                </div>
                            </form>
                            <form id="navTabsForm" action="" method="GET">
                                <input name="uid" value="{$_GET['uid']}" hidden/>
                                <input id="typeValue" name="type" hidden="hidden" value="{$type}"/>
                            </form>
                            <div class="status-filter" id="navTabs">
                                {foreach name="navTabs" item="nt"}
                                    <div class="filter-item {if $nt.name==$type}selected{/if}"
                                         data-value="{$nt.name}">{$nt.label}</div>
                                {/foreach}
                            </div>
                        </div>
                        {include file="searchform"}
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    <!-- <th class="checkbox">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheckHead"
                                                   name="headCheckbox">
                                            <label class="custom-control-label" for="customCheckHead">&nbsp;</label>
                                        </div>
                                    </th> -->
                                    {foreach name="titleList" item="tl"}
                                        <th class="center">{$tl}</th>
                                    {/foreach}
                                </tr>
                                </thead>
                                <tbody>
                                {if $data}
                                    {foreach name="data" item="dd"}
                                        <tr>
                                            <!-- <td class="checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input row-checkbox"
                                                           id="customCheck1">
                                                    <label class="custom-control-label"
                                                           for="customCheck1">&nbsp;</label>
                                                </div>
                                            </td> -->
                                            {if $type == 'station'}
                                                <td class="center">{$dd.create_time}</td>
                                                <td class="center">{$dd.title}</td>
                                                <td class="center">{$dd.username}</td>
                                                <td class="center">{$dd.read_time}</td>
                                            {else}
                                                <td class="center">{$dd.id}</td>
                                                <td class="center">{$dd.create_time}</td>
                                                {if $type == 'SMS'}
                                                    <td class="center">{$dd.new_desc}</td>{elseif $type == 'email'}
                                                    <td class="center">{$dd.subject}</td>
                                                {/if}
                                                <td class="center">{$dd.username}</td>
                                                {if $type == 'email'}
                                                    <td class="center">{$dd.phone}</td>
                                                {/if}
                                                <td class="center">{if $dd.status==1}yes{elseif $dd.status==0}no{/if}</td>
                                                <td class="center">{$dd.fail_reason}</td>
                                                <td class="center">{$dd.ip}</td>
                                            {/if}
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
    $(function () {
        var search_time = getQueryVariable('search_time');
        var phone = getQueryVariable('phone');
        var subject = getQueryVariable('subject');
        if (search_time) document.getElementById('search_time').value = search_time;
        if (phone) document.getElementById('phone').value = phone;
        if (subject) document.getElementById('subject').value = subject;
    });

</script>
{include file="footer"}