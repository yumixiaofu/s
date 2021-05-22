<section class="admin-main">
<div class="container-fluid">
			<div class="page-container">
				<div class="card">
					<div class="card-body">
                        <div class="card-title row"> <div style="padding:0 15px;">{$Title}</div>
                            <div class="col-lg-8 col-md-12 col-sm-12">
                                {foreach $PluginsAdminMenu as $v}
                                    {if $v['custom']}
                                        <span  class="ml-2"><a  class="h5" href="{$v.url}" target="_blank">{$v.name}</a></span>
                                    {else/}
                                        <span  class="ml-2"> <a  class="h5" href="{$v.url}">{$v.name}</a></span>
                                    {/if}
                                {/foreach}
                            </div>
                        </div>
            <!-- 导航 -->
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <a class="nav-link active" id="pending-tab" data-toggle="tab" href="#home" role="tab" aria-controls="pending" aria-selected="true">接口设置</a>
                </li>
                <li class="nav-item" role="presentation">
                  <a class="nav-link" id="reply-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="reply" aria-selected="false">发送设置</a>
                </li>
              </ul>

            <!-- 带显示效果的内容 -->
            <div class="tab-content" id="myTabContent">
                <div role="tabpanel" class="tab-pane fade show active" id="home" aria-labelledby="home-tab">
                    <form method="post">
                        <br>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="webhook">webhook地址：</label>
                                <input type="hidden" name="action" value="setwebhook">
                                <input type="text" class="form-control" id="webhook" placeholder="webhook" value="{$config.webhook}" name="config[webhook]">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary mr-1 " type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                    <form method="post">
                            <div class="form-group row">
                              <label class="col-sm-1">通知部门</label>
                              <div class="col-sm-4">

                                {foreach $dm_list as $val}
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="checkbox" name="config[dmlist][]" value="{$val.id}" {in name="$val['id']" value="$config['dmlist']"}checked{/in}>{$val.name}({$val.id})>
                                  <label class="form-check-label" for="inlineCheckbox1">1</label>
                                </div>
                                {/foreach}
 
                              </div>
                            </div>

                            <div class="form-group row">
                              <label class="col-sm-1">通知内容设定</label>
                              <div class="col-sm-4">
                               <textarea class="form-control" rows="5" name="config[content]">{$config.content}</textarea>
                              </div>
                            </div>

                            <div class="form-group row">
                                <label for="" class="col-sm-1">可用参数</label>
                                部门：$department  标题：$ticket_title 内容:$ticket_content
                            </div>
                            <input class="hidden" name="action" value="setsend">
                            <button class="btn btn-primary mr-1 ">提交</button>
                    </form>
                </div>
</div>
</div>
</div>
</div>
</div>
	</section>