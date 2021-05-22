{include file="header"}
{include file="menu"}
<section class="admin-main">
  <div class="container-fluid">
    <div class="page-container">
      <div class="card">
        <div class="card-body">
          <!-- <div class="help-block">
            {$tip}
          </div> -->
          <div class="table-container">
            <div class="table-header">
              <div class="table-tools">
                <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal" data-target="#addModal" onclick="getAddEditBaseData()">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
              </div>
              <div class="status-filter" id="navTabs">
                {foreach name="navTabs" item="nt"}
                <div class="filter-item {if $nt.name==$type}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
                {/foreach}
              </div>
            </div>
            <div class="table-body table-responsive">
              <table class="table table-bordered table-hover">
                <thead class="thead-light">
                  <tr>
                    {foreach name="titleList" item="tl"}
                    {if $tl==="操作"}
                    <th class="center" style="width: 15%;">{$tl}</th>
                    {else}
                    <th class="center">{$tl}</th>
                    {/if}
                    {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach name="data" item="dd" key="kk"}
                  <tr>
                    <td>{$dd.departmentsStr}</td>
                    <td>{$dd.productsStr}</td>
                    <td>{$dd.mask_keywords}</td>
                    <td class="center">
                      {if $dd.is_open_auto_reply===1}
                      是
                      {else}
                      否
                      {/if}
                    </td>
                    <td class="center">
                      <button type="button" class="btn btn-link blue btn-sm" data-toggle="modal" data-target="#editModal" onclick="openEdit({$kk})"><i class="bi bi-vector-pen"></i>&nbsp;编辑</button>
                      <button type="button" class="btn btn-link red btn-sm" onclick="deleteClick({$dd.id})"><i class="fas fa-times"></i>&nbsp;删除</button>
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
<!-- 新增弹窗 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
      </div>
      <div id="modalbody" class="modal-body">
        <input name="id" id="idedit" hidden />
        <form id="addmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">部门</label>
            <div class="col-sm-9">
              <select multiple class="form-control" id="departments">
                <!-- <option>1</option> -->
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">产品</label>
            <div class="col-sm-9">
              <select multiple class="form-control" id="products">
                <!-- <option>1</option> -->
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">自动回复</label>
            <div class="col-sm-9">
              <select class="form-control" id="is_open_auto_reply">
                <!-- <option value="" disabled selected>是否自动回复</option> -->
                <option value="0">否</option>
                <option value="1">是</option>
              </select>
            </div>
          </div>
          <div id="autoreplytextarea">

          </div>
          <div class="form-group row">
            <label class="require">屏蔽关键字</label>
            <div class="col-sm-9">
              <textarea row="3" col="4" name="color" class="form-control" id="mask_keywords"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="add_ticket_deliver()">确定</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- 新增弹窗 -->
<!-- 编辑弹窗 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{$modalTitle}</h5>
      </div>
      <div id="modalbody" class="modal-body">
        <input name="id" id="idedit" hidden />
        <form id="editmodalForm" class="form" method="post">
          <div class="form-group row">
            <label class="require">部门</label>
            <div class="col-sm-9">
              <select multiple class="form-control" id="departmentsedit">
                <!-- <option>1</option> -->
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">产品</label>
            <div class="col-sm-9">
              <select multiple class="form-control" id="productsedit">
                <!-- <option>1</option> -->
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label class="require">自动回复</label>
            <div class="col-sm-9">
              <select class="form-control" id="is_open_auto_replyedit">
                <!-- <option value="" disabled selected>是否自动回复</option> -->
                <!-- <option value="0">否</option>
                <option value="1">是</option> -->
              </select>
            </div>
          </div>
          <div id="autoreplytextareaedit">

          </div>
          <div class="form-group row">
            <label class="require">屏蔽关键字</label>
            <div class="col-sm-9">
              <textarea row="3" col="4" name="color" class="form-control" id="mask_keywordsedit"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="add_ticket_deliver()">确定</button>
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
        url: 'delete_ticket_deliver',
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
      
    }
  }
  // 自动回复绑定onchang事件
  document.getElementById("is_open_auto_reply").onchange = function() {
    //  // 选中的元素
    // 
    // 
    if (this.options[this.selectedIndex].value === '1') {

      $("#autoreplytextarea").append(
        '<div class="form-group row">' +
        '<label></label>' +
        '<div class="col-sm-9">' +
        '<textarea row="3" col="4" name="bz" class="form-control" id="bz"></textarea>' +
        '</div>' +
        '</div>'
      );
    } else {
      $("#autoreplytextarea").empty()
    }
  }
  // 自动回复绑定onchang事件 编辑的时候
  document.getElementById("is_open_auto_replyedit").onchange = function() {
    //  // 选中的元素
    // 
    // 
    if (this.options[this.selectedIndex].value === '1') {

      $("#autoreplytextareaedit").append(
        '<div class="form-group row">' +
        '<label></label>' +
        '<div class="col-sm-9">' +
        '<textarea row="3" col="4" name="bzedit" class="form-control" id="bzedit"></textarea>' +
        '</div>' +
        '</div>'
      );
    } else {
      $("#autoreplytextareaedit").empty()
    }
  }
  // 获取模态窗的下拉框选项数据
  function getAddEditBaseData() {
    let pe = $("#products");
    let de = $("#departments");
    pe.empty();
    de.empty();
    $.ajax({
      type: 'GET',
      url: 'common/get_product_list',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        // alert(res.msg);
        if (res.status == 200) {
          
          let allProducts = res.client_groups;
          if (allProducts && allProducts.length > 0) {
            // let pe = $("#products");
            for (let index = 0; index < allProducts.length; index++) {
              const d = allProducts[index];
              if (d.product && d.product.length > 0) {
                for (let index = 0; index < d.product.length; index++) {
                  const product = d.product[index];
                  if (product.api_type === 'zjmf_api') {
                    pe.append(
                      ' <option id=' + product.id + ' value=' + product.id + '>' + product.name + '</option>'
                    );
                  }
                }
              }
            }
          }
        }
      }
    });
    $.ajax({
      type: 'GET',
      url: 'get_ticket_deliver',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        // alert(res.msg);
        if (res.status == 200) {
          
          let alldepartments = res.data.department;
          // let de = $("#departments");
          if (alldepartments && alldepartments.length > 0) {
            for (let index = 0; index < alldepartments.length; index++) {
              const d = alldepartments[index];
              de.append(
                ' <option id=' + d.id + ' value=' + d.id + '>' + d.name + '</option>'
              );
            }
          }
        }
      }
    });
  }
  // 新增提交
  function add_ticket_deliver() {
    let departments = $("#departments").val();
    
    let products = $("#products").val();
    
    let is_open_auto_reply = $("#is_open_auto_reply").val();
    
    let mask_keywords = $("#mask_keywords").val();
    
    let bz = $("#bz").val();
    
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'add_ticket_deliver',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        id: null,
        bz: bz,
        departments: departments.map(v => {
          return Number(v);
        }),
        is_open_auto_reply: is_open_auto_reply,
        mask_keywords: mask_keywords,
        products: products.map(v => {
          return Number(v);
        }),
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
  // 打开编辑模态窗
  var editData=null;
  function openEdit(index) {
    const tableData = {$editData};
     editData = tableData[index];
    
    let pe = $("#productsedit");
    let de = $("#departmentsedit");
    pe.empty();
    de.empty();
    $.ajax({
      type: 'GET',
      url: 'common/get_product_list',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        // alert(res.msg);
        if (res.status == 200) {
          
          let allProducts = res.client_groups;
          if (allProducts && allProducts.length > 0) {
            // let pe = $("#products");
            for (let index = 0; index < allProducts.length; index++) {
              const d = allProducts[index];
              if (d.product && d.product.length > 0) {
                for (let index = 0; index < d.product.length; index++) {
                  const product = d.product[index];
                  let boo = false;
                  if (product.api_type === 'zjmf_api') {
                    if (editData && editData.products && editData.products.length > 0) {
                      for (let index = 0; index < editData.products.length; index++) {
                        const ed = editData.products[index];
                        if (ed.id === product.id) {
                          boo = true;
                        }
                      }
                    }
                    if (boo === true) {
                      pe.append(
                        ' <option id=' + product.id + ' value=' + product.id + ' selected>' + product.name + '</option>'
                      );
                    } else {
                      pe.append(
                        ' <option id=' + product.id + ' value=' + product.id + '>' + product.name + '</option>'
                      );
                    }
                  }
                }
              }
            }
          }
        }
      }
    });
    $.ajax({
      type: 'GET',
      url: 'get_ticket_deliver',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      // data: JSON.stringify({
      //   id: id
      // }),
      success: function(res, textStatus, jqXHR) {
        // alert(res.msg);
        if (res.status == 200) {
          
          let alldepartments = res.data.department;
          // let de = $("#departments");
          if (alldepartments && alldepartments.length > 0) {
            for (let index = 0; index < alldepartments.length; index++) {
              const d = alldepartments[index];
              let boo = false;
              if (editData && editData.departments && editData.departments.length > 0) {
                for (let index = 0; index < editData.departments.length; index++) {
                  const ed = editData.departments[index];
                  if (ed.id === d.id) {
                    boo = true;
                  }
                }
              }
              if (boo === true) {
                de.append(
                  ' <option id=' + d.id + ' value=' + d.id + ' selected>' + d.name + '</option>'
                );
              } else {
                de.append(
                  ' <option id=' + d.id + ' value=' + d.id + '>' + d.name + '</option>'
                );
              }
            }
          }
        }
      }
     
    });
     // 设置自动回复选中
     $("#autoreplytextareaedit").empty()
     $("#is_open_auto_replyedit").empty();
       if(Number(editData.is_open_auto_reply)===0){
         $("#is_open_auto_replyedit").append(
           '<option value="0" selected>否</option>'
         );
         
       }else{
        $("#is_open_auto_replyedit").append(
           '<option value="0" >否</option>'
         );
       }
       if(Number(editData.is_open_auto_reply)===1){
         $("#is_open_auto_replyedit").append(
           '<option value="1" selected>是</option>'
         );
         $("#autoreplytextareaedit").append(
        '<div class="form-group row">' +
        '<label></label>' +
        '<div class="col-sm-9">' +
        '<textarea row="3" col="4" name="bzedit" class="form-control" id="bzedit" value='+editData.bz+'></textarea>' +
        '</div>' +
        '</div>'
      );
       }else{
        $("#is_open_auto_replyedit").append(
           '<option value="1" >是</option>'
         );
         $("#autoreplytextareaedit").empty()
       }
       // 设置屏蔽关键字
       $("#mask_keywordsedit").empty();
       $("#mask_keywordsedit").val(editData.mask_keywords);
       
  }
   // 编辑提交
   function add_ticket_deliver() {
    let departments = $("#departmentsedit").val();
    
    let products = $("#productsedit").val();
    
    let is_open_auto_reply = $("#is_open_auto_replyedit").val();
    
    let mask_keywords = $("#mask_keywordsedit").val();
    
    let bz = $("#bzedit").val();
    
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'save_ticket_deliver',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        id: editData.id,
        bz: bz,
        departments: departments.map(v => {
          return Number(v);
        }),
        is_open_auto_reply: is_open_auto_reply,
        mask_keywords: mask_keywords,
        products: products.map(v => {
          return Number(v);
        }),
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