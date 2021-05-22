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
                        {foreach name="navTabs" item="nt"}
                            <div class="tab-item {if $nt.name == $seleTab}selected{/if}"
                                 data-value="{$nt.name}">{$nt.label}</div>
                        {/foreach}
                    </div>
                    {if $seleTab == 'first'}
                        <div class="tab-content mt-4">
                            <div class="table-body">
                                <form class="form" id="modalForm">
                                    <div class="form-group row">
                                        <label class="require">实名认证</label>
                                        <div class="col-sm-4 form-row">
                                            <div class="custom-control custom-switch" dir="ltr">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="certifi_open" name="certifi_open"
                                                       {if $data.certifi_open == 1}checked{/if}>
                                                <label class="custom-control-label" for="certifi_open"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="modalIsShow">
                                        <div class="form-group row">
                                            <label class="require">未实名暂停产品</label>
                                            <div class="col-sm-4 form-row">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="certifi_is_stop" name="certifi_is_stop"
                                                           id="certifi_is_stop"
                                                           {if $data.certifi_is_stop == 1}checked{/if}>
                                                    <label class="custom-control-label" for="certifi_is_stop"></label>
                                                </div>
                                                如开启，未实名用户的产品将在一段时间后暂停
                                            </div>
                                        </div>

                                        <div class="form-group row" style="display: none" id="certifi_stop_day">
                                            <label class="require">暂停期限</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" name="certifi_stop_day"
                                                       value="{$data.certifi_stop_day}"
                                                       placeholder="请输入数量">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="require">自动更新姓名</label>
                                            <div class="col-sm-4 form-row">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="certifi_realname" name="certifi_realname"
                                                           {if $data.certifi_realname == 1}checked{/if}>
                                                    <label class="custom-control-label" for="certifi_realname"></label>
                                                </div>
                                                如开启，实名认证通过后自动更新姓名
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="require">需要上传身份证</label>
                                            <div class="col-sm-4 form-row">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="certifi_is_upload" name="certifi_is_upload"
                                                           {if $data.certifi_is_upload == 1}checked{/if}>
                                                    <label class="custom-control-label" for="certifi_is_upload"></label>
                                                </div>
                                                开启则需要上传
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="require">认证类型</label>
                                            <div class="col-sm-4" id="certifi_type">
                                                <input name="certifi_select" id="certifi_select"
                                                       value="" hidden>
                                                {foreach name="type" item="te" key="kk"}
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="certifi_select{$kk}"
                                                                {foreach name="data.certifi_select" item="dcs"}
                                                                    {if $dcs == 'artificial' && $te.value != 'artificial'}
                                                                        disabled
                                                                    {elseif $dcs == $te.value}
                                                                        checked
                                                                    {/if}
                                                                {/foreach}
                                                               name="{$te.value}" value="{$te.value}">
                                                        <label class="form-check-label"
                                                               for="{$te.value}">{$te.name}</label>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="require">认证手机号必须与绑定一致</label>
                                            <div class="col-sm-4 form-row">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="certifi_isbindphone" name="certifi_isbindphone"
                                                           {if $data.certifi_isbindphone == 1}checked{/if}>
                                                    <label class="custom-control-label"
                                                           for="certifi_isbindphone"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-primary mr-2" id="modalFormSubmit">
                                            提交
                                        </button>
                                        <button type="button" class="btn border">重置</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    {else}
                        <div class="tab-content mt-4">
                            <div class="table-body">
                                <form class="form" id="modalForm">
                                    <div class="pb-4">
                                        <h6 class="font-weight-bold">认证接口</h6>
                                        <div class="btn-group mt-2">
                                            <button type="button" class="btn border dropdown-toggle text-left"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                {if $data.certifi_type}
                                                    {foreach name="types" item="tes"}
                                                        {if $data.certifi_type == $tes.value}
                                                            <label class="seleContent color-ccc"
                                                                   id="typesValue">{$tes.name}</label>
                                                        {/if}
                                                    {/foreach}
                                                {else}
                                                    <label class="seleContent color-ccc" id="typesValue">全部</label>
                                                {/if}
                                            </button>
                                            <input hidden name="certifi_type" id="certifi_type" value="{$data.certifi_type}">
                                            <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                                {foreach name="types" item="tes"}
                                                    <button class="dropdown-item" type="button" value="{$tes.value}"
                                                            onclick="typesClick(this)">{$tes.name}</button>
                                                {/foreach}
                                            </div>
                                            <a class="m-auto pl-4" href="#" target="_blank">申请接口</a>
                                        </div>
                                    </div>
                                    <div id="ali" style="display: none;">
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">AppID</h6>
                                            <div class="btn-group mt-2">
                                                <textarea rows="5" class="form-control w-18"
                                                          name="certifi_app_id"
                                                          data-value="{$data.certifi_app_id}"></textarea>
                                            </div>
                                        </div>
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">商户私钥</h6>
                                            <div class="btn-group mt-2">
                                                <textarea rows="5" class="form-control w-18"
                                                          name="certifi_merchant_private_key"
                                                          data-value="{$data.certifi_merchant_private_key}"></textarea>
                                            </div>
                                        </div>
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">支付宝公钥</h6>
                                            <div class="btn-group mt-2">
                                                <textarea rows="5" class="form-control w-18"
                                                          name="certifi_alipay_public_key"
                                                          data-value="{$data.certifi_alipay_public_key}"></textarea>
                                            </div>
                                        </div>
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">认证方式</h6>
                                            <div class="btn-group mt-2">
                                                <button type="button" class="btn border dropdown-toggle text-left"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    {if $data.certifi_alipay_biz_code}
                                                        {foreach name="alipay_biz_code" item="abc"}
                                                            {if $data.certifi_alipay_biz_code == $abc.value}
                                                                <label class="seleContent color-ccc" id="alipayCode">{$abc.name}</label>
                                                            {/if}
                                                        {/foreach}
                                                    {else}
                                                        <label class="seleContent color-ccc" id="alipayCode">全部</label>
                                                    {/if}
                                                </button>
                                                <input hidden name="certifi_alipay_biz_code"
                                                       id="certifi_alipay_biz_code" value="{$data.certifi_alipay_biz_code}"/>
                                                <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                                    {foreach name="alipay_biz_code" item="abc"}
                                                        <button class="dropdown-item" type="button" value="{$abc.value}"
                                                                onclick="alipayCodeClick(this)">{$abc.name}</button>
                                                    {/foreach}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="three" style="display: none;">
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">AppCode</h6>
                                            <div class="btn-group mt-2">
                                                <input class="form-control w-18" name="certifi_alipay_public_key"
                                                       value="{$data.certifi_alipay_public_key}"/>
                                            </div>
                                        </div>
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">认证方式</h6>
                                            <div class="btn-group mt-2">
                                                <button type="button" class="btn border dropdown-toggle text-left"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    {if $data.certifi_three_type}
                                                        {foreach name="alipay_three_type" item="te"}
                                                            {if $data.certifi_three_type == $te.value}
                                                                <label class="seleContent color-ccc" id="typeVal">{$te.name}</label>
                                                            {/if}
                                                        {/foreach}
                                                    {else}
                                                        <label class="seleContent color-ccc" id="typeVal">全部</label>
                                                    {/if}
                                                </button>
                                                <input hidden name="certifi_three_type" id="certifi_three_type" value="{$data.certifi_three_type}"/>
                                                <div class="dropdown-menu dropdown-menu-right w-100 p-2">
                                                    {foreach name="alipay_three_type" item="te"}
                                                        <button class="dropdown-item" type="button" value="{$te.value}"
                                                                onclick="typeClick(this)">{$te.name}</button>
                                                    {/foreach}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="phonethree" style="display: none;">
                                        <div class="pb-4">
                                            <h6 class="font-weight-bold">AppCode</h6>
                                            <div class="btn-group mt-2">
                                                <input class="form-control w-18" name="certifi_phonethree_appcode"
                                                       value="{$data.certifi_phonethree_appcode}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pb-4">
                                        <h6 class="font-weight-bold">显示名称</h6>
                                        <div class="btn-group mt-2">
                                            {if $data.certifi_type}
                                            {foreach name="types" item="tes"}
                                                {if $data.certifi_type == $tes.value}
                                                    <input class="form-control w-18" name="name" value="{$tes.name}"/>
                                                {/if}
                                            {/foreach}
                                            {else}
                                            <input class="form-control w-18" name="name"/>
                                            {/if}
                                        </div>
                                    </div>

                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-primary mr-2" id="modalFormSubmit">
                                            提交
                                        </button>
                                        <button type="button" class="btn border">重置</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<script>

    $(function () {
        {if $seleTab == 'first'}
        var init_certifi_select = {$data.edit_certifi_select};
        init_certifi_select = init_certifi_select ? JSON.parse(JSON.stringify(init_certifi_select)) : [];
        document.getElementById('certifi_select').value = init_certifi_select;

        var certifi_open = document.getElementById('certifi_open');
        if (certifi_open.checked) {
            document.getElementById('modalIsShow').style = "display: block;";
        } else {
            document.getElementById('modalIsShow').style = "display: none;";
        }

        var certifi_is_stop = document.getElementById('certifi_is_stop');
        if (certifi_is_stop.checked) {
            document.getElementById('certifi_stop_day').style = "display: block;";
        } else {
            document.getElementById('certifi_stop_day').style = "display: none;";
        }

        $('#certifi_type input').on('change', function () {
            var certifi_select = document.getElementById('certifi_select').value;
            certifi_select = JSON.parse(JSON.stringify(certifi_select));
            if (this.checked) {
                certifi_select.push(this.value);
                console.log(certifi_select);
            } else {
                certifi_select = delArrNode(certifi_select, this.value, 1);
            }
            document.getElementById('certifi_select').value = JSON.stringify(certifi_select);
            if (this.value == 'artificial') {
                if (this.checked) {
                    certifi_select = delArrNode(certifi_select, 'artificial', 2);
                    document.getElementById('certifi_select').value = JSON.stringify(certifi_select);
                    for (var i = 0; i < 1000; i++) {
                        if (document.getElementById('certifi_select' + i)) {
                            if (document.getElementById('certifi_select' + i).value != 'artificial') {
                                document.getElementById('certifi_select' + i).checked = false;
                                document.getElementById('certifi_select' + i).disabled = true;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    for (var i = 0; i < 1000; i++) {
                        if (document.getElementById('certifi_select' + i)) {
                            document.getElementById('certifi_select' + i).disabled = false;
                        } else {
                            return;
                        }
                    }
                }
            }
        });
        {else}
        var certifi_type = '{$data.certifi_type}';
        console.log('aa', certifi_type);
        if (certifi_type == 'ali') {
            document.getElementById('ali').style = "display: block;";
            document.getElementById('three').style = "display: none;";
            document.getElementById('phonethree').style = "display: none;";
        } else if (certifi_type == 'three') {
            document.getElementById('ali').style = "display: none;";
            document.getElementById('three').style = "display: block;";
            document.getElementById('phonethree').style = "display: none;";
        } else if (certifi_type == 'phonethree') {
            document.getElementById('ali').style = "display: none;";
            document.getElementById('three').style = "display: none;";
            document.getElementById('phonethree').style = "display: block;";
        }
        var classVal = document.getElementById('typesValue').getAttribute('class');
        classVal = classVal.replace('color-ccc', '');
        document.getElementById('typesValue').setAttribute('class', classVal);
        // document.getElementById('typesValue').innerHTML = e.innerHTML;
        {/if}
    });

    function delArrNode(arr, value, code) {
        if (code == 1) {
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == value) {
                    arr.splice(i, 1);
                }
            }
        } else {
            arr = [];
            arr.push(value);
        }
        console.log(arr);
        return arr;
    }
    {if $seleTab == 'first'}
    // 实名认证
    document.getElementById('certifi_open').onchange = function () {
        if (this.checked) {
            document.getElementById('modalIsShow').style = "display: block;"
        } else {
            document.getElementById('modalIsShow').style = "display: none;"
        }
    }
    {/if}

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

    function typesClick(e) {
        console.log(e.value);
        const value = e.value;
        document.getElementById('certifi_type').value = value;
        if (value == 'ali') {
            document.getElementById('ali').style = "display: block;";
            document.getElementById('three').style = "display: none;";
            document.getElementById('phonethree').style = "display: none;";
        } else if (value == 'three') {
            document.getElementById('ali').style = "display: none;";
            document.getElementById('three').style = "display: block;";
            document.getElementById('phonethree').style = "display: none;";
        } else if (value == 'phonethree') {
            document.getElementById('ali').style = "display: none;";
            document.getElementById('three').style = "display: none;";
            document.getElementById('phonethree').style = "display: block;";
        }
        var classVal = document.getElementById('typesValue').getAttribute('class');
        classVal = classVal.replace('color-ccc', '');
        document.getElementById('typesValue').setAttribute('class', classVal);
        document.getElementById('typesValue').innerHTML = e.innerHTML;
    }

    function alipayCodeClick(e) {
        console.log(e.value);
        document.getElementById('certifi_alipay_biz_code').value = e.value;
        var classVal = document.getElementById('alipayCode').getAttribute('class');
        classVal = classVal.replace('color-ccc', '');
        document.getElementById('alipayCode').setAttribute('class', classVal);
        document.getElementById('alipayCode').innerHTML = e.innerHTML;
    }

    function typeClick(e) {
        console.log(e.value);
        document.getElementById('certifi_three_type').value = e.value;
        var classVal = document.getElementById('typeVal').getAttribute('class');
        classVal = classVal.replace('color-ccc', '');
        document.getElementById('typeVal').setAttribute('class', classVal);
        document.getElementById('typeVal').innerHTML = e.innerHTML;
    }
</script>
<style>
    .card-header {
        background-color: #EEEEEE;
    }

    label.seleContent {
        width: 15rem;
        margin-bottom: 0;
        padding-left: 0.5rem;
    }

    .color-ccc {
        color: #bbbbbb;
    }

    .w-18 {
        width: 18rem;
    }
</style>
{include file="footer"}