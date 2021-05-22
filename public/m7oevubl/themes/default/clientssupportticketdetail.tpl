{include file="header"}
{include file="menu"}
<section class="admin-main">
    <div class="container-fluid">
        <div class="page-container">
            <div class="card">
                <div class="card-body">
                    {include file="detailTabs"}
                    <div class="tab-content mt-4">
                        <div class="table-body fit">
                            <div class="category">
                                <div class="category-title">个人资料</div>
                                <div class="category-body">
                                    <div class="form-row">
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label class="require">姓名</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>性别</label>
                                            <select class="form-control">
                                                <option value="1">未知</option>
                                                <option value="2">男</option>
                                                <option value="3">女</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>公司</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>国家</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>省</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>地址</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>邮编</label>
                                            <input type="email" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>自定义的下拉框</label>
                                            <select class="form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>密码</label>
                                            <input type="password" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>身份证</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>链接输入框</label>
                                            <input type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>是否推荐</label>
                                            <div class="col-sm-4">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="customSwitchsizemd">
                                                    <label class="custom-control-label"
                                                           for="customSwitchsizemd"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>文本区</label>
                                            <textarea type="text" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>了解途径</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="category">
                                <div class="category-title">账户信息</div>
                                <div class="category-body">
                                    <div class="form-row">
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label class="require">手机</label>
                                            <input type="number" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label class="require">邮箱</label>
                                            <input type="email" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label class="require">QQ</label>
                                            <input type="number" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label class="require">密码</label>
                                            <input type="password" class="form-control" placeholder="为空则表示不修改密码">
                                        </div
                                    </div>
                                </div>
                            </div>

                            <div class="category">
                                <div class="category-title">其他设置</div>
                                <div class="category-body">
                                    <div class="form-row">
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>支付方式 <i class="far fa-question-circle" style="color: blue;"
                                                           aria-hidden="true"
                                                           data-toggle="tooltip" data-placement="top"
                                                           title="Tooltip on top"></i></label>
                                            <select class="form-control">
                                                <option value="1">支付宝当面付</option>
                                                <option value="2">交易乐支付支付宝</option>
                                                <option value="3">交易乐支付微信</option>
                                                <option value="4">支付宝网页支付</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>语言 <i class="far fa-question-circle" style="color: blue;"
                                                         aria-hidden="true"
                                                         data-toggle="tooltip" data-placement="top"
                                                         title="Tooltip on top"></i></label>
                                            <select class="form-control">
                                                <option value="1">中文简体</option>
                                                <option value="2">中文繁体</option>
                                                <option value="3">中文繁体</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>销售 <i class="far fa-question-circle" style="color: blue;"
                                                         aria-hidden="true"
                                                         data-toggle="tooltip" data-placement="top"
                                                         title="Tooltip on top"></i></label>
                                            <select class="form-control">
                                                <option value="1">无</option>
                                                <option value="2">tong</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>客户分组 <i class="far fa-question-circle" style="color: blue;"
                                                           aria-hidden="true"
                                                           data-toggle="tooltip" data-placement="top"
                                                           title="Tooltip on top"></i></label>
                                            <select class="form-control">
                                                <option value="1">无</option>
                                                <option value="2" style="color: #00FF00">HLP-折扣</option>
                                                <option value="3" style="color: rgb(234, 134, 134);">osp-代理折扣</option>
                                                <option value="4" style="color: rgb(11, 15, 254);">HLP-固定金额</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>状态 <i class="far fa-question-circle" style="color: blue;"
                                                         aria-hidden="true"
                                                         data-toggle="tooltip" data-placement="top"
                                                         title="Tooltip on top"></i></label>
                                            <select class="form-control">
                                                <option value="1">停用</option>
                                                <option value="2">正常</option>
                                                <option value="3">关闭</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-2 col-md-3 col-sm-4">
                                            <label>接收营销信息</label>
                                            <div class="col-sm-4">
                                                <div class="custom-control custom-switch" dir="ltr">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="customSwitchsizemd">
                                                    <label class="custom-control-label"
                                                           for="customSwitchsizemd"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fix-bottom">
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary w-md">保存更改</button>
                                        <button type="submit" class="btn btn-outline-secondary w-md">取消更改</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{include file="footer"}