{include file="header"}
{include file="menu"}

<section class="admin-main">
  <div class="container-fluid">
    <div class="page-container">
      <div class="card">
        <div class="card-body" style="vertical-align: bottom;">
          <span style="font-size: 25px;font-weight:bold">
            产品分类
          </span>
          <span style="color:#798494;">
            {$tip}
          </span>
          <div id="contents" style="margin-top:2%;overflow:auto;height:calc(100vh - 250px)">
            <div>
              XXXXX
            </div>

          </div>
          <div style="box-shadow:0 4px 20px 2px rgba(6,75,179,.08);height:60px;margin-left:-20px;padding-left:30px;background-color:#fff;position:absolute;display:flex;align-items:center;width:100%">
            <button type="button" class="btn btn-primary">保存更改</button>
            <button type="button" class="btn btn-outline-secondary" style="margin-left: 1%;">取消更改</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  $('#submit').click(function() {
    var modalForm = $("#modalForm").serialize();
    $.post("accounts", modalForm, function(res) {
      alert(res.msg);
    });
  })
  // $(document).ready(function() {
  //   console.log($(window).height());
  //   $('#contents').css('min-height', ($(window).height() * 0.7) + 'px');
  //   $('#contents').css('max-height', ($(window).height() * 0.7) + 'px');

  // })
</script>
{include file="footer"}