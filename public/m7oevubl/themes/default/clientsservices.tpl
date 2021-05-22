{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="table-container">
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <caption>
                                    <div class="action">
                                        <button type="button" class="btn btn-primary btn-sm" onclick="getSelectedRow()">续费</button>
                                        <button type="button" class="btn btn-danger btn-sm" onclick="getSelectedRow()">批量删除</button>
                                    </div>
                                </caption>
                                <thead class="thead-light">
                                <tr>
                                    <th class="checkbox">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="selectAll">
                                            <label class="custom-control-label" for="selectAll">&nbsp;</label>
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
                                                <input type="checkbox" class="custom-control-input row-checkbox" id="{$dd.hid}">
                                                <label class="custom-control-label" for="{$dd.hid}">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td class="center">{$dd.hid}</td>
                                        <td>{$dd.name}<br/>{$dd.domain}</td>
                                        <td class="center">{$dd.dedicatedip}</td>
                                        <td class="center">{$dd.amount}</td>
                                        <td class="center">{$dd.host_type}</td>
                                        <td class="center">{$dd.billingcycle}</td>
                                        <td class="center">{$dd.regdate}</td>
                                        <td class="center">{$dd.nextduedate}</td>
                                        <td class="center" style="color: {$dd.status_color}">{$dd.domainstatus}</td>
                                        <td>
                                            <button type="button" class="btn btn-link" onclick="location.href='clientsviewservices?uid={$_GET['uid']}&hid={$dd.hid}'"><i class="fas fa-edit"></i>
                                                编辑
                                            </button>
                                        </td>
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