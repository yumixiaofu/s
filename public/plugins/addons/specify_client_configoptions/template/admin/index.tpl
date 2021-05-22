
<link type="text/css" href="{$Themes}/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
<script src="{$Themes}/assets/libs/toastr/build/toastr.min.js"></script>
<link rel="stylesheet" href="{$Themes}/assets/libs/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
<script src="{$Themes}/assets/libs/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>

<script>
    $(function () {
        // 状态筛选
        var parmas = []
        var urlParams = '{:implode(',', $Think.get.domain_status)}';
        var statusSelected = urlParams.split(',')
        if(!statusSelected[0]){
            statusSelected=['Pending','Active','Suspended']
        }

        $('#statusSel').selectpicker('val', statusSelected)
        $('#statusSel').on('change', function () {

            statusSelected = $('#statusSel').val()
            statusSelected.forEach(item => {
                parmas += '&domain_status[]=' + item
            })

            location.href = 'service?groupid={$Think.get.groupid}' + parmas
        });
        // 关键字搜索
        $('#searchInp').val('{$Think.get.keywords}')

        $('#searchInp').on('keydown', function (e) {
            if (e.keyCode == 13) {
                location.href = 'service?groupid={$Think.get.groupid}&keywords=' + $('#searchInp').val() +
                    '&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}'
            }
        })
        $('#searchIcon').on('click', function () {
            location.href = 'service?groupid={$Think.get.groupid}&keywords=' + $('#searchInp').val() +
                '&sort={$Think.get.sort}&orderby={$Think.get.orderby}&page={$Think.get.page}&limit={$Think.get.limit}'
        });

        // 排序
        $('.bg-light th:not(.checkbox)').on('click', function () {
            var sort = '{$Think.get.sort}'
            location.href = 'service?groupid={$Think.get.groupid}&keywords={$Think.get.keywords}&sort=' + (sort ==
                'desc' ? 'asc' : 'desc') + '&orderby=' + $(this).attr('prop') +
                '&page={$Think.get.page}&limit={$Think.get.limit}'
        })
    })
</script>
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
                    <div class="table-container">
                        <div class="table-header">
                            <div class="table-filter">
                                <div class="row">
                                    <div class="col">
                                    </div>
                                </div>
                            </div>
                            <div class="table-search">
                                <div class="row justify-content-end">
                                    <div class="col-sm-6">
                                        <div class="search-box">
                                            <div class="position-relative">
                                                <input type="text" class="form-control" id="searchInp" placeholder="按关键字搜索">
                                                <i class="bx bx-search-alt search-icon" id="searchIcon"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table tablelist">
                                <colgroup>
                                    <col>
                                    <col width="15%">
                                    <col>
                                    <col>
                                    <col>
                                    <col width="10%">
                                </colgroup>
                                <thead class="bg-light">
                                <tr>
                                    <th class="pointer" prop="id">
                                        <span>ID</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="username">
                                        <span>客户</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="name">
                                        <span>产品</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="option_name">
                                        <span>配置项</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="sub_name">
                                        <span>子项</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="status">
                                        <span>状态</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th class="pointer" prop="create_time">
                                        <span>创建时间</span>
                                        <span class="text-black-50 d-inline-flex flex-column justify-content-center ml-1 offset-3">
									<i class="bx bx-caret-up"></i>
									<i class="bx bx-caret-down"></i>
								</span>
                                    </th>
                                    <th>管理</th>
                                </tr>
                                </thead>
                                <tbody>
                                {if $rules}
                                    {foreach $rules as $list}
                                        <tr>
                                            <td><span class="badge badge-light"># {$list.id}</span></td>
                                            <td>{$list.username}</td>
                                            <td>{$list.name}</td>
                                            <td>{$list.option_name}</td>
                                            <td>{$list.sub_name}</td>
                                            <td>{if $list.status == 1}启用{else}禁用{/if}</td>
                                            <td>{if $list.create_time}{$list.create_time|date="Y-m-d H:i"}{else}-{/if}</td>
                                            <td>
                                                <a href="{:shd_addon_url('SpecifyClientConfigoptions://AdminIndex/setting',['id'=>$list['id']])}"
                                                   class="text-primary mr-2">修改</a>
                                                <a href="javascript: deleteConfirm('care', '删除提醒', '是否确定删除提醒？', {id: {$list.id}, token: '{$Token}'});"
                                                   class="text-danger"><i class="fas fa-times-circle"></i> 删除</a>
                                            </td>
                                        </tr>
                                    {/foreach}
                                {else}
                                    <tr>
                                        <td colspan="12">
                                            <div class="no-data">没有任何内容</div>
                                        </td>
                                    </tr>
                                {/if}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="customModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customTitle">提示</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="customBody">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-light" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="customSureBtn">确定</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {

    });
    function deleteConfirm(action, title, text, data) {
        if (!title) {
            title = '提示';
        }
        if (text) {
            content = '<div class="d-flex align-items-center"><i class="fas fa-exclamation-circle fs-20 text-warning mr-2"></i> ' + text + '</div>';
            area = ['420px'];
        } else {
            content = $('.' + action).html();
            area = ['500px'];
        }
        $('#customModal').modal('show')
        $('#customBody').html(content)
        $(document).on('click', '#customSureBtn', function () {
            var WebUrl = "{:shd_addon_url('SpecifyClientConfigoptions://AdminIndex/delete')}";
            if (data && !$('#customBody').find('form').eq(0).serialize()) {
                data = data;
            } else {
                data = $('#customBody').find('form').eq(0).serialize();
            }
            $.ajax({
                url: WebUrl + '&id=' + data.id,
                type: 'DELETE',
                data: data,
                dataType: 'json',
                beforeSend: function () {
                },
                success: function (data) {
                    {:json_decode(data,true)}
                    if (data.status == '200') {
                        toastr.success(data.msg);
                        location.reload()
                    } else {
                        toastr.error(data.msg);
                    }
                }
            });
        });

    }
</script>