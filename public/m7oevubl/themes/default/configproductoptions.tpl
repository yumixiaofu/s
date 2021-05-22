<!-- {include file="footer"} -->
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
                <a href="/admin/ordersadd?uid=464" class="btn btn-success w-sm nohide">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <a href="#" class="btn btn-success w-sm nohide" onclick="openCopyModal()" data-toggle="modal" data-target="#addModal">
                  <i class="fas fa-plus-circle"></i>复制组
                </a>
                <form id="navTabsForm" action="" method="GET">
                  <!-- <input id="typeValue" name="type" hidden="hidden" value="{$type}" /> -->
                  <!-- <input id="typeValue" name="sort" hidden="hidden" value="desc" /> -->
                  <!-- <input id="typeValue" name="orderby" hidden="hidden" value="id" /> -->
                  <input type="text" class="form-control" style="float: left;width:200px" placeholder="按名称搜索" value="{$keywords}" name="keywords">
                  <button class="btn btn-light" style="border:1px,solid,#fff;" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                </form>
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
                  {foreach name="datalist" item="dd"}
                  <tr>
                    <td>{$dd.id}</td>
                    <td>{$dd.name}</td>
                    <td>{$dd.description}</td>
                    <td><span>{$dd.products}</span></td>
                    <!-- <td>
                    {if $dd.productsSplit}
                    {foreach name="$dd.productsSplit" item="pro"}
                      {$pro}
                    {/foreach}
                    {/if}
                    </td> -->
                    <td>
                      <button type="button" class="btn btn-link" onclick="deleteClick({$dd.id})"><i class="fas fa-edit"></i>
                        编辑</button>
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>
                        删除</button>
                    </td>
                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
            <!-- {include file="pageSize"} -->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- 添加弹窗 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
      </div>
      <div id="modalbody" class="modal-body">
        <form id="editmodalForm" class="form" method="post">

          <div class="form-group row">
            <label class="require">配置项组</label>
            <div class="col-sm-9">
              <select class="form-control" id="gid">
                <!-- <option>1</option> -->

              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">新的组名</label>
            <div class="col-sm-9">
              <input type="text" name="newname" class="form-control" id="newname" value="">
            </div>
          </div>

          <input name="id" id="idedit" hidden />
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="copyCommit()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- 添加弹窗 -->
<script>
  // var datalistJSON = {$datalistJSON};

  $('#submit').click(function() {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function(res) {
      alert(res.msg);
    });
  })

  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该数据, 是否继续?');
    if (cfm) {
      $.ajax({
        type: 'GET',
        url: 'options/delete_groups/'+id,
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
  async function getSingleStatus(row) {
    row.statusLoading = true
    $.ajax({
      type: 'GET',
      url: 'dcim/server/' + row.id + '/status',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        if (res.status == 200) {
          row.api_status = res.server_status
          if (res.server_status === 0) {
            // this.$message.error(data.msg)
            row.msg = res.msg
          } else {
            row.msg = '连接成功'
          }
        } else {
          row.msg = res.msg;
        }
        row.statusLoading = false;
        console.log(row);
      }
    });

  }

  function openCopyModal() {
    $("#gid").empty();
    $("#gid").append('<option id="" value=""></option>');
    $.ajax({
      type: 'GET',
      url: 'options/duplicate_groups',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        if (res.status == 200) {
          if (res.groups && res.groups.length > 0) {
            for (let index = 0; index < res.groups.length; index++) {
              const element = res.groups[index];
              $("#gid").append(
                ' <option id=' + element.id + ' value=' + element.id + '>' + element.name + '</option>'
              );
            }
          }
        }
      }
    });
  }
  //复制组提交
  function copyCommit() {
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'options/duplicate_groups_post',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        gid: $('#gid').val(),
        newname: $('#newname').val(),
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
</script>
{include file="footer"}