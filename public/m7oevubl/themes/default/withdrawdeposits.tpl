{include file="header"}
{include file="menu"}
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<div class="tabs" id="navTabs">
						<div class="tab-item selected">推介提现</div>
					</div>
					<div class="table-container">
						<div class="table-header">
							<div class="table-tools">
								<btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
							</div>
						</div>
						{include file="searchform"}
						<div class="table-body table-responsive">
							<table class="table table-bordered table-hover">
								<thead class="thead-light">
									<tr>
										{foreach name="titleList" item="tl"}
										<th class="center">{$tl}</th>
										{/foreach}
									</tr>
								</thead>
								<tbody>
									{foreach name="data" item="dd"}
									<tr>
										<td class="center">{$dd.id}</td>
										<td class="center">{$dd.username}</td>
										<td class="center">{$dd.num}</td>
										<td class="center">{if $dd.type==1}余额{elseif $dd.type==2}仅记录{elseif $dd.type==3}流水支持{/if}</td>
										<td class="center">{$dd.user_nickname}</td>
										<td class="center">{if $dd.status == 1}待审核{elseif $dd.status == 2}审核通过{elseif $dd.status == 3}拒绝{/if}</td>
										<td class="center">{$dd.reason}</td>
										<td class="center">{$dd.createTime}</td>
										<td>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												通过</button>
											<button type="button" class="btn btn-link red"><i class="fas fa-times"></i>
												驳回</button>
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
