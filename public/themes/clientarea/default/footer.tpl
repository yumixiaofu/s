{if $TplName != 'login' && $TplName != 'register' && $TplName != 'pwreset' && $TplName != 'bind'}
</div>
</div>
</div>

<footer class="footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				&copy; {$Setting.company_name}.
			</div>
			<div class="col-sm-6">
				<div class="text-sm-right d-none d-sm-block">
					
				</div>
			</div>
		</div>
	</div>
</footer>
{/if}
<script src="{$Setting.web_url}/themes/clientarea/default/assets/js/app.js?v={$Ver}"></script>

</body>

</html>

<script>


jQuery.fn.wait = function (selector, func, times, interval) {
    var _times = times || -1, //100次
    _interval = interval || 20, //20毫秒每次 
    _self = this,
    _selector = selector, //选择器
    _iIntervalID; //定时器id
    if( this.length ){ //如果已经获取到了，就直接执行函数
        func && func.call(this);
    } else {
        _iIntervalID = setInterval(function() {
            if(!_times) { //是0就退出
                clearInterval(_iIntervalID);
            }
            _times <= 0 || _times--; //如果是正数就 --
            
            _self = $(_selector); //再次选择
            if( _self.length ) { //判断是否取到
                func && func.call(_self);
                clearInterval(_iIntervalID);
            }
        }, _interval);
    }
    return this;
}

$('a[href="https://www.idcsmart.com"]').wait('a[href="https://www.idcsmart.com"]', function() {
   $('a[href="https://www.idcsmart.com"]').remove();
});


</script>