{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <form id="navTabsForm" action="" method="GET">
                        <input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}"/>
                    </form>
                    <div class="tabs" id="navTabs">
                        {foreach name="navTabs" item="nt"}
                            <div class="tab-item {if $nt.name == $seleTab}selected{/if}"
                                 data-value="{$nt.name}">{$nt.label}</div>
                        {/foreach}
                    </div>
                    <div class="table-container">
                        <div class="table-header">
                            <form id="searchForm" action="" method="GET">
                                <div class="table-tools">
                                    {if $seleTab == 'client' || $seleTab == 'goods'}
                                        <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
                                           data-target="#exampleModal">
                                            <i class="fas fa-plus-circle"></i> {$btnText}
                                        </a>
                                    {/if}
                                    {if $seleTab == 'goods'}
                                        <input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}"/>
                                        <input type="text" class="form-control" placeholder="输入关键字"
                                               value="{$_GET['group_name']}"
                                               name="group_name">
                                        <button class="btn btn-primary w-xs" type="submit"><i class="fas fa-search"></i>
                                            搜索
                                        </button>
                                    {/if}
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
                                        {if $seleTab == 'client'}
                                            <td class="center">{$dd.group_name}</td>
                                            <td class="center">
                                                <button type="button" class="btn btn-link"
                                                        style="background-color: {$dd.group_colour};color: #FFFFFF">{$dd.group_colour}</button>
                                            </td>
                                        {elseif $seleTab == 'goods'}
                                            <td>{$dd.group_name}</td>
                                        {/if}
                                        {if $seleTab == 'client' || $seleTab == 'goods'}
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
                                        {/if}
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        </div>
                        {if $seleTab == 'goods'}{include file="pageSize"}{/if}
                    </div>
                </div>
            </div>
         
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
                    {if $seleTab == 'client'}
                        <div class="form-group row">
                            <label class="require">客户分组名称</label>
                            <div class="col-sm-9">
                                <input type="text" name="group_name" class="form-control" id="group_name"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="require">组颜色</label>
                            <div class="col-sm-9">
                                <input type="text" name="group_colour" class="form-control" id="group_colour"
                                       value="">
                            </div>
                        </div>
                        <input name="group_id" id="group_id" hidden/>
                    {elseif $seleTab == 'goods'}
                        <div class="form-group row">
                            <label class="require">分组名称</label>
                            <div class="col-sm-9">
                                <input type="text" name="group_name" class="form-control" id="group_name"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="require">分组名称</label>
                            <div class="col-sm-9">
                                <input type="text" name="pids" class="form-control" id="pids"
                                       value="">
                            </div>
                        </div>
                        <input name="id" id="id" hidden/>
                    {/if}
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="modalFormSubmit">保存</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        const typeValue = document.getElementById('typeValue').value;
        if (typeValue == 'client') {
            // 更多验证规则参见：https://blog.csdn.net/weixin_30731305/article/details/97928664
            // 表单前端校验
            $('#modalForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    group_name: {
                        message: '请选择客户分组名称',
                        validators: {
                            notEmpty: {
                                message: '请选择客户分组名称'
                            }
                        }
                    },
                    group_colour: {
                        message: '请选择客户分组名称',
                        validators: {
                            notEmpty: {
                                message: '请选择客户分组名称'
                            }
                        }
                    }
                }
            });
        } else if (typeValue == 'goods') {
            $('#modalForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    group_name: {
                        message: '请输入分组名称',
                        validators: {
                            notEmpty: {
                                message: '请输入分组名称'
                            }
                        }
                    },
                    pids: {
                        message: '请选择选择商品',
                        validators: {
                            notEmpty: {
                                message: '请选择选择商品'
                            }
                        }
                    }
                }
            });
        }

    })

    function deleteClick(id) {
        const typeValue = document.getElementById('typeValue').value;
        if (typeValue == 'client') {
            var cfm = confirm('是否删除该分组?');
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
        } else if (typeValue == 'goods') {
            var cfm = confirm('将删除此分组, 是否继续?');
            if (cfm) {
                $.ajax({
                    type: 'get',
                    data: {
                        id: id
                    },
                    url: 'product/del_productgroup',
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
      };

    function editClick(index) {
        const typeValue = document.getElementById('typeValue').value;
        if (typeValue == 'client') {
            var data = {$data};
            const editData = data[index];
            document.getElementById('group_id').value = editData.id;
            document.getElementById('group_name').value = editData.group_name;
            document.getElementById('group_colour').value = editData.group_colour;
        } else if (typeValue == 'goods') {
            var data = {$editData};
            const editData = data[index];
            document.getElementById('id').value = editData.id;
            document.getElementById('group_name').value = editData.group_name;
            document.getElementById('pids').value = editData.pids;
        }
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
        $.post('client_group', modalForm, function (res) {
            Toast(res.msg);
            setTimeout(function () {
                location.reload();
            }, 1000);
        });
    }
</script>
{include file="footer"}