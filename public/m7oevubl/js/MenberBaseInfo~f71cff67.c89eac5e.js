(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["MenberBaseInfo~f71cff67"],{"457a":function(e,t,a){"use strict";a.r(t);var o=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"theme-template"},[a("h2",[e._v("基础信息")]),a("el-row",{staticClass:"topform_wrap",attrs:{gutter:15}},[a("el-form",{ref:"baseForm",staticClass:"mt-20",attrs:{model:e.baseForm,"label-width":"100px","label-position":"top"}},[a("el-form-item",{attrs:{label:"Logo 地址1(登录页)",prop:"logo_url"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" Logo 地址1(登录页) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("建议图片宽度不超过220px")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"用于显示在客户中心登录页的logo地址, 若没有请留空",clearable:""},model:{value:e.baseForm.logo_url,callback:function(t){e.$set(e.baseForm,"logo_url",t)},expression:"baseForm.logo_url"}})],1),a("el-form-item",{attrs:{label:"Logo 地址2(客户中心)",prop:"logo_url_home"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" Logo 地址2(客户中心) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("建议图片宽度不超过150px")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"用于显示在客户中心内的logo地址, 若没有请留空",clearable:""},model:{value:e.baseForm.logo_url_home,callback:function(t){e.$set(e.baseForm,"logo_url_home",t)},expression:"baseForm.logo_url_home"}})],1),a("el-form-item",{attrs:{label:"登录页描述",prop:"custom_login_background_description"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图上的描述，若没有请留空",clearable:""},model:{value:e.baseForm.custom_login_background_description,callback:function(t){e.$set(e.baseForm,"custom_login_background_description",t)},expression:"baseForm.custom_login_background_description"}})],1),a("el-form-item",{attrs:{label:"公司邮箱",prop:"company_email"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入邮箱地址",clearable:""},model:{value:e.baseForm.company_email,callback:function(t){e.$set(e.baseForm,"company_email",t)},expression:"baseForm.company_email"}})],1),a("el-form-item",{attrs:{label:"隐私条款地址",prop:"privacy_clause_url"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入隐私条款地址, http://...",clearable:""},model:{value:e.baseForm.privacy_clause_url,callback:function(t){e.$set(e.baseForm,"privacy_clause_url",t)},expression:"baseForm.privacy_clause_url"}})],1),a("el-form-item",{attrs:{label:"服务条款地址",prop:"server_clause_url"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入服务条款地址, http://...",clearable:""},model:{value:e.baseForm.server_clause_url,callback:function(t){e.$set(e.baseForm,"server_clause_url",t)},expression:"baseForm.server_clause_url"}})],1),a("el-form-item",{attrs:{label:"应用说明",prop:"cart_product_description"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 应用说明 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("用于购物车结算时的描述信息。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",type:"textarea",placeholder:"请输入",autosize:{minRows:4,maxRows:5}},model:{value:e.baseForm.cart_product_description,callback:function(t){e.$set(e.baseForm,"cart_product_description",t)},expression:"baseForm.cart_product_description"}})],1),a("el-form-item",{attrs:{label:"登录页名称",prop:"custom_login_background_char"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图上的文字，若没有请留空",clearable:""},model:{value:e.baseForm.custom_login_background_char,callback:function(t){e.$set(e.baseForm,"custom_login_background_char",t)},expression:"baseForm.custom_login_background_char"}})],1),a("el-form-item",{attrs:{label:"背景图地址(客户中心注册登录页)",prop:"custom_login_background_img"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 背景图地址(客户中心注册登录页) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("推荐使用jpg,png格式的图片")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图地址，若没有请留空",clearable:""},model:{value:e.baseForm.custom_login_background_img,callback:function(t){e.$set(e.baseForm,"custom_login_background_img",t)},expression:"baseForm.custom_login_background_img"}})],1)],1)],1),a("div",{staticClass:"bottomOperationAdd"},[a("el-button",{attrs:{size:"small",type:"primary",loading:e.btnLoading},on:{click:e.submitForm}},[e._v("保存更改")]),a("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("取消更改")])],1)],1)},l=[],r=a("ce3c"),s={data:function(){return{btnLoading:!1,baseForm:{logo_url:"",logo_url_home:"",custom_login_background_description:"",company_email:"",privacy_clause_url:"",server_clause_url:"",cart_product_description:"",custom_login_background_char:"",custom_login_background_img:""},themes_templates:[]}},mounted:function(){this.getData()},methods:{submitForm:function(){var e=this;this.btnLoading=!0,Object(r["c"])(this.baseForm).then((function(t){200!==t.data.status?(e.$message({message:t.data.msg,type:"error"}),e.btnLoading=!1):(e.$message({message:t.data.msg,type:"success"}),e.getData(),e.btnLoading=!1)}))},resetForm:function(){this.$refs.baseForm.resetFields(),this.getData()},getData:function(){var e=this,t=[];for(var a in this.baseForm)t.push(a);Object(r["a"])({param:t}).then((function(t){200!==t.data.status?e.$message({message:t.data.msg,type:"error"}):e.baseForm=t.data.data}))}}},n=s,c=(a("ee05"),a("2877")),i=Object(c["a"])(n,o,l,!1,null,"07c34963",null);t["default"]=i.exports},a4d0:function(e,t,a){},ce3c:function(e,t,a){"use strict";a.d(t,"a",(function(){return l})),a.d(t,"b",(function(){return r})),a.d(t,"c",(function(){return s}));var o=a("a27e");function l(e){return Object(o["a"])({url:"config_general/getConfig",method:"post",data:e})}function r(e){return Object(o["a"])({url:"config_general/getConfigOption",method:"post",data:e})}function s(e){return Object(o["a"])({url:"config_general/newGeneral",method:"post",data:e})}},ee05:function(e,t,a){"use strict";var o=a("a4d0"),l=a.n(o);l.a}}]);