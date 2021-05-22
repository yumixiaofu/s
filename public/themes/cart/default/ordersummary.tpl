

<style>
	.ordersummary td {
		border:none!important;
		padding: 5px!important;
	}
	
</style>

{if $ConfigureTotal.type}
		{if $ConfigureTotal.type.type == '1'}
			<span class="text-danger">{$Lang.customer_discount_price} 
				
				<span class="discount-num"></span>
				{$Lang.fracture}
			</span>
		{elseif $ConfigureTotal.type.type == '2'}
			<span class="text-danger">{$Lang.customer_discount_province}
				
				<span class="discount-num">{$ConfigureTotal.currency.prefix}{$ConfigureTotal.type.bates}</span>
			</span>
		{/if}
{/if}
<table class="table mb-5 mt-2 ordersummary">
	<tbody>
		<tr>
			<td class="color-999 mw-250">{$ConfigureTotal.product_name}:</td>
			<td class="text-right">{$ConfigureTotal.currency.prefix}{$ConfigureTotal.product_price}
				{if $ConfigureTotal.product_setup_fee}
					+{$ConfigureTotal.currency.prefix}{$ConfigureTotal.product_setup_fee}{$Lang.initial_installation_fee}
				{/if}
			</td>
		</tr>
		{foreach $ConfigureTotal.child as $configure}
		<tr>
			<td class="mw-250">
				<span class="color-999">{$configure.option_name}:</span>
				{if $configure.option_type == '12'}
					{if $configure.icon_flag}
						<img class='mr-1' src='/upload/common/country/{$configure.icon_flag}.png' height='15'/>
					{/if}
				{elseif $configure.option_type == '5'}
					{if $configure.icon_os}
						<img class='mr-1' src='/upload/common/system/{$configure.icon_os}.svg' height='20'/>
					{/if}
				{/if}
				<span style="word-break: break-all;white-space: normal;">
					{if $configure.qty}{$configure.qty}{else/}{$configure.sub_name}{/if}
				</span>
			</td>
			<td class="text-right">{$ConfigureTotal.currency.prefix}{$configure.suboption_price}{if $configure.suboption_setup_fee > 0} + {$ConfigureTotal.currency.prefix}{$configure.suboption_setup_fee}{$Lang.initial_installation_fee}{/if}</td>
		</tr>
		{/foreach}
		{if $ConfigureTotal.signal_setupfee}
		<tr>
			<td class="pr-0">
				<hr class="my-2">
			</td>
			<td class="pl-0">
				<hr class="my-2">
			</td>
		</tr>
		<tr>
			<td class="color-999">{$Lang.initial_installation_fee}</td>
			<td class="font-weight-bold text-dark text-right">
				{if !$ConfigureTotal.type}
					{$ConfigureTotal.currency.prefix}{$ConfigureTotal.signal_setupfee}
				{else}
					{$ConfigureTotal.currency.prefix}{$ConfigureTotal.sale_setupfee_total}
				{/if}
			</td>
		</tr>
		{/if}
		<tr>
			<td class="color-999">{$ConfigureTotal.billingcycle_zh}</td>
			<td class="font-weight-bold text-dark text-right">
				{if !$ConfigureTotal.type}
					{$ConfigureTotal.currency.prefix}{$ConfigureTotal.signal_price}
				{else}
					{$ConfigureTotal.currency.prefix}{$ConfigureTotal.sale_signal_price}
				{/if}
			</td>
		</tr>
	</tbody>
</table>

<div class="text-sm-right mt-4 mt-sm-0" style="position: absolute;bottom: 20px;right: 20px;">
							<button type="button" style="cursor: pointer;" class="btn btn-primary" id="addToCartBtn"><i class="mdi mdi-cart-arrow-right mr-1"></i>{$Lang.add_cart} </button>
						</div>
<script>
	$(function() {
		// 产品信息
		var products = {:json_encode($ConfigureTotal)};
		let result = checkingPwd($(".getPassword").val(), passwordRules.num, passwordRules.upper, passwordRules.lower, passwordRules.special)
		// 订单折扣量
		if ('{$ConfigureTotal.type.type}' == '1') {
			if (parseFloat(products.type.bates) % 10 == 0) {
				$('.discount-num').text(parseFloat(parseFloat(products.type.bates) / 10))
			} else {
				$('.discount-num').text(parseFloat(parseFloat(products.type.bates) / 10).toFixed(1))
			}
		}

    if (!!window.ActiveXObject || "ActiveXObject" in window){
      console.log('ie');
      $('#addToCartBtn').click(function () {
        // if(result.flag) {
				// 		$('#addCartForm').submit()
				// 	}
				$('#addCartForm').submit()

		  })
    }else{
			// console.log('不是ie');
      $('#addToCartBtn').click(function () {
					// if(result.flag) {
					// 	$('#addCartForm').submit()
					// }
					$('#addCartForm').submit()
       })
      // 加入购物车 提交按钮
		// $(document).on('click', '#addToCartBtn', function () {
		// 	if($(this).data("disabled")) return false;
		// 	var InpCheck = $( "input[name^='customfield']")
		// 	var textareaCheck = $( "textarea[name^='customfield']")
		// 	if (checkListFormVerify([...InpCheck, ...textareaCheck])){
		// 		var position = $(".is-invalid:first").offset();
		// 		scrolltop = position.top-70;
		// 		$("html,body").animate({scrollTop:scrolltop}, 1000);
		// 		return false;
		// 	}
		// 	$(this).prepend('<i class="bx bx-loader bx-spin font-size-16 align-middle mr-2"></i>')
		// 	$(this).data("disabled",true);
    //   // debugger
		// 	$('#addCartForm').submit()
		// })
    }
   
		
	})
</script>

