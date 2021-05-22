<!DOCTYPE html>
<!--                                             
	__  ___          __      __          ____                                            
   /  |/  ____  ____/ __  __/ ___  _____/ __ \________  ____ _____   _________  ____ ___ 
  / /|_/ / __ \/ __  / / / / / _ \/ ___/ / / / ___/ _ \/ __ `/ __ \ / ___/ __ \/ __ `__ \
 / /  / / /_/ / /_/ / /_/ / /  __(__  / /_/ / /__/  __/ /_/ / / / _/ /__/ /_/ / / / / / /
/_/  /_/\____/\__,_/\__,_/_/\___/____/\____/\___/\___/\__,_/_/ /_(_\___/\____/_/ /_/ /_/ 

Design production By ModulesOcean.com
-->
<html lang="zh">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>插件列表 - 魔方财务</title>
  <!-- Styling -->
  <link rel="stylesheet" href="{$Themes}/assets/css/bootstrap.min.css" />
  <!--  <link rel="stylesheet" href="{$Themes}/assets/css/bootstrap-icons.css"> -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
  <link href="{$Themes}/assets/css/fontawesome-all.min.css" rel="stylesheet">
  <link href="{$Themes}/assets/css/style.css" rel="stylesheet">
  <script src="{$Themes}/assets/js/popper.min.js"></script>
  <script src="{$Themes}/assets/js/jquery.min.js"></script>
  <script src="{$Themes}/assets/js/bootstrap.min.js"></script>
  <script src="{$Themes}/assets/js/packery.pkgd.min.js"></script>
  <script src="{$Themes}/assets/js/draggabilly.pkgd.min.js"></script>
  <link href="{$Themes}/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <script src="{$Themes}/assets/js/bootstrap-datetimepicker.min.js"></script>
  <script src="{$Themes}/assets/js/moment.js"></script>
  <script src="{$Themes}/assets/js/daterangepicker.js"></script>
  <script src="{$Themes}/assets/js/bootstrapValidator.min.js"></script>
  <link href="{$Themes}/assets/css/daterangepicker.css" rel="stylesheet">

  <!-- wyh + -->
  <script src="{$Themes}/assets/libs/toastr/build/toastr.min.js"></script>
  <link rel="stylesheet" href="{$Themes}/assets/libs/toastr/build/toastr.min.css" />
  <script type="text/javascript">
    $(function() {
      window.directory = 'admin'; // 管理端目录

      var $grid = $('.home-dashboard-container').packery({
        itemSelector: ".dashboard-item",
        columnWidth: ".dashboard-sizer",
        percentPosition: "true"
      });

      // make all grid-items draggable
      $grid.find('.dashboard-item').each(function(i, gridItem) {
        var draggie = new Draggabilly(gridItem, {
          handle: ".card-header"
        });
        // bind drag events to Packery
        $grid.packery('bindDraggabillyEvents', draggie);
      });

      // tooltip
      $('[data-toggle="tooltip"]').tooltip({ boundary: 'window' });

      // popover
      $('[data-toggle="popover"]').popover();

      // 左侧菜单展开/收起
      $('#side-menu .menu').bind('click', function(event) {
        const c = $(this).attr('class');
        console.log(c);
        // console.log(c);
        if (c.indexOf('active') >= 0) {
          $(this).removeClass('active');
          $(this).find('ul').eq(0).removeClass('mm-show');
          $(this).find('i').eq(0).removeClass('rotate');
        } else {
          $(this).addClass('active');
          $(this).find('ul').eq(0).addClass('mm-show');
          $(this).find('i').eq(0).addClass('rotate');
        }
        event.stopPropagation();
      });

      // 左侧菜单点击
      $('#side-menu .link').bind('click', function(event) {
        const c = $(this).attr('data-url');
        // console.log(c);
        if (c) {
          window.location.href = c;
        }

        event.stopPropagation();
      })

      // 更多搜索
      $('#search-more').bind('click', function(aaa) {
        console.log(aaa)
        console.log('show');
        if ($('.more-search').is(':visible')) {
          $('.more-search').slideUp(300);
          $(this).html('高级搜索');
        } else {
          $('.more-search').slideDown(300);
          $(this).html('收起搜索');
        }
      });

      // 顶部显示/隐藏菜单按钮
      $('#menu-button').bind('click', function() {
        // console.log($('.vertical-menu').is(':visible'));
        if ($('.vertical-menu').is(':visible')) {
          $('.vertical-menu').hide();
        } else {
          $('.vertical-menu').show();
        }
      });

      // 日期控件
      $('.datetime').datetimepicker();

      // 日期范围
      $('.daterange').daterangepicker({
          ranges: {
            '今天': [moment(), moment()],
            '本周': [moment().startOf('week'), moment().endOf('week')],
            '本月': [moment().startOf('month'), moment().endOf('month')],
            '今年': [moment().startOf('year'), moment().endOf('year')]
          },
          startDate: moment(),
          endDate: moment().endOf('month')
        },
        function(start, end) {
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
      );

      $('#navTabs').on("click", "div", function(e) {
        $('#typeValue').val(e.target.dataset.value);
        document.getElementById('navTabsForm').submit();
      });

      // 全选/全不选
      $('#selectAll').bind('click', function() {
        var selectAll = $(this).is(":checked");
        if (selectAll) {
          $('.row-checkbox').prop('checked', true);
        } else {
          $('.row-checkbox').prop('checked', false);
        }
      })


    });

    // 获取选中的表格id列表
    function getSelectedRow() {
      const selectdId = [];
      $(".row-checkbox:checked").each(function() {
        selectdId.push($(this).attr('id'));
      });
      console.log(selectdId);
      return selectdId;
    }

    (function($) {
      $.fn.serializeJson = function() {
        var serializeObj = {};
        $(this.serializeArray()).each(function() {
          serializeObj[this.name] = this.value;
        });
        return serializeObj;
      };
    })(jQuery);

    function Toast(msg, duration) {
      duration = isNaN(duration) ? 1000 : duration;
      var m = document.createElement('div');
      m.innerHTML = msg;
      m.style.cssText =
        "max-width:60%;min-width: 150px;padding:0 14px;height: 40px;color: rgb(255, 255, 255);line-height: 40px;text-align: center;border-radius: 4px;position: fixed;top: 50%;left: 50%;transform: translate(-50%, -50%);z-index: 999999;background: rgba(0, 0, 0,.7);font-size: 16px;";
      document.body.appendChild(m);
      setTimeout(function() {
        var d = 0.5;
        m.style.webkitTransition = '-webkit-transform ' + d + 's ease-in, opacity ' + d +
          's ease-in';
        m.style.opacity = '0';
        setTimeout(function() {
          document.body.removeChild(m)
        }, d * 1000);
      }, duration);
    }

    function getQueryVariable(variable) {
      var query = window.location.search.substring(1);
      var vars = query.split("&");
      for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
      }
      return (false);
    }
  </script>
</head>
<body>
  <header class="header">
    <div class="container-fluid">
      <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="/{:config('database.admin_application')}/#/home-page"></a>
        <button class="navbar-toggler" type="button" id="menu-button">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <!-- 给li下的nav-link添加class:selected即可实现选中效果 -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/customer-list">
                客户
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/order-list">
                业务
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/business-statement">
                财务
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/support-ticket">
                工单
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/product-server">
                商品
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/app-store/app-list">
                应用商店
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/munual-resource">
                资源
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link selected" href="{$Weburl}/{$Admin}/plugins">
                插件
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/general-settings/general">
                系统
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/official-setting">
                站务
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{$Weburl}/{$Admin}/#/annual-statistics">
                统计
              </a>
            </li>
          </ul>
          <ul class="navbar-nav navbar-right ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="javascript:void(0);">
                <i class="bi bi-search"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="javascript:void(0);">
                <i class="bi bi-bell-fill"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="javascript:void(0);">
                <i class="bi bi-question-circle-fill"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link avatar-img" href="javascript:void(0);">
                <img class="avatar avatar-sm"
                  src="https://gravatar.loli.net/avatar/99a1148b81c606f1ec711152e525d833?s=25&d=mp" />
              </a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
  </header>