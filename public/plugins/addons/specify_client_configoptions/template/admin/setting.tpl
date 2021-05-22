<link type="text/css" href="{$Themes}/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
<script src="{$Themes}/assets/libs/toastr/build/toastr.min.js"></script>
<link rel="stylesheet" href="{$Themes}/assets/libs/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
<script src="{$Themes}/assets/libs/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>
{if $ErrorMsg}
    {include file="{$Themes}/error/alert" value="$ErrorMsg"}
{/if}

{if $SuccessMsg}
    {include file="{$Themes}/error/notifications" value="$SuccessMsg" url=""}
{/if}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="card-title row"> <div style="padding:0 15px;">{$Title}</div>
                        <div class="col-lg-8 col-md-12 col-sm-12">
                            {foreach $PluginsAdminMenu as $v}
                                {if $v['custom']}
                                    <span  class="ml-2"><a  class="h5" href="{$v.url}" target="_blank">{$v.name}</a></span>
                                {else/}
                                    <span  class="ml-2"> <a  class="h5" href="{$v.url}">{$v.name}</a></span>
                                {/if}
                            {/foreach}
                        </div>
                    </div>
    <form method="post" action="{:shd_addon_url('SpecifyClientConfigoptions://AdminIndex/settingPost')}" class="needs-validation" novalidate>

            <input type="hidden" name="id" value="{$rule.id}">
                <div class="row">
                    <div class="col-sm-6 col-12">
                        <div class="form-group">
                            <label for="formrow-firstname-input">选择客户(可多选)</label>
                            <select class="form-control" name="uids[]" multiple="multiple" size="6">
                                {foreach $clients as $client}
                                    <option value="{$client.id}" {if $client.id == $rule.uid}selected{/if}>{$client.username}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-6 col-12">
                        <div class="form-group">
                            <label for="formrow-firstname-input">选择产品</label>
                            <select id="products" class="form-control" name="pid">
                                
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-12">
                        <div class="form-group">
							<label for="formrow-firstname-input">产品配置</label>
							<select id="products_configs" name="cid" class="form-control">
							</select>
                        </div>
                    </div>

                    <div class="col-sm-6 col-12">
                        <div class="form-group">
							<label for="formrow-firstname-input">指定选项(可多选)</label>
							<select id="products_configs_subs" name="oids[]" class="form-control" multiple="multiple" size="6">
							</select>
                        </div>
                    </div>


                    <div class="col-sm-6 col-12">
                        <div class="form-group">
                            <label for="formrow-firstname-input">状态</label>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="status"
                                       name="status" value="1" {if $rule.status==1||is_null($rule.status)}
                                    checked="checked" {/if}>
                                <label class="custom-control-label" for="status" disabled>启用</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group mb-0">
                            <button type="submit" class="btn btn-primary w-xl submitBtn">提交</button>
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
$(function() {
	var products={:json_encode($products)};
	
	productChange(0);
	$("#products").on("click",function(){
		productChange($(this).val());
	});
	$("#products_configs").on("click",function(){
		productConfigsChange($(this).val());
	});
	function productChange(productid){
		var product="",product_configs="",product_configs_subs="";
		$.each(products,function(key,val){
		    if ('{$rule.pid}' && '{$rule.pid}' == val.id){ // 编辑
                product+='<option selected value="'+val.id+'">'+val.name+'</option>';
            } else{
                product+='<option value="'+val.id+'">'+val.name+'</option>';
            }
            if ('{$rule.id}') { // 编辑
                if((productid>0 && val.id==productid) || (productid==0 && '{$rule.pid}' && '{$rule.pid}' == val.id)){  //限制产品
                    $("#products_configs").data("config",val.configs);
                    $.each(val.configs,function(key_configs,val_configs){
                        if ('{$rule.cid}' && '{$rule.cid}' == val_configs.id){
                            product_configs+='<option selected value="'+val_configs.id+'">'+val_configs.option_name+'</option>';
                        } else {
                            product_configs+='<option value="'+val_configs.id+'">'+val_configs.option_name+'</option>';
                        }
                        if (('{$rule.cid}' && '{$rule.cid}' == val_configs.id)){
                            $.each(val_configs.subs,function(key_configs_subs,val_configs_subs){
                                if ('{$rule.oid}' && '{$rule.oid}' == val_configs_subs.id) {
                                    product_configs_subs+='<option selected value="'+val_configs_subs.id+'">'+val_configs_subs.option_name+'</option>';
                                } else {
                                    product_configs_subs+='<option value="'+val_configs_subs.id+'">'+val_configs_subs.option_name+'</option>';
                                }
                            })
                            $("#products_configs_subs").html(product_configs_subs);
                        }
                    })
                    $("#products_configs").html(product_configs);
                }
            } else { // 新增
                if((productid>0 && val.id==productid) || (productid==0 && key==0)){
                    $("#products_configs").data("config",val.configs);
                    $.each(val.configs,function(key_configs,val_configs){
                        product_configs+='<option value="'+val_configs.id+'">'+val_configs.option_name+'</option>';
                        if (key_configs==0){
                            $.each(val_configs.subs,function(key_configs_subs,val_configs_subs){
                                product_configs_subs+='<option value="'+val_configs_subs.id+'">'+val_configs_subs.option_name+'</option>';
                            })
                            $("#products_configs_subs").html(product_configs_subs);
                        }
                    })
                    $("#products_configs").html(product_configs);
                }
            }
		})
		if(productid==0)$("#products").html(product);
	}
	function productConfigsChange(configsid){
		var product_configs_subs="";
		var configs=$("#products_configs").data("config");
		$.each(configs,function(key_configs,val_configs){
			if((configsid>0 && val_configs.id==configsid)){
				$.each(val_configs.subs,function(key_configs_subs,val_configs_subs){
					product_configs_subs+='<option value="'+val_configs_subs.id+'">'+val_configs_subs.option_name+'</option>';				
				})
				$("#products_configs_subs").html(product_configs_subs);
				return false;
			}
		})
		
		
	}
});
</script>