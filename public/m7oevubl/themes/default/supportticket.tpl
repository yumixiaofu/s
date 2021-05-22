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
                <a href="/admin/createsupporttickets" class="btn btn-success w-sm nohide" >
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <!-- <select class="form-control" id="searchSelect">
                                        {foreach name="search" item="sh" key="kk"}
                                            <option value="{$kk}" {if $_GET[$kk]}selected{/if}>{$sh}</option>
                                        {/foreach}
                                    </select>
                                    <input type="text" class="form-control" placeholder="输入关键字" value="" id="searchText">
                                    <button class="btn btn-primary w-xs" type="submit"><i class="fas fa-search"></i> 搜索 </button> -->
                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
                <form id="navTabsForm" action="" method="GET">
                  <input id="typeValue" name="status" hidden="hidden" value="{$status}" />
                </form>
              </div>
              <div class="status-filter" id="navTabs">
                {foreach name="navTabs" item="nt"}
                <div class="filter-item {if $nt.name==$status}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
                {/foreach}
              </div>
            </div>
            {include file="searchform"}
            <div class="table-body table-responsive">
              <table class="table table-bordered table-hover">
                <thead class="thead-light">
                  <tr>
                  <th class="checkbox">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" id="selectAll">
													<label class="custom-control-label" for="selectAll">&nbsp;</label>
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
												<input type="checkbox" class="custom-control-input row-checkbox" id="{$dd.id}">
												<label class="custom-control-label" for="{$dd.id}">&nbsp;</label>
											</div>
										</td>
                    <td class="center"><a href="/admin/clientssupportticketdetail?id={$dd.id}&tid={$dd.tid}">{$dd.tid}</a></td>
                    <td class="center">
                      <a href="/admin/clientssupportticketdetail?id={$dd.id}&tid={$dd.tid}">{$dd.title}</a>
                      {if $dd.admin_unread}
                      <span class="badge badge-pill badge-danger">new</span>
                      {/if}
                    </td>
                    <td>
                      <a href="/admin/clientssummary?id={$dd.uid}&uid={$dd.uid}">{$dd.user_name}</a>
                      {if $dd.is_receive===1}
                      <span class="badge badge-pill badge-primary">下游API提交</span>
                      {/if}
                      {if $dd.is_deliver===1}
                      <span class="badge badge-pill badge-primary">API至上游</span>
                      {/if}
                    </td>
                    <td>
                      <span style="color: {$dd.statusColor};">{$dd.status_title}</span>
                    </td>
                    <td>{if $dd.handle_name}{$dd.handle_name}{else}-{/if}</td>
                    <td>{$dd.department_name}</td>
                    <td>{$dd.create_time_formart}</td>
                    <td>{$dd.last_reply_time_formart}</td>
                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
            <div class="action">
              选中的项目：
               <button type="button" onclick="closeSelect()" class="btn btn-primary btn-sm">关闭</button>
               <button type="button" onclick="delSelect()" class="btn btn-danger btn-sm">删除</button>
            </div>
            {include file="pageSize"}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  $(function () {

			// 全选/全不选
			$('#selectAll').bind('click', function () {
				var selectAll = $(this).is(":checked");
				if (selectAll) {
					$('.row-checkbox').prop('checked', true);
				} else {
					$('.row-checkbox').prop('checked', false);
				}
			})
		});

  	// 关闭选中的
		function closeSelect() {
      // var dataJSON={$dataJSON};
      // console.log('dataJSON: ', dataJSON);

			const selectdId = [];
			$(".row-checkbox:checked").each(function () {
				selectdId.push($(this).attr('id'));
			});
      // var selectedDatas=[];
      // if(dataJSON&&dataJSON.length>0&&selectdId&&selectdId.length>0){
      //   for (let index = 0; index < dataJSON.length; index++) {
      //     const element = dataJSON[index];
      //     for (let index2 = 0; index2 < selectdId.length; index2++) {
      //       const element2 = selectdId[index2];
      //       if(element.id.toString()===element2){
      //         console.log(element);
      //         selectedDatas.push(element);
      //       }
      //     }
      //   }
      // }
			console.log(selectdId);
      // console.log(selectedDatas);
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'close_ticket',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify({
          id:selectdId
        }),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.reload();
            }, 700);
          }
        }
      });
		}
  	// 删除选中的
		function delSelect() {

			const selectdId = [];
			$(".row-checkbox:checked").each(function () {
				selectdId.push($(this).attr('id'));
			});
			console.log(selectdId);
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'delete_ticket',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify({
          id:selectdId
        }),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.reload();
            }, 700);
          }
        }
      });
		}
</script>
{include file="addmodal"}
{include file="footer"}