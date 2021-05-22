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
                                    <a href="#" class="btn btn-success w-sm nohide" data-toggle="modal"
                                       data-target="#exampleModal">
                                        <i class="fas fa-plus-circle"></i> {$btnText}
                                    </a>
                                    <select class="form-control" id="searchSelect">
                                        {foreach name="search" item="sh" key="kk"}
                                            <option value="{$kk}" {if $_GET[$kk]}selected{/if}>{$sh}</option>
                                        {/foreach}
                                    </select>
                                    <input type="text" class="form-control" placeholder="输入关键字" value=""
                                           id="searchText">
                                    <button class="btn btn-primary w-xs" type="submit"><i class="fas fa-search"></i> 搜索
                                    </button>
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
                                        <td class="center"><a href="clientssummary?uid={$dd.id}">{$dd.id}</a></td>
                                        <td><a href="clientssummary?uid={$dd.id}">{$dd.username}</a>{if $dd.companyname}
                                        <br/>{$dd.companyname}{/if}</td>
                                        <td>{$dd.phonenumber}<br/>{$dd.email}</td>
                                        <td><a href="clientsservices?uid={$dd.id}">{$dd.host_total}</a></td>
                                        <td>{$dd.prefix}{$dd.amount_in}<br/>{$dd.prefix}{$dd.amount_out}</td>
                                        <td>{$dd.credit}</td>
                                        <td>{$dd.create_time}</td>
                                        {if $dd.level }
                                            <td class="center">{$dd.level}</td>
                                        {else}
                                            <td class="center"> -</td>
                                        {/if}
                                        {if $dd.group_name }
                                            <td class="center">{$dd.group_name}</td>
                                        {else}
                                            <td class="center"> -</td>
                                        {/if}
                                        {if $dd.status == 1}
                                            <td>正常</td>
                                        {else}
                                            <td>停用</td>
                                        {/if}
                                        <td>{$dd.user_nickname}</td>
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
        setSearchName();

        $('#searchSelect').bind('change', 'option', function (obj) {
            setSearchName();
        });

        function setSearchName(){
            var myselect = document.getElementById("searchSelect");
            var index = myselect.selectedIndex;
            // selectedIndex代表的是你所选中项的index
            var value = myselect.options[index].value;
            document.getElementById('searchText').name = value;
        }
    })
</script>
{include file="addmodal"}
{include file="footer"}