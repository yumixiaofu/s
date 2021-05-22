{include file="header"}
{include file="menu"}
<section class="admin-main">
  <div class="page-container">
    <div class="card">
      <div class="card-body">
        <div class="card-title">{$title}</div>
        <div class="tab-content mt-4">
          <div class="table-body">
            <form class="form">
              <div class="form-group row">
                <label class="require middle">主IP</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="in_ip" placeholder="请输入IP">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">附加IP</label>
                <div class="col-sm-4">
                  <textarea rows="5" class="form-control" name="ipListString" placeholder="请使用英文半角,分隔ip"></textarea>
                </div>
              </div>

              <div class="form-group row">
                <label class="middle">上游</label>
                <div class="col-sm-4">
                  <select class="form-control" name="pid">
                    {foreach name="sylist" item="list"}
                      <option value="{$list.value}">
                        {$list.label}</option>
                    {/foreach}
                  </select>
                </div>
              </div>

              <div class="form-group row">
                <label class="middle">配置</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="pz" placeholder="请输入配置">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">用户名</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="username" placeholder="请输入用户名">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">密码</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="password" placeholder="请输入密码">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">成本</label>
                <div class="col-sm-4">
                  <input type="number" class="form-control" name="total" placeholder="请输入成本">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">到期时间</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control datetime" name="paid_time" placeholder="请选择到期时间">
                </div>
              </div>

              <div class="form-group row">
                <label class="require middle">控制方式
                  <i class="far fa-question-circle" data-container="body" data-toggle="popover" data-placement="bottom"
                    data-trigger="hover" data-content="支持多种控制方式，如有其他上游需要支持，请提交至论坛，我们将尽快支持"></i>
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="control_mode">
                    <option></option>
                    {foreach name="kzfslist.control_mode" item="list"}
                      <option value="{$list.value}" {if $list.disabled}disabled{/if}>
                        {$list.name}</option>
                    {/foreach}
                  </select>
                </div>
              </div>

              <!-- 下面是控制方式为IMPI时的必填项 -->
              <div class="form-group row ipmi_item" style="display: none;">
                <label class="require middle">IPMI IP</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="ipmi" placeholder="请输入IPMI IP">
                </div>
              </div>

              <div class="form-group row ipmi_item" style="display: none;">
                <label class="require middle">版本</label>
                <div class="col-sm-4">
                  <select class="form-control" name="ipmi_version">
                    <option></option>
                    <option value="1.5">v1.5</option>
                    <option value="2.0">v2.0</option>
                  </select>
                </div>
              </div>

              <div class="form-group row ipmi_item" style="display: none;">
                <label class="require middle">IPMI用户名</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="root" placeholder="请输入IPMI用户名">
                </div>
              </div>

              <div class="form-group row ipmi_item" style="display: none;">
                <label class="require middle">IPMI密码</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="pwd" placeholder="请输入IPMI密码">
                </div>
              </div>

              <!-- 下面是控制方式为IMPI时的必填项 end -->
              <div class="form-group row dcim_item" style="display: none;">
                <label class="require middle">魔方DCIM客户端地址</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="dcim_client_url" placeholder="请输入魔方DCIM客户端地址">
                </div>
              </div>

              <div class="form-group row dcim_item" style="display: none;">
                <label class="require middle">服务器ID</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="dcim_client_id" placeholder="请输入服务器ID">
                </div>
              </div>

              <div class="form-group row dcim_item" style="display: none;">
                <label class="require middle">魔方DCIM用户名</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="root" placeholder="请输入魔方DCIM用户名">
                </div>
              </div>

              <div class="form-group row dcim_item" style="display: none;">
                <label class="require middle">魔方DCIM密码</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="pwd" placeholder="请输入魔方DCIM密码">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-sm-10">
                  <button type="button" class="btn btn-primary w-md" onclick="save()">保存更改</button>
                  <button type="button" class="btn btn-outline-secondary w-md" onclick="back()">返回</button>
                  <button type="button" class="btn btn-outline-secondary w-md" onclick="reset()">重置</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>
    const id = '{$id}';
    function back() {
      window.location.href = `/${window.directory}/munualresource`;
    }

    function reset() {
      $('form').reset();
    }

    // 保存
    async function save() {
      const param = $('form').serializeJson();
      if (param.ipListString) {
        param.ip = param.ipListString.split(',');
      }

      if (param.paid_time) {
        param.paid_time = new Date(param.paid_time).getTime() / 1000;
      }

      if (id) {
        param.id = id;
        // `/${window.directory}/upper/editupperpost`
        $.ajax({
          url: `/${window.directory}/upper/editupperpost`,
          type: 'post',
          dataType: 'json',
          data: param,
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert('编辑成功');
            window.location.href = window.location.href;
          }
        });
      } else {
        // `/${window.directory}/upper/addupperpost`
        $.ajax({
          url: `/${window.directory}/upper/addupperpost`,
          type: 'post',
          dataType: 'json',
          data: param,
          success: function(res) {
            if (res.status !== 200) {
              alert(res.msg);
              return;
            }

            alert('新增成功');
            window.location.href = `/admin/addOrEditresource?id=${data.data.id}`;
          }
        });
      }

      /*
      if (!this.$route.query.id) {
        // 添加管理员
        this.btnLoading = true
        if (this.ipListString !== undefined && this.ipListString !== '') {
          this.formData.ip = this.ipListString.split(',')
        }
        this.formData.paid_time = this.paid_time / 1000

        const data = await addResourceManage(this.formData)
        if (data.data.status === 200) {
          this.$message.success('添加成功')
          this.$router.push({ name: 'munualResource', params: { id: data.data.id, type: this.formData.control_mode } })
        } else {
this.$message.error(`${data.data.msg}`)
    }
    this.btnLoading = false
    }
    else if (this.$route.query.id) {
      this.formData.paid_time = this.paid_time / 1000
      // 编辑管理员
      Object.assign(this.submitFormInfo, this.formData)

      this.submitFormInfo.id = Number(this.$route.query.id)
      if (this.ipListString !== undefined && this.ipListString !== '') {
        this.submitFormInfo.ip = this.ipListString.split(',')
      }
      this.btnLoading = true
      const data = await editResourceManage(this.submitFormInfo)
      if (data.data.status === 200) {
        this.$message.success('更新数据成功')
        this.$router.push({
          name: 'munualResource',
          params: {
            id: this.formData.id,
            type: this.formData
              .control_mode
          }
        })
      } else {
        this.$message.error(`${data.data.msg}`)
      }
      this.btnLoading = false
    }*/
    }
    $(function() {

      // 改变控制方式动态改变表单
      $("[name='control_mode']").bind('change', function() {
        const control_mode = $(this).val();
        console.log(control_mode);
        $('.dcim_item').hide();
        $('.ipmi_item').hide();

        if (control_mode === 'ipmi') {
          $('.ipmi_item').show();
        } else if (control_mode === 'dcim_client') {
          $('.dcim_item').show();
        }
      });
    })
  </script>
</section>
{include file="footer"}