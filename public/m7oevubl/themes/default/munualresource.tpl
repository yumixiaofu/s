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
          <form id="navTabsForm" action="" method="GET">
            <input id="typeValue" name="seleTab" hidden="hidden" value="{$seleTab}" />
          </form>
          <div class="tabs" id="navTabs">
            {foreach name="navTabs" item="nt"}
              <div class="tab-item {if $nt.name == $seleTab}selected{/if}" data-value="{$nt.name}">{$nt.label}</div>
            {/foreach}
          </div>
          <div class="table-container">
            <div class="table-header">
              <div class="table-tools">
                <a href="/admin/addOrEditresource" class="btn btn-success w-sm nohide">
                  <i class="fas fa-plus-circle"></i> {$btnText}
                </a>
                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
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
                  {foreach name="data" item="dd"}
                    <tr>
                      <td></td>
                      <td class="center">
                        {if $dd.power_status == 'on'}
                          <i class="bi bi-power green" data-container="body" data-toggle="popover" data-placement="bottom"
                            data-trigger="hover" data-content="开机"></i>
                        {elseif $dd.power_status == 'off'}
                          <i class="bi bi-power red" data-container="body" data-toggle="popover" data-placement="bottom"
                            data-trigger="hover" data-content="关机"></i>
                        {elseif $dd.power_status == 'error'}
                          <i class=" bi bi-x-circle red" data-container="body" data-toggle="popover" data-placement="bottom"
                            data-trigger="hover" data-content="错误"></i>
                        {else}
                          <i class="bi bi-question-circle" data-container="body" data-toggle="popover"
                            data-placement="bottom" data-trigger="hover" data-content="未知"></i>
                        {/if}
                      </td>
                      <td>{if $dd.ipcount === 1}
                          {$dd.ip[0]['ip']}
                        {else}
                          <a data-container="body" data-toggle="popover" data-placement="right" data-trigger="hover"
                            data-html="true"
                            data-content="{foreach name="dd.ip" item="ip"}<div>{$ip['ip']}</div>{/foreach}">{$dd.ip[0]['ip']}({$dd.ipcount})</a>
                        {/if}
                      </td>
                      <td>{$dd.pz}</td>
                      <td>{$dd.username} / *******</td>
                      <td>{$dd.uname}</td>
                      <td>{$dd.total}</td>
                      <td>{$dd.names ? $dd.names : '-'}</td>
                      <td class="center">
                        {if $dd.paid_time != '-'}
                          <span class="red" data-container="body" data-toggle="popover" data-placement="bottom"
                            data-trigger="hover" data-content="产品到期时间：{$dd.nextduedate}">{$dd.paid_time}</span>
                        {else}
                          -
                        {/if}
                      </td>
                      <td>
                        <!--<i class="bi bi-power" data-toggle="tooltip" data-placement="bottom" title="开机"
                          style="color: #3fbf70;" onclick=""></i>
                        <i class="bi bi-power" data-toggle="tooltip" data-placement="bottom" title="关机"
                          style="color: red;"></i>

                          <i class="bi bi-power" data-toggle="tooltip" data-placement="bottom" title="关机"
                          style="color: red;"></i>-->
                        {foreach name="dd.button" item="btn"}
                          {if $btn === 'status'}

                          {elseif $btn === 'on'}
                            <i class="bi bi-power green" data-container="body" data-toggle="popover" data-placement="bottom"
                              data-trigger="hover" data-content="开机"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {elseif $btn === 'off'}
                            <i class="bi bi-power red" data-container="body" data-toggle="popover" data-placement="bottom"
                              data-trigger="hover" data-content="关机"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {elseif $btn === 'reboot'}
                            <i class="bi bi-arrow-counterclockwise orange" data-container="body" data-toggle="popover"
                              data-placement="bottom" data-trigger="hover" data-content="重启"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {elseif $btn === 'vnc'}
                            <i class="bi bi-laptop purple" data-container="body" data-toggle="popover" data-placement="bottom"
                              data-trigger="hover" data-content="VNC"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {elseif $btn === 'reinstall'}
                            <i class="bi bi-clock green" data-container="body" data-toggle="popover" data-placement="bottom"
                              data-trigger="hover" data-content="重装系统"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {elseif $btn === 'crackPass'}
                            <i class="bi bi-lock red" data-container="body" data-toggle="popover" data-placement="bottom"
                              data-trigger="hover" data-content="破解密码"
                              onclick="operation('{$btn}','{$dd.control_mode}','{$dd.id}')"></i>
                          {else}

                          {/if}
                        {/foreach}
                        <a class="bi bi-pencil-square blue" data-container="body" data-toggle="popover"
                          data-placement="bottom" data-trigger="hover" data-content="编辑"
                          href="/admin/addOrEditresource?id={$dd.id}"></a>
                        <i class="bi bi-trash red" data-container="body" data-toggle="popover" data-placement="bottom"
                          data-trigger="hover" data-content="删除" onclick="deleteResource('{$dd.id}')"></i>
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

    <!-- 重装系统弹窗 -->
    <div class="modal fade" id="reinstallModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog " role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">重装系统</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form id="reinstallForm" class="form" method="get">
              <div class="form-group row">
                <label class="require">系统选择</label>
                <div class="col-sm-9">
                  <select class="form-control" name="osArr" id="os-option" onchange="setPort"></select>
                </div>
                <input type="hidden" name="id" />
              </div>
              <div class="form-group row">
                <label class="require">密码</label>
                <div class="col-sm-9">
                  <div class="input-group">
                    <input type="text" name="password" id="password" class="form-control">
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="button"
                        onclick="creatCode(9, 'reinstallModal')">随机密码</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label class="require">端口</label>
                <div class="col-sm-9">
                  <div class="input-group">
                    <input type="text" name="port" class="form-control">
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="button" onclick="portRandom()">随机端口</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="saveReinstall()">保存</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- 破解密码弹窗 -->
    <div class="modal fade" id="crackPassModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog " role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">破解密码</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form id="crackPassForm" class="form" method="get">
              <div class="form-group row">
                <label class="require middle">密码</label>
                <div class="col-sm-7">
                  <div class="input-group">
                    <input type="text" name="password" class="form-control">
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="button"
                        onclick="creatCode(9, 'crackPassModal')">随机密码</button>
                    </div>
                  </div>
                </div>
                <input type="hidden" name="id" />
              </div>
              <div class="form-group row">
                <label class="middle">是否破解其他用户</label>
                <div class="col-sm-7">
                  <select class="form-control" name="other_user" id="other_user">
                    <option value="0">否</option>
                    <option value="1">是</option>
                  </select>
                </div>
              </div>
              <div class="form-group row" id="other_user_name" style="display: none;">
                <label class="require middle">其他用户名称</label>
                <div class="col-sm-7">
                  <input type="text" name="user" class="form-control" placeholder="请输入其他用户名称">
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="saveCrackPass()">保存</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>
  {if $seleTab == 'zy'}

  {else}

  {/if}
  <script>
    // 开机
    function onDcim(id) { // 魔方DCIM开机方法
      if (confirm('确认要开机吗?')) {
        $.ajax({
          url: `/${window.directory}/upper/dcim_client/on`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function onIpmi(id) { // ipmi开机
      if (confirm('确认要开机吗?')) {
        $.ajax({
          url: `/${window.directory}/upper/ipmi/on`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function offIpmi(id) { // 关机
      if (confirm('确认要关机吗?')) {
        // `/${window.directory}/upper/ipmi/off`
        $.ajax({
          url: `/${window.directory}/upper/ipmi/off`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function offDcim(id) { // 关机
      if (confirm('确认要关机吗?')) {
        // `/${window.directory}/upper/dcim_client/off`
        $.ajax({
          url: `/${window.directory}/upper/dcim_client/off`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function rebootIpmi(id) {
      if (confirm('确认要重启吗?')) {
        // `/${window.directory}/upper/ipmi/reboot`
        $.ajax({
          url: `/${window.directory}/upper/ipmi/reboot`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function rebootDcim(id) {
      if (confirm('确认要重启吗?')) {
        // `/${window.directory}/upper/dcim_client/reboot`
        $.ajax({
          url: `/${window.directory}/upper/dcim_client/reboot`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function vncIpmi(id) {
      if (confirm('确认要打开VNC吗?')) {
        // `/${window.directory}/upper/ipmi/vnc`
        $.ajax({
          url: `/${window.directory}/upper/ipmi/vnc`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function vncDcim(id) {
      if (confirm('确认要打开VNC吗?')) {
        // `/${window.directory}/upper/dcim_client/vnc`
        $.ajax({
          url: `/${window.directory}/upper/dcim_client/vnc`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function portRandom() { // 生成随机端口
      var a = Math.floor(Math.random() * (20000 - 10000)) + 10000;
      $('#reinstallModal').find("[name='port']").val(a);
    }

    function creatCode(length, formid) { // 生成随机密码
      let crackRePwd = ''
      const codeLength = parseInt(length) // 设置验证码长度为6
      const codeChars = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
        'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
      ]
      for (let i = 0; i < codeLength; i++) {
        const charIndex = Math.floor(Math.random() * 62)
        crackRePwd += codeChars[charIndex]
      }
      const codeReg = /^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d).*$/
      var re = new RegExp(codeReg)

      if (re.test(crackRePwd)) {
        $('#' + formid).find("[name='password']").val(crackRePwd);
      } else {
        this.creatCode(9)
      }
    }

    // 选择系统填充端口
    function setPort(val) {
      console.log(val);
      /*const id = val[val.length - 1]
      this.formData.os = val[val.length - 1]
      let port = ''
      for (let i = 0; i < this.pageData.length; i++) {
        const item = this.pageData[i]
        if (item.os.length) {
          for (let j = 0; j < item.os.length; j++) {
            const os = item.os[j]
            if (os.id === id) {
              port = os.port
              this.ostype = os.ostype
            }
          }
        }
      }*/
    }

    // 保存重装系统
    function saveReinstall() {
      const param = $('#reinstallForm').serializeArray();

      console.log(param);
      alert('由于获取操作系统接口报错，暂时提交保存重装系统逻辑');
      return;
      // 提交接口保存
      // `/${window.directory}/upper/dcim_client/reinstall`
      $.ajax({
        url: `/${window.directory}/upper/dcim_client/reinstall`,
        type: 'post',
        dataType: 'json',
        data: param,
        success: function(res) {
          if (res.status !== 200) {
            alert(res.msg);
            return;
          }

          alert(res.msg);
          window.location.href = window.location.href;
        }
      });
    }

    // 重装系统
    function reinstallDcim(id) {
      $.ajax({
        url: `/${window.directory}/upper/dcim_client/get_os`,
        type: 'post',
        dataType: 'json',
        data: {id: id},
        success: function(res) {
          if (res.status !== 200) {
            alert(res.msg);
            // return;
          }

          // 设置操作系统选项

        }
      });

      $('#reinstallModal').find("[name='id']").val(id); // 为重装系统设置id
      $('#reinstallModal').modal(); // 显示弹窗
    }

    // 保存破解密码
    function saveCrackPass() {
      const param = $('#crackPassForm').serializeJson();
      console.log(param);

      // `/${window.directory}/upper/dcim_client/crack_pass`
      $.ajax({
        url: `/${window.directory}/upper/dcim_client/crack_pass`,
        type: 'post',
        dataType: 'json',
        data: param,
        success: function(res) {
          if (res.status !== 200) {
            alert(res.msg);
            return;
          }

          alert(res.msg);
          window.location.href = window.location.href;
        }
      });
    }

    // 破解密码
    function crackPassDcim(id) {
      // console.log('破解密码，弹窗');
      // crackPassModal

      $('#crackPassModal').find("[name='id']").val(id); // 为重装系统设置id
      $('#crackPassModal').modal(); // 显示弹窗
    }

    // 删除资源
    function deleteResource(id) {
      if (confirm('此操作将永久删除该资源, 是否继续?')) {
        // `/${window.directory}/upper/delupper`
        $.ajax({
          url: `/${window.directory}/upper/delupper`,
          type: 'post',
          dataType: 'json',
          data: {id: id},
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert(res.msg);
            window.location.href = window.location.href;
          }
        });
      }
    }

    function dcimOperation(item, id) {
      switch (item) {
        case 'on':
          this.onDcim(id)
          break
        case 'off':
          this.offDcim(id)
          break
        case 'reboot':
          this.rebootDcim(id)
          break
        case 'vnc':
          this.vncDcim(id)
          break
        case 'reinstall':
          this.reinstallDcim(id)
          break
        case 'crackPass':
          this.crackPassDcim(id)
          break
        default:
          break
      }
    }

    function ipmiOperation(item, id) {
      switch (item) {
        case 'on':
          this.onIpmi(id)
          break
        case 'off':
          this.offIpmi(id)
          break
        case 'reboot':
          this.rebootIpmi(id)
          break
        case 'vnc':
          this.vncIpmi(id)
          break
        default:
          break
      }
    }

    // 行点击
    function operation(item, controlMode, id) {
      if (controlMode === 'dcim_client') {
        dcimOperation(item, id)
      } else {
        ipmiOperation(item, id)
      }
    }

    $(function() {
      $('#other_user').bind('change', function() {
        if ($(this).val() === '1') {
          $('#other_user_name').show();
        } else {
          $('#other_user_name').hide();
        }
      })
    })
  </script>
</section>
{include file="footer"}