{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="table-container">
                        <div class="table-header">
                            <form id="searchForm" action="" method="GET">
                                <div class="table-tools">
                                    <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
                                       data-target="#exampleModal">
                                        <i class="fas fa-plus-circle"></i> {$btnText}
                                    </a>
                                </div>
                            </form>
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
                                {foreach name="data" item="dd" key="kk"}
                                    <tr>
                                        <td class="center">{$dd.level_name}</td>
                                        <td class="center">{$dd.expense.min} < 收入 < {$dd.expense.max}</td>
                                        <td class="center">{$dd.buy_num.min} < 购买商品数量 ≤ {$dd.buy_num.max}</td>
                                        <td class="center">{$dd.login_times.min} < 累计登录次数 ≤ {$dd.login_times.max}</td>
                                        <td class="center">{$dd.last_login_times.min} < 最近{$dd.last_login_times.day}
                                            天登录次数 ≤ {$dd.last_login_times.max}</td>
                                        <td class="center">{$dd.renew_times.min} < 续费次数 ≤ {$dd.renew_times.max}</td>
                                        <td class="center">{$dd.last_renew_times.min} < 最近{$dd.last_renew_times.day}
                                            天续费次数 ≤ {$dd.last_renew_times.max}</td>
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
                <input name="id" id="id" hidden/>
                <form id="modalForm" class="form" method="get">
                    <div class="form-group row">
                        <label class="require">等级名称</label>
                        <div class="col-sm-9">
                            <input type="text" name="level_name" class="form-control" id="level_name"
                                   value="" placeholder="请输入等级名称">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>收入</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="expense_min" class="form-control" id="expense_min"
                                     value="0">
                            小于等于<input type="text" name="expense_max" class="form-control" id="expense_max"
                                       value="0">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>购买商品数量</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="buy_num_min" class="form-control" id="buy_num_min"
                                     value="0">
                            小于等于<input type="text" name="buy_num_max" class="form-control" id="buy_num_max"
                                       value="0">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>累计登录次数</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="login_times_min" class="form-control" id="login_times_min"
                                     value="0">
                            小于等于<input type="text" name="login_times_max" class="form-control" id="login_times_max"
                                       value="0">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>最近<input type="text" name="last_login_times_day" class="form-control"
                                                        id="last_login_times_day"
                                                        value="10">天登录次数</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="last_login_times_min" class="form-control"
                                     id="last_login_times_min"
                                     value="0">
                            小于等于<input type="text" name="last_login_times_max" class="form-control"
                                       id="last_login_times_max"
                                       value="0">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>续费次数</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="renew_times_min" class="form-control" id="renew_times_min"
                                     value="0">
                            小于等于<input type="text" name="renew_times_max" class="form-control" id="renew_times_max"
                                       value="0">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>最近<input type="text" name="last_renew_times_day" class="form-control"
                                                        id="last_renew_times_day"
                                                        value="10">天续费次数</label>
                        <div class="col-sm-9">
                            大于<input type="text" name="last_renew_times_min" class="form-control"
                                     id="last_renew_times_min"
                                     value="0">
                            小于等于<input type="text" name="last_renew_times_max" class="form-control"
                                       id="last_renew_times_max"
                                       value="0">
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
                level_name: {
                    message: '请输入等级名称',
                    validators: {
                        notEmpty: {
                            message: '请输入等级名称'
                        }
                    }
                }
            }
        });
    })

    function deleteClick(id) {
        var cfm = confirm('将删除此等级, 是否继续?');
        if (cfm) {
            $.ajax({
                type: 'delete',
                url: 'client_group/' + id,
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

    function editClick(index) {
        var data = {$editData};
        const editData = data[index];
        document.getElementById('id').value = editData.id;
        document.getElementById('level_name').value = editData.level_name;
        document.getElementById('expense_min').value = editData.expense.min;
        document.getElementById('expense_max').value = editData.expense.max;
        document.getElementById('buy_num_min').value = editData.buy_num.min;
        document.getElementById('buy_num_max').value = editData.buy_num.max;
        document.getElementById('login_times_min').value = editData.login_times.min;
        document.getElementById('login_times_max').value = editData.login_times.max;
        document.getElementById('last_login_times_day').value = editData.last_login_times.day;
        document.getElementById('last_login_times_min').value = editData.last_login_times.min;
        document.getElementById('last_login_times_max').value = editData.last_login_times.max;
        document.getElementById('last_renew_times_min').value = editData.last_renew_times.min;
        document.getElementById('last_renew_times_max').value = editData.last_renew_times.max;
        document.getElementById('last_renew_times_day').value = editData.last_renew_times.day;
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
        const id = document.getElementById('id').value;
        if (id) {
            modalForm += '&id=' + id;
        }
        Toast('提交中...');
        $.post('user_level/level', modalForm, function (res) {
            Toast(res.msg);
            setTimeout(function () {
                location.reload();
            }, 1000);
        });
    }
</script>
{include file="footer"}
