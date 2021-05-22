{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="table-container">
                        <div class="tab-content mt-4">
                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$opened_this_month}</h2>
                                            <h5>本月打开工单</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$opened_last_month}</h2>
                                            <h5>上月打开工单</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$opened_this_year}</h2>
                                            <h5>今年打开工单</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$opened_last_year}</h2>
                                            <h5>去年打开工单</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-header">
                                <div class="table-tools">
                                    <a href="#" class="btn btn-success w-sm nohide" onclick="location.href='createsupporttickets?uid={$_GET['uid']}'">
                                        <i class="fas fa-plus-circle"></i> {$btnText}
                                    </a>
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
                                    {if $data}
                                        {foreach name="data" item="dd"}
                                            <tr>
                                                <td class="center">{$dd.id}</td>
                                                <td><a href="clientssupportticketdetail?uid={$_GET['uid']}&tid={$dd.tid}">#{$dd.tid}{$dd.title}</a></td>
                                                <td class="center">{$dd.status.title}</td>
                                                <td class="center">{$dd.depart_name}</td>
                                                <td class="center">{$dd.create_time}</td>
                                                <td class="center">{$dd.last_replay}</td>
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
{include file="footer"}