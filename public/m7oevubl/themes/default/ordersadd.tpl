{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <form class="form" id="modalForm">
                        <div class="card-title">添加订单</div>
                        <div class="tab-content mt-4">
                            <div class="table-body">
                                <div class="form-group row">
                                    <label class="require">客户</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="uid">
                                            <option value=""></option>
                                            {foreach name="clients" item="cls"}
                                                <option value="{$cls.id}">{$cls.username}</option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="require">支付方式</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="payment">
                                            {foreach name="getways" item="gs"}
                                                <option value="{$gs.name}">{$gs.title}</option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="require">优惠码</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="promo_code">
                                            {foreach name="promo_code.Active" item="pca"}
                                                <option value="{$pca.id}">{$pca.promo_desc}</option>
                                            {/foreach}
                                            {foreach name="promo_code.Expired" item="pce"}
                                                <option value="{$pce.id}">{$pce.promo_desc}</option>
                                            {/foreach}
                                        </select>
                                        <a href="#" class="btn border w-sm nohide" data-toggle="modal"
                                           data-target="#exampleModal">
                                            <i class="fas fa-plus-circle"></i> 添加优惠码
                                        </a>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label></label>
                                    <div class="col-sm-4">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="adminorderconf">
                                            <label class="form-check-label" for="inlineCheckbox1">订单确认</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="admingenerateinvoice">
                                            <label class="form-check-label" for="inlineCheckbox1">生成订单</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="adminsendinvoice">
                                            <label class="form-check-label" for="inlineCheckbox1">发送邮件</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-title"></div>
                        <div class="tab-content mt-4">
                            <h4 class="font-bold">产品/服务</h4>
                            <div class="table-body">
                                <div class="form-group row">
                                    <label>产品/服务</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="pid" onchange="getCycle">
                                            {foreach name="client_groups" item="cg"}
                                                <option value="{$cg.id}">{$cg.name}</option>
                                                {foreach name="cg.product" item="cgp"}
                                                    <option value="{$cgp.id}">{$cgp.name}</option>
                                                {/foreach}
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>付款周期</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="cycle">
                                            <option value="">无数据</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>数量</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" name="qty" placeholder="请输入数量">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label>内部价格(首次)</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" name="interior_price" placeholder="请输入内部价格(首次)">
                                    </div>
                                    （只有手动输入价格才能替换默认的价格）
                                </div>

                                <div class="form-group row">
                                    <label>内部价格(续费)</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" name="interior_price_renew" placeholder="请输入内部价格(续费)">
                                    </div>
                                    （只有手动输入价格才能替换默认的价格）
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="button" class="btn border w-md" id="addModal">添加其他产品</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="submit-modal">
    <h2 class="text-center m-10">订单详情</h2>
    <h5 class="text-center m-10">未选择项目</h5>
    <div class="w-100 dashed"></div>
    <div class="submit-modal-content">
        <text>小计</text>
        <text>0.00</text>
    </div>
    <div class="submit-modal-content">
        <label class="fontSize-20">总计</label><label class="fontSize-20">0.00</label>
    </div>
    <div class="text-center mb-10">
        <button type="button" class="btn btn-primary w-md">提交订单</button>
    </div>
</div>
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

    // 产品、服务 动态获取 付款周期
    function getCycle() {

    }


    function delNode(key) {
        document.getElementById('node' + key).remove();
    }

    var sonNode = '';
    var number = 0;
    document.getElementById('addModal').onclick = function () {
        sonNode = `<div id="node` + number + `"><div class="card-title"></div>
                            <div class="tab-content mt-4">
                                <h4 class="font-bold">产品/服务<btn class="btn border w-md" onclick="delNode(` + number + `)">删除</btn></h4>
                                <div class="table-body">
                                    <div class="form-group row">
                                        <label class="require">产品/服务</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="getways">
                                                {foreach name="getways" item="gs"}
                                                    <option value="{$gs.name}">{$gs.title}</option>
                                                {/foreach}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="require">付款周期</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="getways">
                                                {foreach name="promo_code.Active" item="pca"}
                                                    <option value="{$pca.id}">{$pca.promo_desc}</option>
                                                {/foreach}
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="require">内部价格(首次)</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="title" placeholder="请输入内部价格(首次)">
                                        </div>（只有手动输入价格才能替换默认的价格）
                                    </div>

                                    <div class="form-group row">
                                        <label class="require">内部价格(续费)</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="title" placeholder="请输入内部价格(续费)">
                                        </div>（只有手动输入价格才能替换默认的价格）
                                    </div>
                                </div>
                            </div></div>`;
        $("#modalForm").append(sonNode);
        number++;
    }
</script>
<style>
    .submit-modal {
        position: fixed;
        width: 40rem;
        background-color: #FFFFFF;
        right: 3rem;
        top: 14rem;
        border: 0.1rem solid #bbbbbb;
        border-radius: 5px;
        box-shadow: 2px 2px #bbbbbb;
    }

    .dashed {
        height: 0;
        border-bottom: 1px dashed #333
    }

    .submit-modal-content {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin: 1rem 2rem;
    }

    .fontSize-20 {
        font-size: 2rem;
    }

    .mb-10 {
        margin-bottom: 1rem;
    }

    .m-10 {
        margin: 1rem;
    }
</style>
{include file="footer"}