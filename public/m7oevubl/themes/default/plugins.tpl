{if $ErrorMsg}
    {include file="error/alert" value="$ErrorMsg"}
{/if}

{if $SuccessMsg}
    {include file="error/notifications" value="$SuccessMsg" url=""}
{/if}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="help-block">
                        应用商店下载插件，安装即可使用
                    </div>
                    <div class="table-container">
                        <div class="table-body table-responsive">
                            {php}
                                $status=array("1"=>'开启',"0"=>'禁用',"3"=>'未安装');
                            {/php}
                            <table class="table table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    <th class="center ">插件名称</th>
                                    <th>插件标识</th>
                                    <th>描述</th>
                                    <th>作者</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                {foreach name="Plugins" item="vo"}
                                    <tr>
                                        <td>{$vo.title}<br>{$vo.menu}</td>
                                        <td>{$vo.name}</td>
                                        <td>{$vo.description}</td>
                                        <td>{$vo.author}</td>
                                        <td>{$status[$vo['status']]}</td>
                                        <td>
                                            {if condition="$vo['status']==3"}
                                                <button class="btn btn-xs btn-primary js-ajax-dialog-btn" type="button"
                                                        onclick="plinstall('{$vo.name}')">安装</button>
                                            {else/}
                                                   <button class="btn btn-xs btn-success" type="button"
                                                        onclick="plupdate('{$vo.name}')">更新</button>
                                                {if condition="$vo['status']==0"}
                                                    <button class="btn btn-xs btn-success" type="button"
                                                       onclick="pltoggle('{$vo.id}','{$vo.status}')">启用</button>
                                                {else/}
                                                <button class="btn btn-xs btn-warning" type="button"
                                                       onclick="pltoggle('{$vo.id}','{$vo.status}')">禁用</button>
                                                {/if}
                                                 <button class="btn btn-xs btn-danger" type="button"
                                                      onclick="pluninstall('{$vo.id}')">卸载</button>
                                            {/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </table>
                        </div>
                        <div class="table-footer">
                            <div class="table-pagination">
                                <div class="table-pageinfo">
                                    每页显示 10 条数据
                                </div>
                                <nav>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a class="page-link" href="#">上一页</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 提示框 -->
<div class="modal" tabindex="-1" role="dialog" id="comfirmModal">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">提示</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="tipContent">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="sureBtn">确定</button>
            </div>
        </div>
    </div>
</div>
</div>
<script>

    // 安装
    function plinstall(name) {
        $('#comfirmModal').modal('show')
        $('#tipContent').text('确定安装吗？')
        $(document).on('click', '#sureBtn', function () {
            $.ajax({
                type: "POST",
                url: '{$Setting.web_url}' + '/{$Admin}/pl_install',
                data: {
                    name: name,
                    module: 'addons'
                },
                success: function (data) {
                    if (data.status == 200) {
                        toastr.success(data.msg)
                        location.reload()
                    } else
                        toastr.error(data.msg)
                }

            });
        });
    }

    // 更新
    function plupdate(name) {
        $('#comfirmModal').modal('show')
        $('#tipContent').text('确定更新吗？')
        $(document).on('click', '#sureBtn', function () {
            $.ajax({
                type: "POST",
                url: '{$Setting.web_url}' + '/{$Admin}/pl_update',
                data: {
                    name: name,
                    module: 'addons'
                },
                success: function (data) {

                    if (data.status == 200) {
                        toastr.success(data.msg)
                        location.reload()
                    } else
                        toastr.error(data.msg)
                }

            });
        });
    }

    // 卸载
    function pluninstall(id) {
        $('#comfirmModal').modal('show')
        $('#tipContent').text('确定卸载吗？')
        $(document).on('click', '#sureBtn', function () {
            $.ajax({
                type: "POST",
                url: '{$Setting.web_url}' + '/{$Admin}/pl_uninstall',
                data: {
                    id: id,
                },
                success: function (data) {

                    if (data.status == 200) {
                        toastr.success(data.msg)
                        location.reload()
                    } else
                        toastr.error(data.msg)
                }


            });
        });

    }

    // 启用/禁用
    function pltoggle(id, status) {
        $('#comfirmModal').modal('show')
        var obj = {}
        if (status == 0) {
            obj = {
                id: id,
                enable: '1'
            }
            $('#tipContent').text('确定启用吗？')
        } else {
            obj = {
                id: id,
                disable: '1',
            }
            $('#tipContent').text('确定禁用吗？')
        }
        $(document).on('click', '#sureBtn', function () {
            $.ajax({
                type: "POST",
                url: '{$Setting.web_url}' + '/{$Admin}/pl_toggle',
                data: obj,
                success: function (data) {

                    if (data.status == 200) {
                        toastr.success(data.msg)
                        location.reload()
                    } else
                        toastr.error(data.msg)
                }

            });
        });

    }

</script>

