{include file="header"}
{include file="menu"}
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<!--<div class="btn-group" role="group" aria-label="...">
						{foreach name="navTabs" item="tab"}
						<button type="button" class="btn btn-default">{$tab}</button>
						{/foreach}
					</div>-->
					<div class="help-block">
						{$tip}
					</div>
					<div class="table-container">
						<div class="table-header">
							<div class="table-tools">
								<!-- <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
									data-target="#exampleModal">
									<i class="fas fa-plus-circle"></i> {$btnText}
								</a> -->
								<!-- <select class="form-control" id="sort">
									{foreach name="search" item="sh" key="kk"}
										<option value="{$kk}" {if $kk==$_GET['sort']}selected{/if}>{$sh}</option>
									{/foreach}
								</select>
								<input type="text" class="form-control" placeholder="输入关键字" value="{$_GET['searchText']}" id="searchText">
								<btn class="btn btn-primary w-xs" onClick="searchClick()"><i class="fas fa-search"></i> 搜索</btn> -->
								<!-- <btn class="btn btn-success w-xs"><i class="fas fa-plus-circle"></i> {$btnText}</btn> -->
								<!-- <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn> -->
								<form id="navTabsForm" action="" method="GET">
									<input id="typeValue" name="type" hidden="hidden" value="{$type}" />
								</form>
								<div class="status-filter" id="navTabs">
									{foreach name="navTabs" item="nt"}
									<div class="filter-item {if $nt.name==$type}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
									{/foreach}
								</div>
							</div>
						</div>
						{include file="searchform"}
						<div class="table-body table-responsive">
							<table class="table table-bordered table-hover">
								<!-- <caption>
									<div class="action">
										选中的项目： <button type="button" class="btn btn-danger btn-sm">批量删除</button>
									</div>
									<div class="static">本页总计：<span class="amount">￥{$count}元</span></div>
								</caption> -->
								<thead class="thead-light">
									<tr>
										<!-- <th class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="customCheckHead"
													name="headCheckbox">
												<label class="custom-control-label" for="customCheckHead">&nbsp;</label>
											</div>
										</th> -->
										{foreach name="titleList" item="tl"}
										<th class="center">{$tl}</th>
										{/foreach}
									</tr>
								</thead>
								<tbody>
									{foreach name="data" item="dd"}
									<tr>
										<!-- <td class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input row-checkbox"
													id="customCheck1">
												<label class="custom-control-label" for="customCheck1">&nbsp;</label>
											</div>
										</td> -->
										<td class="center">{$dd.id}</td>
										<td class="center">{$dd.username}</td>
										<td class="center">{$dd.title}</td>
										<td class="center">{$dd.issue_type_zh}</td>
										<td class="center">{$dd.amount}</td>
										<td>{$dd.province}{$dd.city}{$dd.region}{$dd.detail}</td>
										<td class="center">{$dd.createTime}</td>
										<td class="center">{if $dd.checkTime}{$dd.checkTime}{else} - {/if}</td>
										<td class="center">{$dd.status_zh}</td>
										<td>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												查看</button>
											<button type="button" class="btn btn-link red"><i class="fas fa-times"></i>
												操作</button>
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
{include file="addmodal"}
<script>
	$('#submit').click(function(){
		var modalForm = $("#modalForm").serialize();
		$.post("accounts", modalForm, function(res){
			alert(res.msg);
		});
	})
</script>
{include file="footer"}
