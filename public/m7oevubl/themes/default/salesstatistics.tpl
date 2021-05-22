{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    <div class="title">我的业绩</div>
                    <div class="help-block">
                        {$tip}
                    </div>
                    <!-- 搜索 S -->
                    <form action="" method="get">
                        <div class="table-header">
                            <div class="table-tools">
                                <select class="form-control" name="id">
                                    {foreach name="saleUsers" item="ss"}
                                        <option value="{$ss.id}"
                                                {if $ss.id==$_GET['id']}selected{/if}>{$ss.user_nickname}</option>
                                    {/foreach}
                                </select>
                                <select class="form-control" name="time">
                                    {foreach name="timetype" item="tt"}
                                        <option value="{$tt.nextduedate}"
                                                {if $tt.nextduedate==$_GET['time']}selected{/if}>{$tt.name}</option>
                                    {/foreach}
                                </select>
                                <input type="text" name="start_time" class="form-control daterange"
                                       value="{$_GET['start_time']}">
                                <btn class="btn btn-primary w-xs" onClick="searchClick()"><i class="fas fa-search"></i>
                                    搜索
                                </btn>
                            </div>
                        </div>
                    </form>
                    <!-- 搜索 E -->
                    <div class="w-100 separate"></div>
                    <!-- 三分天下 S -->
                    <div class="row mb-4 mt-5">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>
                                            <text id="cycleContent">本月</text>
                                            业绩：
                                        </h5>
                                        <h5>{$month_sale_total}元</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>
                                            <text id="cycleContent">本月</text>
                                            订单：
                                        </h5>
                                        <h5>{$month.ordercountsum}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>待支付：</h5>
                                        <h5>{$month.ordercountun}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>已支付</h5>
                                        <h5>{$month.ordercount}个</h5>
                                    </div>
                                </div>
                                <div class="w-96 separate mlr-2"></div>
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>上月业绩：</h5>
                                        <h5>{$last_month.total}{$ladder.turnover.suffix}</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>上月订单：</h5>
                                        <h5>{$last_month.ordercount}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>待支付：</h5>
                                        <h5>{$last_month.ordercountun}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>已支付：</h5>
                                        <h5>{$last_month.ordercount}个</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>今日订单：</h5>
                                        <h5>{$today.ordercountsum}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>待支付：</h5>
                                        <h5>{$today.ordercountun}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>已支付：</h5>
                                        <h5>{$today.ordercount}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>今日业绩：</h5>
                                        <h5>{$today.total}{$ladder.turnover.suffix}</h5>
                                    </div>
                                </div>
                                <div class="w-96 separate mlr-2"></div>
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>本周订单：</h5>
                                        <h5>{$week.ordercountsum}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>待支付：</h5>
                                        <h5>{$week.ordercountun}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>已支付：</h5>
                                        <h5>{$week.ordercount}个</h5>
                                    </div>
                                    <div class="card-body">
                                        <h5>本周业绩：</h5>
                                        <h5>{$week.total}{$ladder.turnover.suffix}</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>当前：</h5>
                                        {if $ladder.turnover}
                                            {if !$ladder.turnover.bates}
                                                <h5>默认</h5>
                                            {else}
                                                <h5>{$ladder.turnover.turnover}营业额，增加{$ladder.turnover.bates}%</h5>
                                            {/if}
                                        {else}
                                            <h5></h5>
                                        {/if}

                                    </div>
                                    <div class="card-body">
                                        <h5>
                                            <text id="cycleContent">本月</text>
                                            提成总额：
                                        </h5>
                                        <h5>{$month_commission_total}{$ladder.turnover.suffix}</h5>
                                    </div>
                                </div>
                                <div class="w-96 separate mlr-2"></div>
                                <div class="card-body flex">
                                    <div class="card-body">
                                        <h5>下一级：</h5>
                                        {if $last.bates}
                                            <h5>{$last.turnover}营业额，增加{$last.bates}%</h5>
                                        {else}
                                            <h5>无</h5>
                                        {/if}

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 三分天下 E -->

                    <!-- chart 走势图 S -->
                    <div class="w-100">
                        <canvas id="myChart" style="height: 40rem; width: 100%"></canvas>
                    </div>
                    <!-- chart 走势图 E -->

                    <!-- 提成明细列表 S -->
                    <div class="table-container">
                        <div class="table-header">
                            <div class="title mt-5">提成明细</div>
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
                                {if $data}
                                    {foreach name="data" item="dd" key="kk"}
                                        <tr>
                                            <td class="center">{$dd.username}</td>
                                            <td class="center">{$dd.name}</td>
                                            <td class="center">{$dd.amount}</td>
                                            <td class="center">{$dd.batesamount}</td>
                                            <td class="center">{$dd.type}</td>
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
                    <!-- 提成明细列表 E -->
                </div>
            </div>
        </div>
    </div>
</section>
<script src="{$Themes}/assets/js/Chart.min.js"></script>
<script>
    var ctx = document.getElementById("myChart");
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["2021-03-01", "", "2021-03-03", "", "2021-03-05", "", "2021-03-07", "", "2021-03-09", "", "2021-03-11"],
            datasets: [{
                label: '# of Votes',
                data: [0.1, 0.8, 0.3, 0.5, 0.2, 0.3],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }],
            elements: {
                line: {
                    tension: 0 // 禁用贝塞尔曲线
                }
            }
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>
<script>
    $(function () {
        // 动态设置标题名
        var timetype = {$timetype};
        if (timetype.nextduedate == 1 || timetype.nextduedate) {
            document.getElementById('cycleContent').value = '本月';
        } else if (timetype.nextduedate == 2) {
            document.getElementById('cycleContent').value = '三个月';
        } else if (timetype.nextduedate == 3) {
            document.getElementById('cycleContent').value = '全部';
        } else if (timetype.nextduedate == 4) {
            document.getElementById('cycleContent').value = '自定义';
        }
    });
</script>
<style>
    .title {
        font-size: 2rem;
        font-weight: bold;
    }

    .separate {
        border-bottom: 1px #D9D9D9 solid
    }

    .flex {
        display: flex;
    }

    .w-96 {
        width: 96%;
    }

    .mlr-2 {
        margin-left: 2%;
        margin-right: 2%;
    }

    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
</style>
{include file="footer"}