<style>
    .error-tip{
        color: #f46a6a;
        margin: 0;
        padding: 0;
        line-height: 36px;
        margin-left:13rem;
        display: none;
    }
    .ml-8{
        margin-left:8.3rem
    }
</style>
<script src="{$Setting.web_url}/themes/clientarea/default/assets/libs/moment/moment.js?v={$Ver}"></script>
<script src="{$Setting.web_url}/themes/clientarea/default/assets/libs/clipboard/clipboard.min.js?v={$Ver}"></script>
<!-- select -->
<link rel="stylesheet" href="{$Setting.web_url}/themes/clientarea/default/assets/libs/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
<script src="{$Setting.web_url}/themes/clientarea/default/assets/libs/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>
<script src="{$Setting.web_url}/themes/clientarea/default/assets/js/public.js?v={$Ver}"></script>
{if $Detail.host_data.type == "hostingaccount"}
    {include file="servicedetail/hosting"}
{elseif $Detail.host_data.type == "server" /}
    {include file="servicedetail/dedicated"}
{elseif $Detail.host_data.type == "cloud" /}
    {include file="servicedetail/cloud"}
{elseif $Detail.host_data.type == "dcimcloud" /}
    {include file="servicedetail/zjmfcloud"}
{elseif $Detail.host_data.type == "dcim" /}
    {include file="servicedetail/zjmfdcim"}
{elseif $Detail.host_data.type == "software" /}
    {include file="servicedetail/software"}
{elseif $Detail.host_data.type == "cdn" /}
    {include file="servicedetail/cdn"}
{elseif $Detail.host_data.type == "other" /}
    {include file="servicedetail/general"}
{else /}
{/if}

{include file="includes/modal"}
{include file="servicedetail/upgrade"}
{include file="servicedetail/upgrade-configoptions"}

<!-- 服务器内页 修改备注 弹窗 -->
<div class="modal fade" id="modifyRemarkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">{$Lang.modify_remarks}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label text-right">{$Lang.remarks}</label>
						<div class="col-sm-9">
							<div class="input-group">
								<input id="remarkInp" type="text" value="{$Detail.host_data.remark}" class="form-control api_password"
									placeholder="{$Lang.please_input}" />
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
				<button type="button" class="btn btn-primary" onclick="modifyRemarkSubmit({$Think.get.id})">{$Lang.determine}</button>
			</div>
		</div>
	</div>
</div>
<!-- 重置密码弹窗 --> 
<div class="modal fade" id="moduleResetPass" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">{$Lang.reset_password}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="resetPassword">
                <div class="modal-body">
                    <div class="form-group row mb-4">
                        <label for="horizontal-firstname-input" class="col-md-3 col-form-label d-flex justify-content-end">{$Lang.password}</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control getPassword" name="password">
                        </div>
                        <div class="col-md-1 fs-18 d-flex align-items-center">
                            <i class="fas fa-dice create_random_pass pointer" onclick="create_random_pass()"></i>
                        </div>
                        <label id="password-error-tip" class="control-label error-tip" for="password"></label>
                    </div>
                </div>
                <input type="hidden" name="func" value="crack_pass">
                <input type="hidden" name="id" value="{$Think.get.id}">
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$Lang.cancel}</button>
                <button type="button" class="btn btn-primary submit" onclick="moduleResetPass($(this))">{$Lang.determine}</button>
            </div>
        </div>
    </div>
</div>

<!-- 重装系统弹窗 -->
<div class="modal fade" id="moduleReinstall" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">{$Lang.reinstall_system}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-2  d-flex align-items-center justify-content-end">
                            <label class="float-right mb-0">{$Lang.system}</label>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group mb-0">

                                <select class="form-control configoption_os_group selectpicker" data-style="btn-default" name="os_group" onchange="moduleReinstallOsGroupChange($(this))">
                                  {foreach $Detail.cloud_os_group as $item} 
                                    {if strtolower($item.name)=="windows"}
                                    {assign name="os_svg" value="1" /}
                                    {elseif strtolower($item.name)=="centos"/}
                                    {assign name="os_svg" value="2" /}
                                    {elseif strtolower($item.name)=="ubuntu"/}
                                    {assign name="os_svg" value="3" /}
                                    {elseif strtolower($item.name)=="debian"/}
                                    {assign name="os_svg" value="4" /}
                                    {elseif strtolower($item.name)=="esxi"/}
                                    {assign name="os_svg" value="5" /}
                                    {elseif strtolower($item.name)=="xenserver"/}
                                    {assign name="os_svg" value="6" /}
                                    {elseif strtolower($item.name)=="freebsd"/}
                                    {assign name="os_svg" value="7" /}
                                    {elseif strtolower($item.name)=="fedora"/}
                                    {assign name="os_svg" value="8" /}
                                    {else/}
                                    {assign name="os_svg" value="9" /}
                                    {/if}
                                    <option  data-content="<img class='mr-1' src='/upload/common/system/{$os_svg}.svg' height='20'/>{$item.name}" value="{$item.id}">{$item.name}</option>
                                  {/foreach}
                                </select>
                            </div>
                        </div>
						
                        <div class="col-md-5">
                            <div class="form-group">
                                <select class="form-control" name="os" data-os='{:json_encode($Detail.cloud_os)}'>
                                    {foreach $Detail.cloud_os as $item}
                                       
                                        
                                          <option value="{$item.id}" data-group="{$item.group}" {if $item.group != $Detail.cloud_os_group[0]['id']}style="display:none;"{/if} >{$item.name}</option>
                                        
                                    {/foreach}
                                    
                                </select>
                                
                            </div>
                        </div>
                    </div>
                    {if $Detail.reinstall_random_port}
                        <div class="form-group row">
                            <label for="horizontal-firstname-input" class="col-md-2 col-form-label d-flex justify-content-end">{$Lang.port}</label>
                            <div class="col-md-5">
                                <input type="text" class="form-control" name="port" value="22">
                            </div>
                            <div class="col-md-1 fs-18 d-flex align-items-center">
                                <i class="fas fa-dice module_reinstall_random_port" onclick="module_reinstall_random_port()"></i>
                            </div>
                        </div>
                    {/if}
                    <div class="row">
                        <div class="col-md-2 offset-md-2 d-flex align-items-center justify-content-end">
                            <div class="custom-control custom-checkbox mb-4">
                                <input type="checkbox" class="custom-control-input" id="moduleReinstallConfirm" value="1" onchange="reinstallConfirm($(this))">
                                <label class="custom-control-label" for="moduleReinstallConfirm">{$Lang.finished_backup}</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-9">
                            <div id="moduleReinstallMsg"></div>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="func" value="reinstall">
                <input type="hidden" name="id" value="{$Think.get.id}">
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$Lang.cancel}</button>
                <button type="button" class="btn btn-primary submit disabled" style="cursor:not-allowed;" onclick="moduleReinstall($(this))">{$Lang.determine}</button>
            </div>
        </div>
    </div>
</div>


<!-- 升降级商品 -->
<div id="upgradeProductDiv"></div>
<div id="upgradeConfigDiv"></div>
<div id="orderFlowDiv"></div>
<div id="renewDiv"></div>

<script>
    // 重置密码密码校验规则
    var passwordRules =  {:json_encode($Detail.host_data.password_rule.rule)};
    console.log(passwordRules)
    $(document).on('blur', '.getPassword', function(){
		veriPassword()
    })
    function veriPassword(){
        let result = checkingPwd($(".getPassword").val(), passwordRules.num, passwordRules.upper, passwordRules.lower, passwordRules.special)
		if(result.flag) {
			$('#password-error-tip').css('display','none');
			$('.getPassword').removeClass("is-invalid");
		}else{
			$("#password-error-tip").html(result.msg);
			$(".getPassword").addClass("is-invalid");
			$('#password-error-tip').css('display','block');
		}
    }
    $(function(){
        $("#resetPassword").on('click',".create_random_pass",function(e){
            veriPassword()
        })
    })
</script>
<script src="{$Setting.web_url}/themes/clientarea/default/assets/js/servicedetail.js?v={$Ver}"></script>