!function(s) {
    "use strict";
    var e, t = localStorage.getItem("language"),n = "eng";
    function l() {
        document.webkitIsFullScreen || document.mozFullScreen || document.msFullscreenElement || (console.log("pressed"), s("body").removeClass("fullscreen-enable"))
    }
    s("#side-menu").metisMenu(),
    s("#vertical-menu-btn").on("click", function(e) {
        e.preventDefault(),
        s("body").toggleClass("sidebar-enable"),
        992 <= s(window).width() ? s("body").toggleClass("vertical-collpsed") : s("body").removeClass("vertical-collpsed")
    }),
    s("#sidebar-menu a").each(function() {
       // var e = window.location.href.split(/[?#]/)[0];
	    var e = window.location.href.split(/[?#]/);
        var e_href = this.href.split(/[?#]/);
        var hidden_url = {
            '/billing' : ['/viewbilling'],
            '/service' : ['/servicedetail'],
            '/supporttickets' : ['/viewticket'],
            //帮助中心
            '/knowledgebase' : ['/knowledgebaseview'],
            '/news' : ['/newsview'],
            // 登录日志
            '/systemlog' : ['/loginlog']
        };
        var is_hidden_menu = false;
        for(var i in hidden_url){
            if(e_href[0] == window.location.protocol+'//' + window.location.hostname + i)
            {
                if(document.referrer == this.href && hidden_url[i].includes(window.location.pathname))
                {
                    // console.log('e_href[0]:' + e_href[0] + ';e_href[1]:' + e_href[1] + ';e[0]:' + e[0] + ';e[1]:' + e[1] + ';哈哈哈哈哈');
                    is_hidden_menu = true;
                    break;
                }
            }
        }
        if(window.location.href.includes("keywords") || window.location.href.includes("domain_status")){
            var is_searchMenu = window.location.href.includes(this.href+"&");
        }else if(window.location.href==this.href){
            var is_searchMenu =true;
        }else{
            var is_searchMenu=false;
        }
        // console.log('e_href[0]:' + e_href[0] + ';e_href[1]:' + e_href[1] + ';e[0]:' + e[0] + ';e[1]:' + e[1] + ';');
        // var is_searchMenu = window.location.href.includes(this.href);
        if((e_href[0] == e[0] && !e_href[1]) || (e_href[0] == e[0] && e_href[1] == e[1]) || is_hidden_menu || is_searchMenu)
        {
         (s(this).addClass("active"),s(this).parent().siblings().find('a').removeClass('active'),s(this).parent().addClass("mm-active").siblings().removeClass('mm-active'), s(this).parent().parent().addClass("mm-show"), s(this).parent().parent().prev().addClass("mm-active"), s(this).parent().parent().parent().addClass("mm-active"), s(this).parent().parent().parent().parent().addClass("mm-show"), s(this).parent().parent().parent().parent().parent().addClass("mm-active"))
         return false;
        }
    }),

    s(document).ready(function() {
        var e;
        0 < s("#sidebar-menu").length && 0 < s("#sidebar-menu .mm-active .active").length && (300 < (e = s("#sidebar-menu .mm-active .active").offset().top) && (e -= 300, s(".simplebar-content-wrapper").animate({
            scrollTop: e
        },
        "slow")))
    }),
    s(".navbar-nav a").each(function() {
        var e = window.location.href.split(/[?#]/)[0];
        this.href == e && (s(this).addClass("active"), s(this).parent().addClass("active"), s(this).parent().parent().addClass("active"), s(this).parent().parent().parent().addClass("active"), s(this).parent().parent().parent().parent().addClass("active"), s(this).parent().parent().parent().parent().parent().addClass("active"))
    }),
    s('[data-toggle="fullscreen"]').on("click",
    function(e) {
        e.preventDefault(),
        s("body").toggleClass("fullscreen-enable"),
        document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement ? document.cancelFullScreen ? document.cancelFullScreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitCancelFullScreen && document.webkitCancelFullScreen() : document.documentElement.requestFullscreen ? document.documentElement.requestFullscreen() : document.documentElement.mozRequestFullScreen ? document.documentElement.mozRequestFullScreen() : document.documentElement.webkitRequestFullscreen && document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT)
    }),
    document.addEventListener("fullscreenchange", l),
    document.addEventListener("webkitfullscreenchange", l),
    document.addEventListener("mozfullscreenchange", l),
    s(".right-bar-toggle").on("click", function(e) {
        s("body").toggleClass("right-bar-enabled")
    }),
    s(document).on("click", "body",
    function(e) {
        0 < s(e.target).closest(".right-bar-toggle, .right-bar").length || s("body").removeClass("right-bar-enabled")
    }),
    s(".dropdown-menu a.dropdown-toggle").on("click",
    function(e) {
        return s(this).next().hasClass("show") || s(this).parents(".dropdown-menu").first().find(".show").removeClass("show"),
        s(this).next(".dropdown-menu").toggleClass("show"),
        !1
    }),
    s(function() {
        s('[data-toggle="tooltip"]').tooltip()
    }),
    s(function() {
        s('[data-toggle="popover"]').popover()
    }),
    s(".language").on("click",
    function(e) {
        a(s(this).attr("data-lang"))
    }),
    s(window).on("load",
    function() {
        s("#status").fadeOut(),
        s("#preloader").delay(350).fadeOut("slow")
    }),
    Waves.init()
} (jQuery);$(document).ready(function(){
    /*
if($("a").last().html().indexOf("魔方")!=-1){
    
   $("a").last().remove();
       $("a").last().css('display','none');
    
}
    */
 var zjmf=$('a[href="https://www.idcsmart.com"]').html();
    if (zjmf!="undefined"){
        
        $('a[href="https://www.idcsmart.com"]').css("display","none").remove();
        
    }
    
    $('a[href="#settings1"]').click(function(){
        $('a[href="https://www.idcsmart.com"]').css("display","none").remove();
    });
    
        $('a[href="#finance"]').click(function(){
        $('a[href="https://www.idcsmart.com"]').css("display","none").remove();
    });
    
    
        $('.nav-tabs-custom li').on('click',function(){
            
       $('a[href="https://www.idcsmart.com"]').css("display","none").remove();
        
	    })
 $('a[href="https://www.idcsmart.com"]').css("display","none").remove();
    
    
});

