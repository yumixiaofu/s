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
                <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal" data-target="#addModal" onclick="openAddmodal()">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
              </div>
              <!-- <div class="status-filter" id="navTabs">
                {foreach name="navTabs" item="nt"}
                <div class="filter-item {if $nt.name==$type}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
                {/foreach}
              </div> -->
            </div>
            <div class="table-body table-responsive">
              <table class="table table-bordered table-hover">
                <thead class="thead-light">
                  <tr>
                    {foreach name="titleList" item="tl" key="kk"}
                    {if $tl==="操作"}
                    <th class="center" style="width: 15%;">{$tl}</th>
                    {else}
                    <th class="center">{$tl}</th>
                    {/if}
                    {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach name="data" item="dd"}
                  <tr>
                    <td>{$dd.id}</td>
                    <td>
                      <span style="color: {$dd.color};">
                        {$dd.title}
                      </span>
                    </td>
                    <td>{$dd.order}</td>
                    <td>
                      <button type="button" data-toggle="modal" data-target="#editModal" class="btn btn-link blue btn-sm" onclick="openEditModal('{$dd.id}','{$dd.title}','{$dd.color}','{$dd.order}')">
                        <i class="bi bi-vector-pen"></i>
                        &nbsp;
                        编辑
                      </button>
                      {if $dd.id!==1 && $dd.id!==2 &&$dd.id!==3 &&$dd.id!==4 &&$dd.id!==5 }
                      <button type="button" class="btn btn-link red btn-sm" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>&nbsp;删除</button>
                      {/if}
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
<!-- 添加弹窗 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
      </div>
      <div id="modalbody" class="modal-body">
        <form id="addmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">状态标题</label>
            <div class="col-sm-9">
              <input type="text" name="title" class="form-control" id="title" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">状态颜色</label>
            <div class="col-sm-9">
              <input type="text" name="color" class="form-control" id="color" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">产品排序</label>
            <div class="col-sm-9">
              <input type="number" style="width: 30%;" name="order" class="form-control" id="order" value="" step="3" min="1" max="10000">
            </div>
          </div>
          <input name="id" id="id" hidden />
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="add_ticket_status()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- 添加弹窗 -->
<!-- 编辑弹窗 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
      </div>
      <div id="modalbody" class="modal-body">
        <form id="editmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">状态标题</label>
            <div class="col-sm-9">
              <input type="text" name="title" class="form-control" id="titleedit" value="" disabled>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">状态颜色</label>
            <div class="col-sm-9">
              <input type="text" name="color" class="form-control" id="coloredit" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">产品排序</label>
            <div class="col-sm-9">
              <input type="number" style="width: 30%;" name="order" class="form-control" id="orderedit" value="" step="3" min="1" max="10000">
            </div>
          </div>
          <input name="id" id="idedit" hidden />
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="save_ticket_status()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- 编辑弹窗 -->
<script>
  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      $.ajax({
        type: 'POST',
        url: 'delete_ticket_status',
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

  function openAddmodal() {
    $("#title").val("");
    $("#color").val("");
    $("#order").val("");
  }
  // 新增
  function add_ticket_status() {
    let title = $("#title").val();
    let color = $("#color").val();
    let order = $("#order").val();
    console.log('title: ', title);
    console.log('color: ', color);
    console.log('order: ', order);
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'add_ticket_status',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        auto_close: false,
        show_await: false,
        show_active: false,
        color: color,
        title: title,
        order: order,
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

  // 编辑模态窗打开

  function openEditModal(id, title, color, order) {
    console.log('order: ', order);
    console.log('color: ', color);
    console.log('title: ', title);
    console.log('id: ', id);
    // console.log(json_encode(json_encode));
    $("#titleedit").val(title);
    $("#coloredit").val(color);
    $("#orderedit").val(order);
    $("#idedit").val(id);
  }
  // 编辑提交
  function save_ticket_status() {
    let title = $("#titleedit").val();
    let color = $("#coloredit").val();
    let order = $("#orderedit").val();
    let id = $("#idedit").val();
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'save_ticket_status',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        auto_close: false,
        show_await: false,
        show_active: false,
        color: color,
        title: title,
        order: order,
        id: id,
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
<!-- {include file="addmodal"} -->
{include file="footer"}