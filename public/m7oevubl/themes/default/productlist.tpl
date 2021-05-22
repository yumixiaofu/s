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
                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
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
                <caption>
                  <div class="static">
                    总计：<span class="amount">
                     {$currenttotal}
                    </span>
                    &nbsp;&nbsp;
                    本页总计：<span class="amount">
                      {$page_total}
                    </span>
                  </div>
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
                    {foreach name="titleList" item="tl"}
                    <th class="center">{$tl}</th>
                    {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach name="datalist" item="dd"}
                  <tr>
                    <td>
                      <a  href="/admin/clientsviewservices?id={$dd.uid}&uid={$dd.uid}&hid={$dd.id}">{$dd.id}</a>
                    </td>
                    <td><a href="/admin/clientssummary?uid={$dd.uid}&id={$dd.uid}">{$dd.username}</a></td>
                    <td>
                      <a style="color:{$dd.domainstatus.color} !important;" href="/admin/clientsviewservices?id={$dd.uid}&uid={$dd.uid}&hid={$dd.id}">{$dd.productname}</a>
                      <div style="color:#999!important;">{$dd.domain}</div>
                    </td>
                    <td>{if $dd.dedicatedip}{$dd.dedicatedip}{else}-{/if}</td>
                    <td>{$productBase.product_type[$dd.type]}</td>
                    <td>{$dd.regdate_format} </td>
                    <td>{$dd.nextduedate_format} </td>
                    <td>{$productBase.billingcycle[$dd.billingcycle]}</td>
                    <td>
                      <div>{$dd.amount}</div>
                      {if $dd.initiative_renew===1}
                      <div style="color:#798494!important;font-size:'12px'">自动续费</div>
                      {/if}
                    </td>
                    <td>
                      {if $dd.domainstatus}
                      <div style="color:{$dd.domainstatus.color}">
                        {$dd.domainstatus.name}
                      </div>
                      {else}
                      -
                      {/if}
                    </td>
                    <td>
                      {if $dd.user_nickname} {$dd.user_nickname}{else}-{/if}
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
  $('#submit').click(function () {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function (res) {
      alert(res.msg);
    });
  })
</script>
{include file="footer"}