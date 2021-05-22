{include file="header"}
{include file="menu"}

<section class="admin-main">
	<div class="container-fluid">
		<div class="page-container">
			<div class="card">
				<div class="card-body">
					<div class="card-title">添加帮助</div>
					<div class="tab-content mt-4">
						<div class="table-body">
							<form class="form" action="addhelp" method="get">
								{foreach name="formList" item="fl"}
									{if $fl.type == 'select'}
										<div class="form-group row">
											<label class="{if $fl.required}require{/if}">{$fl.label}
												<i class="far fa-question-circle" style="color: blue;" aria-hidden="true"
													data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i>
											</label>
											<div class="col-sm-4">
												<select class="form-control" name="{$fl.name}">
													{foreach name="fl.list" item="list"}
													<option value="{$list.value}" >{$list.label}</option>
													{/foreach}
												</select>
												<div class="invalid-feedback">
													Please provide a valid city.
												</div>
											</div>
										</div>
									{elseif $fl.type == 'checkbox'}
										<div class="form-group row invalid">
											<label>{$fl.label}</label>
											<div class="col-sm-4">
												<div class="custom-control custom-switch" dir="ltr">
													<input type="checkbox" name="{$fl.name}" class="custom-control-input" id="customSwitchsizemd" value="{$fl.content}">
													<label class="custom-control-label" for="customSwitchsizemd"></label>
												</div>
											</div>
										</div>
									{elseif $fl.type == 'date'}
										<div class="form-group row">
											<label class="{if $fl.required}require{/if}">{$fl.label}</label>
											<div class="col-sm-4">
												<input type="text" name="{$fl.name}" class="form-control datetime" value="{$fl.content}">
											</div>
										</div>
									{elseif $fl.type == 'textarea'}
										<div class="form-group row">
											<label>{$fl.label}</label>
											<div class="col-sm-4">
												<textarea rows="5" name="{$fl.name}" class="form-control" value="{$fl.content}"></textarea>
											</div>
										</div>
									{else}
										<div class="form-group row {if $fl.required}invalid{/if}">
											<label class="{if $fl.required}require{/if}">{$fl.label}</label>
											<div class="col-sm-4">
												<input type="text" name="{$fl.name}" class="form-control" value="{$fl.content}">
												{if $fl.required}
												<div class="invalid-feedback">
													{$fl.tip}
												</div>
												{/if}
											</div>
										</div>
									{/if}
								{/foreach}
								<div class="form-group row">
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary w-md">{$success}</button>
										<button type="reset" class="btn btn-outline-secondary w-md">{$cancel}</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{include file="footer"}
