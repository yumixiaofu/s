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
                                            <h2>{$amount_in}</h2>
                                            <h5>总收入</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$fees}</h2>
                                            <h5>手续费总计</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$amount_out}</h2>
                                            <h5>总支出</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <h2>{$surplus}</h2>
                                            <h5>结余</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-header">
                                <div class="table-tools">
                                    <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
                                       data-target="#exampleModal" onclick="addClick()">
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
                                        {foreach name="data" item="dd" key="kk"}
                                            <tr>
                                                <td class="center">{$dd.id}</td>
                                                <td class="center">{$dd.trans_id}</td>
                                                <td class="center">{$dd.pay_time}</td>
                                                <td class="center">{$dd.gateway}</td>
                                                <td class="center">{$dd.description}</td>
                                                <td class="center">{$dd.amount_in}</td>
                                                <td class="center">{$dd.fees}</td>
                                                <td class="center">{$dd.amount_out}</td>
                                                <td>
                                                    <button type="button" class="btn btn-link" data-toggle="modal"
                                                            data-target="#exampleModal" onclick="editClick({$kk})"><i
                                                                class="fas fa-edit"></i>
                                                        编辑
                                                    </button>
                                                    <button type="button" class="btn btn-link red"
                                                            onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>
                                                        删除
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
<!-- 添加弹窗 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="modalForm" class="form" method="get">
                    <input name="uid" id="uid" value="{$_GET['uid']}" hidden/>
                    <input name="id" id="id" hidden />
                    <div class="form-group row">
                        <label class="require">支付时间</label>
                        <div class="col-sm-9">
                            <input type="text" name="pay_time" id="pay_time" class="form-control datetime">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>付款流水号</label>
                        <div class="col-sm-9">
                            <input type="text" name="trans_id" id="trans_id" class="form-control"
                                   value="" placeholder="请输入付款流水号">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>付款方式</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="gateway" id="gateway">
                                {foreach name="gateways" item="gs"}
                                    <option value="{$gs.name}">{$gs.title}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>支出</label>
                        <div class="col-sm-9">
                            <input type="text" name="amount_out" id="amount_out" class="form-control"
                                   value="0.00">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>货币类型</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="currency" id="currency">
                                {foreach name="currency" item="cy"}
                                    <option value="{$cy.code}">{$cy.code}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>描述</label>
                        <div class="col-sm-9">
                            <input type="text" name="description" id="description" class="form-control"
                                   value="" placeholder="请输入描述">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>账单编号</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="invoice_id" id="invoice_id">
                                <option value="无">无</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>收入</label>
                        <div class="col-sm-9">
                            <input type="text" name="amount_in" id="amount_in" class="form-control"
                                   value="0.00">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>手续费</label>
                        <div class="col-sm-9">
                            <input type="text" name="fees" id="fees" class="form-control"
                                   value="0.00">
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
<script type="text/javascript">
    $(function () {
        // 更多验证规则参见：https://blog.csdn.net/weixin_30731305/article/details/97928664
        // 表单前端校验
        $('#modalForm').bootstrapValidator({
            message: 'This value is not valid',
            fields: {
                pay_time: {
                    message: '请选择支付时间',
                    validators: {
                        notEmpty: {
                            message: '请选择支付时间'
                        }
                    }
                }
            }
        });
    })

    function deleteClick(id) {
        var cfm = confirm('将删除此条流水记录, 是否继续?');
        if (cfm) {
            $.ajax({
                type: 'DELETE',
                url: 'accounts/'+id,
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        }
    }

    var isEdit = false;
    // 编辑
    function editClick(index) {
        isEdit = true;
        var data = {$editData};
        const editData = data[index];
        document.getElementById('id').value = editData.id;
        document.getElementById('pay_time').value = editData.pay_time;
        document.getElementById('trans_id').value = editData.trans_id;
        document.getElementById('gateway').value = editData.gateway;
        document.getElementById('amount_out').value = editData.amount_out;
        document.getElementById('currency').value = editData.currency;
        document.getElementById('description').value = editData.description;
        document.getElementById('invoice_id').value = editData.invoice_id;
        document.getElementById('amount_in').value = editData.amount_in;
        document.getElementById('fees').value = editData.fees.slice(1, -1);
    }
    // 添加
    function addClick() {
        isEdit = false;
        document.getElementById('id').value = '';
        document.getElementById('pay_time').value = '';
        document.getElementById('trans_id').value = '';
        document.getElementById('gateway').value = '';
        document.getElementById('amount_out').value = '0.00';
        document.getElementById('currency').value = '';
        document.getElementById('description').value = '';
        document.getElementById('invoice_id').value = '';
        document.getElementById('amount_in').value = '0.00';
        document.getElementById('fees').value = '0.00';
    }

    var isSubmit = false;
    document.getElementById('modalFormSubmit').onclick = function () {
        var flag = $('#modalForm').bootstrapValidator('validate').data('bootstrapValidator').isValid();
        if (!flag) {
            return;
        }
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#modalForm").serialize();
        Toast('提交中...');
        var url = 'accounts';
        if (isEdit) {
            var data = $("#modalForm").serializeJson();
            var id = $("#id").val();
            url += '/' + id;
            $.ajax({
                type: 'PUT',
                data: data,
                url: url,
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        } else {
            $.post(url, modalForm, function (res) {
                Toast(res.msg);
                if (res.status == 200) {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                } else {
                    isSubmit = false;
                }
            });
        }
    }
</script>
{include file="footer"}