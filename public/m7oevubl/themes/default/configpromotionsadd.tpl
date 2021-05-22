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
					<div class="table-container">
						<div class="table-header">
							<div class="table-tools">
								<a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
									data-target="#exampleModal">
									<i class="fas fa-plus-circle"></i> {$btnText}
								</a>
								<select class="form-control" id="sort">
									{foreach name="search" item="sh" key="kk"}
										<option value="{$kk}" {if $kk==$_GET['sort']}selected{/if}>{$sh}</option>
									{/foreach}
								</select>
								<input type="text" class="form-control" placeholder="输入关键字" value="{$_GET['searchText']}" id="searchText">
								<btn class="btn btn-primary w-xs" onClick="searchClick()"><i class="fas fa-search"></i> 搜索</btn>
								<!-- <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn> -->
								<script type="text/javascript">
								function searchClick() {
									const sort = document.getElementById("sort").value;
									const searchText = document.getElementById("searchText").value;
									location.href='{$smarty.server.SERVER_NAME}{$smarty.server.REQUEST_URI}?sort='+ sort + '&searchText=' + searchText;
								}	
								</script>
							</div>
						</div>
						<div class="more-search">
							<div class="form-row">
								{foreach name="seachList" item="sl"}
								<div class="form-group col-lg-3 col-md-4 col-sm-2 row">
									<label class="col-4">{$sl.name}</label>
									<input type="text" class="form-control col-8" value="{$sl.content}">
								</div>
								{/foreach}
								<div class="form-group col-lg-3 col-md-4 col-sm-2 row">
									<label class="col-4"></label>
									<btn class="btn btn-primary"><i class="fas fa-search"></i> 搜索</btn>
									<btn class="btn btn-outline-secondary">重置</btn>
								</div>
							</div>
						</div>
						<div class="table-body table-responsive">
							<table class="table table-bordered table-hover">
								<caption>共 {$total} 条
								</caption>
								<thead class="thead-light">
									<tr>
										<!-- <th class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="customCheckHead"
													name="headCheckbox">
												<label class="custom-control-label" for="customCheckHead">&nbsp;</label>
											</div>
										</th> -->
										<th class="center t1">ID </th>
										<th class="t4">姓名</th>
										<th>手机号/邮箱</th>
										<th>服务</th>
										<th class="center">收入/支出</th>
										<th class="center t5">余额</th>
										<th>创建时间</th>
										<th>客户等级</th>
										<th class="center">创建分组</th>
										<th>状态</th>
										<th>销售</th>
									</tr>
								</thead>
								<tbody>
									{foreach name="list" item="lt"}
									<tr>
										<!-- <td class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input row-checkbox"
													id="customCheck1">
												<label class="custom-control-label" for="customCheck1">&nbsp;</label>
											</div>
										</td> -->
										<td class="center"><a href="#">{$lt.id}</a></td>
										<td><a href="#">{$lt.username}</a>{if $lt.companyname}<br/>{$lt.companyname}{/if}</td>
										<td>{$lt.phonenumber}<br/>{$lt.email}</td>
										<td><a href="#">{$lt.host_total}</a></td>
										<td>{$lt.prefix}{$lt.amount_in}<br/>{$lt.prefix}{$lt.amount_out}</td>
										<td>{$lt.credit}</td>
										<td>{$lt.create_time}</td>
										{if $lt.level } <td class="center">{$lt.level}</td> {else} <td class="center"> - </td> {/if}
										{if $lt.group_name } <td class="center">{$lt.group_name}</td> {else} <td class="center"> - </td> {/if}
										{if $lt.status == 1} <td>正常</td> {else} <td>停用</td> {/if}
										<td></td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						<div class="table-footer">
							<div class="table-pagination">
								<div class="table-pageinfo">
									每页显示 10 条数据
								</div>
								<nav>
									<ul class="pagination">
										<li class="page-item disabled"><a class="page-link" href="#">上一页</a></li>
										{foreach name="pageSize" item="size"}
										<li class="page-item {if $page==$size}active{/if}"><a class="page-link" href="javascript:pageClick({$size});">{$size}</a></li>
										{/foreach}
										<li class="page-item"><a class="page-link" href="#">下一页</a></li>
									</ul>
								</nav>
								<script type="text/javascript">
								function pageClick(page) {
									location.href='{$smarty.server.SERVER_NAME}{$smarty.server.REQUEST_URI}?page='+page;
								}	
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{include file="addmodal"}
{include file="footer"}