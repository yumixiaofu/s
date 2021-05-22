{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="help-block">
                        {$tip}
                    </div>
                    <div class="table-container">
                        <div class="table-header">
                            <form action="" method="get" id="searchForm">
                                <div class="table-tools">
                                    <input type="text" class="form-control" placeholder="输入关键字" value=""
                                           name="username">
                                    <button class="btn btn-primary w-xs" type="submit"><i class="fas fa-search"></i> 搜索
                                    </button>
                                </div>
                            </form>
                        </div>
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
                                        <td class="center"><a href="#">{$dd.id}</a></td>
                                        <td class="center"><a href="#">{$dd.username}</a></td>
                                        <td class="center">{$dd.amount_in}</td>
                                        <td class="center">{$dd.credit}</td>
                                        <td class="center">{$dd.create_time}</td>
                                        <td>
                                            <button type="button" class="btn btn-link"
                                                    data-toggle="modal"
                                                    data-target="#exampleModal" onclick="addClick({$dd.id})"><i
                                                        class="fas fa-edit"></i>
                                                添加
                                            </button>
                                        </td>
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
<!-- 添加弹窗 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">添加销售</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="modalForm" class="form" method="get">
                    <input name="uid" id="uid" hidden/>
                    <div class="form-group row">
                        <label class="require">销售代表</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="sale_id">
                                {foreach name="saleList" item="st"}
                                    <option value="{$st.value}">{$st.label}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="modalFormSubmit">确定</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function addClick(uid){
        if (!uid) {
            Toast('缺少参数');
            return;
        }
        document.getElementById('uid').value = uid;
    }

    var isSubmit = false;
    document.getElementById('modalFormSubmit').onclick = function () {
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#modalForm").serializeJson();
        Toast('提交中...');
        var url = 'bind_sale';
        $.ajax({
            type: 'POST',
            data: modalForm,
            url: url,
            contentType: 'application/json;charset=UTF-8',
            dataType: 'json',
            success: function (res, textStatus, jqXHR) {
                Toast(res.msg);
                if (res.status == 200) {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                } else {
                    isSubmit = false;
                }
            }
        });
    }
</script>
{include file="footer"}