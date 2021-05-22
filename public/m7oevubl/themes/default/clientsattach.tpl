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
                            <div class="table-tools">
                                <a href="#" class="btn btn-primary w-sm nohide" data-toggle="modal"
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
                                    {foreach name="data" item="dd" key="kk"}
                                        <tr>
                                            <!-- <td class="checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input row-checkbox"
                                                           id="customCheck1">
                                                    <label class="custom-control-label" for="customCheck1">&nbsp;</label>
                                                </div>
                                            </td> -->
                                            <td class="center">{$dd.name}</td>
                                            <td class="center">{$dd.create_time}</td>
                                            <td class="center">{$dd.user_nickname}</td>
                                            <td class="center">{$dd.downame}</td>
                                            <td class="center">{$dd.remarks}</td>
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
                    <div class="form-group row" id="filenameDiv">
                        <label class="require">选择文件</label>
                        <div class="col-sm-9">
                            <input type="file" id="fileobj" onchange="fileChange()"/>
                            <input name="filename" id="filename" hidden />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="require">附件名称</label>
                        <div class="col-sm-9">
                            <input type="text" name="name" class="form-control" id="name"
                                   value="" placeholder="请输入附件名称">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label>备注</label>
                        <div class="col-sm-9">
                            <textarea type="text" name="remarks" class="form-control" id="remarks"
                                      value="" placeholder="请输入附件名称"></textarea>
                        </div>
                    </div>
                    <input name="id" id="id" hidden />
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
                uploadfile: {
                    message: '请选择文件',
                    validators: {
                        notEmpty: {
                            message: '请选择文件'
                        }
                    }
                },
                name: {
                    message: '请输入附件名称',
                    validators: {
                        notEmpty: {
                            message: '请输入附件名称'
                        }
                    }
                }
            }
        });
    })

    function fileChange() {
        var uid = document.getElementById('uid').value;
        var fileobj = document.getElementById('fileobj').files[0];
        if (typeof (fileobj) == "undefined") {
            Toast("请选择文件");
            return;
        }
        var fd = new FormData();
        fd.append('uploadfile', fileobj);
        fd.append('uid', uid);
        $.ajax({
            url: 'downloads/uploaduserfile',
            type: 'POST',
            data: fd,
            processData: false,
            contentType: false,
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function (res) {
                if (res.status != 200) {
                    Toast('上传失败，请重新选择文件上传');
                    return;
                }
                const data = res.data;
                document.getElementById('filename').value = data.savename;
                document.getElementById('name').value = data.origin_name;
            }
        })
    }

    function deleteClick(id) {
        var cfm = confirm('将删除此文件, 是否继续?');
        if (cfm) {
            $.ajax({
                type: 'get',
                data: {
                  id: id
                },
                url: 'downloads/userfile',
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
        document.getElementById('filenameDiv').style = 'display: none;';
        document.getElementById('name').value = editData.name;
        document.getElementById('remarks').value = editData.remarks;
        document.getElementById('id').value = editData.id;
    }
    // 添加
    function addClick() {
        isEdit = false;
        document.getElementById('filenameDiv').style = '';
        document.getElementById('name').value = '';
        document.getElementById('remarks').value = '';
        document.getElementById('id').value = '';
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
        var url = 'downloads/adduserfile';
        if (isEdit) {
            url = 'downloads/saveuserfile';
        }
        $.post(url, modalForm, function (res) {
            Toast(res.data);
            if (res.status == 200) {
                setTimeout(function () {
                    location.reload();
                }, 1000);
            } else {
                isSubmit = false;
            }
        });
    }
</script>
{include file="footer"}