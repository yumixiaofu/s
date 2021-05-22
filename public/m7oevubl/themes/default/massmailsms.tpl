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
                    <div class="tabs">
                        <div class="tab-item selected" id="clientClick">按客户推送</div>
                        <div class="tab-item" id="goodsClick">按商品推送</div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            选择客户
                        </div>
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="card-body">
                                    <h6 class="font-weight-bold">客户</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">客户状态</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">销售</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">语言</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">国家</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="font-weight-bold">注册时长</h6>
                                <div class="d-flex">
                                    <div class="d-flex align-items-center">
                                        注册时间在
                                        <input type="text" class="form-control w-25 ml-1 mr-1">
                                        至
                                        <input type="text" class="form-control w-25 ml-1 mr-1">
                                        天的客户
                                    </div>
                                    <div class="d-flex align-items-center">
                                        是否实名
                                        <div class="custom-control custom-checkbox mr-sm-2 ml-3">
                                            <input type="checkbox" class="custom-control-input" id="realName">
                                            <label class="custom-control-label" for="realName">已实名</label>
                                        </div>
                                        <div class="custom-control custom-checkbox mr-sm-2">
                                            <input type="checkbox" class="custom-control-input" id="unnamed">
                                            <label class="custom-control-label" for="unnamed">未实名</label>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center ml-5">
                                        是否绑定手机
                                        <div class="custom-control custom-checkbox mr-sm-2 ml-3">
                                            <input type="checkbox" class="custom-control-input" id="bindPhone">
                                            <label class="custom-control-label" for="bindPhone">已绑定</label>
                                        </div>
                                        <div class="custom-control custom-checkbox mr-sm-2">
                                            <input type="checkbox" class="custom-control-input" id="unboundPhone">
                                            <label class="custom-control-label" for="unboundPhone">未绑定</label>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center ml-5">
                                        是否绑定邮箱
                                        <div class="custom-control custom-checkbox mr-sm-2 ml-3">
                                            <input type="checkbox" class="custom-control-input" id="bindEmail">
                                            <label class="custom-control-label" for="bindEmail">已绑定</label>
                                        </div>
                                        <div class="custom-control custom-checkbox mr-sm-2">
                                            <input type="checkbox" class="custom-control-input" id="unboundEmail">
                                            <label class="custom-control-label" for="unboundEmail">未绑定</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-5" id="goods" style="display: none;">
                        <div class="card-header">
                            选择商品
                        </div>
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="card-body">
                                    <h6 class="font-weight-bold">商品名称</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">主机状态</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h6 class="font-weight-bold">商品接口</h6>
                                    <div class="btn-group mt-2">
                                        <button type="button" class="btn border dropdown-toggle text-left"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <label class="seleContent color-ccc">全部</label>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                            <input type="text" class="form-control" placeholder="请输入关键词">
                                            <div id="treeview1"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center mt-4">
                        <button class="btn btn-primary" type="button">撰写消息</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script>
    $(function () {
        var defaultData = [
            {
                text: 'Parent 1',
                href: '#parent1',
                tags: ['4'],
                nodes: [
                    {
                        text: 'Child 1',
                        href: '#child1',
                        tags: ['2'],
                        nodes: [
                            {
                                text: 'Grandchild 1',
                                href: '#grandchild1',
                                tags: ['0']
                            },
                            {
                                text: 'Grandchild 2',
                                href: '#grandchild2',
                                tags: ['0']
                            }
                        ]
                    },
                    {
                        text: 'Child 2',
                        href: '#child2',
                        tags: ['0']
                    }
                ]
            },
            {
                text: 'Parent 2',
                href: '#parent2',
                tags: ['0']
            },
        ];
        $('#treeview1').treeview({
            data: defaultData
        });
    });

    document.getElementById('clientClick').onclick = function () {
        var classVal = this.getAttribute('class');
        if (classVal.indexOf('selected') == -1) {
            document.getElementById('goodsClick').setAttribute('class', classVal);
            document.getElementById('goods').style = "display: none;";
            classVal = classVal.concat(' selected');
            document.getElementById('clientClick').setAttribute('class', classVal);
        }
    }

    document.getElementById('goodsClick').onclick = function () {
        var classVal = this.getAttribute('class');
        if (classVal.indexOf('selected') == -1) {
            document.getElementById('clientClick').setAttribute('class', classVal);
            classVal = classVal.concat(' selected');
            document.getElementById('goodsClick').setAttribute('class', classVal);
            document.getElementById('goods').style = "display: block;";
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
        var modalForm = $("#modalForm").serializeJson();
        for (var item in modalForm) {
            console.log();
            if (modalForm[item] == 'on') {
                modalForm[item] = 1;
            }
            if (item == 'certifi_select') {
                const certifi_select = JSON.parse(eval('modalForm.' + item));
                modalForm[item] = certifi_select;
            }
        }
        Toast('提交中...');
        var url = 'certifi_alipay';
        $.ajax({
            url: url,
            type: 'PUT',
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
        background-color: #EEEEEE;
    }

    label.seleContent {
        width: 15rem;
        margin-bottom: 0;
        padding-left: 1rem;
    }

    .color-ccc {
        color: #bbbbbb;
    }
</style>
{include file="footer"}