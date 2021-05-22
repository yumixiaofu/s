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
                    <form id="modalForm">
                        {foreach name="customfields" item="cfs"}
                            <div class="card">
                                <div class="card-header d-flex justify-content-end">
                                    <button class="btn btn-danger" type="button" onclick="delClick({$cfs.id})">删除</button>
                                </div>
                                <div class="tab-content mt-4">
                                    <div class="table-body">
                                        <div class="form">
                                            <div class="form-group row">
                                                <label>字段名称</label>
                                                <div class="col-sm-6">
                                                    <input type="text" name="customfieldname[{$cfs.id}]"
                                                           class="form-control"
                                                           value="{$cfs.fieldname}">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label>字段类型</label>
                                                <div class="col-sm-6">
                                                    <select class="form-control" name="customfieldtype[{$cfs.id}]">
                                                        {foreach name="type_list" item="val" key="key"}
                                                            <option value="{$key}"
                                                                    {if $cfs.fieldtype == $key}selected{/if}>{$val}</option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label>描述</label>
                                                <div class="col-sm-5 d-flex">
                                                    <input type="text" name="customfielddesc[{$cfs.id}]"
                                                           class="form-control"
                                                           value="{$cfs.description}">
                                                    <label class="ml-5 color-ccc">向客户显示的描述</label>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label>验证</label>
                                                <div class="col-sm-5 d-flex">
                                                    <input type="text" name="customfieldregexpr[{$cfs.id}]"
                                                           class="form-control"
                                                           value="{$cfs.regexpr}">
                                                    <label class="ml-5 color-ccc">向客户显示的描述</label>
                                                </div>
                                            </div>
                                            {if $cfs.fieldtype == 'dropdown'}
                                                <div class="form-group row">
                                                    <label>选项</label>
                                                    <div class="col-sm-5 d-flex">
                                                        <input type="text" name="customfieldoptions[{$cfs.id}]"
                                                               class="form-control"
                                                               value="{$cfs.fieldoptions}">
                                                        <label class="ml-5 color-ccc">只对 下拉 有效-用英文半角逗号分隔</label>
                                                    </div>
                                                </div>
                                            {/if}
                                            <div class="form-group row">
                                                <label>显示排序</label>
                                                <div class="col-sm-6">
                                                    <input type="text" name="customsortorder[{$cfs.id}]"
                                                           class="form-control"
                                                           value="{$cfs.sortorder}">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label>其他设置</label>
                                                <div class="col-sm-6 d-flex">
                                                    <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="adminonly" name="customadminonly[{$cfs.id}]"
                                                               {if $cfs.adminonly}checked{/if} value="1">
                                                        <label class="custom-control-label line"
                                                               for="adminonly">仅管理员可见</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="required" name="customrequired[{$cfs.id}]"
                                                               {if $cfs.required}checked{/if} value="1">
                                                        <label class="custom-control-label line"
                                                               for="required">必填</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="showorder" name="customshoworder[{$cfs.id}]"
                                                               {if $cfs.showorder}checked{/if} value="1">
                                                        <label class="custom-control-label line"
                                                               for="showorder">注册时显示</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/foreach}
                        <div class="card">
                            <div class="card-header">
                                新增自定义字段
                            </div>
                            <div class="tab-content mt-4">
                                <div class="table-body">
                                    <div class="form">
                                        <div class="form-group row">
                                            <label>字段名称</label>
                                            <div class="col-sm-6">
                                                <input type="text" name="addfieldname" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label>字段类型</label>
                                            <div class="col-sm-6">
                                                <select class="form-control" name="addfieldtype">
                                                    {foreach name="type_list" item="val" key="key"}
                                                        <option value="{$key}">{$val}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label>描述</label>
                                            <div class="col-sm-5 d-flex">
                                                <input type="text" name="addcustomfielddesc" class="form-control">
                                                <label class="ml-5 color-ccc">向客户显示的描述</label>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label>验证</label>
                                            <div class="col-sm-5 d-flex">
                                                <input type="text" name="addregexpr" class="form-control">
                                                <label class="ml-5 color-ccc">向客户显示的描述</label>
                                            </div>
                                        </div>
                                        {if $cfs.fieldtype == 'dropdown'}
                                            <div class="form-group row">
                                                <label>选项</label>
                                                <div class="col-sm-5 d-flex">
                                                    <input type="text" name="addfieldoptions" class="form-control">
                                                    <label class="ml-5 color-ccc">只对 下拉 有效-用英文半角逗号分隔</label>
                                                </div>
                                            </div>
                                        {/if}
                                        <div class="form-group row">
                                            <label>显示排序</label>
                                            <div class="col-sm-6">
                                                <input type="text" name="addsortorder" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label>其他设置</label>
                                            <div class="col-sm-6 d-flex">
                                                <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="addadminonly" name="addadminonly" value="1">
                                                    <label class="custom-control-label line"
                                                           for="addadminonly">仅管理员可见</label>
                                                </div>
                                                <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                    <input type="checkbox" class="custom-control-input" id="addrequired"
                                                           name="addrequired" value="1">
                                                    <label class="custom-control-label line"
                                                           for="addrequired">必填</label>
                                                </div>
                                                <div class="custom-control custom-checkbox my-1 mr-sm-2 pr-4">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="addshoworder" name="addshoworder" value="1">
                                                    <label class="custom-control-label line"
                                                           for="addshoworder">注册时显示</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="mt-4">
                        <button class="btn btn-primary" type="button" id="modalFormSubmit">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function delClick(id) {
        const cfm = confirm('此操作将永久删除该自定义字段, 是否继续?');
        if (cfm) {
            $.ajax({
                url: 'del_custom_fields',
                type: 'POST',
                data: {
                    id: id,
                    type: "client"
                },
                success: function (res) {
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
    }

    var isSubmit = false;
    document.getElementById('modalFormSubmit').onclick = function () {
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#modalForm").serializeJson();
        Toast('提交中...');
        var url = 'custom_fields';
        $.ajax({
            url: url,
            type: 'POST',
            data: modalForm,
            success: function (res) {
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
<style>
    .card-header {
        background-color: rgba(238, 242, 253, 1);
    }

    .color-ccc {
        color: #bbbbbb;
    }

    .custom-control label {
        line-height: inherit !important;
        width: auto !important;
    }
</style>
{include file="footer"}