{include file="header"}
{include file="menu"}
<script type="text/javascript">
	$(function () {
		$(function() {
			$('#search-more').bind('click', function() {
				console.log('show');
				if ($('.more-search').is(':visible')) {
					$('.more-search').slideUp(300);
					$(this).html('高级搜索');
				} else {
					$('.more-search').slideDown(300);
					$(this).html('收起搜索');
				}
			})
		})
	});
</script>
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<div class="help-block">
						{$Title}
					</div>
					<div class="table-container">
						<div class="table-header">
							<div class="table-tools">
								<a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
									data-target="#exampleModal">
									<i class="fas fa-plus-circle"></i> 添加帮助
								</a>
								<select class="form-control">
									<option value="1">全部</option>
									<option value="2">正常</option>
									<option value="3">失效</option>
								</select>
								<input type="text" class="form-control" placeholder="输入关键字">
								<btn class="btn btn-primary w-xs"><i class="fas fa-search"></i> 搜索</btn>
								<btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
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
								<caption>选中的项目： <button type="button" class="btn btn-danger btn-sm">批量删除</button>
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
										<th class="center t1">ID </th>
										<th class="t4">标题</th>
										<th>分类</th>
										<th>发布时间</th>
										<th class="center">隐藏</th>
										<th class="center t5">操作</th>
									</tr>
								</thead>
								<tbody>
									{foreach name="list" item="lt"}
									<tr>
										<td class="checkbox">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input row-checkbox"
													id="customCheck1">
												<label class="custom-control-label" for="customCheck1">&nbsp;</label>
											</div>
										</td>
										<td class="center">{$lt.id}</td>
										<td>{$lt.endData}</td>
										<td><a>{$lt.sort}</a></td>
										{if $lt.isPay}
											<td>已支付</td>
										{else}
											<td>未支付</td>
										{/if}
										<td class="center"><i class="fa fa-check-circle text-success"></i></td>
										<td>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												下载</button>
											<button type="button" class="btn btn-link green"><i
													class="fas fa-check"></i> 通过</button>
											<button type="button" class="btn btn-link red"><i class="fas fa-times"></i>
												删除</button>
										</td>
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
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item active"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">下一页</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 添加弹窗 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form class="form">
					<div class="form-group row invalid">
						<label class="require">帮助标题</label>
						<div class="col-sm-9">
							<input type="text" class="form-control">
							<div class="invalid-feedback">
								Please provide a valid city.
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label class="require">分类</label>
						<div class="col-sm-4">
							<select class="form-control">
								<option value="1">选项1</option>
								<option value="2">选项2</option>
								<option value="3">选项3</option>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">保存</button>
			</div>
		</div>
	</div>
</div>

{include file="footer"}
