{include file="header"}
{include file="menu"}

<section class="admin-main">
  <div class="container-fluid">
    <div class="page-container">
      <div class="card">
        <div class="card-body">
          <h2 style="margin-top: 0px;font-size:2rem;font-weight: bold;">订单详情</h2>
          <div style="margin-top:20px;border-top:1px solid #e4e7ed" />
          <div id="detailContent">
            <!-- 一行 -->
            <div class="row">
              <div>
                <div class="label">时间</div>
                <div class="labelval">
                  <span class="labelvalspan">
                    {$detail.data.create_time_format}
                  </span>
                </div>
              </div>
              <div>
                <div class="label lablst">
                  <span class="labelvalspan">
                    付款方式
                  </span>
                </div>
                <div class="labelval lablstc">
                  <span class="labelvalspan">
                    {$detail.data.payment}
                  </span>
                </div>
              </div>
            </div>
            <!-- 一行完 -->
            <!-- 一行 -->
            <div class="row">
              <div>
                <div class="label">订单</div>
                <div class="labelval">
                  <span class="labelvalspan">
                    {$detail.data.id}
                  </span>
                </div>
              </div>
              <div>
                <div class="label lablst">
                  <span class="labelvalspan">
                    金额
                  </span>
                </div>
                <div class="labelval lablstc">
                  <span class="labelvalspan">
                    {$detail.data.total}
                  </span>
                </div>
              </div>
            </div>
            <!-- 一行完 -->
            <!-- 一行 -->
            <div class="row">
              <div>
                <div class="label">账单</div>
                <div class="labelval">
                  <span class="labelvalspan">
                    <a href="/admin/viewinvoices?id={$detail.data.invoiceid}&uid={$detail.data.uid}">{$detail.data.invoiceid}</a>
                  </span>
                </div>
              </div>
              <div>
                <div class="label lablst">
                  <span class="labelvalspan">
                    状态
                  </span>
                </div>
                <div class="labelval lablstc">
                  <!-- <span class="labelvalspan">
                    {$detail.data.status}
                  </span> -->
                  <select class="form-control" name="status" id="status">
                    {foreach name="$detail.order_status" item="sta" key="kk"}
                    <option style="color: {$sta.color};" value={$kk}{if $detail.data.status===$kk} selected{/if}>{$sta.name}</option>
                    {/foreach}
                  </select>
                </div>
              </div>
            </div>
            <!-- 一行完 -->
            <!-- 一行 -->
            <div class="row">
              <div>
                <div class="label">客户</div>
                <div class="labelval">
                  <span class="labelvalspan">
                    <a href="/admin/clientssummary?id={$detail.data.uid}&uid={$detail.data.uid}">{$detail.data.username}</a>
                  </span>
                </div>
              </div>
              <div>
                <div class="label lablst">
                  <span class="labelvalspan">
                    IP地址
                  </span>
                </div>
                <div class="labelval lablstc">
                  <span class="labelvalspan">
                    {$detail.data.ip}
                  </span>
                </div>
              </div>
            </div>
            <!-- 一行完 -->
            <!-- 一行 -->
            <div class="row">
              <div>
                <div class="label">优惠码</div>
                <div class="labelval">
                  <span class="labelvalspan">
                    {$detail.data.promo_code}
                  </span>
                </div>
              </div>
            </div>
            <!-- 一行完 -->

          </div>
          <h2 style="margin-top: 0px;font-size:1.7rem;font-weight: bold;">订单项目</h2>
          <div style="margin-top:20px;border-top:1px solid #e4e7ed" />
          <div class="detailtable">
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
                  {foreach name="detail.data.server" item="dd"}
                  <tr>
                    <td>{$dd.id}</td>
                    <td><a href="/admin/clientsviewservices?uid={$detail.data.uid}&hid={$dd.id}&id={$detail.data.uid}">{$dd.name}</a></td>
                    <td>{$dd.description}</td>
                    <td>{$dd.billingcycle}</td>
                    <td>{$dd.amount}</td>
                    <td>
                      {if $dd.domainstatus==='待审核'}
                      <span style="color: red;">
                        {$dd.domainstatus}
                      </span>
                      {elseif $dd.domainstatus==='已激活'}
                      <span style="color: green;">
                        {$dd.domainstatus}
                      </span>
                      {elseif $dd.domainstatus==='被取消'}
                      <span style="color: gray;">
                        {$dd.domainstatus}
                      </span>
                      {else}
                      {$dd.domainstatus}
                      {/if}
                    </td>
                    <td>
                      <span style="color: {$dd.invoice_id.color};">
                        {$dd.invoice_id.name}
                      </span>
                    </td>
                    <td>
                      <form class="form" style="margin-top: 3%;">
                        {if $dd.sendwolcome}
                        <div class="form-group row">
                          <label style="width: 10%;">
                          </label>
                          <div class="col-sm-10">
                            <input type="checkbox" value="" /> <span style="margin-left: 5px;">发送产品开通邮件</span><br />
                          </div>
                        </div>
                        {else}

                        <div class="form-group row">
                          <label style="width: 10%;">服务器
                          </label>
                          <div class="col-sm-10">
                            <select class="form-control" name="serverid" id="serverid" onchange="serveridchange({$dd.id},this)">
                              <option value=></option>
                              {foreach name="$dd.server_group" item="ss"}
                              <option value={$ss.id} {if $dd.serverid==$ss.id} selected{/if}>{$ss.name}</option>
                              {/foreach}
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label style="width: 10%;">
                          </label>
                          <div class="col-sm-10">
                            <input type="checkbox" value="" id="runcreate" name="runcreate" onchange="runcreatechange({$dd.id},this)" {if $dd.runcreate===true}checked{/if} />
                            <span style="margin-left: 5px;"> 执行自动开通模块</span>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label style="width: 10%;">
                          </label>
                          <div class="col-sm-10">
                            <input type="checkbox" value="" id="sendwolcome" onchange="runcreatechange({$dd.id},this)" {if $dd.runcreate===true}checked{/if} /> <span style="margin-left: 5px;">发送产品开通邮件</span><br />
                          </div>
                        </div>
                        {/if}
                      </form>
                    </td>

                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
          </div>
          <div style="margin-top: 1%;text-align:center">
            <button class="btn btn-primary w-md" onclick="pass()">核验通过</button>
            <button class="btn btn-light w-md" onclick="cancel()">取消订单</button>
            <button class="btn btn-danger w-md" onclick="del()">删除订单</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<script>
  var detail = {$detailJSON};
  var status = detail.data.status;
  console.log('detail: ', detail);
  var host = [];
  if (detail && detail.data.server && detail.data.server.length > 0) {
    for (let index = 0; index < detail.data.server.length; index++) {
      const element = detail.data.server[index];
      let obj = {
        id: element.id,
        username: element.username,
        password: element.password,
        server: element.serverid,
        runcreate: 0,
        sendwolcome: 0,
      }
      host.push(obj);
    }
  }
  console.log(host);
  // 关联状态onchang事件
  document.getElementById("status").onchange = function() {
    console.log(this.options[this.selectedIndex].value);
    status = this.options[this.selectedIndex].value;
    Toast('提交中...');
    $.ajax({
      type: 'POST',
      url: 'orders/change_status',
      contentType: 'application/json;charset=UTF-8',
      dataType: 'json',
      data: JSON.stringify({
        id: detail.data.id,
        status: this.options[this.selectedIndex].value,
      }),
      success: function(res, textStatus, jqXHR) {
        alert(res.msg);
        // if (res.status == 200) {
        //   setTimeout(function() {
        //     window.location.href = '/admin/configticketdepartments';
        //   }, 1000);
        // }
      }
    });
  }

  function serveridchange(id, ref) {
    console.log('id: ', id);
    console.log('ref: ', ref);
    // console.log(ref.options[ref.selectedIndex].value);
    if (host && host.length > 0) {
      for (let index = 0; index < host.length; index++) {
        const element = host[index];
        if (element.id === id) {
          element.serverid = ref.options[ref.selectedIndex].value;
        }
      }
    }
    console.log(host);
  }

  function runcreatechange(id, ref) {
    console.log('id: ', id);
    console.log('ref: ', ref);
    console.log(ref.checked);
    console.log(ref.id);
    if (host && host.length > 0) {
      for (let index = 0; index < host.length; index++) {
        const element = host[index];
        if (element.id === id) {
          if (ref.id === "runcreate") {
            element.runcreate = ref.checked === true ? 1 : 0;
          }
          if (ref.id === "sendwolcome") {
            element.sendwolcome = ref.checked === true ? 1 : 0;
          }
        }
      }
    }
    console.log(host);
  }

  function pass() {
    var cfm = confirm('确定审核?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'orders/active',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify({
          id: detail.data.id,
          status: status,
          host: host
        }),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.reload();
            }, 700);
          }
        }
      });
    }
  }

  function cancel() {
    var cfm = confirm('确定取消?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'GET',
        url: 'orders/cancel?ids=' + detail.data.id,
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        // data: JSON.stringify({}),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.reload();
            }, 700);
          }
        }
      });
    }
  }

  function del() {
    var cfm = confirm('此操作将永久删除该文件, 是否继续?');
    if (cfm) {
      Toast('提交中...');
      $.ajax({
        type: 'DELETE',
        url: 'orders/delete?ids=' + detail.data.id,
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        // data: JSON.stringify({}),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.reload();
            }, 700);
          }
        }
      });
    }
  }
</script>
<style>
  .detailtable {
    margin-top: 1%;
    text-align: center;
    min-height: 200px;
    overflow: auto;
    /* border:1px solid blue */
  }

  #detailContent {
    margin-top: 20px;
  }

  .label {
    text-align: right;
    padding-right: 10px;
    font-size: 14px;
  }

  .labelval {
    text-align: left;
    font-size: 14px;
    background: #f4f4f4;
  }

  .labelvalspan {
    padding: 0 10px;
  }

  .lablst {
    text-align: center;
    padding-right: 20px;
  }

  .lablstc {
    margin-left: -20%;
  }

  .row {
    /* border: 1px solid #e4e7ed; */
    width: 100%;
    margin-bottom: 20px;
  }

  .row div {
    /* border: 1px solid #e4e7ed; */
    line-height: 33px;
    width: 45%;
  }

  .row div div {
    /* border: 1px solid #e4e7ed; */
    width: 50%;
    float: left;
  }
</style>
{include file="footer"}