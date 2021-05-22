'use strict';

!(function ($) {
  "use strict";
  var baseUrl = window.baseUrl;
  var product_groups = [];
  // 获取产品列表
  getProduct();
  function getProduct(id) {
    $.ajax({
      url: baseUrl + '/cart/index',
      type: 'get',
      data: {
        gid: id
      },
      success: function success(res) {

        var products = res.products;
        if (product_groups.length === 0) {
          product_groups = res.product_groups;
          product_groups.forEach(function (item, index) {
            if (index === 0) {
              $('#pills-tab').append('              <li class="nav-item " style="cursor:pointer">                  <a class="nav-link rounded product-class active" data-id="' + item.id + '" id="pills-one-tab" data-toggle="pill"  role="tab" aria-controls="pills-one" aria-selected="false">                      <div class="text-center py-2">                                              <h4 class="title font-weight-normal mb-0">' + item.name + '</h4>                      </div>                  </a>              </li>            ');
            } else {
              $('#pills-tab').append('              <li class="nav-item" style="cursor:pointer">                  <a class="nav-link rounded product-class" data-id="' + item.id + '" id="pills-one-tab" data-toggle="pill"  role="tab" aria-controls="pills-one" aria-selected="false">                      <div class="text-center py-2">                                              <h4 class="title font-weight-normal mb-0">' + item.name + '</h4>                      </div>                  </a>              </li>            ');
            }
          });

          $('.product-class').on('click', function () {
            getProduct($(this).data('id'));
          });
        }

        $('#tbody').html('');
        if (products && products.length > 0) {
          products.forEach(function (item) {
            $('#tbody').append('            <tr>              <td class="h6 text-center" >' + item.name + '</td>              <td class="text-center">' + item.description + '</td>              <td class="text-center">' + res.default_currency.prefix + item.product_price + res.default_currency.suffix + '/' + item.billingcycle_zh + '</td>              <td class="text-center"><a href="shopping.html?pid=' + item.id + '&billingcycle=' + item.billingcycle + '"                      class="btn btn-icon btn-soft-warning"><i                          data-feather="shopping-cart" class="icons"></i></a></td>            </tr>            ');
          });
        } else {
          $('#tbody').append('<tr>          <td class="h6 text-center" colspan="4">暂无数据</td>        </tr>');
        }
        //Feather icon
        feather.replace();
      }
    });
  }
})(jQuery);