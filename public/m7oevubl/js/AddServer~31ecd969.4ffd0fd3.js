(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["AddServer~31ecd969"],{"1f7a":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"add"},[r("h2",[e._v(e._s(e.id?"编辑接口":"添加接口"))]),r("el-divider"),r("el-row",{staticClass:"topform_wrap pb-20"},[r("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,"label-width":"114px","label-position":"top"}},[r("el-form-item",{attrs:{label:"名称",prop:"name"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入接口名称",clearable:""},model:{value:e.formData.name,callback:function(t){e.$set(e.formData,"name",t)},expression:"formData.name"}})],1),r("el-form-item",{attrs:{label:"IP地址",prop:"ip_address"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入ip地址",clearable:""},model:{value:e.formData.ip_address,callback:function(t){e.$set(e.formData,"ip_address",t)},expression:"formData.ip_address"}})],1),r("el-form-item",{attrs:{label:"主机名",prop:"hostname"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入主机名",clearable:""},model:{value:e.formData.hostname,callback:function(t){e.$set(e.formData,"hostname",t)},expression:"formData.hostname"}})],1),r("el-form-item",{attrs:{label:"接口",prop:"gid"}},[r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择接口",clearable:""},model:{value:e.formData.gid,callback:function(t){e.$set(e.formData,"gid",t)},expression:"formData.gid"}},e._l(e.gidOptions,(function(e){return r("el-option",{key:e.id,attrs:{label:e.name,value:e.id}})})),1)],1),r("el-form-item",{attrs:{label:"用户名",prop:"username"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入用户名",clearable:""},model:{value:e.formData.username,callback:function(t){e.$set(e.formData,"username",t)},expression:"formData.username"}})],1),r("el-form-item",{attrs:{label:"密码",prop:"password"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入密码",clearable:"","show-password":""},model:{value:e.formData.password,callback:function(t){e.$set(e.formData,"password",t)},expression:"formData.password"}})],1),r("el-form-item",{attrs:{label:"端口",prop:"port"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入端口",clearable:""},model:{value:e.formData.port,callback:function(t){e.$set(e.formData,"port",t)},expression:"formData.port"}})],1),r("el-form-item",{attrs:{label:"SSL",prop:"secure"}},[r("el-switch",{attrs:{"active-value":1,"inactive-value":0,"active-text":"选中复选框使用 SSL 连接模式"},model:{value:e.formData.secure,callback:function(t){e.$set(e.formData,"secure",t)},expression:"formData.secure"}})],1),r("el-form-item",{attrs:{label:"启用/禁用",prop:"disabled"}},[r("el-switch",{attrs:{"active-value":1,"inactive-value":0,"active-text":"勾选禁用此接口"},model:{value:e.formData.disabled,callback:function(t){e.$set(e.formData,"disabled",t)},expression:"formData.disabled"}})],1),r("el-form-item",{attrs:{label:"Hash",prop:"accesshash"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",type:"textarea",placeholder:"请输入Hash",autosize:{minRows:5,maxRows:5}},model:{value:e.formData.accesshash,callback:function(t){e.$set(e.formData,"accesshash",t)},expression:"formData.accesshash"}})],1)],1)],1),r("div",{staticClass:"bottomOperationAdd"},[r("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.submitForm}},[e._v("提交")]),r("el-button",{attrs:{size:"small"},on:{click:e.goBack}},[e._v("返回")]),r("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("重置")])],1)],1)},s=[],n=r("60b5"),o=(r("6a61"),r("27ae"),r("d447"),r("f566"),r("9b5f"),r("bdf0")),i={metaInfo:{title:"添加接口"},data:function(){var e=function(e,t,r){-1!==t.indexOf("http")?r(new Error("请直接输入域名或ip地址，无需输入http：//或https：//")):r()};return{id:this.$route.query.id,formData:{name:void 0,ip_address:void 0,assigned_ips:void 0,hostname:void 0,gid:void 0,noc:"",status_address:void 0,username:void 0,password:void 0,disabled:!1,accesshash:void 0,port:80,secure:0},rules:{name:[{required:!0,message:"请输入接口名称",trigger:"blur"}],ip_address:[{required:!0,message:"请输入ip地址",trigger:"blur"},{trigger:"blur",validator:e}],assigned_ips:[],hostname:[{required:!1,message:"请输入主机名",trigger:"blur"}],gid:[{required:!0,message:"请选择接口",trigger:"change"}],accountNum:[],status_address:[],username:[{required:!1,message:"请输入用户名",trigger:"blur"}],password:[],disabled:[],serviceType:[],accesshash:[],port:[{required:!1,message:"请输入端口",trigger:"blur"}],secure:[]},nocAction:this.$baseUrl+"/upload_image",gidOptions:[],serviceTypeOptions:[{label:"选项一",value:1},{label:"选项二",value:2}],secureOptions:[{label:"选中复选框使用 SSL 连接模式",value:1}],imageUrl:""}},methods:{getDetail:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(""===e.id||void 0===e.id){t.next=8;break}return t.next=3,Object(o["k"])(e.id);case 3:r=t.sent,a=r.data,e.formData=a.server,e.formData.password=e.formData.password.toString(),e.imageUrl=a.server.noc;case 8:case"end":return t.stop()}}),t)})))()},addServerInit:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(o["d"])();case 2:r=t.sent,e.gidOptions=r.data.groups;case 4:case"end":return t.stop()}}),t)})))()},nocSuccess:function(e,t,r){if(200!==e.status)return this.$message.error("上传图片失败"),!1;this.formData.noc=e.savename,this.imageUrl=e.tmp},secureChange:function(e){this.formData.port=e?443:80},submitForm:function(){var e=this;this.$refs.elForm.validate(function(){var t=Object(n["a"])(regeneratorRuntime.mark((function t(r){var a,s,n,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r){t.next=4;break}return t.abrupt("return",!1);case 4:if(""===e.id||void 0===e.id){t.next=13;break}return e.formData.id=e.id,t.next=8,Object(o["h"])(e.formData);case 8:a=t.sent,s=a.data,200!==s.status?e.$message.error(s.msg):(e.$message.success(s.msg),e.$router.go(-1)),t.next=18;break;case 13:return t.next=15,Object(o["e"])(e.formData);case 15:n=t.sent,i=n.data,200!==i.status?e.$message.error(i.msg):(e.$message.success(i.msg),e.$router.go(-1));case 18:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.elForm.resetFields()},goBack:function(){this.$router.go(-1)},nocBeforeUpload:function(e){var t=e.size/1024/1024<2;t||this.$message.error("文件大小超过 2MB");var r=new RegExp("image/*").test(e.type);return r||this.$message.error("应该选择image/*类型的文件"),t&&r}},mounted:function(){this.getDetail(),this.addServerInit()}},l=i,c=(r("aede4"),r("5d22")),u=Object(c["a"])(l,a,s,!1,null,"264a0ec6",null);t["default"]=u.exports},7530:function(e,t,r){},aede4:function(e,t,r){"use strict";r("7530")},bdf0:function(e,t,r){"use strict";r.d(t,"l",(function(){return s})),r.d(t,"g",(function(){return n})),r.d(t,"d",(function(){return o})),r.d(t,"e",(function(){return l})),r.d(t,"k",(function(){return c})),r.d(t,"f",(function(){return u})),r.d(t,"b",(function(){return d})),r.d(t,"i",(function(){return m})),r.d(t,"c",(function(){return p})),r.d(t,"j",(function(){return f})),r.d(t,"h",(function(){return b})),r.d(t,"a",(function(){return v}));var a=r("a27e");function s(e,t){return Object(a["a"])({url:"servers_list",params:{limit:e,page:t}})}function n(e){return Object(a["a"])({url:"delete_servers/".concat(e)})}function o(){return Object(a["a"])({url:"servers_add"})}var i={headers:{"Content-Type":"multipart/form-data"}};function l(e){return Object(a["a"])({url:"servers_add_post",method:"post",data:e,config:i})}function c(e){return Object(a["a"])({url:"edit_servers/".concat(e),method:"get"})}function u(e){return Object(a["a"])({url:"delete_server_groups/".concat(e)})}function d(){return Object(a["a"])({url:"create_groups"})}function m(e){return Object(a["a"])({url:"edit_server_groups/".concat(e)})}function p(e){return Object(a["a"])({url:"create_groups_post",method:"post",data:e})}function f(e){return Object(a["a"])({url:"edit_server_groups_post",method:"post",data:e})}function b(e){return Object(a["a"])({url:"edit_servers_post",method:"post",data:e})}function v(e){return Object(a["a"])({url:"server_test_link/".concat(e)})}},d192:function(e,t,r){var a=r("97f5"),s=r("36b2"),n=r("3086"),o=n("match");e.exports=function(e){var t;return a(e)&&(void 0!==(t=e[o])?!!t:"RegExp"==s(e))}},f566:function(e,t,r){var a=r("8fe5"),s=r("f14a"),n=r("dd95"),o=r("83d4"),i=r("d320").f,l=r("a34a").f,c=r("d192"),u=r("2e38"),d=r("08b5"),m=r("bbee"),p=r("7ce6"),f=r("28d0").set,b=r("24a1"),v=r("3086"),g=v("match"),h=s.RegExp,w=h.prototype,x=/a/g,D=/a/g,_=new h(x)!==x,k=d.UNSUPPORTED_Y,O=a&&n("RegExp",!_||k||p((function(){return D[g]=!1,h(x)!=x||h(D)==D||"/a/i"!=h(x,"i")})));if(O){var $=function(e,t){var r,a=this instanceof $,s=c(e),n=void 0===t;if(!a&&s&&e.constructor===$&&n)return e;_?s&&!n&&(e=e.source):e instanceof $&&(n&&(t=u.call(e)),e=e.source),k&&(r=!!t&&t.indexOf("y")>-1,r&&(t=t.replace(/y/g,"")));var i=o(_?new h(e,t):h(e,t),a?this:w,$);return k&&r&&f(i,{sticky:r}),i},y=function(e){e in $||i($,e,{configurable:!0,get:function(){return h[e]},set:function(t){h[e]=t}})},j=l(h),R=0;while(j.length>R)y(j[R++]);w.constructor=$,$.prototype=w,m(s,"RegExp",$)}b("RegExp")}}]);