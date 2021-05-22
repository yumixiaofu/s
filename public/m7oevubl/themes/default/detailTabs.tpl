<div class="tabs">
    <div class="tab-item {if $REDIRECT_URL=='clientssummary'}selected{/if}" onclick="goTo('clientssummary')">客户摘要</div>
    <div class="tab-item {if $REDIRECT_URL=='clientsprofile'}selected{/if}" onclick="goTo('clientsprofile')">个人资料</div>
    <div class="tab-item {if $REDIRECT_URL=='clientsservices' || $REDIRECT_URL=='clientsviewservices' }selected{/if}" onclick="goTo('clientsservices')">产品/服务</div>
    <div class="tab-item {if $REDIRECT_URL=='clientsinvoices'}selected{/if}" onclick="goTo('clientsinvoices')">账单</div>
    <div class="tab-item {if $REDIRECT_URL=='clientstransactions'}selected{/if}" onclick="goTo('clientstransactions')">交易记录</div>
    <div class="tab-item {if $REDIRECT_URL=='clientscredit'}selected{/if}" onclick="goTo('clientscredit')">信用管理</div>
    <div class="tab-item {if $REDIRECT_URL=='clientssupporttickets'}selected{/if}" onclick="goTo('clientssupporttickets')">工单</div>
    <div class="tab-item {if $REDIRECT_URL=='clientslog'}selected{/if}" onclick="goTo('clientslog')">日志</div>
    <div class="tab-item {if $REDIRECT_URL=='clientsnoticelog'}selected{/if}" onclick="goTo('clientsnoticelog')">通知日志</div>
    <div class="tab-item {if $REDIRECT_URL=='clientsattach'}selected{/if}" onclick="goTo('clientsattach')">附件</div>
    <div class="tab-item {if $REDIRECT_URL=='clientscrm'}selected{/if}" onclick="goTo('clientscrm')">跟进状态</div>
</div>
<script>
    function goTo(url){
        location.href = url + '?uid=' + {$_GET['uid']};
    }
</script>