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
                <a data-toggle="modal" data-target="#addModal" class="btn btn-success w-sm nohide" onclick="openAddmodal()">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <form id="navTabsForm" action="" method="GET">
                  <!-- <input id="typeValue" name="type" hidden="hidden" value="{$type}" /> -->
                  <input id="typeValue" name="sort" hidden="hidden" value="desc" />
                  <input id="typeValue" name="orderby" hidden="hidden" value="id" />
                  <input type="text" class="form-control" style="float: left;width:200px" placeholder="按名称搜索" value="{$search}" name="search">
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
                    <td>
                      {if $dd.api_status===0}
                      <i class="bi bi-check"></i>
                      {/if}
                      {if $dd.api_status!==0}
                      <i class="bi bi-x"></i>
                      {/if}
                    </td>

                    <td>{$dd.name}</td>
                    <td>{$dd.hostname}</td>
                    <td>{$dd.server_num}</td>
                    <td>
                      {if $dd.area}
                      {foreach name="titleList" item="tl"}
                      <div>
                        <img class="mr-10" :src="'/upload/common/country/'+{$tl.area}+'.png'" alt="" style="height: 13px;" />
                        <span>{{item.name}}</span>
                      </div>
                      {/foreach}
                      {/if}
                    </td>
                    <td>
                      <button type="button" class="btn btn-link" ><i class="fas fa-edit"></i>
                        编辑</button>
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>
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

<!-- 添加弹窗 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addModalLabel"></h5>
      </div>
      <div id="modalbody" class="modal-body">
        <form id="editmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">名称</label>
            <div class="col-sm-9">
              <input type="text" name="name" placeholder="请输入名称" class="form-control" id="name" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">地址</label>
            <div class="col-sm-9">
              <input type="text"  placeholder="请输入ip地址或域名"  name="hostname" class="form-control" id="hostname" value="">
              <span style="color: #8c99b1;"> 如需使用VNC，请务必配置为域名并确保证书正常</span>
            </div>
          </div>
          <div class="form-group row">
            <label>API用户名</label>
            <div class="col-sm-9">
              <input type="text" name="username"  placeholder="请输入用户名"  class="form-control" id="username" value="">
            </div>
          </div>
          <div class="form-group row">
            <label>APIKEY</label>
            <div class="col-sm-9">
              <input type="password" name="password" placeholder="请输入密码" class="form-control" id="password" value="">
            </div>
          </div>
          <div class="form-group row">
            <label>端口</label>
            <div class="col-sm-9">
              <input type="number" name="port" class="form-control" id="port" value="">
            </div>
          </div>
          <input name="id" id="idedit" hidden />
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="addCommit()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script>
  var datalistJSON = {$datalistJSON};
  if (datalistJSON && datalistJSON.length > 0) {
    for (let index = 0; index < datalistJSON.length; index++) {
      const element = datalistJSON[index];
      getSingleStatus(element);
    }
  }
  $('#submit').click(function() {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function(res) {
      alert(res.msg);
    });
  })

  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该接口, 是否继续?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'DELETE',
        url: 'dcim/server',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify({
          id: id
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

  function openAddmodal() {
    $('#name').val("");
    $('#hostname').val("");
    $('#username').val("");
    $('#password').val("");
    $('#port').val("");
    $('#addModalLabel').html('新增接口');
  }

  function addCommit() {
    let name = $('#name').val();
    let hostname = $('#hostname').val();
    let username = $('#username').val();
    let password = $('#password').val();
    let port = $('#port').val();
    let commitData = {
      name: name,
      hostname: hostname,
      username: username,
      password: password,
      port: port,
      secure: 1,
      disabled: 0
    };
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'dcim/server',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify(commitData),
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