// 获取Url的方法
   function getUrlParam(name) {

   	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象

   	var r = window.location.search.substr(1).match(reg); //匹配目标参数

   	if (r != null) return unescape(r[2]);

   	return null; //返回参数值

   }

   // 利用jQuery动态修改URL地址参数和参数值 url：地址；arg:要变更的参数名；arg_val:要变更的参数值
   function changeURLArg(url, arg, arg_val) {
   	var pattern = arg + '=([^&]*)';
   	var replaceText = arg + '=' + arg_val;
   	if (url.match(pattern)) {
   		var tmp = '/(' + arg + '=)([^&]*)/gi';
   		tmp = url.replace(eval(tmp), replaceText);
   		return tmp;
   	} else {
   		if (url.match('[\?]')) {
   			return url + '&' + replaceText;
   		} else {
   			return url + '?' + replaceText;
   		}
   	}
	var newUrl  = url + '\n' + arg + '\n' + arg_val
	console.log(newUrl)
   	return newUrl
   }
