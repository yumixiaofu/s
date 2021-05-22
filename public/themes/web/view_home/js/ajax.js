'use strict';

var baseUrl;

var basicInfo = localStorage.getItem('basicInfo');
// if (basicInfo) {
//     baseUrl = JSON.parse(basicInfo).domain;
// } else {
//     /* 请填写财务系统-系统设置 里面的系统链接 */
//     //baseUrl = 'http://w1.test.idcsmart.com';
//      baseUrl = ''
// }
baseUrl = ''
window.baseUrl = '';

/**
 * post 方法
 */
function ajaxPost(url, params, callBack) {
    ajax(url, params, "post", callBack);
}

/**
 * get 方法
 */
function ajaxGet(url, params, callBack) {
    ajax(url, params, "get", callBack);
}

/**
 * ajax 方法
 */
function ajax(url, params, method, callBack) {
    var date = new Date().getTime();
    if(typeof(params)==='object') 
    params.request_time = date;
    
    // var baseUrl = 'http://w1.test.idcsmart.com'
    $.ajax({
        url: baseUrl + url,
        type: method,
        data: params,
        headers: {
            "Authorization": "JWT " + localStorage.getItem('OrfLcI2IqQItv0vS')
        },
        xhrFields: {
            withCredentials: true
        },
        dataType: "json",
        success: function success(json) {
            callBack(json);
        },
        error: function error(json) {

            // return false;
        }
    });
}
// 获取常规数据
function getGeneralData() {
    var url = "/common_list";
    var params = {};
    ajaxGet(url, params, function (data) {
        if (data.status !== 200) {
            return false;
        } else {
            var data = data.data;
            // 缓存公司基本数据
            window.localStorage.setItem('basicInfo', JSON.stringify(data));
            layout();
        }
    });
}

function layout() {

    var basicInfo = JSON.parse(localStorage.getItem('basicInfo'));
    $('.contact-phone').text(basicInfo.main_phone);
    $('.contact-email').text(basicInfo.company_email);
    $('.company_profile').text(basicInfo.company_profile);
    $('#immediately-register').attr("href", baseUrl + "/console.html#/register");
    // $('#topnav').html('<!-- Navbar STart -->    <div class="container">      <!-- Logo container-->      <div>        <a class="logo" href="index.html">          <img src="' + basicInfo.system_url + basicInfo.logo_url + '" class="l-dark" height="24"  alt="">          <img src="' + basicInfo.system_url + basicInfo.logo_url_home + '" class="l-light" height="24" alt="">        </a>      </div>      <div class="buy-button login-button">        <a href="' + baseUrl + '/console.html#/login" target="_blank" class="text-dark h6 mr-3 login-dark" >登录</a>        <a href="' + baseUrl + '/console.html#/register" target="_blank" class="btn btn-primary">注册</a>      </div>      <!--end login button-->      <!-- End Logo container-->      <div class="menu-extras">        <div class="menu-item">          <!-- Mobile menu toggle-->          <a class="navbar-toggle">            <div class="lines">              <span></span>              <span></span>              <span></span>            </div>          </a>          <!-- End mobile menu toggle-->        </div>      </div>      <div id="navigation">        <!-- Navigation Menu-->        <ul class="navigation-menu">          <li class="has-submenu">            <a href="index.html">首页</a></span>          </li>          <li class="has-submenu">            <a href="javascript:void(0)">产品</a><span class="menu-arrow"></span>            <ul class="submenu megamenu">              <li>                <ul>                  <li><a href="hosting-cloud.html"><img src="images/icons/shared.svg" class="avatar avatar-ex-sm mr-2"                        alt=""> 云服务器</a></li>                  <li><a href="hosting-dedicated.html"><img src="images/icons/vps.svg" class="avatar avatar-ex-sm mr-2"                        alt="">                      服务器</a></li>                </ul>              </li>            </ul>          </li>          <li><a href="hosting-safeguard.html">服务保障</a></li>          <li class="has-submenu">            <a href="javascript:void(0)">关于我们</a><span class="menu-arrow"></span>            <ul class="submenu">              <li><a href="page-blog-sidebar.html">新闻中心</a></li>              <li><a href="page-about.html">公司简介</a></li>              <li><a href="contact.html">联系我们</a></li>            </ul>          </li>          <li><a href="page-support.html">帮助中心</a></li>        </ul>        <!--end navigation menu-->      </div>      <!--end navigation-->    </div>    <!--end container-->  ');

    // $('#footer').html('<footer class="footer bg-footer">  <!--end container-->  <div class="container mt-5">    <div class="footer-bar">      <div class="row mt-5">        <div class="col-lg-3 col-md-12">          <a class="logo-footer h4 mouse-down text-light" href="#home">            <img src="' + basicInfo.system_url + basicInfo.logo_url_home + '"  alt="">          </a>          <p class="mt-4 text-foot">' + basicInfo.company_profile + '</p>          <!--end icon-->        </div>        <div class="col-lg-8">          <div class="row">            <div class="col-lg-3 col-md-3 col-12 mt-3 pt-2 mt-lg-0 pt-lg-0">              <h5 class="text-light footer-head font-weight-normal mb-0">产品</h5>              <ul class="list-unstyled footer-list mt-4">                <li><a href="hosting-cloud.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>云服务器</a></li>                <li><a href="hosting-dedicated.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>服务器</a></li>                              </ul>            </div>            <div class="col-lg-3 col-md-3 col-12 mt-3 pt-2 mt-lg-0 pt-lg-0">              <h5 class="text-light footer-head font-weight-normal mb-0">帮助与支持</h5>              <ul class="list-unstyled footer-list mt-4">                <li><a href="page-support.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>帮助中心</a>                </li>                <li><a href="' + basicInfo.system_url + '/console.html/#/tickets/createticket" target="blank" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>提交工单</a>                </li>                <li><a href="' + basicInfo.system_url + '/console.html/#/tickets/user-center" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>控制台</a>                </li>                <li><a href="page-support.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>常见问题</a>                </li>                <li><a href="hosting-safeguard.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>服务保障</a>                </li>              </ul>            </div>            <div class="col-lg-3 col-md-3 col-12 mt-3 pt-2 mt-lg-0 pt-lg-0">              <h5 class="text-light footer-head font-weight-normal mb-0">关于我们</h5>              <ul class="list-unstyled footer-list mt-4">                <li><a href="page-about.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>公司简介</a>                </li>                <li><a href="contact.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>联系我们</a>                </li>                <li><a href="page-blog-sidebar.html" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i>新闻中心</a>                </li>              </ul>            </div>            <div class="col-lg-3 col-md-3 col-12 mt-3 pt-2 mt-lg-0 pt-lg-0">              <h5 class="text-light footer-head font-weight-normal mb-0">通讯</h5>                                         <ul class="list-unstyled footer-list mt-4">                <li class="text-foot footer-contact">电话：' + basicInfo.main_phone + '</li>                <li class="text-foot footer-contact">邮箱：' + basicInfo.company_email + '</li>                <li class="text-foot footer-contact">联系地址：' + basicInfo.main_address + '</li>            </div>          </div>        </div>      </div>    </div>  </div></footer><!--end footer--><footer class="footer footer-line bg-footer">  <div class="container">    <div class="row text-center">      <div class="col-sm-6 col-md-7">        <div class="text-sm-left">          <p class="mb-0 text-foot">opyright © 2020-2022 ' + basicInfo.company_name + ' All Rights Reservedby.</p>        </div>      </div>      <!--end col-->      <div class="col-sm-6 col-md-5 mt-4 mt-sm-0 pt-2 pt-sm-0">        <p class="mb-0 text-foot">ICP备案编号 - ' + basicInfo.record_no + '</p>      </div>      <!--end col-->    </div>    <!--end row-->  </div>  <!--end container-->    <style>    .footer-contact{      min-height: 22px;    }  </style></footer>');

    if ($('.top-dark').length === 0) {
        $('.logo').html('  <img src="' + basicInfo.system_url + basicInfo.logo_url + '" class="l-light" height="24" alt="">  <img src="' + basicInfo.system_url + basicInfo.logo_url + '" class="l-dark" height="24"  alt="">');
    }

    function setMenu() {
        // Menu
        var theme = $('.top-dark');

        if (theme.length > 0) {
            $('.navigation-menu').addClass('nav-light');
            $('.buy-button .login-dark').addClass('login');
        }
        $(".navbar-toggle").on("click", function (event) {

            $(this).toggleClass("open");
            $("#navigation").slideToggle(400);
        });

        $(".navigation-menu>li").slice(-1).addClass("last-elements");

        $(".menu-arrow,.submenu-arrow").on("click", function (e) {
            if ($(window).width() < 992) {
                e.preventDefault();
                $(this).parent("li").toggleClass("open").find(".submenu:first").toggleClass("open");
            }
        });

        $(".navigation-menu a").each(function () {
            if (this.href == window.location.origin + window.location.pathname) {

                $(this).parent().addClass("active");
                $(this).parent().parent().parent().addClass("active");
                $(this).parent().parent().parent().parent().parent().addClass("active");
            }
        });
    }
    window.getUserInfo();
}
window.getUserInfo = function () {
   /*  if (localStorage.getItem('OrfLcI2IqQItv0vS')) {
        if (localStorage.getItem('user_info')) {
            var user = JSON.parse(localStorage.getItem('user_info'));
            var userName = user.username;
            var avatar = user.avatar;
            $('.login-button').html('\n                                      <a class="user_name  login-dark text-dark">\n                        <span class="user_name_content  h6 mr-3 " style="margin-right:20px">您好, ' + userName + ' </span><span> \n                        <span id="logoutBtn" style="cursor:pointer">退出</span>\n                    </a>');
        } else {
            ajaxGet('/user_info', {}, function (data) {
                if (data.status !== 200) return false;
                var userName = data.user.username;
                var avatar = data.user.avatar;
                localStorage.user_info = JSON.stringify(data.user);
                // 登录后, 将用户名, 展示到导航右上角
                $('.login-button').html('\n                                        <a class="user_name  login-dark text-dark h6">\n                        <span class="user_name_content" style="margin-right:20px">您好, ' + userName + ' </span><span> \n                        <span id="logoutBtn" style="cursor:pointer">退出</span>\n                    </a>');
                setMenu();
            });
        }
        $('.login-button').on('click', '#logoutBtn', function () {
            localStorage.clear('OrfLcI2IqQItv0vS');
            location.href = '/index.html';
        });
    } */
    setMenu();
};

function setMenu() {
    // Menu
    var theme = $('.top-dark');

    if (theme.length > 0) {
        $('.navigation-menu').addClass('nav-light');
        $('.buy-button .login-dark').addClass('login');
    }
    $(".navbar-toggle").on("click", function (event) {

        $(this).toggleClass("open");
        $("#navigation").slideToggle(400);
    });

    $(".navigation-menu>li").slice(-1).addClass("last-elements");

    $(".menu-arrow,.submenu-arrow").on("click", function (e) {
        if ($(window).width() < 992) {
            e.preventDefault();
            $(this).parent("li").toggleClass("open").find(".submenu:first").toggleClass("open");
        }
    });

    $(".navigation-menu a").each(function () {
        if (this.href == window.location.origin + window.location.pathname) {

            $(this).parent().addClass("active");
            $(this).parent().parent().parent().addClass("active");
            $(this).parent().parent().parent().parent().parent().addClass("active");
        }
    });
}
//getGeneralData();
//layout();