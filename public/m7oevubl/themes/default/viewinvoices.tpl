{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <form class="form" id="modalForm">
                        <div class="card-title">账单#1231234721</div>
                        <div class="tab-content mt-4">
                            <div class="table-body">
                                添加账单
                            </div>
                        </div>
                    </form>
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
</script>
{include file="footer"}