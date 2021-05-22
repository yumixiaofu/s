{include file="header"}
{include file="menu"}
{if $seleTab == 'fl'}
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<form id="navTabsForm" action="" method="GET">
						<input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}" />
					</form>
					<div class="tabs" id="navTabs">
						{foreach name="navTabs" item="nt"}
						<div class="tab-item {if $nt.name == $seleTab}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
						{/foreach}
					</div>
					<div class="tab-content mt-4">
						<div class="table-body">
							<form class="form">
								{foreach name="modalList" item="ml"}
								{if $ml.type == 'select'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}
								    <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip"
								      data-placement="top" title="Tooltip on top"></i>
								  </label>
								  <div class="col-sm-4">
								    <select class="form-control" name="{$ml.name}">
										{foreach name="ml.list" item="ll"}
								      <option value="{$ll.value}" {if $ll.value==$ml.content}selected="selected"{/if}>{$ll.label}</option>
									  {/foreach}
								    </select>
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'checkbox'}
								<div class="form-group row invalid">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
								    <div class="custom-control custom-switch" dir="ltr">
								      <input type="checkbox" class="custom-control-input" id="customSwitchsizemd" name="{$ml.name}">
								      <label class="custom-control-label" for="customSwitchsizemd"></label>
								    </div>
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'checkLabel'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
									  {foreach name="ml.list" item="ll"}
								    <div class="form-check form-check-inline">
								      <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="{$ll.value}"
								        name="{$ml.name}">
								      <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
								    </div>
									{/foreach}
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'radio'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
									  {foreach name="ml.list" item="ll"}
								    <div class="form-check form-check-inline">
								      <input class="form-check-input" type="radio" id="inlineCheckbox1" value="{$ll.value}" name="{$ml.name}">
								      <label class="form-check-label" for="inlineCheckbox1">{$ll.label}</label>
								    </div>
									{/foreach}
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'date'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
								    <input type="text" name="{$ml.name}" class="form-control datetime">
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'towDate'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
								    <input type="text" name="{$ml.name}" class="form-control daterange" value="{$ml.content}">
								  </div>{$ml.tip}
								</div>
								{elseif $ml.type == 'textarea'}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
								    <textarea rows="5" class="form-control" name="{$ml.name}" value="{$ml.content}"></textarea>
								  </div>{$ml.tip}
								</div>
								{else}
								<div class="form-group row">
								  <label class="{if $ml.required}require{/if}">{$ml.label}</label>
								  <div class="col-sm-4">
								    <input type="text" name="{$ml.name}" class="form-control" name="title" value="{$ml.content}">
								  </div>{$ml.tip}
								</div>
								{/if}
								{/foreach}
							</form>

							<div class="form-group row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-primary w-md">保存</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{else}
<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<form id="navTabsForm" action="" method="GET">
						<input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}" />
					</form>
					<div class="tabs" id="navTabs">
						{foreach name="navTabs" item="nt"}
						<div class="tab-item {if $nt.name == $seleTab}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
						{/foreach}
					</div>
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
										<td class="center">{$dd.name}</td>
										<td class="center">{$dd.price}</td>
										<td>
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
{/if}
{include file="footer"}