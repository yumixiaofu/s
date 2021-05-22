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
									<i class="fas fa-plus-circle"></i> 汇率更新
								</a>
								<a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
									data-target="#exampleModal">
									<i class="fas fa-plus-circle"></i> 价格更新
								</a>
							</div>
						</div>
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
										<td class="center">{$dd.code}</td>
										<td class="center">{$dd.prefix}</td>
										<td class="center">{$dd.suffix}</td>
										<td class="center">{$dd.format}</td>
										<td class="center">{$dd.rate}</td>
										<td>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												设为默认货币</button>
											<button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
												编辑</button>
											<button type="button" class="btn btn-link red"><i class="fas fa-times"></i>
												删除</button>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{include file="footer"}
