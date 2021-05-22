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
                <a href="/admin/configticketdepartmentsadd" class="btn btn-success w-sm nohide">
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
                    {elseif $tl==="是否隐藏"||$tl==="自动回复"}
                    <th class="center" style="width: 10%;">{$tl}</th>
                    {elseif $tl==="部门名称"}
                    <th class="center" style="width: 20%;">{$tl}</th>
                    {else}
                    <th class="center">{$tl}</th>
                    {/if}
                    {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach name="data" item="dd"}
                  <tr>
                    <td>{$dd.name}</td>
                    <td>{$dd.description}</td>
                    <td class="center">{if $dd.hidden===1}是{else}否{/if}</td>
                    <td class="center">{if $dd.auto_reply===1}是{else}否{/if}</td>
                    <td class="center">
                      <button type="button" class="btn btn-link blue btn-sm" onclick="edit({$dd.id})"><i class="bi bi-vector-pen"></i>&nbsp;编辑</button>
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
<script>
  // $(function () {
  //   setSearchName();

  //   $('#searchSelect').bind('change', 'option', function (obj) {
  //     setSearchName();
  //   });

  //   function setSearchName() {
  //     var myselect = document.getElementById("searchSelect");
  //     var index = myselect.selectedIndex;
  //     // selectedIndex代表的是你所选中项的index
  //     var value = myselect.options[index].value;
  //     document.getElementById('searchText').name = value;
  //   }
  // })

  function deleteClick(id) {
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      $.ajax({
        type: 'POST',
        url: 'delete_ticket_department',
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

  function add() {
    window.location.href = '/admin/configticketdepartmentsadd';
  }

  function edit(id) {
    window.location.href = '/admin/configticketdepartmentsadd?id=' + id;
  }
</script>
<!-- {include file="addmodal"} -->
{include file="footer"}