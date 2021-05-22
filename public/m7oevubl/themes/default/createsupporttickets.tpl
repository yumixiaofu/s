{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">新建工单</div>
                    <div class="tab-content mt-4">
                        <div class="table-body">
                            <input name="id" id="id" value="{$_GET['uid']}" hidden/>
                            <form class="form" id="modalForm">
                                <div class="form-group row">
                                    <label>客户</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" id="usernameSele">
                                            <option value=""></option>
                                            {foreach name="clients" item="cls"}
                                                <option value="{$cls.id}">{$cls.username}</option>
                                            {/foreach}
                                        </select>
                                        <input name="uid" id="uid" value="" hidden/>
                                        <input name="username" id="username" value="" hidden/>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>名称</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" name="name" placeholder="请输入名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>邮件地址</label>
                                    <div class="col-sm-4 form-row">
                                        <input type="text" class="form-control w-50 ml-2" name="email" placeholder="请输入邮件地址">
                                        <div class="custom-control custom-switch" dir="ltr">
                                            <input type="checkbox" class="custom-control-input" id="customSwitchsizemd" name="send">
                                            <label class="custom-control-label" for="customSwitchsizemd"></label>
                                        </div>
                                        是否发邮件
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="require">主题</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" name="title" placeholder="请输入主题">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="require">部门
                                        <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip"
                                           data-placement="top" title="Tooltip on top"></i>
                                    </label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="dptid">
                                            {foreach name="department" item="dt"}
                                                <option value="{$dt.id}">{$dt.name}</option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>优先级</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="priority">
                                            <option value="high">高</option>
                                            <option value="medium">中</option>
                                            <option value="low">低</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="require">回复内容</label>
                                    <div class="col-sm-4">
                                        <textarea rows="5" class="form-control" name="content">假装这里是个富文本</textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>附件</label>
                                    <div class="col-sm-4">
                                        <input class="btn btn-primary w-md"  type="file" id="fileobj" onchange="fileChange()"/>
                                        <input name="attachment" id="attachment" hidden />
                                        <br/>只能上传不超过 10MB 的文件
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-primary w-md" id="modalFormSubmit">开启工单</button>
                                        <button type="button" class="btn btn-outline-secondary w-md" onclick="goTo()">返回</button>
                                        <button type="button" class="btn btn-primary w-md">取消</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    $(function () {
        // 更多验证规则参见：https://blog.csdn.net/weixin_30731305/article/details/97928664
        // 表单前端校验
        $('#modalForm').bootstrapValidator({
            message: 'This value is not valid',
            fields: {
                title: {
                    message: '请输入主题',
                    validators: {
                        notEmpty: {
                            message: '请输入主题'
                        }
                    }
                },
                dptid: {
                    message: '请选择部门',
                    validators: {
                        notEmpty: {
                            message: '请选择部门'
                        }
                    }
                },
                content: {
                    message: '请输入回复内容',
                    validators: {
                        notEmpty: {
                            message: '请输入回复内容'
                        }
                    }
                },
            }
        });
    })

    function goTo(){
        location.href='clientssupporttickets?uid={$_GET["uid"]}'
    }

    document.getElementById('usernameSele').onchange  = function() {
        document.getElementById('username').value = this.options[this.selectedIndex].innerHTML;
        document.getElementById('uid').value = this.options[this.selectedIndex].value;
    }

    function fileChange() {
        var uid = document.getElementById('uid').value;
        var fileobj = document.getElementById('fileobj').files[0];
        if (typeof (fileobj) == "undefined") {
            Toast("请选择文件");
            return;
        }
        var fd = new FormData();
        fd.append('file', fileobj);
        $.ajax({
            url: 'upload_file',
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
                var attachment = [];
                attachment.push(data.savename);
                document.getElementById('attachment').value = attachment;
            }
        })
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
        var modalForm = $("#modalForm").serializeJson();
        Toast('提交中...');
        var url = 'add_ticket';
        $.post(url, modalForm, function (res) {
            Toast(res.msg);
            if (res.status == 200) {
                setTimeout(function () {
                    goTo();
                }, 1000);
            } else {
                isSubmit = false;
            }
        });
    }
</script>
{include file="footer"}