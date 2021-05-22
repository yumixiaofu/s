let baseUrl
const basicInfo = localStorage.getItem('basicInfo')
if (basicInfo) {
    baseUrl = JSON.parse(basicInfo).domain
} else {
	/* 请填写财务系统-系统设置 里面的系统链接 */
	baseUrl = 'https://cloudhost.xin' 
	// baseUrl = '.'
}

/**
 * post 方法
 */
function ajaxPost (url, params, callBack) {
    ajax(url, params, "post", callBack);
}

/**
 * get 方法
 */
function ajaxGet (url, params, callBack) {
    ajax(url, params, "get", callBack);
}


/**
 * ajax 方法
 */
function ajax (url, params, method, callBack) {
    var date = new Date().getTime()
    params.request_time = date
    // var baseUrl = 'http://w1.test.idcsmart.com'
    $.ajax({
        url: baseUrl + url,
        type: method,
        data: params,
        headers: {
            "Authorization": "JWT " + localStorage.getItem('OrfLcI2IqQItv0vS'),
            // 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'
        },
        xhrFields: {
            withCredentials: true
        },
        dataType: "json",
        success: function (json) {
            callBack(json);
        },
        error: function (json) {
            alert("访问出错！");
            return false;
        }
    });
}