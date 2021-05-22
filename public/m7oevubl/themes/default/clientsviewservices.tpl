{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="form-group col-lg-2 col-md-3 col-sm-4">
                        <select class="form-control" name="sex">
                            <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                            <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                            <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                        </select>
                    </div>
                    <form action="" method="get" id="clienForm">
                        <input name="uid" id="uid" value="{$_GET[uid]}" hidden/>
                        <div class="tab-content mt-4">
                            <div class="table-body fit">
                                <div class="category">
                                    <div class="category-title">
                                        产品
                                        <div class="float-right">
                                            <button type="button" class="btn border border-primary mr-3">工单</button>
                                            <button type="button" class="btn border border-primary mr-3">发送信息</button>
                                            <button type="button" class="btn border border-primary mr-3">转移产品/服务
                                            </button>
                                        </div>
                                    </div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">订单#</label>
                                                <div class="form-row">
                                                    <input type="text" class="form-control w-50" name="username"
                                                           value="{$profile.username}" disabled>
                                                    <button type="button" class="btn btn-primary w-50">查看订单</button>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>IP地址</label>
                                                <div class="form-row ml-1">
                                                    <input type="text" class="form-control w-50" name="username"
                                                           value="{$profile.username}">&nbsp; ：
                                                    <input type="text" class="form-control w-25" name="username"
                                                           value="{$profile.username}">
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>用户名</label>
                                                <input type="text" class="form-control" name="companyname"
                                                       value="{$profile.companyname}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">商品/服务</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>接口</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>密码</label>
                                                <input type="text" class="form-control" name="address1"
                                                       value="{$profile.address1}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>主机名</label>
                                                <input type="email" class="form-control" name="postcode"
                                                       value="{$profile.postcode}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>接口命令</label>
                                                <div class="form-row ml-1">
                                                    <button type="button" class="btn border w-25 mr-2">暂停</button>
                                                    <button type="button" class="btn btn-danger w-25">删除</button>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>其他IP</label>
                                                <textarea type="text" class="form-control"
                                                          name="custom[{$cm.cid}]"
                                                          value="{$cm.value}"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="category">
                                    <div class="category-title">
                                        财务
                                        <div class="float-right">
                                            <button type="button" class="btn border border-primary mr-3">交易流水</button>
                                            <button type="button" class="btn border border-primary mr-3">账单</button>
                                        </div>
                                    </div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">订购时间</label>
                                                <input type="number" class="form-control" name="phonenumber"
                                                       value="{$profile.phonenumber}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>首付金额</label>
                                                <input type="email" class="form-control" name="email"
                                                       value="{$profile.email}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">付款方式</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">到期时间</label>
                                                <input type="password" class="form-control" placeholder="为空则表示不修改密码"
                                                       name="password" value="{$profile.password}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>续费金额</label>
                                                <input type="password" class="form-control" placeholder="为空则表示不修改密码"
                                                       name="password" value="{$profile.password}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>余额自动续费</label>
                                                <div class="col-sm-4">
                                                    <div class="custom-control custom-switch" dir="ltr">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="customSwitchsizemd"
                                                               {if $cm.value == 'yes'}checked{/if}
                                                               name="custom[{$cm.cid}]">
                                                        <label class="custom-control-label"
                                                               for="customSwitchsizemd"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">付款周期</label>
                                                <input type="password" class="form-control" placeholder="为空则表示不修改密码"
                                                       name="password" value="{$profile.password}">
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>状态</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>优惠码</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="category">
                                    <div class="category-title">产品配置</div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">计算机型</label>
                                                <div class="form-row">
                                                    <div class="progress w-50">
                                                        <div class="progress_bg">
                                                            <div class="progress_bar"></div>
                                                        </div>
                                                        <div class="progress_btn"></div>
                                                    </div>
                                                    <input type="text" id="text" class="form-control w-25"  />
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>区域</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>操作系统</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>CPU</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>内存</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>系统盘</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>网络类型</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">带宽</label>
                                                <div class="form-row">
                                                    <div class="progress w-50">
                                                        <div class="progress_bg">
                                                            <div class="progress_bar"></div>
                                                        </div>
                                                        <div class="progress_btn"></div>
                                                    </div>
                                                    <input type="text" id="text" class="form-control w-25"  />
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>流入带宽</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">IP数量</label>
                                                <div class="form-row">
                                                    <div class="progress w-50">
                                                        <div class="progress_bg">
                                                            <div class="progress_bar"></div>
                                                        </div>
                                                        <div class="progress_btn"></div>
                                                    </div>
                                                    <input type="text" id="text" class="form-control w-25"  />
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>流量</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label class="require">数据盘</label>
                                                <div class="form-row">
                                                    <div class="progress w-50">
                                                        <div class="progress_bg">
                                                            <div class="progress_bar"></div>
                                                        </div>
                                                        <div class="progress_btn"></div>
                                                    </div>
                                                    <input type="text" id="text" class="form-control w-25"  />
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>快照数量</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>备份数量</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>NAT转发</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>共享建站</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>系统盘性能</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                <label>数据盘性能</label>
                                                <select class="form-control" name="sex">
                                                    <option value="0">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="1">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                    <option value="2">#3760-212 &nbsp;&nbsp; 虚拟主机</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div>
                                            <button type="button" class="btn btn-primary w-md">应用至接口</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="category">
                                    <div class="category-title">自定义字段</div>
                                    <div class="category-body">
                                        <div class="form-row">
                                            {foreach name="custom" item="cm"}
                                                {if $cm.required == 1}
                                                    {if $cm.fieldtype == 'dropdown'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <select class="form-control" name="custom[{$cm.cid}]">
                                                                {foreach name="cm.fieldoptions" item="cft"}
                                                                    <option value="{$cft}"
                                                                            {if $cft == $cm.value}selected{/if}>{$cft}</option>
                                                                {/foreach}
                                                            </select>
                                                        </div>
                                                    {elseif $cm.fieldtype == 'password'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="password" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'text'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="text" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'link'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <input type="text" class="form-control"
                                                                   name="custom[{$cm.cid}]" value="{$cm.value}">
                                                        </div>
                                                    {elseif $cm.fieldtype == 'tickbox'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <div class="col-sm-4">
                                                                <div class="custom-control custom-switch" dir="ltr">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="customSwitchsizemd"
                                                                           {if $cm.value == 'yes'}checked{/if}
                                                                           name="custom[{$cm.cid}]">
                                                                    <label class="custom-control-label"
                                                                           for="customSwitchsizemd"></label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    {elseif $cm.fieldtype == 'textarea'}
                                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                                            <label>{$cm.fieldname}</label>
                                                            <textarea type="text" class="form-control"
                                                                      name="custom[{$cm.cid}]"
                                                                      value="{$cm.value}"></textarea>
                                                        </div>
                                                    {/if}
                                                {/if}
                                            {/foreach}
                                        </div>
                                    </div>
                                </div>
                                <div class="fix-bottom">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="button" class="btn btn-primary w-md" id="submit">保存更改</button>
                                            <button type="button" class="btn btn-outline-secondary w-md" id="reset">
                                                取消更改
                                            </button>
                                            <button type="button" class="btn btn-danger w-md" id="submit">删除记录</button>
                                            <button type="button" class="btn btn-danger w-md" id="submit">接口删除</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var isSubmit = false;
    document.getElementById('submit').onclick = function () {
        if (isSubmit) {
            return;
        }
        isSubmit = true;
        var modalForm = $("#clienForm").serialize();
        var client_id = $("#uid").val();
        modalForm += '&client_id=' + client_id;
        Toast('提交中...');
        $.post('profile_post', modalForm, function (res) {
            Toast(res.msg);
            if (res.status == 200) {
                setTimeout(function () {
                    location.reload();
                }, 1000);
            }
        });
    }

    document.getElementById('reset').onclick = function () {
        var uid = $("#uid").val();
        location.href = 'clientssummary?uid=' + uid;
    }
</script>
<script>
    $(function(){
        var tag = false,ox = 0,left = 0,bgleft = 0;
        $('.progress_btn').mousedown(function(e) {
             ox = e.pageX - left;
             tag = true;
        });
        $(document).mouseup(function() {
            tag = false;
        });
        $('.progress').mousemove(function(e) {
             if (tag) {
              left = e.pageX - ox;
              if (left <= 0) {
               left = 0;
              }else if (left > 300) {
               left = 300;
              }
              $('.progress_btn').css('left', left);
              $('.progress_bar').width(left);
              $('#text').val(parseInt((left/300)*100)*2 + '%');
             }
            });
            $('.progress_bg').click(function(e) {
             if (!tag) {
              bgleft = $('.progress_bg').offset().left;
              left = e.pageX - bgleft;
              if (left <= 0) {
               left = 0;
              }else if (left > 300) {
               left = 300;
              }
              $('.progress_btn').css('left', left);
              $('.progress_bar').animate({width:left},300);
              $('#text').val(parseInt((left/300)*100)*2 + '%');
             }
        });
   });
</script>
<style>
    .progress{position: relative; width:300px; margin: 10px 0;}
    .progress_bg{height: 10px; border: 1px solid #ddd; border-radius: 5px; overflow: hidden;background-color:#f2f2f2;}
    .progress_bar{background: #5FB878; width: 0; height: 10px; border-radius: 5px;}
    .progress_btn{width: 20px; height: 20px; border-radius: 5px; position: absolute;background: #333;left: 0px; margin-left: -10px; top:-5px; cursor: pointer;border:1px #ddd solid;box-sizing:border-box;}
    .progress_btn: hover{border-color:#F7B824;}
</style>
{include file="footer"}