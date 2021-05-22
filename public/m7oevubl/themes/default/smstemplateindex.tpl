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
                <a href="/admin/ordersadd?uid=464" class="btn btn-success w-sm nohide">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <form id="navTabsForm" action="" method="GET">
                  <select class="form-control" id="sms_operator" name="sms_operator" style="float: left;">
                    {foreach name="selectedOptions" item="sh"}
                    <option value="{$sh.label}" {if $sh.label==$sms_operator}selected{/if}>{$sh.value}</option>
                    {/foreach}
                  </select>
                  <button class="btn btn-primary" style="border:1px,solid,#fff;margin-left:20px" type="submit">
                    <i class="fas fa-search"></i>搜索
                  </button>
                </form>

                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
              </div>
            </div>

            {include file="searchform"}
            <div class="table-body table-responsive">
              <table class="table table-bordered table-hover">
                <caption>
                  <div class="action">
                    选中的项目：
                    <button type="button" class="btn btn-success btn-sm" onclick="check_post('{$sms_operator}')">提交审核</button>
                    <button type="button" class="btn btn-danger btn-sm" onclick="delete_template('{$sms_operator}')">删除所选模板</button>
                    <button type="button" class="btn btn-warning btn-sm" onclick="update_tem_status('{$sms_operator}')">更新审核状态</button>
                  </div>
                </caption>
                <thead class="thead-light">
                  <tr>
                    <th class="checkbox">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="selectAll">
                        <label class="custom-control-label" for="selectAll">&nbsp;</label>
                      </div>
                    </th>
                    {foreach name="titleList" item="tl"}
                    {if $tl==='操作'}
                    <th class="center" style="width: 13%;">{$tl}</th>
                    {elseif $tl==='审核状态'}
                    <th class="center" style="width: 8%;">{$tl}</th>
                    {else}
                    <th class="center">{$tl}</th>
                    {/if}
                    {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach name="datalist" item="dd" key="kk"}
                  <tr>
                    <td class="checkbox">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input row-checkbox" id="{$dd.id}">
                        <label class="custom-control-label" for="{$dd.id}">&nbsp;</label>
                      </div>
                    </td>

                    <td>{$dd.id}</td>
                    <td>{$dd.template_id?$dd.template_id:'-'}</td>
                    <td>{$dd.range_type===1?'非大陆':$dd.range_type===0?'大陆':'-'}</td>
                    <td>{$dd.title}</td>
                    <td>{$dd.content}</td>
                    <td>
                      {if $dd.status===0}未提交审核{/if}
                      {if $dd.status===1}正在审核{/if}
                      {if $dd.status===2}审核通过{/if}
                      {if $dd.status===3}未提交审核{/if}
                      <!-- {$dd.status===0?'未提交审核':$dd.status===1?'正在审核':$dd.status===2?'审核通过':$dd.status===3?'未通过审核':''} -->
                    </td>
                    <td>
                      {if $dd.status===0||$dd.status==3}
                      <button type="button" class="btn btn-link blue" onclick="editClick({$dd.id})" data-toggle="modal" data-target="#editModal">
                        编辑</button>
                      <button type="button" class="btn btn-link orange" onclick="checkPostClick({$dd.id},'{$sms_operator}')">
                        审核</button>
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id},'{$sms_operator}')">
                        删除</button>
                      {/if}
                      {if $dd.status===2}
                      <button type="button" class="btn btn-link blue" onclick="editClick({$dd.id})" data-toggle="modal" data-target="#editModal">
                        编辑</button>
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id},'{$sms_operator}')">
                        删除</button>
                      <button type="button" class="btn btn-link blue">
                        测试</button>
                      {/if}
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

<!-- 添加弹窗 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">更新模板</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="editmodalForm" class="form" method="get">
          <div class="form-group row">
            <label class="require">模板ID</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="template_id" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">模板状态</label>
            <div class="col-sm-9">
              <!-- <input type="text" class="form-control" id="status" value=""> -->
              <select class="form-control" id="status">
                <!-- <option value="1">启用</option>
                <option value='0'>不启用</option> -->
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">类型</label>
            <div class="col-sm-9">
              <!-- <input type="text" class="form-control" id="range_type" value=""> -->
              <select class="form-control" id="range_type">
                <option value="0">大陆</option>
                <option value='1'>非大陆</option>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">短信运营商</label>
            <div class="col-sm-9">
              <!-- <input type="text" class="form-control" id="sms_operatorEdit" value=""> -->
              <select class="form-control" id="sms_operatorEdit">
                {foreach name="selectedOptions" item="sh"}
                <option value="{$sh.label}">{$sh.value}</option>
                {/foreach}
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">标题</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="title" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">内容</label>
            <div class="col-sm-9">
              <!-- <input type="text" class="form-control" id="content" value=""> -->
              <textarea rows="4" class="form-control" id="content"></textarea>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">备注</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="remark" value="">
            </div>
          </div>

          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" id="submit" class="btn btn-primary" onclick="editCommit()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script>
  $(function() {
    // 全选/全不选
    $('#selectAll').bind('click', function() {
      var selectAll = $(this).is(":checked");
      if (selectAll) {
        $('.row-checkbox').prop('checked', true);
      } else {
        $('.row-checkbox').prop('checked', false);
      }
    })
  })

  // 删除
  function deleteClick(id, sms_operator) {
    console.log('sms_operator: ', sms_operator);
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'GET',
        url: 'config_message/delete_template?ids=' + id + '&type=' + sms_operator,
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
      // console.log('取消');
    }
  }

  function gethasSelected() {
    const selectdIds = [];
    $(".row-checkbox:checked").each(function() {
      selectdIds.push($(this).attr('id'));
    });
    // console.log(selectdIds);
    return selectdIds;
  }

  function del() {
    let indexs = gethasSelected();
    // console.log('indexs: ', indexs);
    let selectedDataIds = [];
    if (indexs && indexs.length > 0 && dataJSON && dataJSON.length > 0) {
      for (let index = 0; index < indexs.length; index++) {
        const indexStr = indexs[index];
        selectedDataIds.push(dataJSON[Number(indexStr)].id);
      }
    }
    // console.log('selectedDataIds: ', selectedDataIds);
    if (selectedDataIds && selectedDataIds.length > 0) {
      var cfm = confirm('此操作将永久删除该数据, 是否继续?');
      if (cfm) {
        $.ajax({
          type: 'DELETE',
          url: 'order/delete?ids=' + selectedDataIds,
          contentType: 'application/json;charset=UTF-8',
          dataType: 'json',
          // data: JSON.stringify({
          //   ids: ids
          // }),
          success: function(res, textStatus, jqXHR) {
            alert(res.msg);
            if (res.status == 200) {
              setTimeout(function() {
                location.reload();
              }, 700);
            }
          }
        });
      } else {
        // console.log('取消');
      }
    } else {
      alert("请选择要操作的数据!");
      return;
    }
  }

  function selectedChange() {
    let indexs = gethasSelected();
    console.log('indexs: ', indexs);


  }
  // 审核
  function checkPostClick(id, sms_operator) {
    console.log('sms_operator: ', sms_operator);
    console.log('id: ', id);
    $.ajax({
      type: 'POST',
      url: 'config_message/check_post',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        ids: id,
        type: sms_operator
      }),
      success: function(res, textStatus, jqXHR) {
        alert(res.checkmsg);
        if (res.status == 200) {
          setTimeout(function() {
            location.reload();
          }, 1000);
        }
      }
    });
  }
  // 测试
  function testClick(id, sms_operator) {
    console.log('sms_operator: ', sms_operator);
    console.log('id: ', id);
    $.ajax({
      type: 'GET',
      url: 'config_message/test_message_template_page?sms_operator=' + sms_operator,
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify(),
      success: function(res, textStatus, jqXHR) {
        alert(res.msg);
        // todo 打卡模态窗
      }
    });
  }
  // 点击编辑
  var editId = null;

  function editClick(id) {
    editId = id;
    $('#template_id').val('');
    $('#status').val('');
    $('#range_type').val('');
    $('#sms_operatorEdit').val('');
    $('#title').val('');
    $('#content').val('');
    $('#remark').val('');
    $('#status').empty();
    $.ajax({
      type: 'GET',
      url: 'config_message/update_template/' + id,
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify(),
      success: function(res, textStatus, jqXHR) {
        // alert(res.msg);
        if (res.msg == '请求成功') {
          if (res.status && res.temp) {
            $('#template_id').val(res.temp.template_id);
            $('#status').val(res.temp.status);
            $('#range_type').val(res.temp.range_type);
            $('#sms_operatorEdit').val(res.temp.sms_operator);
            $('#title').val(res.temp.title);
            $('#content').val(res.temp.content);
            $('#remark').val(res.temp.remark);
            if (res.status.length > 0) {
              for (let index = 0; index < res.status.length; index++) {
                const element = res.status[index];
                $('#status').append(
                  "<option value=" + element.id + ">" + element.name + "</option>"
                );
              }
            }
          }
        }
      }
    });
  }

  function editCommit() {
    let template_id = $('#template_id').val();
    let status = $('#status').val();
    let range_type = $('#range_type').val();
    let sms_operatorEdit = $('#sms_operatorEdit').val();
    let title = $('#title').val();
    let content = $('#content').val();
    let remark = $('#remark').val();
    let param = {
      template_id: template_id,
      status: status,
      range_type: range_type,
      sms_operatorEdit: sms_operatorEdit,
      title: title,
      content: content,
      remark: remark,
      id: editId
    }
    console.log('param: ', param);
    $.ajax({
      type: 'POST',
      url: 'config_message/update_template_post',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify(param),
      success: function(res, textStatus, jqXHR) {
        alert(res.msg);
        if (res.status == 200) {
          setTimeout(function() {
            location.reload();
            editId = null;
          }, 1000);
        }
      }
    });
  }
  // 更新审核状态
  function update_tem_status(sms_operator) {
    $.ajax({
      type: 'GET',
      url: 'config_message/update_tem_status?sms_operator=' + sms_operator,
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify(param),
      success: function(res, textStatus, jqXHR) {
        alert(res.msg);
        if (res.status == 200) {
          setTimeout(function() {
            location.reload();
          }, 500);
        }
      }
    });
  }
  // 提交审核
  function check_post(type) {
    let ids = gethasSelected();
    console.log('ids: ', ids);
    if (!ids || ids.length <= 0) {
      alert("请选择要操作的数据!");
      return;
    }
    let conmitdata = {
      ids: ids,
      type: type,
    };
    $.ajax({
      type: 'POST',
      url: 'config_message/check_post',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify(conmitdata),
      success: function(res, textStatus, jqXHR) {
        alert(res.msg + '__' + res.checkmsg);
        if (res.status == 200) {
          setTimeout(function() {
            location.reload();
          }, 500);
        }
      }
    });
  }
  // 删除所选模板
  function delete_template(type) {
    let ids = gethasSelected();
    console.log('ids: ', ids);
    if (!ids || ids.length <= 0) {
      alert("请选择要操作的数据!");
      return;
    }
    // let conmitdata = {
    //   ids: ids,
    //   type: type,
    // };
    let url='config_message/delete_template?type=' + type;
    for (let index = 0; index < ids.length; index++) {
      const element = ids[index];
      url+='&ids[]='+element;
    }
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      $.ajax({
        type: 'GET',
        url: url,
        // url: 'config_message/delete_template?ids='+ids+'&type='+type,
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        // data: JSON.stringify(conmitdata),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              location.reload();
            }, 500);
          }
        }
      });
    } else {
      // console.log('取消');
    }
  }
</script>
{include file="footer"}