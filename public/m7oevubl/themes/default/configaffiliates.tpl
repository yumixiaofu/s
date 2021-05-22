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
                    <form id="navTabsForm" action="" method="GET">
                        <input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}"/>
                    </form>
                    <div class="tabs" id="navTabs">
                        <div class="tab-item selected">推介设置</div>
                    </div>
                    <div class="tab-content mt-4">
                        <div class="table-body">
                            <form class="form" id="modalForm">
                                <div class="form-group row">
                                    <label>是否启用推介
                                        <i class="far fa-question-circle" style="color: blue;"
                                           aria-hidden="true"
                                           data-toggle="tooltip" data-placement="top"
                                           title="Tooltip on top"></i>
                                    </label>
                                    <div class="col-sm-4">
                                        <div class="custom-control custom-switch" dir="ltr">
                                            <input type="checkbox" name="affiliate_enabled" class="custom-control-input" id="affiliate_enabled" value="1" {if $data.affiliate_enabled}checked{/if}>
                                            <label class="custom-control-label" for="affiliate_enabled" id="affiliate_enabled_click"></label>
                                        </div>
                                    </div>
                                </div>
                                <div id="showList" style="display: none;">
                                    <div class="form-group row">
                                        <label class="require">推介计划激活赠送金额
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-2 d-flex">
                                            <input type="text" name="affiliate_bonusde_posit"
                                                   class="form-control"
                                                   value="{$data.affiliate_bonusde_posit}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">推介计划比例类型</label>
                                        <div class="col-sm-2">
                                            <select class="form-control" name="affiliate_type" id="affiliate_type">
                                                <option value="1" {if $data.affiliate_type || $data.affiliate_type == 1}selected{/if}>金额</option>
                                                <option value="2" {if $data.affiliate_type == 2}selected{/if}>百分比</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="affiliate_bates">
                                        <label class="require">推介计划比例</label>
                                        <div class="col-sm-2 d-flex">
                                            <div class="col-sm-12 border d-flex align-items-center pl-0">
                                                <input type="text" name="affiliate_bates"
                                                       class="form-control border-0"
                                                       value="{$data.affiliate_bates}"><i>%</i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">推荐链接cookie有效期</label>
                                        <div class="col-sm-2 d-flex">
                                            <div class="col-sm-12 border d-flex align-items-center pl-0">
                                                <input type="text" name="affiliate_cookie"
                                                       class="form-control border-0"
                                                       value="{$data.affiliate_cookie}"><i>天</i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">提现最低金额
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-2 d-flex">
                                            <input type="text" name="affiliate_withdraw"
                                                   class="form-control"
                                                   value="{$data.affiliate_withdraw}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label>提现必须实名
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-4">
                                            <div class="custom-control custom-switch" dir="ltr">
                                                <input type="checkbox" name="affiliate_is_authentication" class="custom-control-input" id="customSwitchsizemd" value="1" {if $data.affiliate_is_authentication}checked{/if}>
                                                <label class="custom-control-label" for="customSwitchsizemd"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">推荐佣金延迟天数
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-2 d-flex">
                                            <input type="text" name="affiliate_delay_commission"
                                                   class="form-control"
                                                   value="{$data.affiliate_delay_commission}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">是否开启二次订购
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-4">
                                            <div class="custom-control custom-switch" dir="ltr">
                                                <input type="checkbox" name="affiliate_reorder_type" class="custom-control-input" id="customSwitchsizemd" value="1" {if $data.affiliate_reorder_type}checked{/if}>
                                                <label class="custom-control-label" for="customSwitchsizemd"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">二次订单比例类型</label>
                                        <div class="col-sm-2">
                                            <select class="form-control" name="affiliate_reorder_type" id="affiliate_reorder_type">
                                                <option value="1" {if !$data.affiliate_reorder_type || $data.affiliate_reorder_type == 1}selected{/if}>金额</option>
                                                <option value="2" {if $data.affiliate_reorder_type == 2}selected{/if}>百分比</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="affiliate_reorder">
                                        <label class="require">二次订单金额</label>
                                        <div class="col-sm-2 d-flex">
                                            <div class="col-sm-12 border d-flex align-items-center pl-0">
                                                <input type="text" name="affiliate_reorder"
                                                       class="form-control border-0"
                                                       value="{$data.affiliate_reorder}"><i>元</i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label>是否开启续费
                                            <i class="far fa-question-circle" style="color: blue;"
                                               aria-hidden="true"
                                               data-toggle="tooltip" data-placement="top"
                                               title="Tooltip on top"></i>
                                        </label>
                                        <div class="col-sm-4">
                                            <div class="custom-control custom-switch" dir="ltr">
                                                <input type="checkbox" name="affiliate_is_renew" class="custom-control-input" id="customSwitchsizemd" value="1" {if $data.affiliate_is_renew}checked{/if}>
                                                <label class="custom-control-label" for="customSwitchsizemd"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="require">续费比例比例类型</label>
                                        <div class="col-sm-2">
                                            <select class="form-control" name="affiliate_renew_type" id="affiliate_renew_type">
                                                <option value="1" {if !$data.affiliate_renew_type || $data.affiliate_renew_type == 1}selected{/if}>金额</option>
                                                <option value="2" {if $data.affiliate_renew_type == 2}selected{/if}>百分比</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="affiliate_renew">
                                        <label class="require">续费比例</label>
                                        <div class="col-sm-2 d-flex">
                                            <div class="col-sm-12 border d-flex align-items-center pl-0">
                                                <input type="text" name="affiliate_renew"
                                                       class="form-control border-0"
                                                       value="{$data.affiliate_renew}"><i>%</i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label></label>
                                    <div class="col-sm-3 d-flex">
                                        <button type="button" class="btn btn-primary mr-4" id="modalFormSubmit">提交</button>
                                        <button type="reset" class="btn border">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<script>
    $(function(){
        // 是否启用推介
        set_affiliate_enabled('{$data.affiliate_enabled}');
        // 推介计划比例类型
        set_affiliate_type('{$data.affiliate_type}' ? '{$data.affiliate_type}' : 1);
        // 二次订单比例类型
        set_affiliate_reorder_type('{$data.affiliate_reorder_type}' ? '{$data.affiliate_reorder_type}' : 1);
        // 续费比例比例类型
        set_affiliate_renew_type('{$data.affiliate_renew_type}' ? '{$data.affiliate_renew_type}' : 1);
    });

    // 设置是否启用推介
    function set_affiliate_enabled(affiliate_enabled){
        if (affiliate_enabled) {
            document.getElementById('showList').style = 'display: block';
        } else {
            document.getElementById('showList').style = 'display: none';
        }
    }

    // 设置推介计划比例
    function set_affiliate_type(affiliate_type){
        if (affiliate_type == 1) {
            $('#affiliate_bates label').html('推介计划金额');
            $('#affiliate_bates i').html('元');
        } else if (affiliate_type == 2) {
            $('#affiliate_bates label').html('推介计划比例');
            $('#affiliate_bates i').html('%');
        }
    }

    // 设置二次订单比例
    function set_affiliate_reorder_type(affiliate_reorder_type){
        if (affiliate_reorder_type == 1) {
            $('#affiliate_reorder label').html('二次订单金额');
            $('#affiliate_reorder i').html('元');
        } else if (affiliate_reorder_type == 2) {
            $('#affiliate_reorder label').html('二次订单比例');
            $('#affiliate_reorder i').html('%');
        }
    }

    // 设置续费比例比例
    function set_affiliate_renew_type(affiliate_renew_type){
        if (affiliate_renew_type == 1) {
            $('#affiliate_renew label').html('续费金额');
            $('#affiliate_renew i').html('元');
        } else if (affiliate_renew_type == 2) {
            $('#affiliate_renew label').html('续费比例');
            $('#affiliate_renew i').html('%');
        }
    }

    document.getElementById('affiliate_enabled_click').onclick = function() {
        set_affiliate_enabled(!document.getElementById('affiliate_enabled').checked);
    }

    document.getElementById('affiliate_type').onchange = function() {
        set_affiliate_type(this.value);
    }

    document.getElementById('affiliate_reorder_type').onchange = function() {
        set_affiliate_reorder_type(this.value);
    }

    document.getElementById('affiliate_renew_type').onchange = function() {
        set_affiliate_renew_type(this.value);
    }

    var isSubmit = false;
    document.getElementById('modalFormSubmit').onclick = function () {
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#modalForm").serializeJson();
        console.log(modalForm);
        Toast('提交中...');
        var url = 'config_general/affiliate';
        $.ajax({
            url: url,
            type: 'POST',
            data: modalForm,
            success: function (res) {
                console.log(res);
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
    .custom-control label {
        line-height: inherit !important;
        width: auto !important;
    }
    .form-group>label{
        width: 13rem !important;
    }
</style>
{include file="footer"}