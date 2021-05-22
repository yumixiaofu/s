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
                <form id="navTabsForm" action="" method="GET">
                  <!-- <input id="typeValue" name="type" hidden="hidden" value="{$type}" /> -->
                  <input id="typeValue" name="sort" hidden="hidden" value="desc" />
                  <input id="typeValue" name="orderby" hidden="hidden" value="id" />
                  <input type="text" class="form-control" style="float: left;width:200px" placeholder="输入关键字" value="{$search}" name="search">
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
                    
                    <td><a href="/admin/clientssummary?uid={$dd.uid}&id={$dd.uid}">{$dd.username}</a></td>
                    <td>{$dd.name}</td>
                    <td>{$dd.create_time_format}</td>
                    <td>{$dd.price}</td>
                    <td>
                      {if $dd.invoice_status}
                      <div style="color: {$dd.invoice_status.color};">
                        {$dd.invoice_status.name}
                      </div>
                      {else}
                      <div style="color:'#000';">
                        -
                      </div>
                      {/if}
                    </td>
                    <td>{$dd.payment}</td>
                    <td>
                      {if $dd.removable}
                      <button type="button" class="btn btn-link red" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>
                        删除</button>
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="modalForm" class="form" method="get">
          {foreach name="modalList" item="ml"}
          {if $ml.type == 'date'}
          <div class="form-group row {if $ml.required}invalid{/if}">
            <label class="{if $ml.required}require{/if}">{$ml.label}</label>
            <div class="col-sm-9">
              <input type="text" name="{$ml.name}" class="form-control datetime" value="{$ml.content}">
              {if $ml.required}
              <div class="invalid-feedback">
                {$ml.tip}
              </div>
              {/if}
            </div>
          </div>
          {elseif $ml.type == 'select'}
          <div class="form-group row {if $ml.required}invalid{/if}">
            <label class="{if $ml.required}require{/if}">{$ml.label}</label>
            <div class="col-sm-9">
              <select class="form-control" name="{$ml.name}">
                {foreach name="ml.list" item="ll"}
                <option value="{$ll.value}">{$ll.label}
                  {if $ll.uid}
                  <input name="uid" hidden="hidden" value="{$ll.uid}" />
                  {/if}
                </option>
                {/foreach}
              </select>
            </div>
          </div>
          {elseif $ml.type == 'checkbox'}
          <div>{$ml.label} 组件暂缺</div>
          {else}
          <div class="form-group row {if $ml.required}invalid{/if}">
            <label class="{if $ml.required}require{/if}">{$ml.label}</label>
            <div class="col-sm-9">
              <input type="text" name="{$ml.name}" class="form-control" value="{$ml.content}">
              {if $ml.required}
              <div class="invalid-feedback">
                {$ml.tip}
              </div>
              {/if}
            </div>
          </div>
          {/if}
          {/foreach}

          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
            <button type="button" id="submit" class="btn btn-primary">保存</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script>
  $('#submit').click(function() {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function(res) {
      alert(res.msg);
    });
  })

  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      $.ajax({
        type: 'DELETE',
        url: 'dcim/buy_record',
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
</script>
{include file="footer"}