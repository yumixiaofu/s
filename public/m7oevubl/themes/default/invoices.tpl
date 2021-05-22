{include file="header"}
{include file="menu"}
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<div class="table-container">
						<div class="table-header">
							<div class="table-tools">
								<btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
								<form id="navTabsForm" action="" method="GET">
									<input id="typeValue" name="type" hidden="hidden" value="{$type}" />
								</form>
								<div class="status-filter" id="navTabs">
									{foreach name="navTabs" item="nt"}
									<div class="filter-item {if $nt.name==$type}selected{/if}" data-value="{$nt.name}">
										{$nt.label}</div>
									{/foreach}
								</div>
							</div>
						</div>
						{include file="searchform"}
						<div class="table-body table-responsive">
							<table class="table table-bordered table-hover">
								<caption>
									<div class="action">
										选中的项目： <button type="button" class="btn btn-success btn-sm">标记为已支付</button>
										<button type="button" class="btn btn-sm border">标记为被取消</button>
										<button type="button" class="btn btn-sm border">复制账单</button>
										<button type="button" class="btn btn-danger btn-sm">删除</button>
									</div>
									<div class="static">
										总计：<span class="amount">￥{$totalprice}元</span>&nbsp;&nbsp;
										本页总计：<span class="amount">￥{$count}元</span>&nbsp;&nbsp;
										已勾选总计: ￥0元
									</div>
								</caption>
								<thead class="thead-light">
									<tr>
										<th class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="customCheckHead"
													name="headCheckbox">
												<label class="custom-control-label" for="customCheckHead">&nbsp;</label>
											</div>
										</th>
										{foreach name="titleList" item="tl"}
										<th class="center">{$tl}</th>
										{/foreach}
									</tr>
								</thead>
								<tbody>
									{foreach name="data" item="dd"}
									<tr>
										<td class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input row-checkbox"
													id="customCheck1">
												<label class="custom-control-label" for="customCheck1">&nbsp;</label>
											</div>
										</td>
										<td class="center"><a href="#">{$dd.id}</a></td>
										<td class="center"><a href="#">{$dd.username}</a></td>
										<td class="center">{$dd.createTime}</td>
										<td class="center">{$dd.dueTime}</td>
										<td class="center">{$dd.subtotal}</td>
										<td class="center">
											{if $dd.gateway == 'WxPay'}微信支付{elseif $dd.gateway ==
											'Yungouos'}Yungouos{elseif $dd.gateway == 'AliPayDmf'}支付宝当面付{else}线下支付{/if}
										</td>
										<td class="center">{$dd.sale_id}</td>
										<td style="color: {$dd.status.color};">{$dd.status.name}</td>
										<td class="center">{$dd.type}</td>
										<td>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												编辑</button>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						{include file="pageSize"}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	$(function() {
		$('#formSelect').bind('change', 'option', function(obj) {
			var myselect = document.getElementById("formSelect");
			var index = myselect.selectedIndex;
			// selectedIndex代表的是你所选中项的index
			var value = myselect.options[index].value;
			$('#uid').val(value);
			myselect.options[index].value = myselect.options[index].label;
		});
	})
</script>
{include file="footer"}
