(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["SmsTemplateI~f71cff67"],{"0671":function(e,t,a){"use strict";a.r(t);var s=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"box"},[a("el-row",{staticClass:"topform_wrap"},[a("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,"label-width":e.labelWidth,"label-position":"top"}},[a("el-form-item",{attrs:{label:"短信总开关",prop:"shd_allow_sms_send"}},[a("el-switch",{attrs:{"active-value":1,"inactive-value":0},model:{value:e.formData.shd_allow_sms_send,callback:function(t){e.$set(e.formData,"shd_allow_sms_send",t)},expression:"formData.shd_allow_sms_send"}})],1),1===e.formData.shd_allow_sms_send?[a("el-form-item",{staticClass:"applicationForm",attrs:{label:"短信供应商",prop:"smg_operator"}},[a("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择短信供应商"},model:{value:e.formData.smg_operator,callback:function(t){e.$set(e.formData,"smg_operator",t)},expression:"formData.smg_operator"}},e._l(e.typeOptions,(function(e,t){return a("el-option",{key:t,attrs:{label:e.value,value:e.label,disabled:e.disabled}})})),1),a("span",{staticClass:"application"},[a("el-link",{on:{click:e.goApplication}},[e._v("申请接口")])],1)],1),a("el-form-item",{attrs:{label:"是否配置国际短信",prop:"sms_international"}},[a("el-switch",{attrs:{"active-value":"1","inactive-value":"0","active-text":"打开则开启国际短信"},model:{value:e.formData.sms_international,callback:function(t){e.$set(e.formData,"sms_international",t)},expression:"formData.sms_international"}})],1),"aliyun"===e.formData.smg_operator?[a("el-form-item",{attrs:{label:"AccessKey ID",prop:"accesskeyid"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入AccessKey ID",clearable:""},model:{value:e.formData.accesskeyid,callback:function(t){e.$set(e.formData,"accesskeyid",t)},expression:"formData.accesskeyid"}})],1),a("el-form-item",{attrs:{label:"AccessKey Secret",prop:"accesskeysecret"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入AccessKey Secret",clearable:""},model:{value:e.formData.accesskeysecret,callback:function(t){e.$set(e.formData,"accesskeysecret",t)},expression:"formData.accesskeysecret"}})],1),a("el-form-item",{attrs:{label:"短信签名",prop:"signature"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入短信签名",clearable:""},model:{value:e.formData.signature,callback:function(t){e.$set(e.formData,"signature",t)},expression:"formData.signature"}})],1)]:e._e(),"submail"===e.formData.smg_operator?[a("el-form-item",{attrs:{label:"赛邮应用ID",prop:"submail_appid"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入赛邮应用ID",clearable:""},model:{value:e.formData.submail_appid,callback:function(t){e.$set(e.formData,"submail_appid",t)},expression:"formData.submail_appid"}})],1),a("el-form-item",{attrs:{label:"赛邮应用秘钥",prop:"submail_appkey"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入赛邮应用秘钥",clearable:""},model:{value:e.formData.submail_appkey,callback:function(t){e.$set(e.formData,"submail_appkey",t)},expression:"formData.submail_appkey"}})],1),a("el-form-item",{attrs:{label:"赛邮短信SignName",prop:"submail_signname"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入赛邮短信SignName",clearable:""},model:{value:e.formData.submail_signname,callback:function(t){e.$set(e.formData,"submail_signname",t)},expression:"formData.submail_signname"}})],1)]:e._e(),"smsbao"===e.formData.smg_operator?[e._e(),a("el-form-item",{attrs:{label:"短信宝平台帐号",prop:"smsbao_account"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入短信宝平台帐号",clearable:""},model:{value:e.formData.smsbao_account,callback:function(t){e.$set(e.formData,"smsbao_account",t)},expression:"formData.smsbao_account"}})],1),a("el-form-item",{attrs:{label:"短信宝平台密码",prop:"smsbao_pwd"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入短信宝平台密码",clearable:""},model:{value:e.formData.smsbao_pwd,callback:function(t){e.$set(e.formData,"smsbao_pwd",t)},expression:"formData.smsbao_pwd"}})],1),a("el-form-item",{attrs:{label:"短信宝签名",prop:"smsbao_mobile_signature"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入短信宝签名",clearable:""},model:{value:e.formData.smsbao_mobile_signature,callback:function(t){e.$set(e.formData,"smsbao_mobile_signature",t)},expression:"formData.smsbao_mobile_signature"}})],1)]:e._e(),"aliyun"===e.formData.smg_operator&&!0===e.formData.sms_international?[a("el-form-item",{attrs:{label:"国际短信AppID",prop:"interaccesskeyid"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入aliyun国际短信AppID",clearable:""},model:{value:e.formData.interaccesskeyid,callback:function(t){e.$set(e.formData,"interaccesskeyid",t)},expression:"formData.interaccesskeyid"}})],1),a("el-form-item",{attrs:{label:"国际短信AppKey",prop:"interaccesskeysecret"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入aliyun国际短信AppKey",clearable:""},model:{value:e.formData.interaccesskeysecret,callback:function(t){e.$set(e.formData,"interaccesskeysecret",t)},expression:"formData.interaccesskeysecret"}})],1),a("el-form-item",{attrs:{label:"国际短信SignName",prop:"intersignature"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入aliyun国际短信SignName",clearable:""},model:{value:e.formData.intersignature,callback:function(t){e.$set(e.formData,"intersignature",t)},expression:"formData.intersignature"}})],1)]:e._e(),"submail"===e.formData.smg_operator&&"1"===e.formData.sms_international?[a("el-form-item",{attrs:{label:"国际AppID",prop:"submail_interappid"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入国际AppID",clearable:""},model:{value:e.formData.submail_interappid,callback:function(t){e.$set(e.formData,"submail_interappid",t)},expression:"formData.submail_interappid"}})],1),a("el-form-item",{attrs:{label:"国际AppKey",prop:"submail_interappkey"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入国际AppKey",clearable:""},model:{value:e.formData.submail_interappkey,callback:function(t){e.$set(e.formData,"submail_interappkey",t)},expression:"formData.submail_interappkey"}})],1),a("el-form-item",{attrs:{label:"国际SignName",prop:"submail_intersignname"}},[a("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入国际SignName",clearable:""},model:{value:e.formData.submail_intersignname,callback:function(t){e.$set(e.formData,"submail_intersignname",t)},expression:"formData.submail_intersignname"}})],1)]:e._e()]:e._e()],2)],1),a("div",{staticClass:"bottomOperationAdd"},[a("el-button",{attrs:{size:"small",type:"primary",loading:e.btnLoading},on:{click:e.submitForm}},[e._v("提交")]),a("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("重置")]),a("el-button",{attrs:{size:"small",type:"success"},on:{click:function(t){e.testDialog=!0}}},[e._v("测试发送")])],1),a("el-dialog",{attrs:{title:"测试发送",visible:e.testDialog,width:"600px"},on:{"update:visible":function(t){e.testDialog=t},open:e.testSendPage,close:function(t){e.testSendFrom.phone=""}}},[a("el-form",{ref:"suspendRef",attrs:{model:e.testSendFrom,"label-width":"auto"}},[a("el-form-item",{attrs:{label:"手机",prop:"phone"}},[a("el-input",{attrs:{size:"small",placeholder:"请输入手机号码"},model:{value:e.testSendFrom.phone,callback:function(t){e.$set(e.testSendFrom,"phone",t)},expression:"testSendFrom.phone"}},[a("el-select",{attrs:{slot:"prepend",size:"small",filterable:""},slot:"prepend",model:{value:e.testSendFrom.code,callback:function(t){e.$set(e.testSendFrom,"code",t)},expression:"testSendFrom.code"}},e._l(e.sms_countryOptions,(function(e){return a("el-option",{key:e.id,attrs:{label:e.link,value:e.phone_code}})})),1)],1)],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{size:"small"},on:{click:function(t){e.testDialog=!1}}},[e._v("取 消")]),a("el-button",{attrs:{size:"small",type:"primary",loading:e.submitLoading},on:{click:e.testSend}},[e._v("确 定")])],1)],1)],1)},r=[],n=a("60b5"),o=(a("6a61"),a("6770")),i={data:function(){return{labelWidth:window.document.body.clientWidth>768?"140px":null,formData:{shd_allow_sms_send:0,accesskeyid:void 0,accesskeysecret:void 0,interaccesskeyid:void 0,interaccesskeysecret:void 0,intersignature:void 0,signature:void 0,smg_operator:void 0,sms_international:void 0,smsbao_account:void 0,smsbao_api:void 0,smsbao_mobile_signature:void 0,smsbao_pwd:void 0,submail_appid:void 0,submail_appkey:void 0,submail_interappid:void 0,submail_interappkey:void 0,submail_intersignname:"",submail_signname:void 0},rules:{smg_operator:[{required:!1,message:"请选择短信供应商",trigger:"change"}],sms_international:[],accesskeyid:[],accesskeysecret:[],signature:[],interaccesskeyid:[],interaccesskeysecret:[],intersignature:[],submail_appid:[],submail_appkey:[],submail_signname:[],submail_interappid:[],submail_interappkey:[],submail_intersignname:[]},typeOptions:[],btnLoading:!1,submitLoading:!1,testDialog:!1,testSendFrom:{sms_operator:"aliyun",code:"+86",phone:""},sms_countryOptions:[]}},methods:{goApplication:function(){"aliyun"===this.formData.smg_operator?open("https://www.aliyun.com/product/sms?spm=5176.10695662.1128094.1.2a6b4beeoQkcCw"):"submail"===this.formData.smg_operator?open("https://www.mysubmail.com/chs/store"):"smsbao"===this.formData.smg_operator&&open("http://www.smsbao.com/")},smsInit:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var a,s;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(o["j"])();case 2:if(a=t.sent,s=a.data,200===s.status){t.next=7;break}return e.$message.error(s.msg),t.abrupt("return");case 7:e.typeOptions=s.msg_config.allowedSmsOperator,e.formData=s.msg_config;case 9:case"end":return t.stop()}}),t)})))()},submitForm:function(){var e=this;this.$refs.elForm.validate(function(){var t=Object(n["a"])(regeneratorRuntime.mark((function t(a){var s,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(a){t.next=3;break}return e.$message.error("请完善必填信息"),t.abrupt("return");case 3:return e.btnLoading=!0,t.next=6,Object(o["k"])(e.formData);case 6:if(s=t.sent,r=s.data,200===r.status){t.next=12;break}return e.$message.error(r.msg),e.btnLoading=!1,t.abrupt("return");case 12:e.smsInit(),e.btnLoading=!1,e.$message.success(r.msg);case 15:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.elForm.resetFields()},testSendPage:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var a,s,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a={sms_operator:e.testSendFrom.sms_operator},t.next=3,Object(o["o"])(a);case 3:s=t.sent,r=s.data,200!==r.status?e.$message.error(r.msg):e.sms_countryOptions=r.sms;case 6:case"end":return t.stop()}}),t)})))()},testSend:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var a,s;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.testSendFrom.sms_operator=e.formData.smg_operator,e.submitLoading=!0,t.next=4,Object(o["i"])(e.testSendFrom);case 4:a=t.sent,s=a.data,200!==s.status?e.$message.error(s.msg):e.$message.success(s.msg),e.submitLoading=!1;case 8:case"end":return t.stop()}}),t)})))()}},created:function(){this.smsInit()}},l=i,m=(a("094c"),a("5d22")),c=Object(m["a"])(l,s,r,!1,null,"36581e16",null);t["default"]=c.exports},"094c":function(e,t,a){"use strict";a("9689")},6770:function(e,t,a){"use strict";a.d(t,"j",(function(){return r})),a.d(t,"k",(function(){return n})),a.d(t,"n",(function(){return o})),a.d(t,"m",(function(){return i})),a.d(t,"d",(function(){return l})),a.d(t,"h",(function(){return m})),a.d(t,"l",(function(){return c})),a.d(t,"p",(function(){return u})),a.d(t,"s",(function(){return p})),a.d(t,"r",(function(){return d})),a.d(t,"a",(function(){return f})),a.d(t,"c",(function(){return b})),a.d(t,"q",(function(){return _})),a.d(t,"b",(function(){return g})),a.d(t,"i",(function(){return h})),a.d(t,"o",(function(){return y})),a.d(t,"f",(function(){return D})),a.d(t,"e",(function(){return k})),a.d(t,"g",(function(){return v}));var s=a("a27e");function r(){return Object(s["a"])({url:"config_message/config_mobile"})}function n(e){return Object(s["a"])({url:"config_message/config_mobile_post",method:"post",data:e})}function o(e){return Object(s["a"])({url:"config_message/template_list",method:"get",params:e})}function i(e,t){return Object(s["a"])({url:"config_message/delete_template",params:{ids:e,type:t}})}function l(e){return Object(s["a"])({url:"config_message/create_template",method:"post",data:e})}function m(e,t){return Object(s["a"])({url:"config_message/set_sms",params:{sms_operator:e,range_type:t}})}function c(e){return Object(s["a"])({url:"config_message/set_sms_post",method:"post",data:e})}function u(e){return Object(s["a"])({url:"config_message/test_message_template",method:"post",data:e})}function p(e){return Object(s["a"])({url:"config_message/update_template/".concat(e)})}function d(e){return Object(s["a"])({url:"config_message/update_template_post",method:"post",data:e})}function f(e){return Object(s["a"])({url:"config_message/test_message_template_page",params:e})}function b(){return Object(s["a"])({url:"config_message/create_template_page"})}function _(e){return Object(s["a"])({url:"config_message/update_tem_status",params:e})}function g(e,t){return Object(s["a"])({url:"config_message/check_post",method:"post",data:{ids:e,type:t}})}function h(e){return Object(s["a"])({url:"config_message/send_sms",method:"post",data:e})}function y(e){return Object(s["a"])({url:"config_message/test_message_template_page",params:e})}function D(e){return Object(s["a"])({url:"config_message/mobiletemplate_list",params:e})}function k(e){return Object(s["a"])({url:"email_template/emailtemplate_list",params:e})}function v(e){return Object(s["a"])({url:"config_message/sendmessage_post",method:"post",data:e})}},9689:function(e,t,a){}}]);