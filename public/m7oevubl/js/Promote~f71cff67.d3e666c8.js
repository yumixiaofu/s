(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["Promote~f71cff67"],{a494:function(e,t,a){"use strict";a.d(t,"g",(function(){return n})),a.d(t,"t",(function(){return o})),a.d(t,"i",(function(){return i})),a.d(t,"v",(function(){return l})),a.d(t,"f",(function(){return u})),a.d(t,"s",(function(){return f})),a.d(t,"o",(function(){return c})),a.d(t,"B",(function(){return s})),a.d(t,"h",(function(){return m})),a.d(t,"u",(function(){return d})),a.d(t,"m",(function(){return g})),a.d(t,"z",(function(){return p})),a.d(t,"l",(function(){return _})),a.d(t,"y",(function(){return b})),a.d(t,"n",(function(){return v})),a.d(t,"A",(function(){return h})),a.d(t,"k",(function(){return F})),a.d(t,"x",(function(){return O})),a.d(t,"j",(function(){return j})),a.d(t,"w",(function(){return P})),a.d(t,"p",(function(){return D})),a.d(t,"q",(function(){return y})),a.d(t,"G",(function(){return w})),a.d(t,"C",(function(){return k})),a.d(t,"D",(function(){return x})),a.d(t,"a",(function(){return $})),a.d(t,"b",(function(){return z})),a.d(t,"F",(function(){return R})),a.d(t,"E",(function(){return C})),a.d(t,"e",(function(){return E})),a.d(t,"H",(function(){return J})),a.d(t,"r",(function(){return q})),a.d(t,"c",(function(){return A})),a.d(t,"d",(function(){return B}));var r=a("a27e");function n(){return Object(r["a"])({url:"config_general/general"})}function o(e){return Object(r["a"])({url:"config_general/general",method:"post",data:e})}function i(){return Object(r["a"])({url:"config_general/local"})}function l(e){return Object(r["a"])({url:"config_general/local",method:"post",data:e})}function u(){return Object(r["a"])({url:"config_general/email_index"})}function f(e){return Object(r["a"])({url:"config_general/email_index_post",method:"post",data:e})}function c(){return Object(r["a"])({url:"config_general/support"})}function s(e){return Object(r["a"])({url:"config_general/support",method:"post",data:e})}function m(){return Object(r["a"])({url:"config_general/invoice"})}function d(e){return Object(r["a"])({url:"config_general/invoice",method:"post",data:e})}function g(){return Object(r["a"])({url:"config_general/recharge"})}function p(e){return Object(r["a"])({url:"config_general/recharge",method:"post",data:e})}function _(){return Object(r["a"])({url:"config_general/affiliate"})}function b(e){return Object(r["a"])({url:"config_general/affiliate",method:"post",data:e})}function v(){return Object(r["a"])({url:"config_general/safe"})}function h(e){return Object(r["a"])({url:"config_general/safe",method:"post",data:e})}function F(){return Object(r["a"])({url:"config_general/other"})}function O(e){return Object(r["a"])({url:"config_general/other",method:"post",data:e})}function j(){return Object(r["a"])({url:"config_general/register_login_page"})}function P(e){return Object(r["a"])({url:"config_general/register_login",method:"post",data:e})}function D(){return Object(r["a"])({url:"config_general/invoice_page"})}function y(e){return Object(r["a"])({url:"config_general/invoice_post",method:"post",data:e})}function w(e){return Object(r["a"])({url:"config_general/send_email",method:"post",data:e})}function k(){return Object(r["a"])({url:"config_general/productgroup_page"})}function x(e){return Object(r["a"])({url:"config_general/productgroup",method:"post",data:e})}function $(){return Object(r["a"])({url:"config_general/apiconfig"})}function z(e){return Object(r["a"])({url:"config_general/apiconfig",method:"post",data:e})}function R(){return Object(r["a"])({url:"config_general/secondverify"})}function C(e){return Object(r["a"])({url:"config_general/secondverify",method:"post",data:e})}function E(){return Object(r["a"])({url:"config_general/captcha_page"})}function J(e){return Object(r["a"])({url:"config_general/register_login_captcha",method:"post",data:e})}function q(e){return Object(r["a"])({url:"config_general/navgrouporder",params:e})}function A(e){return Object(r["a"])({url:"config_general/buy_product_page",params:e})}function B(e){return Object(r["a"])({url:"config_general/buy_product",method:"post",data:e})}},a8c9:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"generalpromote"},[a("el-row",{attrs:{gutter:15}},[a("el-form",{ref:"generalPromoteForm",attrs:{model:e.generalPromoteFormData,rules:e.generalPromoteFormRules,"label-width":"150px"}},[a("el-col",{attrs:{span:12,offset:6}},[a("el-row",{attrs:{gutter:15}},[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"是否启用推介",prop:"affiliate_enabled"}},[a("el-switch",{attrs:{"active-value":"1","inactive-value":"0","active-text":"选中则，启用推介"},model:{value:e.generalPromoteFormData.affiliate_enabled,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_enabled",t)},expression:"generalPromoteFormData.affiliate_enabled"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"推介收入百分比",prop:"affiliate_percent"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-input-number",{style:{width:"100%"},attrs:{size:"small",controls:!1,min:0,disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_percent,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_percent",t)},expression:"generalPromoteFormData.affiliate_percent"}})],1),a("el-col",{attrs:{span:15,offset:1}},[e._v("输入推介人所收到每笔付款的百分比")])],1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"推介红利",prop:"affiliate_bonusde_posit"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-input-number",{style:{width:"100%"},attrs:{size:"small",controls:!1,precision:2,min:0,disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_bonusde_posit,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_bonusde_posit",t)},expression:"generalPromoteFormData.affiliate_bonusde_posit"}})],1),a("el-col",{attrs:{span:15,offset:1}},[e._v("输入当用户注册以后您希望推介人收到的金额")])],1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"推介支付金额",prop:"affiliate_payout"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-input-number",{style:{width:"100%"},attrs:{size:"small",controls:!1,precision:2,min:0,disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_payout,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_payout",t)},expression:"generalPromoteFormData.affiliate_payout"}})],1),a("el-col",{attrs:{span:15,offset:1}},[e._v("输入可申请的最小提现金额")])],1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"推介佣金延迟时间",prop:"affiliate_delay_commission"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-input-number",{style:{width:"100%"},attrs:{size:"small",controls:!1,min:0,disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_delay_commission,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_delay_commission",t)},expression:"generalPromoteFormData.affiliate_delay_commission"}})],1),a("el-col",{attrs:{span:15,offset:1}},[e._v("输入延迟订单支付的天数，只支付仍然处于激活状态的账户")])],1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"支持请求部门",prop:"affiliate_department"}},[a("el-select",{style:{width:"100%"},attrs:{size:"small",placeholder:"请选择用于推介人提现的部门",disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_department,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_department",t)},expression:"generalPromoteFormData.affiliate_department"}},e._l(e.affiliate_departmentOptions,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"推介链接",prop:"affiliate_links"}},[a("el-input",{attrs:{size:"small",placeholder:"请输入推介链接",clearable:"",disabled:"1"!==e.generalPromoteFormData.affiliate_enabled},model:{value:e.generalPromoteFormData.affiliate_links,callback:function(t){e.$set(e.generalPromoteFormData,"affiliate_links",t)},expression:"generalPromoteFormData.affiliate_links"}})],1)],1)],1)],1),a("el-col",{attrs:{span:6,offset:9}},[a("el-form-item",[a("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.submitForm}},[e._v("保存更改")]),a("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("取消更改")])],1)],1)],1)],1)],1)},n=[],o=a("60b5"),i=(a("6a61"),a("24a8"),a("a494")),l={data:function(){return{generalPromoteFormData:{affiliate_enabled:"0",affiliate_percent:void 0,affiliate_bonusde_posit:void 0,affiliate_payout:void 0,affiliate_delay_commission:void 0,affiliate_department:void 0,affiliate_links:void 0},generalPromoteFormRules:{},affiliate_departmentOptions:[]}},methods:{getData:function(){var e=this;return Object(o["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(i["l"])();case 2:if(a=t.sent,r=a.data,200===r.status){t.next=6;break}return t.abrupt("return",!1);case 6:e.affiliate_departmentOptions=r.data.department_list,e.generalPromoteFormData=r.data.config_value,e.generalPromoteFormData.affiliate_department=Number(r.data.config_value.affiliate_department);case 9:case"end":return t.stop()}}),t)})))()},submitForm:function(){var e=this;this.$refs.generalPromoteForm.validate(function(){var t=Object(o["a"])(regeneratorRuntime.mark((function t(a){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!a){t.next=13;break}return"0"===e.generalPromoteFormData.affiliate_enabled&&(e.generalPromoteFormData={affiliate_enabled:"0",affiliate_percent:0,affiliate_bonusde_posit:0,affiliate_payout:0,affiliate_delay_commission:0,affiliate_department:void 0,affiliate_links:""}),t.next=4,Object(i["y"])(e.generalPromoteFormData);case 4:if(r=t.sent,n=r.data,200===n.status){t.next=9;break}return e.$message({message:n.msg,type:"error"}),t.abrupt("return",!1);case 9:e.$message({message:n.msg,type:"success"}),e.getData(),t.next=14;break;case 13:return t.abrupt("return",!1);case 14:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.generalPromoteForm.resetFields(),this.getData()}},created:function(){this.getData()}},u=l,f=a("5d22"),c=Object(f["a"])(u,r,n,!1,null,"fa8ed582",null);t["default"]=c.exports}}]);