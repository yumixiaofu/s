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
                            <form action="" method="get" id="searchForm">
                                <div class="table-tools">
                                    <select class="form-control" id="searchSelect">
                                        {foreach name="search" item="sh" key="kk"}
                                            <option value="{$kk}" {if $kk==$_GET['status']}selected{/if}>{$sh}</option>
                                        {/foreach}
                                    </select>
                                    <input value="" id="status" name="status" hidden>
                                </div>
                            </form>
                        </div>
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    <!-- <th class="checkbox">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheckHead"
                                                name="headCheckbox">
                                            <label class="custom-control-label" for="customCheckHead">&nbsp;</label>
                                        </div>
                                    </th> -->
                                    {foreach name="titleList" item="tl"}
                                        <th class="center">{$tl}</th>
                                    {/foreach}
                                </tr>
                                </thead>
                                <tbody>
                                {foreach name="data" item="dd"}
                                    <tr>
                                        <!-- <td class="checkbox">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input row-checkbox"
                                                    id="customCheck1">
                                                <label class="custom-control-label" for="customCheck1">&nbsp;</label>
                                            </div>
                                        </td> -->
                                        <td class="center"><a href="#">{$dd.id}</a></td>
                                        <td class="center">{$dd.user.username}</td>
                                        <td class="center">{$dd.certifi_name}</td>
                                        <td class="center">{$dd.idcard}</td>
                                        <td class="center">{$dd.certype}</td>
                                        <td class="center">{if $dd.type==1}个人认证{elseif $dd.type==2}企业认证{elseif $dd.type==3}个人转企业{/if}</td>
                                        <td class="center">{$search[$dd.status]}</td>
                                        <td class="center">{$dd.create_time}</td>
                                        <td>
                                            {if $dd.pic}
                                                <button type="button" class="btn btn-link"
                                                        onclick="certifiStatus({$dd.uid},{$dd.status},{$dd.type},1)"><i
                                                            class="fas fa-edit"></i>
                                                    下载
                                                </button>
                                                <button type="button" class="btn btn-link"
                                                        onclick="certifiStatus({$dd.uid},{$dd.status},{$dd.type},2)"><i
                                                            class="fas fa-edit"></i>
                                                    查看
                                                </button>
                                            {/if}
                                            {if ($dd.status==2||$dd.status==3||$dd.status==4)&&$dd.is_newest}
                                                <button type="button" class="btn btn-link"
                                                        onclick="certifiStatus({$dd.uid},{$dd.status},{$dd.type},3)"><i
                                                            class="fas fa-edit"></i>
                                                    通过
                                                </button>
                                            {/if}
                                            {if ($dd.status==1||$dd.status==3||$dd.status==4)&&$dd.is_newest}
                                                <button type="button" class="btn btn-link red"
                                                        onclick="certifiStatus({$dd.uid},{$dd.status},{$dd.type},4)"><i
                                                            class="fas fa-times"></i>
                                                    驳回
                                                </button>
                                            {/if}
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
    </div>
</section>
<script>
    $(function () {
        $('#searchSelect').bind('change', 'option', function (obj) {
            var myselect = document.getElementById("searchSelect");
            var index = myselect.selectedIndex;
            // selectedIndex代表的是你所选中项的index
            var value = myselect.options[index].value;
            document.getElementById('status').value = value;
            document.getElementById('searchForm').submit();
        });
    })

    function certifiStatus(uid, status, type, code) {
        var cfm = false;
        var value = '后台操作';
        if (code == 1) {
            alert('下载功能待开发');
        } else if (code == 2) {
            alert('查看功能待开发');
        } else if (code == 3) {
            cfm = confirm('将通过此用户的实名认证, 是否继续?');
        } else if (code == 4) {
            value = show_prompt();
            cfm = value;
        }
        if (cfm) {
            const subData = {
                uid: uid,
                status: status,
                type: type,
                error: value
            }
            $.post("certifi_status", subData, function (res) {
                alert(res.msg);
                if (res.status == 200) {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                }
            });
        }
    }

    function show_prompt() {
        var value = prompt('请输入驳回原因：', '');
        if (value == '') {
            alert('请输入驳回原因');
            show_prompt();
        } else {
            return value;
        }
    }
</script>
{include file="addmodal"}
{include file="footer"}