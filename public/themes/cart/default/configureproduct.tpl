
<style>
.was-validated .custom-control-input:valid ~ .custom-control-label::before{
    background-color: #fff;
  }
   .bootstrap-select.is-valid .dropdown-toggle, .was-validated .bootstrap-select select:valid+.dropdown-toggle{
      border-color:#ced4da !important;
  }
  .form-control.is-valid, .was-validated .form-control:valid{
    display: block;
    width: 100%;
    padding: 0.47rem 0.75rem;
    font-size: 0.8125rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057; 
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiP…45NSwyLjI2LDYsMi4xMyw2LDJWMS41QzYsMS4yMiw1Ljc4LDEsNS41LDF6Ii8+Cjwvc3ZnPgo=);
    background-position-y: 50%;
    background-position-x: calc(100% - 11px);
    background-repeat: no-repeat;
    padding-right: 24px;
  }

	.cycle-select-discount {
		position: absolute;
		top: 0;
		right: 0;
		display: inline-block;
		width: 14px;
		height: 15px;
		background-color: #f56921;
		color: #ffffff;
		font-size: 12px;
		text-align: center;
		line-height: 15px;
	}
	.error-tip{
		color: #f46a6a;
		margin: 0;
		padding: 0;
		line-height: 36px;
		display: none;
	}
	input::-webkit-input-placeholder {
		color: #cacdd4 !important;
	}
	input:-moz-placeholder {
		color: #cacdd4 !important;
	}
	input::-moz-placeholder {
		color: #cacdd4 !important;
	}
	input:-ms-input-placeholder {
		color: #cacdd4 !important;
	}
</style>


{if isset($Get.i)}
<form id="addCartForm" method="post" class="needs-validation configoption_form" novalidate action="?action=configureproduct&pid={$CartConfig.product.id}&pos[]={$Think.get.i}">
	<input type="hidden" name="i" value="{$Think.get.i}" />
	{else/}
	<form id="addCartForm" method="post" class="needs-validation configoption_form" novalidate action="?action=configureproduct&pid={$CartConfig.product.id}{if $Get.site}&site={$Get.site}{/if}">
		{/if}
		<div class="row">
			<div class="col-xl-8">
				<div class="card border-bottom mb-0">
					<div class="card-body">
						{if $ErrorMsg}
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert">
								&times;
							</a>
							<strong>{$ErrorMsg}</strong>
						</div>
						{/if}
						<div class="d-flex justify-content-between align-items-center">
							<h4 class="card-title ">{$CartConfig.product.name}</h4>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-body">



						<input type="hidden" name="pid" value="{$CartConfig.product.id}" />
						<input type="hidden" name="currencyid" value="{$CartConfig.dafault_currencyid}" />
						<input name="qty" type="hidden" value="1" />
						{if(isset($addParam.promocode))}
							<input type="hidden" name="promocode" value="{$addParam.promocode}" />
						{/if}
						{if(isset($addParam.aff))}
							<input type="hidden" name="aff" value="{$addParam.aff}" />
						{/if}
						{if(isset($addParam.sale))}
							<input type="hidden" name="sale" value="{$addParam.sale}" />
						{/if}
						<!--产品配置项-->
						{foreach $CartConfig.option as $option}
						{if $option.option_type==1}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-3">
								<select id="config{$option.id}" name="configoption[{$option.id}]" class="form-control selectpicker"
									data-style="btn-default">
									{foreach $option.sub as $sub}
									<option id="sub{$sub.id}" {if $CartConfig.config_options[$option.id]==$sub.id} selected="" {elseif $getUrlConfig.config_options[$option.id]==$sub.id && !$CartConfig.config_options} selected="" {/if}
										value="{$sub.id}">{$sub.option_name}</option>
									{/foreach}
								</select>
							</div>
						</div>
						{elseif $option.option_type==2 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10 d-flex justify-content-start" style="padding-top: calc(0.47rem + 1px);">
								{foreach $option.sub as $sub_key=>$sub_val}
								<div class="form-check mr-4">
									<input id="config{$option.id}_{$sub_val.id}" type="radio" name="configoption[{$option.id}]"
										value="{$sub_val.id}" class="form-check-input" {if
										$CartConfig.config_options[$option.id]==$sub_val.id}checked="" {elseif $sub_key==0 &&
										!$CartConfig.config_options /} checked="" {elseif $getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked="" {/if}>
									<label class="form-check-label" for="config{$option.id}_{$sub_val.id}">{$sub_val.option_name}</label>
								</div>
								{/foreach}
							</div>
						</div>
						{elseif $option.option_type==3 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10">
								{foreach $option.sub as $sub_key=>$sub_val}
								<div class="custom-control custom-checkbox mb-3">
									<input id="config{$option.id}_{$sub_val.id}" type="checkbox" name="configoption[{$option.id}]"
										class="custom-control-input" {if $CartConfig.config_options[$option.id]==$sub_val.id} checked=""
									{elseif $getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked="" {/if} value="{$sub_val.id}">
									<label class="custom-control-label"
										for="config{$option.id}_{$sub_val.id}">{$sub_val.option_name}</label>
								</div>
								{/foreach}
							</div>
						</div>
						{elseif $option.option_type==4 || $option.option_type==7 || $option.option_type==9 ||
						$option.option_type==11 || $option.option_type==14 || $option.option_type==15 || $option.option_type==16 ||
						$option.option_type==17 || $option.option_type==18 || $option.option_type==19 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10 d-flex align-items-center">
								<input type="range" min="{$option.qty_minimum}" max="{$option.qty_maximum}" {if
									$CartConfig.config_options[$option.id]}value="{$CartConfig.config_options[$option.id]}" {elseif $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options} value="{$getUrlConfig.config_options[$option.id]}" {else
									/}value="{$option.qty_minimum}" {/if} data-sub='{:json_encode($option.sub)}'
									class="form-control-range configoption_range float-left mr-2" style="width: 80%;"
									onmousemove="rangeChange(this)" >
								<!-- <input type="text" min="{$option.qty_minimum}" max="{$option.qty_maximum}" {if $CartConfig.config_options[$option.id]}value="{$CartConfig.config_options[$option.id]}" {elseif $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options} value="{$getUrlConfig.config_options[$option.id]}" {else /}value="{$option.qty_minimum}"{/if} data-sub='{:json_encode($option.sub)}'  class="configoption_range float-left"> -->
								<input id="config{$option.id}" data-type="number"
									class="mr-2 col-md-1 form-control form-control-sm configoption_range_val float-left"
									name="configoption[{$option.id}]" onkeydown="numberKeyup(this)" type="text" min="{$option.qty_minimum}"
									max="{$option.qty_maximum}" {if
									$CartConfig.config_options[$option.id]}value="{$CartConfig.config_options[$option.id]}" {elseif $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options} value="{$getUrlConfig.config_options[$option.id]}" {else
									/}value="{$option.qty_minimum}" {/if}>
								{if $option.option_type == '4' || $option.option_type == '15'}
								<span>个</span>
								{elseif $option.option_type == '7' || $option.option_type == '16'}
								<span>核</span>
								{elseif $option.option_type == '9' || $option.option_type == '17'}
								<span>GB</span>
								{elseif $option.option_type == '11' || $option.option_type == '18'}
								<span>Mbps</span>
								{elseif $option.option_type == '14' || $option.option_type == '19'}
								<span>GB</span>
								{/if}
							</div>
						</div>
						{elseif $option.option_type==6 || $option.option_type==8 || $option.option_type==10 ||
						$option.option_type==13 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10">
								<div class="btn-group btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
									{foreach $option.sub as $sub_key=>$sub_val}
									<label class="btn btn-primary btn-sm active">
										<input id="config{$option.id}_{$sub_val.id}" type="radio" {if
											$CartConfig.config_options[$option.id]==$sub_val.id}checked="" {elseif $sub_key==0 &&
											!$CartConfig.config_options /} checked="" {elseif $getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked="" {/if} name="configoption[{$option.id}]"
											value="{$sub_val.id}"> {$sub_val.option_name}
									</label>
									{/foreach}
								</div>
							</div>
						</div>
						<!--操作系统-->
						{elseif $option.option_type==5 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							{if $option.sub.os }
							<div class="col-md-3">
								<select id="config{$option.id}" name="configoption[{$option.id}]"
									class="form-control selectpicker configoption_os selectpicker_refresh" data-style="btn-default">
									{foreach $option.sub.os.child as $sub}
									<option id="sub{$sub.id}" value="{$sub.id}" {if
										$CartConfig.config_options[$option.id]==$sub.id}selected="" {elseif $getUrlConfig.config_options[$option.id]==$sub.id && !$CartConfig.config_options} selected="" {/if}>{$sub.version}</option>
									{/foreach}
								</select>
							</div>
							{else/}
							<div class="col-md-2">
								<select class="form-control configoption_os_group selectpicker" data-style="btn-default"
									onchange="osGroupChange(this)">
									{foreach $option.sub as $sub_key=>$sub_val}
									{assign name="os_selected" value="" /}
									{foreach $sub_val.child as $child_key=>$child_val}
									{if $child_val.id==$CartConfig.config_options[$option.id]}
									{assign name="os_selected" value="$sub_key" /}
									{/if}
									{/foreach}
									{if strtolower($sub_key)=="windows"}
									{assign name="os_svg" value="1" /}
									{elseif strtolower($sub_key)=="centos"/}
									{assign name="os_svg" value="2" /}
									{elseif strtolower($sub_key)=="ubuntu"/}
									{assign name="os_svg" value="3" /}
									{elseif strtolower($sub_key)=="debian"/}
									{assign name="os_svg" value="4" /}
									{elseif strtolower($sub_key)=="esxi"/}
									{assign name="os_svg" value="5" /}
									{elseif strtolower($sub_key)=="xenserver"/}
									{assign name="os_svg" value="6" /}
									{elseif strtolower($sub_key)=="freebsd"/}
									{assign name="os_svg" value="7" /}
									{elseif strtolower($sub_key)=="fedora"/}
									{assign name="os_svg" value="8" /}
									{else/}
									{assign name="os_svg" value="9" /}
									{/if}
									<option
										data-content="<img class='mr-1' src='/upload/common/system/{$os_svg}.svg' height='20'/>{$sub_key}"
										{if $os_selected}selected="" {elseif $getUrlConfig.config_options[$option.id]==$child_val.id && !$CartConfig.config_options} selected="" {/if} data-os='{:json_encode($sub_val.child)}' value="{$sub_key}">
										{$sub_key}</option>
									{/foreach}
								</select>
							</div>
							<div class="col-md-3">
								<select id="config{$option.id}" name="configoption[{$option.id}]"
									class="form-control selectpicker_refresh configoption_os"
										{if $CartConfig.config_options[$option.id]} data-os-selected="{$CartConfig.config_options[$option.id]}" {elseif $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options} data-os-selected="{$getUrlConfig.config_options[$option.id]}" {/if} data-style="btn-default">

								</select>
							</div>
							{/if}

						</div>

						<!--数据中心-->
						{elseif $option.option_type==12 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}

							</label>
							<div class="col-md-10">

								{if $option.sub.0.area.0.area_zh}

								<select id="config{$option.id}" name="configoption[{$option.id}]"
									class="form-control col-md-3 selectpicker" data-style="btn-default">
									{foreach $option.sub as $sub_key=>$sub_val}
									{foreach $sub_val.area as $area}
									<option
										data-content="<img class='mr-1' src='/upload/common/country/{$sub_val.country_code}.png' height='20'/>{$sub_val.option_name}{$area.area_zh}"
										value="{$area.id}" {if $CartConfig.config_options[$option.id]==$area.id}selected="" {elseif $getUrlConfig.config_options[$option.id]==$area.id && !$CartConfig.config_options} selected="" {/if}>
										{$sub_val.option_name}{$area.area_zh}</option>
									{/foreach}
									{/foreach}
								</select>

								{else/}
								<div class=" btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
									{foreach $option.sub as $sub_key=>$sub_val}
									<label class="btn btn-primary  active mr-2">
										<input id="config{$option.id}_{$sub_val.area.0.id}" type="radio" {if
											$CartConfig.config_options[$option.id]==$sub_val.area.0.id}checked="" {elseif $sub_key==0 &&
											!$CartConfig.config_options /} checked="" {elseif $getUrlConfig.config_options[$option.id]==$sub_val.area.0.id && !$CartConfig.config_options} checked="" {/if} name="configoption[{$option.id}]"
											value="{$sub_val.area.0.id}">
										{if $sub_val.country_code}
										<img class='mr-1' src='/upload/common/country/{$sub_val.country_code}.png' height='20' />
										{/if}
										{$sub_val.option_name?:$Lang.defaults}
									</label>
									{/foreach}
								</div>
								{/if}

							</div>
						</div>
						{/if}



						{/foreach}
						<!--自定义字段-->
						{foreach $CartConfig.custom_fields as $custom_fields} 
						{if $custom_fields.fieldtype=="dropdown"}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-3">
								<select id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]" class="form-control selectpicker"
									data-style="btn-default" {if $custom_fields.required}required{/if}>
									{foreach $custom_fields.dropdown_option as $dropdown_option}
									<option value="{$dropdown_option}" {if
										$CartConfig.custom_fields_value[$custom_fields.id]==$dropdown_option}selected="" {/if}>
										{$dropdown_option}</option>
									{/foreach}
								</select>
							</div>
						</div>
						{elseif $custom_fields.fieldtype=="tickbox" /}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-10">
								<div class="custom-control custom-checkbox mb-3">
									<input name="customfield[{$custom_fields.id}]" {if
										$CartConfig.custom_fields_value[$custom_fields.id]==1}checked="" {/if} type="checkbox"
										class="custom-control-input" id="customfields{$custom_fields.id}">
									<label class="custom-control-label"
										for="customfields{$custom_fields.id}">{$custom_fields.description}</label>
								</div>
							</div>
						</div>
						{elseif $custom_fields.fieldtype=="textarea" /}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-3">
								<textarea id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]" class="form-control getTextareaVal" data-object="{$custom_fields.required}||{$custom_fields.regexpr}" rows="2"
									placeholder="{$custom_fields.description}" {if $custom_fields.required}required{/if}>{$CartConfig.custom_fields_value[$custom_fields.id]}</textarea>
							</div>
						</div>
						{else/}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-3">
								<input class="form-control getVal" data-object="{$custom_fields.required}||{$custom_fields.regexpr}" id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]"
									value="{$CartConfig.custom_fields_value[$custom_fields.id]}" type="{$custom_fields.fieldtype}"
									placeholder="{$custom_fields.description}" {if $custom_fields.required}required{/if} />
							</div>
						</div>
						{/if}
						{/foreach}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.cycles}</label>
							<div class="col-md-10">
								<div class="btn-group btn-group-toggle cycle mt-2 mt-xl-0" data-toggle="buttons">
									{foreach $CartConfig.product.cycle as $cycle_key=>$cycle}
									<label class="btn btn-primary btn-sm active">
										<input type="radio" name="billingcycle" value="{$cycle.billingcycle}" {if
											$CartConfig.billingcyle==$cycle.billingcycle}checked="" {elseif $cycle_key==0 &&
											!$CartConfig.billingcyle && !$addParam.billingcycle /} checked="" {elseif $addParam.billingcycle==$cycle.billingcycle &&
										!$CartConfig.billingcyle /} checked="" {/if}>{$cycle.billingcycle_zh}
										{if $cycle.discount}
										<span class="cycle-select-discount">{$Lang.benefit}</span>
										{/if}
									</label>
									{/foreach}
								</div>
							</div>
						</div>

						<div class="form-group row" {if $CartConfig.product.host.show==0} style="display:none" {/if}>
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.host_name}</label>
							<div class="col-md-3">
								<input class="form-control" type="text" disabled="disabled" {if
									$CartConfig.host}value="{$CartConfig.host}" {else /}value="{$CartConfig.product.host.host}"
									{/if} />
								<input class="form-control" name="host" type="hidden" {if
									$CartConfig.host}value="{$CartConfig.host}" {else /}value="{$CartConfig.product.host.host}"
									{/if} />
							</div>
						</div>
						<div class="form-group row" {if $CartConfig.product.password.show==0} style="display:none" {/if}>
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.host_password}</label>
							<div class="col-8 col-md-3">
								<input 
								class="form-control getPassword"
								id="password" 
								name="password" 
								type="password" 
								{if $CartConfig.password}
									value="{$CartConfig.password}"
								{else/}
									 value="{$CartConfig.product.password.password}" 
								{/if} 
								/>
							</div>
							<div class="d-inline-flex align-items-center">
								<span class="bx bx-show-alt pointer fs-20 text-primary" onclick="showPwd()"></span>
							</div>
							<div class="col-1 col-md-1 fs-18 d-flex align-items-center">
								<i class="fas fa-dice create_random_pass pointer" onclick="randomPwd()"></i>
							</div>
							<label id="password-error-tip" class="control-label error-tip" for="password"></label>
						</div>



					</div>
				</div>
			</div>
			<div class="col-xl-4">

				<div class="card">
					<div class="card-body">
						<h4 class="card-title fs-16">{$Lang.order_summary}：</h4>

						<div class="table-responsive configoption_total fs-14">

						</div>
					</div>
				</div>
				<!-- end card -->
			</div>
		</div>

	</form>
	<!-- select -->
	<link rel="stylesheet"
		href="{$Setting.web_url}/themes/cart/default/assets/js/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
	<script src="{$Setting.web_url}/themes/cart/default/assets/js/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>
	<!-- slider -->
	<link rel="stylesheet"
		href="{$Setting.web_url}/themes/cart/default/assets/js/ion-rangeslider/css/ion.rangeSlider.min.css?v={$Ver}">
	<script src="{$Setting.web_url}/themes/cart/default/assets/js/ion-rangeslider/js/ion.rangeSlider.min.js?v={$Ver}"></script>
	<script>
		
		// 密码重置
		var pwdRule = {
			len_num: '{$CartConfig.product.password.rule.len_num}',
			num: '{$CartConfig.product.password.rule.num}',
			upper: '{$CartConfig.product.password.rule.upper}',
			lower: '{$CartConfig.product.password.rule.lower}',
			special: '{$CartConfig.product.password.rule.special}'
		}
		var links = {:json_encode($CartConfig.links)};
		var order_frm_tpl = '{$order_frm_tpl}';
		var tpl_type = '{$tpl_type}';

		$(document).ready(function(){ 
			let dom=$('.dropdown-menu .inner .show')
			for(let item of dom){
				item.style.maxHeight="300px"
			}
		}); 

		$(function(){
			$("#addCartForm").on('blur',".getVal",function(e){
				let arr=e.target.dataset.object.split('||')
				let reg=''
				if(arr[1]!='') reg=new RegExp(arr[1])
				if(arr[0]==1){
					if(e.target.value==''){
						e.target.classList.add("is-invalid");
					}else if(reg!='' && reg.test(e.target.value)==false){
						e.target.classList.add("is-invalid");
					}else{
						e.target.classList.remove("is-invalid");
					}
				}
			})
		})

		$(function(){
			$("#addCartForm").on('blur',".getTextareaVal",function(e){
				console.log(e)
				let arr=e.target.dataset.object.split('||')
				let reg=''
				if(arr[1]!='') reg=new RegExp(arr[1])
				if(arr[0]==1){
					if(e.target.value==''){
						e.target.classList.add("is-invalid");
					}else if(reg!='' && reg.test(e.target.value)==false){
						e.target.classList.add("is-invalid");
					}else{
						e.target.classList.remove("is-invalid");
					}
				}
			})
		})

		function randomPwd () {
			veriPassword()
		}

	// 获取主机密码校验规则
	var passwordRules =  {:json_encode($CartConfig.product.password.rule)};
	console.log(passwordRules)
	$(document).on('blur', '.getPassword', function(){
		verConfigGPsd()
	})

	function verConfigGPsd() {
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
	</script>
	<script src="{$Setting.web_url}/themes/cart/default/assets/js/configureproduct.js?v={$Ver}"></script>