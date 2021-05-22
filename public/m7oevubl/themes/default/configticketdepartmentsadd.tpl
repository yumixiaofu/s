{include file="header"}
{include file="menu"}
<section class="admin-main">
  <div class="container-fluid">
    <div class="page-container">
      <div class="card">
        <div class="card-body">
          <h2 style="margin-top: 0px;">{$tip}</h2>
          <div style="margin-top:20px;border-top:1px solid #e4e7ed">
            <form class="form" style="margin-top: 20px;">
              <h4>详情</h4>
              <div class="form-group row">
                <label class="require" style="width: 10%;">部门名称</label>
                <div class="col-sm-4">
                  <input type="text" name="name" id="name" class="form-control" value="{if $editData}{$editData.name}{else}""{/if}">
                  <span style="color: #8c99b1;"> </span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">描述</label>
                <div class="col-sm-4">
                  <input type="text" id="description" class="form-control" name="description" value="{if $editData}{$editData.description}{else}""{/if}">
                  <span style="color: #8c99b1;"> </span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">需要激活产品
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="is_product_order" id="is_product_order">
                    <option value="0" {if $editData && $editData.is_product_order===0}selected{/if}>否</option>
                    <option value="1" {if $editData && $editData.is_product_order===1}selected{/if}>是</option>
                  </select>
                  <span style="color: #8c99b1;"> 开启后客户需要有已激活的产品才可创建工单</span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">提交工单需实名
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="is_certifi" id="is_certifi">
                    <option value="0" {if $editData && $editData.is_certifi===0}selected{/if}>否</option>
                    <option value="1" {if $editData && $editData.is_certifi===1}selected{/if}>是</option>
                  </select>
                  <span style="color: #8c99b1;"> 开启后，客户在前台创建工单的时候，需要验证该客户是否实名</span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">自动回复
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="is_open_auto_reply" id="is_open_auto_reply">
                    <option value="1" {if $editData && $editData.is_open_auto_reply===1}selected{/if}>是</option>
                    <option value="0" {if $editData && $editData.is_open_auto_reply===0}selected{/if}>否</option>
                  </select>
                  <span style="color: #8c99b1;"> 开启后可预设自动回复内容</span>
                </div>
              </div>
              <div id="zdStrvis" style="margin-left:11%;{if $editData&&$editData.is_open_auto_reply===0} display:none{/if}">
                <span style="margin-bottom:5px;color: #8c99b1;">
                  自动回复将在收到工单后的下一个自动任务执行时回复以下内容
                </span>
              </div>
              <div class="form-group row" id="hfnr" style="{if $editData&&$editData.is_open_auto_reply===0} display:none{/if}">
                <label class="require" style="width: 10%;">回复内容
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <textarea rows="5" id="bz" class="form-control" name="bz">{if $editData}{$editData.bz}{else}您的问题已收到，我们将会尽快处理您的问题，请耐心等待，感谢您的支持理解。{/if}
                  </textarea>
                  <span style="color: #8c99b1;"> </span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">工单评分
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="feedback_request" id="feedback_request">
                    <option value="1" {if $editData && $editData.feedback_request===1}selected{/if}>是</option>
                    <option value="0" {if $editData && $editData.feedback_request===0}selected{/if}>否</option>
                  </select>
                  <span style="color: #8c99b1;"> 客户可对工单内容进行评分</span>
                </div>
              </div>
              <div class="form-group row">
                <label class="require" style="width: 10%;">隐藏
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="hidden" id="hidden">
                    <option value="0" {if $editData && $editData.hidden===0}selected{/if}>否</option>
                    <option value="1" {if $editData && $editData.hidden===1}selected{/if}>是</option>
                  </select>
                  <span style="color: #8c99b1;"> 从用户中心中隐藏</span>
                </div>
              </div>
              <h4>工单传递</h4>
              <div class="form-group row">
                <label class="require" style="width: 10%;">关联上游部门
                  <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                </label>
                <div class="col-sm-4">
                  <select class="form-control" name="is_related_upstream" id="is_related_upstream">
                    <option value="0" {if $editData && $editData.is_related_upstream===0}selected{/if}>否</option>
                    <option value="1" {if $editData && $editData.is_related_upstream===1}selected{/if}>是</option>
                  </select>
                  <span style="color: #8c99b1;"> 开启后可将本地工单传递到上游</span>
                </div>
              </div>

              <div style="{if $editData&&$editData.is_related_upstream===1}{else}display:none{/if}" id="is_related_upstream_options">
                {foreach name="financeOptions" item="dd" key="kk"}
                <div class="form-group row">
                  <label style="width: 10%;">{$dd.name}
                    <!-- <i class="far fa-question-circle" style="color: blue;" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></i> -->
                  </label>
                  <div class="col-sm-4">
                    <select class="form-control" id={$dd.id}>
                      {foreach name="$dd.departments" item="o" key="k"}
                      {if $editData && ($editData.upstreams[$dd.id]=== $o.id)}
                      <option value={$o.id} id={$o.id} selected>{$o.name}</option>
                      {else}
                      <option value={$o.id} id={$o.id}>{$o.name}</option>
                      {/if}
                      {/foreach}
                    </select>
                  </div>
                </div>
                {/foreach}
              </div>
            </form>
            <div style="margin-left: 15%;">
              <button class="btn btn-primary w-md" onclick="save()">保存</button>
              <button class="btn btn-light w-md" onclick="back()">返回</button>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  // 自动回复绑定onchang事件
  document.getElementById("is_open_auto_reply").onchange = function() {
    
    if (this.options[this.selectedIndex].value === '1') {
      $("#zdStrvis").removeAttr("style");
      $("#zdStrvis").css("margin-left", "11%");
      $("#zdStrvis").css("margin-bottom", "5px");
      $("#zdStrvis").css("color", "#8c99b1");
      $("#hfnr").removeAttr("style");
    } else {
      $("#zdStrvis").css("display", "none");
      $("#hfnr").css("display", "none");
    }
  }
  // 关联上游部门onchang事件
  document.getElementById("is_related_upstream").onchange = function() {
    
    if (this.options[this.selectedIndex].value === '1') {
      $("#is_related_upstream_options").removeAttr("style");
    } else {
      $("#is_related_upstream_options").css("display", "none");
    }
  }

  function back() {
    
    history.back();
  }

  function save() {
    let name = $("#name").val();
    
    let description = $("#description").val();
    
    let is_product_order = $("#is_product_order").val();
    
    let is_certifi = $("#is_certifi").val();
    
    let is_open_auto_reply = $("#is_open_auto_reply").val();
    
    let bz = $("#bz").val();
    
    let feedback_request = $("#feedback_request").val();
    
    let hidden = $("#hidden").val();
    
    let is_related_upstream = $("#is_related_upstream").val();
    
    const financeOptions = {$financeOptionsJSon};
    // 
    let upstreams = {};
    if (is_related_upstream === '1') {

      if (financeOptions && financeOptions.length > 0) {
        for (let index = 0; index < financeOptions.length; index++) {
          const element = financeOptions[index];
          let a = $("#" + element.id).val();
          upstreams[element.id] = Number(a);
        }
      }
      
    }
    let commitData = {
      addadminonly: '',
      addcfdesc: '',
      addfieldname: '',
      addfieldoptions: '',
      addfieldtype: '',
      addregexpr: '',
      addrequired: '',
      addsortorder: 0,
      admins: [],
      customadminonly: [false],
      customcfdesc: [''],
      customfieldname: [''],
      customfieldoptions: [''],
      customfieldtype: [''],
      customregexpr: [''],
      customrequired: [true],
      customsortorder: [0],
      description: description,
      email: "test@qq.com",
      feedback_request: feedback_request,
      hidden: hidden,
      host: '',
      is_certifi: is_certifi,
      is_open_auto_reply: is_open_auto_reply,
      is_product_order: is_product_order,
      is_related_upstream: is_related_upstream,
      login: '',
      name: name,
      password: '',
      port: '',
      bz: bz,
      // upstreams: upstreams,

    };
    if (is_related_upstream === '1') {
      commitData.upstreams = upstreams;
    }
    
    const editDataJSON = {$editDataJSON};
    
    if (editDataJSON) {
      
      commitData.id = editDataJSON.id;
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'save_ticket_department',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify(commitData),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.href = '/admin/configticketdepartments';
            }, 1000);
          }
        }
      });
    } else {
      
      Toast('提交中...');
      $.ajax({
        type: 'POST',
        url: 'add_ticket_department',
        contentType: 'application/json;charset=UTF-8',
        dataType: 'json',
        data: JSON.stringify(commitData),
        success: function(res, textStatus, jqXHR) {
          alert(res.msg);
          if (res.status == 200) {
            setTimeout(function() {
              window.location.href = '/admin/configticketdepartments';
            }, 1000);
          }
        }
      });
    }

  }
</script>
<!-- {include file="addmodal"} -->
{include file="footer"}