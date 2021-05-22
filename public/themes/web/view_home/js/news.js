'use strict';

!(function ($) {
  "use strict";
  var baseUrl = window.baseUrl;
  // 获取新闻列表
  function getNewsList() {
    var parent_id = getQueryString('classify') || 1;
    var page = getQueryString('page') || 1;
    var limit = 10;
    var search = getQueryString('search') || '';
    $.ajax({
      type: "GET",
      url: baseUrl + "/news/list",
      data: {
        parent_id: parent_id,
        limit: limit,
        search: search,
        page: page
      },
      success: function success(res) {
        if (res.data.list.length > 0) {
          var len = res.data.list.length >= 3 ? 3 : res.data.list.length;
          for (var i = 0; i < len; i++) {
            var item = res.data.list[i];
            item.head_img = item.head_img == '' ? '../images/blog/0' + parseInt(Math.random() * 10 % 9 + 1) + '.jpg' : item.head_img;
            $(".new-recommend").append('            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">            <div class="card blog-post border-0 shadow rounded overflow-hidden">                <img src="' + item.head_img + '" class="img-fluid" alt="">                <div class="card-body p-4 content">                    <h5><a href="page-blog-single.html?id=' + item.id + '" class="title text-dark">' + item.title + '</a></h5>                    <p class="text-muted mb-3  description">' + item.description + '</p>                    <ul class="list-unstyled post-meta d-flex justify-content-between mb-0 pt-3 border-top">                        <li>                            <ul class="list-unstyled mb-0">                                <li class="list-inline-item ml-2"><a href="javascript:void(0)"                                        class="comment text-dark"><i data-feather="message-circle"                                            class="fea icon-sm"></i> ' + item.read + '</a></li>                            </ul>                        </li>                        <li><a href="page-blog-single.html?id=' + item.id + '" class="read-more text-dark">阅读更多 <i                                    class="mdi mdi-arrow-right"></i></a></li>                    </ul>                </div>            </div>        </div>        <!--end col-->            ');
          }
          res.data.list.forEach(function (item) {
            item.head_img = item.head_img == '' ? '../images/blog/0' + parseInt(Math.random() * 10 % 9 + 1) + '.jpg' : item.head_img;
            $(".newsList").prepend('                <div class="col-lg-6 col-12 mb-4 pb-2">                  <div class="card blog-post border-0 shadow rounded overflow-hidden">                      <img height="350" src="' + item.head_img + '" class="img-fluid" alt="">                      <div class="card-body p-4 content">                          <h5><a href="page-blog-single.html?id=' + item.id + '" class="title text-dark">' + item.title + '</a></h5>                          <p class="text-muted mb-3 description">' + item.description + '</p>                          <ul                              class="list-unstyled post-meta d-flex justify-content-between mb-0 pt-3 border-top">                              <li>                                  <ul class="list-unstyled mb-0">                                                                            <li class="list-inline-item ml-2"><a href="javascript:void(0)"                                              class="comment text-dark"><i data-feather="message-circle"                                                  class="fea icon-sm"></i> ' + item.read + '</a></li>                                  </ul>                              </li>                              <li><a href="page-blog-single.html?id=' + item.id + '" class="read-more text-dark">阅读更多 <i                                          class="mdi mdi-arrow-right"></i></a></li>                          </ul>                      </div>                  </div>              </div>            ');
          });

          //Feather icon
          feather.replace();

          var _page = res.data;
          var html = '';
          if (_page.page !== 1) {
            html += '<li class="page-item"><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page - 1) + '"          aria-label="Previous">上一页</a></li>';
          }
          if (_page.total_page > 5 && _page.page > 3 && _page.page < _page.total_page - 3) {
            html += '<li class="page-item"><a class="page-link" href="javascript:void(0)">...</a></li> ';
            html += '<li class="page-item "><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page - 2) + '">' + (_page.page - 2) + '</a></li>';
            html += '<li class="page-item "><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page - 1) + '">' + (_page.page - 1) + '</a></li>';
            html += '<li class="page-item active"><a class="page-link" href="page-blog-sidebar.html?page=' + _page.page + '">' + _page.page + '</a></li>';
            html += '<li class="page-item "><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page + 1) + '">' + (_page.page + 1) + '</a></li>';
            html += '<li class="page-item "><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page + 2) + '">' + (_page.page + 2) + '</a></li>';
            html += '<li class="page-item"><a class="page-link" href="javascript:void(0)">...</a></li> ';
          } else if (_page.page >= _page.total_page - 3 && _page.total_page > 5) {
            html += '<li class="page-item"><a class="page-link" href="javascript:void(0)">...</a></li> ';
            for (var index = _page.total_page - 5; index < _page.total_page; index++) {
              var _page2 = index + 1;
              var str = '';
              if (_page2 == getQueryString('page') || !getQueryString('page')) str = '<li class="page-item active"><a class="page-link" href="javascript:void(0)">' + _page2 + '</a></li>';else str = '<li class="page-item"><a class="page-link" href="page-blog-sidebar.html?page=' + _page2 + '">' + _page2 + '</a></li>';
              html += str;
            }
          } else {
            var pageArr = _page.total_page < 5 ? _page.total_page : 5;
            for (var index = 0; index < pageArr; index++) {
              var _page3 = index + 1;
              var str = '';
              if (_page3 == getQueryString('page') || !getQueryString('page') && _page3 === 1) str = '<li class="page-item active"><a class="page-link" href="javascript:void(0)">' + _page3 + '</a></li>';else str = '<li class="page-item"><a class="page-link" href="page-blog-sidebar.html?page=' + _page3 + '">' + _page3 + '</a></li>';
              html += str;
            }
            if (_page.total_page > 5) {
              html += '<li class="page-item"><a class="page-link" href="javascript:void(0)">...</a></li> ';
            }
          }

          if (_page.page !== _page.total_page) {
            html += '<li class="page-item"><a class="page-link" href="page-blog-sidebar.html?page=' + (_page.page + 1) + '"            aria-label="Next">下一页</a></li>';
          };
          $('.pagination').append(html);
        } else {
          $('.pagination').append('<div class="text-muted">未找到相关数据</div>');
        }
      }
    });
  }
  getNewsList();

  //搜索
  $('#searchsubmit').on('click', function () {
    var search = $('#search')[0].value;
    window.location.href = 'page-blog-sidebar.html?search=' + search;
  });

  //获取新闻分类
  $.ajax({
    type: "GET",
    url: baseUrl + "/news/catelist",
    data: { parent_id: 1 },
    success: function success(res) {
      res.data.forEach(function (item) {
        $(".catagory").append('<li><a href="page-blog-sidebar.html?classify=' + item.id + '">' + item.title + '</a> <span        class="float-right">' + item.count + '</span></li>');
      });
    }
  });

  //新闻详情
  $.ajax({
    type: "GET",
    url: baseUrl + "/news/content",
    data: { id: getQueryString('id') },
    success: function success(res) {
      var news = res.data.new_content;
      var dataTime = toDate(news.create_time * 1000);
      $("#new-content").prepend('<h3>' + news.title + '</h3>      <p class="text-muted para-desc  mb-0">' + dataTime + '</p>      <div class="text-dark mt-3">' + news.content + '</div>');
      if (res.data.prev) $("#new-cont-page").append('<li>              <ul class="list-unstyled mb-0">                  <li class="list-inline-item"><a href="page-blog-single.html?id=' + res.data.prev.id + '">上一页</a></li>              </ul>          </li>');
      if (res.data.next) $("#new-cont-page").append('<li>          <ul class="list-unstyled  mb-0">              <li class="list-inline-item"><a href="page-blog-single.html?id=' + res.data.next.id + '">下一页</a></li>          </ul>        </li>');
    }
  });

  function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象 
    var r = window.location.search.substr(1).match(reg); //匹配目标参数
    if (r != null) return decodeURI(r[2]);return null;
  }

  function toDate(datetime, symbol) {
    var format = arguments.length <= 2 || arguments[2] === undefined ? false : arguments[2];

    datetime = new Date(datetime);

    //获取时间
    var year = datetime.getFullYear(),
        month = datetime.getMonth() + 1 < 10 ? '0' + (datetime.getMonth() + 1) : datetime.getMonth() + 1,
        day = datetime.getDate() < 10 ? '0' + datetime.getDate() : datetime.getDate(),
        hour = datetime.getHours() < 10 ? '0' + datetime.getHours() : datetime.getHours(),
        min = datetime.getMinutes() < 10 ? '0' + datetime.getMinutes() : datetime.getMinutes(),
        sec = datetime.getSeconds() < 10 ? '0' + datetime.getSeconds() : datetime.getSeconds();

    //返回时间字符串
    var dateStr = year + '年' + month + '月' + day + '日 ' + hour + ':' + min + ':' + sec;

    return dateStr;
  }
})(jQuery);