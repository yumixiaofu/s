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
              <form action="" method="get">
                <div class="table-tools">
                  <div class="search-item">
                    <!-- <label class="label">开始时间</label> -->
                    <div class="input-container">
                      <input type="text" placeholder="开始时间" name="start" class="form-control datetime" value="{$_GET['start']}">
                    </div>
                  </div>
                  <div class="search-item">
                    <!-- <label class="label">结束时间</label> -->
                    <div class="input-container">
                      <input type="text" placeholder="结束时间" name="end" class="form-control datetime" value="{$_GET['end']}">
                    </div>
                  </div>
                  <button class="btn btn-primary w-xs" type="submit"><i class="fas fa-search"></i> 搜索
                  </button>
                </div>
              </form>
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
                  {foreach name="data" item="dd"}
                  <tr>
                    <td>{$dd.user_login}</td>
                    <td>{$dd.ticket_close}/{$dd.ticket_count}</td>
                    <td>{$dd.ticket_star_sum}</td>
                    <td>{$dd.ticket_star_1}</td>
                    <td>{$dd.ticket_star_2}</td>
                    <td>{$dd.ticket_star_3}</td>
                    <td>{$dd.ticket_star_4}</td>
                    <td>{$dd.ticket_star_5}</td>
                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
            <!-- <div class="action">
              选中的项目：
              <button type="button" class="btn btn-primary btn-sm">关闭</button>
              <button type="button" class="btn btn-danger btn-sm">删除</button>
            </div> -->
            {include file="pageSize"}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  $(function() {
    gettime();

    function gettime() {
      var start = document.getElementsByName("start").value;
      var end = document.getElementsByName("end").value;
      console.log(start);
      console.log(end);
      // var value = myselect.options[index].value;
      // document.getElementById('searchText').name = value;
    }
  })
</script>
{include file="addmodal"}
{include file="footer"}