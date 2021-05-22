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
                <a class="btn btn-success w-sm nohide" data-toggle="modal" data-target="#addModal" onclick="openAddModal()">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <a class="btn btn-success w-sm nohide" data-toggle="modal" data-target="#addModal" onclick="openAddModal()">
                  <i class="fas fa-plus-circle"></i> 创建新的分组
                </a>
                <!-- <form id="navTabsForm" action="" method="GET">
                  <input id="typeValue" name="sort" hidden="hidden" value="desc" />
                  <input id="typeValue" name="orderby" hidden="hidden" value="id" />
                  <input type="text" class="form-control" style="float: left;width:200px" placeholder="请输入商品名称关键字搜索" value="{$search}" name="search">
                  <button class="btn btn-light" style="border:1px,solid,#fff;" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                </form> -->
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
                    <td>{$dd.capacity}</td>
                    <td>{$dd.price}</td>
                    <td>
                      {if $dd.status===1}是{else}否{/if}</td>
                    <td>
                      {$dd.sale_times} / {$dd.stock ? $dd.stock : '不限'}
                    </td>
                    <td>{$dd.create_time_format}</td>
                    <td>
                      <button type="button" data-toggle="modal" data-target="#addModal" class="btn btn-link" onclick="editOpenModal({$dd.id})"><i class="fas fa-edit"></i>
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
        <h5 class="modal-title" id="addModalLabel"></h5>
      </div>
      <div id="modalbody" class="modal-body">
        <form id="editmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">名称</label>
            <div class="col-sm-9">
              <input type="text" name="name" class="form-control" id="name" value="">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">流量包大小</label>
            <div class="col-sm-9">
              <input type="number" min="0" name="capacity" class="form-control" id="capacity" value="0">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">价格</label>
            <div class="col-sm-9">
              <input type="number" min="0.01" name="price" class="form-control" id="price" value="0.01">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">状态</label>
            <div class="col-sm-9">
              <select class="form-control" id="status">
                <option value="1">启用</option>
                <option value='0'>不启用</option>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">库存</label>
            <div class="col-sm-9">
              <input type="number" min="0" name="stock" class="form-control" id="stock" value="0">
            </div>
          </div>
          <div class="form-group row">
            <label class="require">可绑定的产品</label>
            <div class="col-sm-9">
              <select class="form-control" multiple id="allow_products">
              </select>
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
<!-- 添加弹窗 -->
<script>
  $('#submit').click(function() {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function(res) {
      alert(res.msg);
    });
  })

</script>
{include file="footer"}