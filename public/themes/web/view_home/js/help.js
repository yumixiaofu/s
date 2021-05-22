"use strict";

!function ($) {
  "use strict";

  var baseUrl = window.baseUrl;
  //获取帮助中心分类
  $.ajax({
    type: "GET",
    url: baseUrl + "/news/notice",
    data: { parent_id: 1 },
    success: function success(res) {
      var html = '';
      var singleHtml = '';
      res.data.forEach(function (item) {

        html += "        <div class=\"col-lg-4 col-md-6 col-12 mt-4 pt-2\">         <a href=\"page-privacy.html?id=" + item.id + "\" style=\"color: #35404e;\"> <h5>" + item.title + "</h5> </a>         <ul class=\"list-unstyled mt-4 mb-0\">                    ";
        var important = getQueryString('id') == item.id ? "!important" : "";
        singleHtml += "<li class=\"mb-4\"><a href=\"page-privacy.html?id=" + item.id + "\" class=\"mouse-down h6 text-dark\" style=\"color: #5368f1 " + important + " \">" + item.title + "</a></li>";
        item.list.forEach(function (ele) {
          html += " <li class=\"mt-2\"><a href=\"page-privacy.html?id=" + item.id + "&help_id=" + ele.id + "\" class=\"text-muted\"><i          class=\"mdi mdi-arrow-right text-primary mr-1\"></i>" + ele.title + "</a></li>";
        });
        html += "</ul>        </div>";
      });

      $('#help-classify').append(html);
      $('#help-class').append(singleHtml);
    }
  });

  //获取帮助列表
  var parent_id = getQueryString('id') || 1;
  var limit = 50;
  var search = getQueryString('search') || '';

  if (!getQueryString('help_id')) {
    $.ajax({
      type: "GET",
      url: baseUrl + "/news/list",
      data: {
        parent_id: parent_id,
        limit: limit,
        search: search
      },
      success: function success(res) {
        if (res.data.list.length > 0) {
          res.data.list.forEach(function (item) {
            $('#help-list').append("\n              <div class=\"section-title\" data-id=\"" + item.id + "\">\n                <a href=\"page-privacy.html?id=" + parent_id + "&help_id=" + item.id + "\" style=\"color:#333\"><p class=\"section-title-desc\"><i class=\"mdi mdi-18px mdi-arrow-right\"></i>" + item.title + "</p> </a>            \n              </div>\n            ");
          });
          if (getQueryString('help')) location.hash = getQueryString('help');
        } else {
          $('#help-list').append("              <div class=\"section-title mt-4 pt-2\" >                         <div class=\"text-muted mt-4\" style=\"text-align:center\">未找到相关数据</div>            </div>            ");
        }
      }
    });
  }
  //搜索按钮
  $('#search').on('click', function () {
    location.href = 'page-privacy.html?id=2&search=' + $('#searchValue').val();
  });
  //详情
  //$('#help-list').on('click','.section-title',function(){

  $.ajax({
    type: "GET",
    url: baseUrl + "/news/content",
    data: { id: getQueryString('help_id') },
    success: function success(res) {
      var news = res.data.new_content;
      $("#help-list").html("<h3>" + news.title + "</h3>\n        <div class=\"text-dark mt-3\">" + news.content + "</div>");
    }
  });
  // })

  //获取url地址
  function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象 
    var r = window.location.search.substr(1).match(reg); //匹配目标参数
    if (r != null) return decodeURI(r[2]);return null;
  }
}(jQuery);