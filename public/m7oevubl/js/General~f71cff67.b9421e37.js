(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["General~f71cff67"],{a494:function(e,t,a){"use strict";a.d(t,"g",(function(){return n})),a.d(t,"t",(function(){return l})),a.d(t,"i",(function(){return o})),a.d(t,"v",(function(){return i})),a.d(t,"f",(function(){return s})),a.d(t,"s",(function(){return c})),a.d(t,"o",(function(){return u})),a.d(t,"B",(function(){return m})),a.d(t,"h",(function(){return p})),a.d(t,"u",(function(){return _})),a.d(t,"m",(function(){return g})),a.d(t,"z",(function(){return d})),a.d(t,"l",(function(){return f})),a.d(t,"y",(function(){return b})),a.d(t,"n",(function(){return h})),a.d(t,"A",(function(){return v})),a.d(t,"k",(function(){return F})),a.d(t,"x",(function(){return D})),a.d(t,"j",(function(){return w})),a.d(t,"w",(function(){return y})),a.d(t,"p",(function(){return k})),a.d(t,"q",(function(){return x})),a.d(t,"G",(function(){return O})),a.d(t,"C",(function(){return j})),a.d(t,"D",(function(){return $})),a.d(t,"a",(function(){return z})),a.d(t,"b",(function(){return q})),a.d(t,"F",(function(){return C})),a.d(t,"E",(function(){return R})),a.d(t,"e",(function(){return L})),a.d(t,"H",(function(){return I})),a.d(t,"r",(function(){return A})),a.d(t,"c",(function(){return P})),a.d(t,"d",(function(){return Z}));var r=a("a27e");function n(){return Object(r["a"])({url:"config_general/general"})}function l(e){return Object(r["a"])({url:"config_general/general",method:"post",data:e})}function o(){return Object(r["a"])({url:"config_general/local"})}function i(e){return Object(r["a"])({url:"config_general/local",method:"post",data:e})}function s(){return Object(r["a"])({url:"config_general/email_index"})}function c(e){return Object(r["a"])({url:"config_general/email_index_post",method:"post",data:e})}function u(){return Object(r["a"])({url:"config_general/support"})}function m(e){return Object(r["a"])({url:"config_general/support",method:"post",data:e})}function p(){return Object(r["a"])({url:"config_general/invoice"})}function _(e){return Object(r["a"])({url:"config_general/invoice",method:"post",data:e})}function g(){return Object(r["a"])({url:"config_general/recharge"})}function d(e){return Object(r["a"])({url:"config_general/recharge",method:"post",data:e})}function f(){return Object(r["a"])({url:"config_general/affiliate"})}function b(e){return Object(r["a"])({url:"config_general/affiliate",method:"post",data:e})}function h(){return Object(r["a"])({url:"config_general/safe"})}function v(e){return Object(r["a"])({url:"config_general/safe",method:"post",data:e})}function F(){return Object(r["a"])({url:"config_general/other"})}function D(e){return Object(r["a"])({url:"config_general/other",method:"post",data:e})}function w(){return Object(r["a"])({url:"config_general/register_login_page"})}function y(e){return Object(r["a"])({url:"config_general/register_login",method:"post",data:e})}function k(){return Object(r["a"])({url:"config_general/invoice_page"})}function x(e){return Object(r["a"])({url:"config_general/invoice_post",method:"post",data:e})}function O(e){return Object(r["a"])({url:"config_general/send_email",method:"post",data:e})}function j(){return Object(r["a"])({url:"config_general/productgroup_page"})}function $(e){return Object(r["a"])({url:"config_general/productgroup",method:"post",data:e})}function z(){return Object(r["a"])({url:"config_general/apiconfig"})}function q(e){return Object(r["a"])({url:"config_general/apiconfig",method:"post",data:e})}function C(){return Object(r["a"])({url:"config_general/secondverify"})}function R(e){return Object(r["a"])({url:"config_general/secondverify",method:"post",data:e})}function L(){return Object(r["a"])({url:"config_general/captcha_page"})}function I(e){return Object(r["a"])({url:"config_general/register_login_captcha",method:"post",data:e})}function A(e){return Object(r["a"])({url:"config_general/navgrouporder",params:e})}function P(e){return Object(r["a"])({url:"config_general/buy_product_page",params:e})}function Z(e){return Object(r["a"])({url:"config_general/buy_product",method:"post",data:e})}},ff7c:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"general"},[a("el-row",{staticClass:"topform_wrap",attrs:{gutter:15}},[a("el-form",{ref:"generalForm",attrs:{model:e.generalFormData,rules:e.generalFormRules,"label-width":e.labelWidth,"label-position":"top"}},[a("el-form-item",{attrs:{label:"品牌名",prop:"company_name"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入品牌名",clearable:""},model:{value:e.generalFormData.company_name,callback:function(t){e.$set(e.generalFormData,"company_name",t)},expression:"generalFormData.company_name"}})],1),a("el-form-item",{attrs:{label:"系统链接",prop:"domain"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入您的安装地址",clearable:""},model:{value:e.generalFormData.domain,callback:function(t){e.$set(e.generalFormData,"domain",t)},expression:"generalFormData.domain"}})],1),a("el-form-item",{attrs:{label:"Logo 地址1(登录页)",prop:"logo_url"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" Logo 地址1(登录页) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("建议图片宽度不超过220px")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"用于显示在客户中心登录页的logo地址, 若没有请留空",clearable:""},model:{value:e.generalFormData.logo_url,callback:function(t){e.$set(e.generalFormData,"logo_url",t)},expression:"generalFormData.logo_url"}})],1),a("el-form-item",{attrs:{label:"Logo 地址2(客户中心)",prop:"logo_url_home"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" Logo 地址2(客户中心) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("建议图片宽度不超过150px")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"用于显示在客户中心内的logo地址, 若没有请留空",clearable:""},model:{value:e.generalFormData.logo_url_home,callback:function(t){e.$set(e.generalFormData,"logo_url_home",t)},expression:"generalFormData.logo_url_home"}})],1),a("el-form-item",{attrs:{label:"网站域名",prop:"system_url"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入您网站主页的链接地址",clearable:""},model:{value:e.generalFormData.system_url,callback:function(t){e.$set(e.generalFormData,"system_url",t)},expression:"generalFormData.system_url"}})],1),a("el-form-item",{attrs:{label:"背景图地址(客户中心注册登录页)",prop:"custom_login_background_img"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 背景图地址(客户中心注册登录页) "),a("el-popover",{attrs:{placement:"top-start",title:"",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("推荐使用jpg,png格式的图片")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图地址，若没有请留空",clearable:""},model:{value:e.generalFormData.custom_login_background_img,callback:function(t){e.$set(e.generalFormData,"custom_login_background_img",t)},expression:"generalFormData.custom_login_background_img"}})],1),a("el-form-item",{attrs:{label:"登录页名称",prop:"custom_login_background_char"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图上的文字，若没有请留空",clearable:""},model:{value:e.generalFormData.custom_login_background_char,callback:function(t){e.$set(e.generalFormData,"custom_login_background_char",t)},expression:"generalFormData.custom_login_background_char"}})],1),a("el-form-item",{attrs:{label:"登录页描述",prop:"custom_login_background_description"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入背景图上的描述，若没有请留空",clearable:""},model:{value:e.generalFormData.custom_login_background_description,callback:function(t){e.$set(e.generalFormData,"custom_login_background_description",t)},expression:"generalFormData.custom_login_background_description"}})],1),a("el-form-item",{attrs:{label:"公司邮箱",prop:"company_email"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入邮箱地址",clearable:""},model:{value:e.generalFormData.company_email,callback:function(t){e.$set(e.generalFormData,"company_email",t)},expression:"generalFormData.company_email"}})],1),a("el-form-item",{attrs:{label:"服务条款地址",prop:"server_clause_url"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入服务条款地址, http://...",clearable:""},model:{value:e.generalFormData.server_clause_url,callback:function(t){e.$set(e.generalFormData,"server_clause_url",t)},expression:"generalFormData.server_clause_url"}})],1),a("el-form-item",{attrs:{label:"隐私条款地址",prop:"privacy_clause_url"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入隐私条款地址, http://...",clearable:""},model:{value:e.generalFormData.privacy_clause_url,callback:function(t){e.$set(e.generalFormData,"privacy_clause_url",t)},expression:"generalFormData.privacy_clause_url"}})],1),a("el-form-item",{attrs:{label:"应用说明",prop:"cart_product_description"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 应用说明 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("用于购物车结算时的描述信息。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",type:"textarea",placeholder:"请输入",autosize:{minRows:4,maxRows:5}},model:{value:e.generalFormData.cart_product_description,callback:function(t){e.$set(e.generalFormData,"cart_product_description",t)},expression:"generalFormData.cart_product_description"}})],1),a("el-form-item",{attrs:{label:"每页显示记录",prop:"per_page_limit"}},[a("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择每页显示条数"},model:{value:e.generalFormData.per_page_limit,callback:function(t){e.$set(e.generalFormData,"per_page_limit",t)},expression:"generalFormData.per_page_limit"}},e._l(e.num_recordsOptions,(function(e,t){return a("el-option",{key:t,attrs:{label:e,value:e}})})),1)],1),a("el-form-item",{attrs:{label:"维护模式",prop:"main_tenance_mode"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 维护模式 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("启用此选项将阻止客户访问客户端并显示下面设置的维护模式消息。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-switch",{attrs:{"active-value":"1","inactive-value":"0","active-text":"选中则，阻止访问用户中心"},model:{value:e.generalFormData.main_tenance_mode,callback:function(t){e.$set(e.generalFormData,"main_tenance_mode",t)},expression:"generalFormData.main_tenance_mode"}})],1),a("el-form-item",{attrs:{label:"维护模式信息",prop:"main_tenance_mode_message"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",type:"textarea",placeholder:"请输入维护模式信息",autosize:{minRows:4,maxRows:5}},model:{value:e.generalFormData.main_tenance_mode_message,callback:function(t){e.$set(e.generalFormData,"main_tenance_mode_message",t)},expression:"generalFormData.main_tenance_mode_message"}})],1),a("el-form-item",{attrs:{label:"维护模式重定向的链接",prop:"main_tenance_mode_url"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 维护模式重定向的链接 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("在此字段中输入URL时，启用维护模式后，客户端将被重定向到那里，而不是看到维护消息。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"如果在此指定，用户访问用户中心会重定向到此网站",clearable:""},model:{value:e.generalFormData.main_tenance_mode_url,callback:function(t){e.$set(e.generalFormData,"main_tenance_mode_url",t)},expression:"generalFormData.main_tenance_mode_url"}})],1),a("el-form-item",{attrs:{label:"前台登录IP检查",prop:"home_ip_check"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 前台登录IP检查 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("开启后登录前台时会检测IP与原登录IP是否一致，不一致则无法登录并提醒。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.generalFormData.home_ip_check,callback:function(t){e.$set(e.generalFormData,"home_ip_check",t)},expression:"generalFormData.home_ip_check"}})],1),a("el-form-item",{attrs:{label:"后台登录IP检查",prop:"admin_ip_check"}},[a("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.generalFormData.admin_ip_check,callback:function(t){e.$set(e.generalFormData,"admin_ip_check",t)},expression:"generalFormData.admin_ip_check"}})],1),a("el-form-item",{attrs:{label:"www页面模板",prop:"themes_templates"}},[a("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择主题模板"},model:{value:e.generalFormData.themes_templates,callback:function(t){e.$set(e.generalFormData,"themes_templates",t)},expression:"generalFormData.themes_templates"}},e._l(e.themes_templates,(function(e,t){return a("el-option",{key:t,attrs:{label:e,value:e}})})),1)],1),a("el-form-item",{attrs:{label:"会员中心模板",prop:"clientarea_default_themes"}},[a("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择模板"},model:{value:e.generalFormData.clientarea_default_themes,callback:function(t){e.$set(e.generalFormData,"clientarea_default_themes",t)},expression:"generalFormData.clientarea_default_themes"}},e._l(e.clientarea_themes,(function(e,t){return a("el-option",{key:t,attrs:{label:e,value:e}})})),1)],1),a("el-form-item",{attrs:{label:"管理员登录时长(天)",prop:"cancellation_time"}},[a("el-input-number",{style:{width:"260px"},attrs:{size:"small",min:1,controls:!1},model:{value:e.generalFormData.cancellation_time,callback:function(t){e.$set(e.generalFormData,"cancellation_time",t)},expression:"generalFormData.cancellation_time"}})],1),a("el-form-item",{attrs:{label:"后台管理目录路径",prop:""}},[a("el-link",{attrs:{href:"https://bbs.idcsmart.com/forum.php?mod=viewthread&tid=120&extra=page%3D1%26filter%3Dtypeid%26typeid%3D7",target:"_blank"}},[e._v("修改教程")])],1)],1)],1),a("div",{staticClass:"bottomOperationAdd"},[a("el-button",{attrs:{size:"small",type:"primary",loading:e.btnLoading},on:{click:e.submitForm}},[e._v("保存更改")]),a("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("取消更改")])],1)],1)},n=[],l=a("60b5"),o=(a("6a61"),a("a494")),i={data:function(){return{labelWidth:window.document.body.clientWidth>768?"190px":null,generalFormData:{custom_login_background_description:"",custom_login_background_char:"",custom_login_background_img:"",cancellation_time:1,deletelogtime:void 0,sendmsgphone:void 0,sendmsgtimes:void 0,company_profile:void 0,company_name:void 0,company_email:"company@yourcompany.com",domain:void 0,logo_url:void 0,logo_url_home:void 0,invoice_payto:void 0,system_url:void 0,activity_limit:void 0,per_page_limit:50,main_tenance_mode:"0",main_tenance_mode_message:void 0,main_tenance_mode_url:void 0,home_ip_check:"0",admin_ip_check:"0",server_clause_url:"http://",privacy_clause_url:"http://",cart_product_description:"",main_phone:"",main_address:"",record_no:"",map:"",is_themes:"0",themes_templates:void 0,clientarea_default_themes:void 0},themes_templates:[],clientarea_themes:[],generalFormRules:{home_ip_check:[],admin_ip_check:[],company_name:[{required:!0,message:"请输入品牌名",trigger:"blur"}],company_email:[{required:!1,pattern:/^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$/,message:"请输入正确的邮箱",trigger:"blur"}],server_clause_url:[{required:!1,pattern:/^(((ht|f)tps?):\/\/)?[\w-]+(\.[\w-]+)+([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$/,message:"请输入正确的链接",trigger:"blur"}],privacy_clause_url:[{required:!1,pattern:/^(((ht|f)tps?):\/\/)?[\w-]+(\.[\w-]+)+([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$/,message:"请输入正确的链接",trigger:"blur"}],domain:[{required:!0,message:"请输入您的安装地址",trigger:"blur"}],system_url:[{required:!0,message:"请输入您网站主页的链接地址",trigger:"blur"}]},num_recordsOptions:[10,15,20,25,50,100],btnLoading:!1}},methods:{getData:function(){var e=this;return Object(l["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(o["g"])();case 2:if(a=t.sent,r=a.data,200===r.status){t.next=6;break}return t.abrupt("return",!1);case 6:e.generalFormData=r.data.config_value,e.themes_templates=r.data.themes_templates,e.clientarea_themes=r.data.clientarea_themes,e.generalFormData.cancellation_time=parseInt(r.data.config_value.cancellation_time),localStorage.setItem("common",JSON.stringify(r.data.config_value)),localStorage.setItem("limit",r.data.config_value.per_page_limit);case 12:case"end":return t.stop()}}),t)})))()},submitForm:function(){var e=this,t=/(http|https):\/\/([\w.]+\/?)\S*/;t.test(this.generalFormData.system_url)?this.$refs.generalForm.validate(function(){var t=Object(l["a"])(regeneratorRuntime.mark((function t(a){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!a){t.next=11;break}return e.generalFormData.main_tenance_mode||(e.generalFormData.main_tenance_mode="0",e.generalFormData.main_tenance_mode_message=void 0,e.generalFormData.main_tenance_mode_url=void 0),e.btnLoading=!0,t.next=5,Object(o["t"])(e.generalFormData);case 5:r=t.sent,n=r.data,200!==n.status?e.$message({message:n.msg,type:"error"}):(e.$message({message:n.msg,type:"success"}),e.getData(),e.$store.dispatch("addCommon",e.generalFormData)),e.btnLoading=!1,t.next=12;break;case 11:return t.abrupt("return",!1);case 12:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}()):this.$message({message:"网站域名必须以http或https开头",type:"error"})},resetForm:function(){this.$refs.generalForm.resetFields(),this.getData()}},created:function(){this.getData()}},s=i,c=a("5d22"),u=Object(c["a"])(s,r,n,!1,null,"17f40e7f",null);t["default"]=u.exports}}]);