{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="table-container">
                        <div class="table-header">
                            <div class="table-tools">
                                <a href="viewinvoices?uid={$_GET['uid']}" class="btn btn-success w-sm nohide">
                                    <i class="fas fa-plus-circle"></i> {$btnText}
                                </a>
                                <btn class="btn btn-outline-secondary w-xs" id="search-more">高级搜索</btn>
                            </div>
                        </div>
                        {include file="searchform"}
                        <div class="table-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <caption>
                                    <div class="action">
                                        选中的项目:
                                        <button type="button" class="btn btn-success btn-sm" id="markAsPaid">标记为已支付</button>
                                        <button type="button" class="btn btn-primary btn-sm" id="consolidateBills" disabled  data-toggle="modal"
                                                data-target="#exampleModal" >合并账单</button>
                                        <button type="button" class="btn border btn-sm" id="markAsCancelled">标记为被取消</button>
                                        <button type="button" class="btn border btn-sm" id="copyBill">复制账单</button>
                                        <button type="button" class="btn btn-danger btn-sm" id="deleteBill">删除</button>
                                    </div>
                                </caption>
                                <thead class="thead-light">
                                <tr>
                                    <th class="checkbox">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="selectAlll">
                                            <label class="custom-control-label" for="selectAlll">&nbsp;</label>
                                        </div>
                                    </th>
                                    {foreach name="titleList" item="tl"}
                                        <th class="center">{$tl}</th>
                                    {/foreach}
                                </tr>
                                </thead>
                                <tbody>
                                {if $data}
                                    {foreach name="data" item="dd"}
                                        <tr>
                                            <td class="checkbox">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input row-checkbox" id="{$dd.id}">
                                                    <label class="custom-control-label" for="{$dd.id}">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td class="center">{$dd.id}</td>
                                            <td class="center">{$dd.create_time}</td>
                                            <td class="center">{$dd.due_time}</td>
                                            <td class="center">{$dd.paid_time}</td>
                                            <td class="center">{$dd.subtotal}</td>
                                            <td class="center">{$dd.payment}</td>
                                            <td class="center">
                                                {if $dd.status == 'Paid'}
                                                    已支付
                                                {elseif $dd.status == 'Unpaid'}
                                                    未支付
                                                {elseif $dd.status == 'Draft'}
                                                    已草稿
                                                {elseif $dd.status == 'Overdue'}
                                                    已逾期
                                                {elseif $dd.status == 'Cancelled'}
                                                    被取消
                                                {elseif $dd.status == 'Refunded'}
                                                    已退款
                                                {/if}
                                            </td>
                                            <td class="center">{$dd.type}</td>
                                            <td>
                                                <button type="button" class="btn btn-link"><i class="fas fa-edit"></i>
                                                    编辑
                                                </button>
                                                <button type="button" class="btn btn-link red"><i
                                                            class="fas fa-times"></i>
                                                    删除
                                                </button>
                                            </td>
                                        </tr>
                                    {/foreach}
                                {else}
                                    <tr>
                                        <td colspan="11" rowspan="3" class="center">暂无数据</td>
                                    </tr>
                                {/if}
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
<!-- 添加弹窗 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">合并账单</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="modalForm" class="form" method="get">
                    <input name="uid" id="uid" value="{$uid}" hidden/>
                    <div id="modalList">

                    </div>
                    <div class="modal-footer">
                        <div class="w-75" id="total">111</div>
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="modalFormSubmit">确定</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(function (){
        // 全选/全不选
        $('#selectAlll').bind('click', function () {
            var selectAll = $(this).is(":checked");
            if (selectAll) {
                $('.row-checkbox').prop('checked', true);
            } else {
                $('.row-checkbox').prop('checked', false);
            }
            get_combine_invoices();
        })

        $('.row-checkbox').bind('click', function () {
            get_combine_invoices();
        })
    });
    var consolidateBillsData = {};

    function get_combine_invoices(){
        var selectRow = getSelectedRow();
        $.ajax({
            type: 'get',
            data: {
                uid: {$uid},
                ids: selectRow
            },
            url: 'get_combine_invoices',
            contentType: 'application/json;charset=UTF-8',
            dataType: 'json',
            success: function (res, textStatus, jqXHR) {
                if (res.status == 200 && res.data.invoices.length >= 2) {
                    consolidateBillsData = res.data;
                    document.getElementById('consolidateBills').disabled = false;
                }
            }
        });
    }

    document.getElementById('markAsPaid').onclick = function(){
        var cfm = confirm('确定标记为已支付?');
        if (cfm) {
            var selectRow = getSelectedRow();
            Toast('加载中，请稍后...');
            $.ajax({
                type: 'get',
                data: {
                    ids: selectRow
                },
                url: 'invoice/paid',
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        }
        console.log('标记为已支付');
    }
    function show(key){
        const display = document.getElementById('sonNode'+key).style.display;
        if (display == 'none') {
            document.getElementById('sonNode'+key).style = 'color: #bbbbbb; display: block;';
        } else {
            document.getElementById('sonNode'+key).style = 'color: #bbbbbb; display: none;';
        }

    }

    document.getElementById('consolidateBills').onclick = function(){
        document.getElementById('total').innerHTML = '总计： ￥' + consolidateBillsData.total ? consolidateBillsData.total : '0.00';
        var seleNode = '';
        var sonNode = '';
        if (consolidateBillsData.invoices && consolidateBillsData.invoices.length > 0) {
            consolidateBillsData.invoices.forEach(function(item,key){
                seleNode = `<div class="form-group row" onclick="show(` + key + `)">
                            <label class="require">账单#` + item.id + `</label>
                            <div class="col-sm-9 float-right text-right">
                                <label>￥` + item.subtotal + `元</label>
                            </div>
                        </div>`;
                if (item.items) {
                    sonNode = `<div class="form-group row" style="color: #bbbbbb; display: none;" id="sonNode`+ key +`">`;
                    item.items.forEach(function(ii){
                        sonNode += `<div class="col-sm-11 form-row">
                                <div class="w-50">` + ii.description + `</div>
                                <label class="float-right text-right w-50">￥` + ii.amount + `元</label>
                            </div>`;

                    })
                    sonNode += `</div>`;
                }
                $("#modalList").append(seleNode);
                $("#modalList").append(sonNode);
            })
        }
    }

    document.getElementById('modalFormSubmit').onclick = function(){
        var selectRow = getSelectedRow();
        $.ajax({
            type: 'post',
            data: {
                uid: {$uid},
                ids: selectRow
            },
            url: 'combine_invoices',
            contentType: 'application/json;charset=UTF-8',
            dataType: 'json',
            success: function (res, textStatus, jqXHR) {
                Toast(res.msg);
                if (res.status == 200) {
                    setTimeout(function () {
                        location.reload();
                    }, 1000);
                }
            }
        });
    }

    document.getElementById('markAsCancelled').onclick = function(){
        var cfm = confirm('确定标记为被取消?');
        if (cfm) {
            var selectRow = getSelectedRow();
            Toast('加载中，请稍后...');
            $.ajax({
                type: 'get',
                data: {
                    ids: selectRow
                },
                url: 'invoice/cancelled',
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        }
        console.log('标记为被取消');
    }

    document.getElementById('copyBill').onclick = function(){
        var cfm = confirm('确定复制?');
        if (cfm) {
            var selectRow = getSelectedRow();
            Toast('加载中，请稍后...');
            $.ajax({
                type: 'get',
                data: {
                    ids: selectRow
                },
                url: 'invoice/duplicate',
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        }
        console.log('复制账单');
    }

    document.getElementById('deleteBill').onclick = function(){
        var cfm = confirm('此操作将永久删除该数据, 是否继续?');
        if (cfm) {
            var selectRow = getSelectedRow();
            Toast('加载中，请稍后...');
            $.ajax({
                type: 'DELETE',
                data: {
                    ids: selectRow
                },
                url: 'invoice/delete',
                contentType: 'application/json;charset=UTF-8',
                dataType: 'json',
                success: function (res, textStatus, jqXHR) {
                    Toast(res.msg);
                    if (res.status == 200) {
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                    }
                }
            });
        }
        console.log('删除账单');
    }
</script>
{include file="footer"}