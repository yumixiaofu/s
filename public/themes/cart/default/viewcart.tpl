<script>
	var _url = '{$Setting.web_url}';
	$(function(){
		$(".checkbox").on('change','.payment-checkbox',function(){
			if($(this).parent().siblings(".checkboxDiv").length!=0){
 				if($(this).parent().siblings(".checkboxDiv").hasClass('checkboxSelect')==true) $(this).parent().siblings(".checkboxDiv").removeClass("checkboxSelect")
 			}
			if($(this).prop('checked')){
				$(this).parent().addClass("checkboxSelect");
				if($(this).parent().siblings(".checkboxDiv").length!=0){
					$(this).parent().siblings(".checkboxDiv").find('input').prop("checked",false)
				}
			}else{
				$(this).parent().removeClass("checkboxSelect");
			}
		})
		$(".addfunds-payment").click(function(){
			$(this).find(".hidden").attr("checked","checked");
			$(this).addClass('active').parent().siblings('.addfunds').find(".addfunds-payment").removeClass("active").find(".hidden").removeAttr("checked");
		})
	})
</script>
<link type="text/css" href="{$Setting.web_url}/themes/cart/default/assets/js/toastr/build/toastr.min.css?v={$Ver}"
	rel="stylesheet" />
<script src="{$Setting.web_url}/themes/cart/default/assets/js/toastr/build/toastr.min.js?v={$Ver}"></script>
<script src="{$Setting.web_url}/themes/cart/default/assets/js/viewcart.js?v={$Ver}"></script>
<style>
@media (min-width: 560px) and (max-width: 1355px) {
	.addfunds-payment img{
		height: 16px;
	}
}
.modal-body{
  -moz-box-sizing: border-box;  
     -webkit-box-sizing: border-box; 
     -o-box-sizing: border-box; 
     -ms-box-sizing: border-box; 
}

</style>
<form method="post" action="cart?action=viewcart&statuscart=checkout">
	<input type="hidden" name="register_or_login" value="register">
	<div class="row">
		<div class="col-md-8">
			{if $ErrorMsg}
			<div class="alert alert-danger">
				<a href="#" class="close" data-dismiss="alert">
					&times;
				</a>
				<strong>{$ErrorMsg}</strong>
			</div>
			{/if}
			<div class="card">
				<div class="card-body">
					<h5 class="mb-0">{$Lang.payment_order}</h5>
				</div>
				<hr class="mb-0 mt-0" />
				<div class="card-body">
					{if $Userinfo}
					<div class="col-sm-12 mb-3 mt-4">
						{$Lang.dear_customers}：
							{if $Userinfo.user.username}
								{$Userinfo.user.username}
							{else}
								{$Userinfo.user.email}
							{/if}
							,{$Lang.hello}!
					</div>
					<div class="col-sm-12 mb-3 mt-4">
						手机/邮箱： {$Userinfo.user.phonenumber}
						{if $Userinfo.user.phonenumber && $Userinfo.user.email}
						<span>/</span>
						{/if}
						{$Userinfo.user.email}
					</div>
					<div class="col-sm-12 mb-3 mt-4">
						地址： {$Userinfo.user.address1}
					</div>
					<div class="col-sm-12 mb-3 mt-4">
						销售： {$Userinfo.sale_name}
					</div>
					{else/}
					<div class="d-flex justify-content-between align-items-center">
						<p class="mb-0">{$Lang.registration_login}</p>
						<span class="btn btn-sm btn-primary old-user" onClick="changeType('old')">{$Lang.please_click_here}</span>
						<span class="btn btn-sm btn-warning new-user" onClick="changeType('new')">{$Lang.new_account}</span>
					</div>
					<div class="old-user">
						<div class="row mt-4">
							{if $Register.allow_register_phone==1 && $Register.allow_register_email==1}
							<div class="col-sm-12 mb-3">
								<div class="btn-group btn-group-toggle mt-2 mt-xl-0 cart-register" data-toggle="buttons" id="register">
									<label class="btn btn-primary btn-sm active"><input type="radio" class="input_active" checked=""
											value="phone">{$Lang.mobile_registration}</label>
									<label class="btn btn-primary btn-sm"><input type="radio" value="email">{$Lang.email_registration}</label>

								</div>
							</div>
							{/if}
							{if $Register.allow_register_phone==1}
							<div class="col-sm-6 mb-3 registerphone">
								<div style="float:left;padding:0px;" class="col-sm-3" id="register_phone_code">
									<select class="form-control" name="phone_code" id="phoneCodeSel">
										{foreach $SmsCountry as $list}
										<option value="{$list.phone_code}" {if $list.phone_code=="+86" } selected{/if}>
											{$list.link}
										</option>
										{/foreach}
									</select>
								</div>
								<input class="form-control col-sm-9" name="phone" id="register_phone" placeholder="{$Lang.phone_number}" />
							</div>
							{if $Register.is_captcha==1 && $Register.allow_register_phone_captcha==1}
							<div class="col-sm-6 mb-3 registerphone">
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="captcha" placeholder="{$Lang.graphic_verification_code}" />
									</div>
									<div class="input-group-append ml-2">
										<img onclick="reloadcode(this,'allow_register_phone_captcha')"
											src="/verify?name=allow_register_phone_captcha" alt="" height="36px">

									</div>
								</div>
							</div>
							{/if}
							<div class="col-sm-6 mb-3 registerphone">
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" id="phone_code" name="code" placeholder="{$Lang.phone_verification_code}" />
									</div>
									<div class="input-group-append">
										<button id="register_phone_get_code" class="btn btn-primary" type="button"
											onclick="getCode('phone',this)">{$Lang.get_mobile_phone_verification_code}</button>
									</div>
								</div>
							</div>
							{/if}
							{if $Register.allow_register_email==1}
							<div class="col-sm-6 mb-3 registeremail" {if $Register.allow_register_phone==1 &&
								$Register.allow_register_email==1} style="display:none;" {/if}>
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="email" id="register_email" placeholder="{$Lang.email_address}" />
									</div>
								</div>
							</div>
							{if $Register.is_captcha==1 && $Register.allow_register_email_captcha==1}
							<div class="col-sm-6 mb-3 registeremail" {if $Register.allow_register_phone==1 &&
								$Register.allow_register_email==1} style="display:none;" {/if}>
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="captcha" placeholder="{$Lang.graphic_verification_code}" />
									</div>
									<div class="input-group-append ml-2">
										<img onclick="reloadcode(this,'allow_register_email_captcha')"
											src="/verify?name=allow_register_email_captcha" alt="" height="36px">

									</div>
								</div>
							</div>
							{/if}
							{if $Register.allow_email_register_code==1}
							<div class="col-sm-6 mb-3 registeremail" {if $Register.allow_register_phone==1 &&
								$Register.allow_register_email==1} style="display:none;" {/if}>
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" id="email_code" name="code" placeholder="邮箱验证码" />
									</div>
									<div class="input-group-append">
										<button id="register_email_get_code" class="btn btn-primary" type="button"
											onclick="getCode('email',this)">{$Lang.get_email_verification_code}</button>
									</div>
								</div>
							</div>
							{/if}
							{/if}
							<div class="col-sm-6 mb-3">
								<input name="password" type="password" class="form-control" placeholder="{$Lang.password}" />
							</div>
							<div class="col-sm-6 mb-3">
								<input name="repassword" type="password" class="form-control" placeholder="{$Lang.confirm_password}" />
							</div>
							{foreach $Register.login_register_custom_require as $list}
							<div class="col-sm-6 mb-3">
								<input name="{$list.name}" class="form-control"
									placeholder="{$Register.login_register_custom_require_list[$list.name]}" />
							</div>
							{/foreach}

							{foreach $Register.fields as $k => $list}
							<div class="col-sm-6 mb-3">
								{if $list.fieldtype == 'dropdown'}
								<!-- 下拉 -->
								<select name="fields[{$list.id}]" class="form-control ">
									{foreach $list.dropdown_option as $key => $val}
									<option value="{$key}">{$val}</option>
									{/foreach}
								</select>
								{elseif $list.fieldtype == 'password'}
								<!-- 密码 -->
								<input name="fields[{$list.id}]" type="password" class="form-control" placeholder="{$list.fieldname}" />
								{elseif $list.fieldtype == 'text'}
								<!-- 文本框 -->
								<input name="fields[{$list.id}]" type="text" class="form-control" placeholder="{$list.fieldname}" />
								{elseif $list.fieldtype == 'link'}
								<!-- 链接输入框 -->
								<input name="fields[{$list.id}]" type="text" class="form-control" placeholder="{$list.fieldname}" />
								{elseif $list.fieldtype == 'tickbox'}
								<!-- 选项框 -->
								<input type="checkbox" name="fields[{$list.id}]">{$list.fieldname}
								{elseif $list.fieldtype == 'textarea'}
								<!-- 文本域 -->
								<textarea name="fields[{$list.id}]" cols="30" rows="10" class="form-control"></textarea>
								{/if}
							</div>
							{/foreach}


							<!--销售-->
							{if $setsaler == '2'}
							<div class="col-sm-12 mb-3">{$Lang.sales_representative}</div>
							<div class="col-sm-6">
								<select name="sale_id" class="form-control ">
									<option value="0">{$Lang.nothing}</option>
									{foreach $saler as $saler}
									<option value="{$saler.id}" {if($sale && $sale == $saler.id)} selected {/if}>{$saler.user_nickname}</option>
									{/foreach}
								</select>
							</div>
							{/if}
						</div>
					</div>

					<div class="new-user">
						<div class="row mt-4">
							{if $Login.allow_login_phone==1 && $Login.allow_login_email==1}
							<div class="col-sm-12 mb-3">
								<div class="btn-group btn-group-toggle mt-2 mt-xl-0 cart-login" data-toggle="buttons" id="login">
									<label class="btn btn-primary btn-sm active"><input type="radio" class="input_active" checked=""
											value="phone">{$Lang.mobile_login}</label>
									<label class="btn btn-primary btn-sm"><input type="radio" value="email">{$Lang.email_login}</label>

								</div>
							</div>
							{/if}
							{if $Login.allow_login_phone==1}
							<div class="col-sm-6 mb-3 loginphone">
								<div style="float:left;padding:0px;" class="col-sm-3" id="register_phone_code">
									<select class="form-control" name="phone_code" id="phoneCodeSel">
										{foreach $SmsCountry as $list}
										<option value="{$list.phone_code}" {if $list.phone_code=="+86" } selected{/if}>
											{$list.link}
										</option>
										{/foreach}
									</select>
								</div>
								<input class="form-control col-sm-9" name="phone" id="register_phone" placeholder="{$Lang.phone_number}" />
							</div>
							{if $Login.is_captcha==1 && $Login.allow_login_phone_captcha==1}
							<div class="col-sm-6 mb-3 loginphone">
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="captcha" placeholder="{$Lang.graphic_verification_code}" />
									</div>
									<div class="input-group-append ml-2">
										<img onclick="reloadcode(this,'allow_login_phone_captcha')"
											src="/verify?name=allow_login_phone_captcha" alt="" height="36px">

									</div>
								</div>
							</div>
							{/if}
							<!--<div class="col-sm-6 mb-3 loginphone">
							<div class="input-group">
								<div class="custom-file">
									<input class="form-control" id="phone_code" name="code" placeholder="手机验证码" />
								</div>
								<div class="input-group-append">
									<button id="register_phone_get_code" class="btn btn-primary" type="button" >获取手机验证码</button>
								</div>
							</div>
						</div>-->
							{/if}
							{if $Login.allow_login_email==1 || $Login.allow_id}
							<div class="col-sm-6 mb-3 loginemail" {if $Login.allow_login_phone==1 && $Login.allow_login_email==1}
								style="display:none;" {/if}>
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="email"
											placeholder="{if $Login.allow_login_email && $Login.allow_id}{$Lang.input_email_id}{elseif $Login.allow_login_email && !$Login.allow_id}{$Lang.input_email}{elseif !$Login.allow_login_email && $Login.allow_id}{$Lang.input_id}{/if}" />
									</div>
								</div>
							</div>
							{if $Login.is_captcha==1 && $Login.allow_login_email_captcha==1}
							<div class="col-sm-6 mb-3 loginemail" {if $Login.allow_login_phone==1 && $Login.allow_login_email==1}
								style="display:none;" {/if}>
								<div class="input-group">
									<div class="custom-file">
										<input class="form-control" name="captcha" placeholder="{$Lang.graphic_verification_code}" />
									</div>
									<div class="input-group-append ml-2">
										<img onclick="reloadcode(this,'allow_login_email_captcha')"
											src="/verify?name=allow_login_email_captcha" alt="" height="36px">

									</div>
								</div>
							</div>
							{/if}
							{/if}


							{if $Login.allow_login_email || $Login.allow_login_phone || $Login.allow_id}
							<div class="col-sm-6 mb-3">
								<input class="form-control" name="password" type="password" placeholder="{$Lang.password}" />
							</div>
							{else /}
							{$Lang.login_not_open}
							{/if}
						</div>

					</div>
					{/if}
					{if $Setting.cart_product_description}
					<div class="alert alert-success alert-dismissable mt-5">{$Setting.cart_product_description}</div>
					{/if}
					<!--销售-->
					{if $Userinfo && $Userinfo.user.sale_id == '0' && $sale_setting == '2'}
					<div class="col-sm-12 mb-3">{$Lang.sales_representative}</div>
					<div class="col-sm-6">
						<select name="sale_id" class="form-control ">
							<option value="0">{$Lang.nothing_two}</option>
							{foreach $saler as $saler}
							<option value="{$saler.id}" {if($sale && $sale == $saler.id)} selected {/if}>{$saler.user_nickname}</option>
							{/foreach}
						</select>
					</div>
					{/if}

					<p class="mt-5">{$Lang.payment_method}</p>

					<div class="col-sm-12 mb-3 checkbox checkDiv" style="display: flex;align-items: center;">
						<!-- 其他方式：
						<input type="radio" name="paymt" data-name="switch" value="" id="paymt"> -->
						{if $Userinfo.user.credit > 0}
							<div class="checkboxDiv">	
								<input class="payment-checkbox" type="checkbox" name="paymt" data-name="switch" value="credit" id="paymt" style="margin-right:5px"> 使用余额支付 
								<span class="mr-1" style="margin-left: 35px;">
									<img width="20" src="{$Setting.web_url}/themes/clientarea/default/assets/images/gold.svg" alt="">
								</span>
								￥{$Userinfo.user.credit}
							</div>
							
						{/if}

						{if !empty($client.is_open_credit_limit) && $client.credit_limit_balance >= $ShopData.total_price }
							<div class="checkboxDiv">
								<input class="payment-checkbox" type="checkbox" name="paymt" data-name="switch" value="credit_limit" id="paymt" style="margin-right:5px;"> 使用信用额支付
								<span class="mr-1" style="margin-left: 35px;padding-bottom:5px;">
									<img width="20" src="{$Setting.web_url}/themes/clientarea/default/assets/images/CreditCard.png" alt="">
								</span>
								￥{$client.credit_limit_balance}
							</div>
						{/if}
					</div>

					<div class="row">
						{foreach $ShopData.gateway_list as $list}
						<div class="col-sm-3 addfunds">

							<div class="addfunds-payment {if $list.name==$ShopData.default_gateway}active{/if}"
								data-payment="{$list.name}" title="" data-toggle="tooltip" data-placement="bottom"
								data-original-title="{$list.title}">
								<input type="radio" name="payment" class="hidden" value="{$list.name}" {if
									$list.name==$ShopData.default_gateway}checked="checked" {/if}>
								{if $list.author_url}
								<img src="{$list.author_url}" />
								{else/}
								{$list.title}
								{/if}
							</div>
						</div>
						{/foreach}
					</div>

					<p class="mt-5">{$Lang.discount_code}</p>

					{if $ShopData.promo}
					<div class="input-group">
						{$ShopData.promo.promo_desc_str}
						<a href="javascript:;" style="margin-left:20px;" id="removepromo">{$Lang.remove}</a>
					</div>
					{else/}
					<div class="input-group" id="promo">
						<div class="custom-file">
							<input type="text" class="form-control" name="promo" value="{$promocode}" placeholder="{$Lang.discount_code}">
						</div>
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">{$Lang.application}</button>
						</div>

					</div>
					{/if}

				</div>
			</div>
		</div>


		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<div class="invoice-title">
						<h4 class=" font-size-16">{$Lang.products_purchased}</h4>
					</div>
					<hr>
					<div>
						{foreach $ShopData.cart_products as $cart_val=>$cart}
						<address>
							<div class="d-flex justify-content-between">
								<strong>{$cart.productsname}:</strong>
								{if $cart.allow_qty==1}
								<div class="cart_qty">
									<input type="hidden" name="i" value="{$cart_val}">
									<input type="number" name="qty" class="number" value="{$cart.qty}" style="width: 70px;">
									<button type="button" class="btn btn-sm" style="background: #efefef;" onclick="cartQtyBtn(this)">{$Lang.to_update}</button>
								</div>
								{/if}
								<div>
									<a href="cart?action=configureproduct&pid={$cart.productid}&i={$cart_val}"><i
											class="fas fa-pen mr-1"></i></a>
									<a href="javascript:;" onclick="removeItem('cart?action=viewcart&statuscart=remove', '{$Lang.delete_item}', '{$Lang.sure_delete}', {i: {$cart_val}})">
										<i class="fas fa-times-circle"></i>
									</a>
								</div>
							</div>
							{foreach $cart.configoptions as $configoptions_key=>$configoptions_val}
							<p class="mb-0">{$configoptions_key} : <span class="font-weight-medium">{$configoptions_val.value}</span>
							</p>
							{/foreach}
							{$ShopData.currency.prefix}{$cart.pricing/$cart.qty}/{$cart.billingcycle_desc}<br>
							{if $cart.setup_pricing}
							{$Lang.initial_installation_fee}:{$ShopData.currency.prefix}{$cart.setup_pricing/$cart.qty}{$ShopData.currency.suffix} {/if}<br>
							{if
							$cart.saleproducts}({$Lang.customer_discount}：{$ShopData.currency.prefix}{$cart.saleproducts/$cart.qty}{$ShopData.currency.suffix})<br>{/if}

						</address>
						{/foreach}
						<div class="font-size-16 mt-2 d-flex justify-content-between"><span>{$Lang.subtotal}:</span>
							{if $ShopData.cart_products}
							<span>{$ShopData.currency.prefix}<strong
									class="font-size-18">{$ShopData.total_price}</strong>{$ShopData.currency.suffix}</span>
							{else/}
							0.00
							{/if}
						</div>
					</div>
					<hr />
					<div class="font-size-16 mt-2 d-flex justify-content-between">
						<span>{$Lang.total}:</span>
						{if $ShopData.cart_products}
						<span>{$ShopData.currency.prefix}<strong
								class="font-size-18 text-primary">{$ShopData.total_price}</strong>{$ShopData.currency.suffix}</span>
						{else/}
						0.00
						{/if}
					</div>
					<div class="d-print-none">
						<div class=" ">
							<div class="custom-control custom-checkbox  align-items-end mr-2">
                 <input type="checkbox" class="custom-control-input"  id="terms" name="terms" value="1" required>
                 <label class="custom-control-label" for="terms">	{$Lang.agree}<a href="{$Setting.web_tos_url}" target="blank">{$Lang.terms_service}</a></label>
                 <!-- <div class="invalid-feedback">你在提交之前必须同意。</div> -->

								<!-- <input type="checkbox" class="custom-control-input" id="terms" name="terms" value="1">
								<label class="custom-control-label" for="terms">
									{$Lang.agree}<a href="{$Setting.web_tos_url}" target="blank">{$Lang.terms_service}</a>
								</label>  -->
							</div>
							<div class="text-sm-right mt-2">
								<button class="btn btn-primary w-100" type="submit" {if !$ShopData.cart_products}disabled{/if}><i
										class="mdi mdi-truck-fast mr-1"></i>{$Lang.check_out_now}</button>
							</div>
						</div>

					</div>

				</div>

			</div>
		</div>

	</div>
</form>

<!-- 删除确认 -->
<div class="modal fade" id="customModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="customTitle">{$Lang.prompt}</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" id="customBody">

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-light" data-dismiss="modal">{$Lang.cancel}</button>
				<button type="button" class="btn btn-primary" id="customSureBtn">{$Lang.determine}</button>
			</div>
		</div>
	</div>
</div>

<style>
	.list-inline-item .icon {
		width: 2rem;
		height: 2rem;
	}

	.social-list-item {
		border: none;
	}
</style>



<style>
	.checkboxDiv{
    	width: 50%;
		border-radius: 0.25rem;
		height: 40px;
		display: flex;
		align-items: center;
		padding-left:10px;
		border: 1px solid #fff;
	}
	.checkboxSelect{
		border-color:  #007bfc;
	}
	@media screen and (max-width: 755px) {
		.checkboxDiv {
			width: 100% !important;
		}
		.checkDiv{
			display:block !important;
		}
	}
	.payType {
		cursor: pointer;
	}

	.payType.active,
	.payType:hover {
		border-color: #2948df !important;
	}

	.new-user {
		display: none;
	}

	.fas {
		cursor: pointer;
	}

	.number {
		width: 50px;
	}
</style>