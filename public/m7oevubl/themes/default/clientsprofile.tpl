{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <form action="" method="get" id="clienForm">
                        <input name="uid" id="uid" value="{$_GET[uid]}" hidden />
                        <div class="tab-content mt-4">
                            <div class="table-body fit">
                                <div class="category">
                                    <div class="category-title">个人资料</div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">姓名</label>
                                                <input type="text" class="form-control" name="username"
                                                       value="{$profile.username}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>性别</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0" {if $profile.sex == '0'}selected{/if}>未知</option>
                                                    <option value="1" {if $profile.sex == '1'}selected{/if}>男</option>
                                                    <option value="2" {if $profile.sex == '2'}selected{/if}>女</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>公司</label>
                                                <input type="text" class="form-control" name="companyname"
                                                       value="{$profile.companyname}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>国家</label>
                                                <input type="text" class="form-control" name="country"
                                                       value="{$profile.country}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>省</label>
                                                <input type="text" class="form-control" name="province"
                                                       value="{$profile.province}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>地址</label>
                                                <input type="text" class="form-control" name="address1"
                                                       value="{$profile.address1}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>邮编</label>
                                                <input type="email" class="form-control" name="postcode"
                                                       value="{$profile.postcode}">
                                            </div>
                                            {foreach name="custom" item="cm"}
                                                {if $cm.required == 1}
                                                    {if $cm.fieldtype == 'dropdown'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <select class="form-control" name="custom[{$cm.cid}]">
                                                                {foreach name="cm.fieldoptions" item="cft"}
                                                                    <option value="{$cft}"
                                                                            {if $cft == $cm.value}selected{/if}>{$cft}</option>
                                                                {/foreach}
                                                            </select>
                                                        </div>
                                                    {elseif $cm.fieldtype == 'password'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="password" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'text'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="text" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'link'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="text" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'tickbox'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <div class="col-sm-4">
                                                                <div class="custom-control custom-switch" dir="ltr">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="customSwitchsizemd"
                                                                           {if $cm.value == 'yes'}checked{/if}
                                                                           name="custom[{$cm.cid}]">
                                                                    <label class="custom-control-label"
                                                                           for="customSwitchsizemd"></label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    {elseif $cm.fieldtype == 'textarea'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <textarea type="text" class="form-control"
                                                                      name="custom[{$cm.cid}]"
                                                                      value="{$cm.value}"></textarea>
                                                        </div>
                                                    {/if}
                                                {/if}
                                            {/foreach}
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>了解途径</label>
                                                <input type="text" class="form-control" name="know_us"
                                                       value="{$profile.know_us}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="category">
                                    <div class="category-title">账户信息</div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">手机</label>
                                                <input type="number" class="form-control" name="phonenumber"
                                                       value="{$profile.phonenumber}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">邮箱</label>
                                                <input type="email" class="form-control" name="email"
                                                       value="{$profile.email}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">QQ</label>
                                                <input type="number" class="form-control" name="qq"
                                                       value="{$profile.qq}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">密码</label>
                                                <input type="password" class="form-control" placeholder="为空则表示不修改密码"
                                                       name="password" value="{$profile.password}">
                                            </div
                                        </div>
                                    </div>
                                </div>

                                <div class="category">
                                    <div class="category-title">其他设置</div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>支付方式 <i class="far fa-question-circle" style="color: blue;"
                                                               aria-hidden="true"
                                                               data-toggle="tooltip" data-placement="top"
                                                               title="Tooltip on top"></i></label>
                                                <select class="form-control" name="defaultgateway">
                                                    {foreach name="gateway" item="gy"}
                                                        <option value="{$gy.name}"
                                                                {if $profile.defaultgateway == $gy.name}selected{/if}>
                                                            {$gy.title}
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>语言 <i class="far fa-question-circle" style="color: blue;"
                                                             aria-hidden="true"
                                                             data-toggle="tooltip" data-placement="top"
                                                             title="Tooltip on top"></i></label>
                                                <select class="form-control" name="language">
                                                    {foreach name="language" item="le" key="kk"}
                                                        <option value="{$kk}"
                                                                {if $profile.language == $kk}selected{/if}>
                                                            {$le}
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>销售 <i class="far fa-question-circle" style="color: blue;"
                                                             aria-hidden="true"
                                                             data-toggle="tooltip" data-placement="top"
                                                             title="Tooltip on top"></i></label>
                                                <select class="form-control" name="sale_id">
                                                    {foreach name="sale" item="se"}
                                                        <option value="{$se.id}"
                                                                {if $profile.sale_id == $se.id}selected{/if}>{$se.user_nickname}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>客户分组 <i class="far fa-question-circle" style="color: blue;"
                                                               aria-hidden="true"
                                                               data-toggle="tooltip" data-placement="top"
                                                               title="Tooltip on top"></i></label>
                                                <select class="form-control" name="groupid">
                                                    {foreach name="client_groups" item="cgs"}
                                                        <option value="{$cgs.id}"
                                                                {if $profile.groupid == $cgs.id}selected{/if}
                                                                style="color: {$cgs.group_colour}">{$cgs.group_name}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>状态 <i class="far fa-question-circle" style="color: blue;"
                                                             aria-hidden="true"
                                                             data-toggle="tooltip" data-placement="top"
                                                             title="Tooltip on top"></i></label>
                                                <select class="form-control" name="status">
                                                    {foreach name="client_status" item="clss"}
                                                        <option value="{$clss.id}"
                                                                {if $profile.status == $clss.id}selected{/if}>{$clss.status}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>接收营销信息</label>
                                                <div class="col-sm-4">
                                                    <div class="custom-control custom-switch" dir="ltr">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="customSwitchsizemd"
                                                               {if $profile.marketing_emails_opt_in == 1}checked{/if}
                                                               name="marketing_emails_opt_in">
                                                        <label class="custom-control-label"
                                                               for="customSwitchsizemd"></label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="fix-bottom">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="button" class="btn btn-primary w-md" id="submit">保存更改</button>
                                            <button type="button" class="btn btn-outline-secondary w-md" id="reset">取消更改</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var isSubmit = false;
    document.getElementById('submit').onclick = function () {
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#clienForm").serialize();
        var client_id = $("#uid").val();
        modalForm += '&client_id='+client_id;
        Toast('提交中...');
        $.post('profile_post', modalForm, function (res) {
            Toast(res.msg);
            if (res.status == 200) {
                setTimeout(function () {
                    location.reload();
                }, 1000);
            }
        });
    }

    document.getElementById('reset').onclick = function () {
        var uid = $("#uid").val();
        location.href = 'clientssummary?uid='+uid;
    }
</script>
{include file="footer"}