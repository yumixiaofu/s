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
                <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal" data-target="#resonModal" style="color: #fff;border-color:#2f54ea;background-color:#2f54ea" onclick="getCancelReason()">
                  {$btnText}
                </a>
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
            <!-- // 高级搜索 -->
            {include file="searchform"}
            <!-- table -->
            <div class="table-body table-responsive">
              <table class="table table-bordered table-hover">
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
                <!-- 列表 -->
                <tbody>
                  {foreach name="datalist" item="dd"}
                  <tr>
                    <td>
                      <a href="/admin/clientssummary?uid={$dd.uid}&id={$dd.uid}">
                        <span>{$dd.username}</span>
                        {if $dd.companyname}({$dd.companyname}){/if}
                      </a>
                    </td>
                    <td>
                      {$dd.create_time_format}
                    </td>
                    <td>
                      <a href="/admin/clientsviewservices?id={$dd.uid}&uid={$dd.uid}&hid={$dd.hid}">{$dd.name}</a>
                      <div style="color:#999!important;">{$dd.domain}</div>
                    </td>
                    <td>{$dd.dedicatedip}</td>
                    <td>{$dd.type}</td>
                    <td>{$dd.reason}</td>
                    <td>{$dd.nextduedate_format}</td>
                    <td>
                      <div style="color: {$dd.domainstatus.color};">{$dd.domainstatus.name}</div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>
                        删除</button>
                    </td>
                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
            <!-- 分页 -->
            {include file="pageSize"}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- 添加弹窗 -->
<div class="modal fade" id="resonModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button> -->
      </div>
      <div id="modalbody" class="modal-body">
        <!-- <form id="modalForm" class="form" method="get"> -->
        <div id="CancelReasons">

        </div>
        <div style="text-align: center;">
          <a id="addButton" onclick="addReason()" class="btn btn-primary" style="margin-top: 10px;width:20%;margin-bottom:10px">
            <i class="bi bi-plus-circle"></i>
          </a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="request_cancel_reason_post()">确定</button>
        </div>
        <!-- </form> -->
      </div>
    </div>
  </div>
</div>
<script>
  // var CancelReasons = [];
  $('#submit').click(function() {
    console.log(11);
    // var modalForm = $("#modalForm").serialize();
    // $.post("accounts", modalForm, function(res) {
    //   alert(res.msg);
    // });
  })

  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'DELETE',
        url: 'request_cancel_list/' + id,
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        // data: JSON.stringify({
        //   id: id
        // }),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              location.reload();
            }, 1000);
          }
        }
      });
    } else {
      console.log('取消');
    }
  }

  function getCancelReason() {
    $("#CancelReasons").empty();
    $.ajax({
      type: 'GET',
      url: 'request_cancel_reason',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        // console.log(res);
        if (res.status == 200) {
          console.log(res.data);
          if (res.data && res.data.length > 0) {
            var modalForm = $("#CancelReasons");
            for (let index = 0; index < res.data.length; index++) {
              const element = res.data[index];
              if (index > 1) {
                modalForm.append(
                  '<div>' +
                  '<input id=' + element.id + ' type="text" style="width:80%;display:inline-block;margin-top:10px;" class="form-control" value=' + element.reason + '>' +
                  '<button id=' + element.id + ' class="btn btn-link" onclick="delReason(' + element.id + ')" style="margin-top: -3px;">' +
                  '<i class="bi bi-dash-circle-fill" style="font-size: 20px;"></i>' +
                  '</button>' +
                  '</div>'

                );
              } else {

                modalForm.append(
                  '<div>' +
                  '<input id=' + element.id + ' type="text" style="width:80%;display:inline-block;margin-top:10px;" class="form-control" value=' + element.reason + '>' +
                  '</div>'
                );
              }
            }
          }

        }
      }
    });
  }

  function addReason() {
    console.log(11);
    // if (CancelReasons) {
    var obj = {
      id: (new Date()).getTime(),
      reason: ''
    };
    // CancelReasons.push(obj);

    var modalForm = $("#CancelReasons");
    modalForm.append(
      '<div>' +
      '<input id=add' + obj.id + ' type="text" style="width:80%;display:inline-block;margin-top:10px;" class="form-control" value=' + obj.reason + '>' +
      '<button id=add' + obj.id + ' class="btn btn-link" onclick="delReason(' + obj.id + ')" style="margin-top: -3px;">' +
      '<i class="bi bi-dash-circle-fill" style="font-size: 20px;"></i>' +
      '</button>' +
      '</div>'
    );
    // }
  }
  var delids = [];

  function delReason(id) {
    console.log(id);
    // 接口需要传被删除的id 所以保存到全局变量
    delids.push(id);
    $("#" + id).parent().remove();

  }

  function request_cancel_reason_post() {
    let reasons = [];
    $("div").children(".input").css("color", "blue");
    let objs = $("div>input");
    if (objs && objs.length > 0) {
      for (let index = 0; index < objs.length; index++) {
        const element = objs[index];
        if (element.className === 'form-control') {
          if (element.id.indexOf('add') >= 0) {
            let obj = {
              id: '',
              reason: element.value,
            }
            reasons.push(obj);
          } else {

            let obj = {
              id: element.id,
              reason: element.value,
            }
            reasons.push(obj);
          }
        }
      }
      console.log(reasons);
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'request_cancel_reason_post',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify({
          reason: reasons,
          del: delids
        }),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              location.reload();
            }, 1000);
          }
        }
      });
    }
  }
</script>
{include file="footer"}