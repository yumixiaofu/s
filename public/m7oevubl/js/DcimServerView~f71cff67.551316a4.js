(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["DcimServerView~f71cff67"],{5446:function(e,t,r){"use strict";r.d(t,"d",(function(){return i})),r.d(t,"a",(function(){return s})),r.d(t,"b",(function(){return l})),r.d(t,"f",(function(){return o})),r.d(t,"c",(function(){return c})),r.d(t,"e",(function(){return n}));var a=r("a27e");function i(e,t,r,i,s){return Object(a["a"])({url:"dcim/server",params:{page:e,limit:t,orderby:r,sort:i,search:s}})}function s(e){return Object(a["a"])({url:"dcim/server",method:"post",data:e})}function l(e){return Object(a["a"])({url:"dcim/server",method:"delete",data:{id:e}})}function o(e){return Object(a["a"])({url:"dcim/server/".concat(e)})}function c(e){return Object(a["a"])({url:"dcim/server",method:"put",data:e})}function n(e){return Object(a["a"])({url:"dcim/server/".concat(e,"/status")})}},"5fbe":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"dcimServer_view"},[r("div",{staticClass:"dcimServer_view_form"},[r("el-form",{ref:"editServerFormRef",attrs:{model:e.editServerFormData,rules:e.editServerFormRules,"label-width":"120px",inline:""}},[r("div",{staticClass:"wrapper__from mb-20",attrs:{"data-title":"接口设置"}},[r("el-row",{staticClass:"max-1200 ml-23"},[r("el-col",{attrs:{span:24}},[r("el-form-item",{attrs:{label:"名称",prop:"name"}},[r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入名称",clearable:""},model:{value:e.editServerFormData.name,callback:function(t){e.$set(e.editServerFormData,"name",t)},expression:"editServerFormData.name"}})],1),r("el-form-item",{attrs:{label:"地址",prop:"hostname"}},[r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入ip地址或域名",clearable:""},model:{value:e.editServerFormData.hostname,callback:function(t){e.$set(e.editServerFormData,"hostname",t)},expression:"editServerFormData.hostname"}})],1),r("el-form-item",{attrs:{label:"用户名",prop:"username"}},[r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入用户名",clearable:""},model:{value:e.editServerFormData.username,callback:function(t){e.$set(e.editServerFormData,"username",t)},expression:"editServerFormData.username"}})],1),r("el-form-item",{attrs:{label:"KEY",prop:"password"}},[r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入KEY",type:"password",clearable:"","show-password":""},model:{value:e.editServerFormData.password,callback:function(t){e.$set(e.editServerFormData,"password",t)},expression:"editServerFormData.password"}})],1),r("el-form-item",{attrs:{label:"端口",prop:"port"}},[r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入端口",clearable:""},model:{value:e.editServerFormData.port,callback:function(t){e.$set(e.editServerFormData,"port",t)},expression:"editServerFormData.port"}})],1),r("el-form-item",{attrs:{label:"财务标识",prop:"user_prefix"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 财务标识 "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("是指调用该接口传递用户账号至DCIM时, 账号前会加此标识, 避免多套系统使用一个主控导致账号冲突。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-input",{style:{width:"200px"},attrs:{size:"small",placeholder:"请输入标识, 字母或数字",clearable:""},model:{value:e.editServerFormData.user_prefix,callback:function(t){e.$set(e.editServerFormData,"user_prefix",t)},expression:"editServerFormData.user_prefix"}})],1),e._e()],1)],1)],1),e.areaArr.length?r("div",{staticClass:"wrapper__from mb-20",attrs:{"data-title":"可用区域"}},[r("div",{staticClass:"question"},[r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("系统会自动同步魔方DCIM机房区域信息，您只需填写区域名称即可，用户在客户端可通过区域对其搜索服务器。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-row",{staticClass:"max-1200 ml-23"},[e._l(e.areaArr,(function(t,a){return r("el-col",{key:a,attrs:{xs:24,sm:12,md:8,lg:8,xl:8}},[r("el-form-item",{attrs:{label:"区域名称",prop:"reinstall_times"}},[r("el-col",{staticStyle:{"margin-bottom":"-10px",position:"relative"},attrs:{span:24}},[r("el-input",{attrs:{size:"small",placeholder:"请输入",clearable:""},model:{value:t.name,callback:function(r){e.$set(t,"name",r)},expression:"item.name"}}),r("img",{staticClass:"ml-10",staticStyle:{height:"30px",position:"absolute",right:"15px",top:"5px"},attrs:{src:"/upload/common/country/"+t.area+".png",alt:""}})],1)],1)],1)}))],2)],1):e._e(),r("div",{staticClass:"wrapper__from mb-20",attrs:{"data-title":"重装设置"}},[r("div",{staticClass:"question"},[r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("设置用户在客户端对服务器每周的重装次数，当客户次数用尽时，可通过购买次数再重装。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-row",{staticClass:"max-1200 ml-23"},[r("el-form-item",{attrs:{label:"重装是否收费",prop:"buy_times"}},[r("el-switch",{attrs:{"active-value":1,"inactive-value":0},on:{change:e.buyTimesChange},model:{value:e.editServerFormData.buy_times,callback:function(t){e.$set(e.editServerFormData,"buy_times",t)},expression:"editServerFormData.buy_times"}})],1),e.editServerFormData.buy_times?[r("el-form-item",{attrs:{label:"免费重装次数",prop:"reinstall_times"}},[r("el-input-number",{attrs:{size:"small",min:0},on:{change:e.reinstallTimesChange},model:{value:e.editServerFormData.reinstall_times,callback:function(t){e.$set(e.editServerFormData,"reinstall_times",t)},expression:"editServerFormData.reinstall_times"}})],1)]:e._e(),e.editServerFormData.buy_times?[r("el-form-item",{attrs:{label:"超出后重装单价",prop:"reinstall_price"}},[r("el-input-number",{attrs:{size:"small",controls:!1,precision:2,min:0,disabled:0===e.editServerFormData.reinstall_times||0===e.editServerFormData.buy_times},on:{change:e.reinstallPriceChange},model:{value:e.editServerFormData.reinstall_price,callback:function(t){e.$set(e.editServerFormData,"reinstall_price",t)},expression:"editServerFormData.reinstall_price"}})],1)]:e._e()],2)],1),r("div",{staticClass:"wrapper__from mb-20",attrs:{"data-title":"权限设置"}},[r("div",{staticClass:"question"},[r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("设置用户在客户端对机器的操作权限，若无权限，则前台按钮会被隐藏。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-row",{staticClass:"max-1200 ml-23"},[r("el-form-item",{attrs:{label:"前台流量图",prop:"traffic"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.traffic,callback:function(t){e.$set(e.editServerFormData,"traffic",t)},expression:"editServerFormData.traffic"}})],1),r("el-form-item",{attrs:{label:"前台kvm",prop:"kvm"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.kvm,callback:function(t){e.$set(e.editServerFormData,"kvm",t)},expression:"editServerFormData.kvm"}})],1),r("el-form-item",{attrs:{label:"前台ikvm",prop:"ikvm"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.ikvm,callback:function(t){e.$set(e.editServerFormData,"ikvm",t)},expression:"editServerFormData.ikvm"}})],1),r("el-form-item",{attrs:{label:"前台重置BMC",prop:"bmc"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.bmc,callback:function(t){e.$set(e.editServerFormData,"bmc",t)},expression:"editServerFormData.bmc"}})],1),r("el-form-item",{attrs:{label:"前台重装系统",prop:"reinstall"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.reinstall,callback:function(t){e.$set(e.editServerFormData,"reinstall",t)},expression:"editServerFormData.reinstall"}})],1),r("el-form-item",{attrs:{label:"前台重启",prop:"reboot"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.reboot,callback:function(t){e.$set(e.editServerFormData,"reboot",t)},expression:"editServerFormData.reboot"}})],1),r("el-form-item",{attrs:{label:"前台开机",prop:"on"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.on,callback:function(t){e.$set(e.editServerFormData,"on",t)},expression:"editServerFormData.on"}})],1),r("el-form-item",{attrs:{label:"前台关机",prop:"off"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.off,callback:function(t){e.$set(e.editServerFormData,"off",t)},expression:"editServerFormData.off"}})],1),r("el-form-item",{attrs:{label:"是否开启novnc",prop:"novnc"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.novnc,callback:function(t){e.$set(e.editServerFormData,"novnc",t)},expression:"editServerFormData.novnc"}})],1),r("el-form-item",{attrs:{label:"前台救援系统",prop:"rescue"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.rescue,callback:function(t){e.$set(e.editServerFormData,"rescue",t)},expression:"editServerFormData.rescue"}})],1),r("el-form-item",{attrs:{label:"前台破解密码",prop:"crack_pass"}},[r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.crack_pass,callback:function(t){e.$set(e.editServerFormData,"crack_pass",t)},expression:"editServerFormData.crack_pass"}})],1),r("el-form-item",{attrs:{label:"IP附加信息显示",prop:"enable_ip_custom"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" IP附加信息显示 "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("开启后，将会在前台独立服务器列表页IP栏中显示IP自定义字段中的信息")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-switch",{attrs:{"active-value":"on","inactive-value":"off"},model:{value:e.editServerFormData.enable_ip_custom,callback:function(t){e.$set(e.editServerFormData,"enable_ip_custom",t)},expression:"editServerFormData.enable_ip_custom"}})],1),"on"===e.editServerFormData.enable_ip_custom?r("el-form-item",{attrs:{label:"IP自定义字段ID",prop:"ip_customid"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" IP自定义字段ID "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("请输入DCIM系统设置-自定义字段的ID，该自定义字段所属类型需是IP，字段类型为文本框")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-input",{attrs:{size:"small",placeholder:"请输入IP自定义字段ID"},model:{value:e.editServerFormData.ip_customid,callback:function(t){e.$set(e.editServerFormData,"ip_customid",t)},expression:"editServerFormData.ip_customid"}})],1):e._e()],1)],1),r("div",{staticClass:"wrapper__from mb-20",attrs:{"data-title":"未实名禁止使用"}},[r("div",{staticClass:"question",staticStyle:{left:"115px"}},[r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("设置操作对应的控制时，是否要求用户必须实名。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-row",{staticClass:"max-1200 ml-23"},[r("el-form-item",{attrs:{label:"开机",prop:"is_certifi.on"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.on,callback:function(t){e.$set(e.editServerFormData.is_certifi,"on",t)},expression:"editServerFormData.is_certifi.on"}})],1),r("el-form-item",{attrs:{label:"关机",prop:"is_certifi.off"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.off,callback:function(t){e.$set(e.editServerFormData.is_certifi,"off",t)},expression:"editServerFormData.is_certifi.off"}})],1),r("el-form-item",{attrs:{label:"重启",prop:"is_certifi.reboot"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.reboot,callback:function(t){e.$set(e.editServerFormData.is_certifi,"reboot",t)},expression:"editServerFormData.is_certifi.reboot"}})],1),r("el-form-item",{attrs:{label:"重装系统",prop:"is_certifi.reinstall"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.reinstall,callback:function(t){e.$set(e.editServerFormData.is_certifi,"reinstall",t)},expression:"editServerFormData.is_certifi.reinstall"}})],1),r("el-form-item",{attrs:{label:"破解密码",prop:"is_certifi.crack_pass"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.crack_pass,callback:function(t){e.$set(e.editServerFormData.is_certifi,"crack_pass",t)},expression:"editServerFormData.is_certifi.crack_pass"}})],1),r("el-form-item",{attrs:{label:"救援系统",prop:"is_certifi.rescue"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.rescue,callback:function(t){e.$set(e.editServerFormData.is_certifi,"rescue",t)},expression:"editServerFormData.is_certifi.rescue"}})],1),r("el-form-item",{attrs:{label:"重置BMC",prop:"is_certifi.bmc"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.bmc,callback:function(t){e.$set(e.editServerFormData.is_certifi,"bmc",t)},expression:"editServerFormData.is_certifi.bmc"}})],1),r("el-form-item",{attrs:{label:"novnc",prop:"is_certifi.novnc"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.novnc,callback:function(t){e.$set(e.editServerFormData.is_certifi,"novnc",t)},expression:"editServerFormData.is_certifi.novnc"}})],1),r("el-form-item",{attrs:{label:"kvm",prop:"is_certifi.kvm"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.kvm,callback:function(t){e.$set(e.editServerFormData.is_certifi,"kvm",t)},expression:"editServerFormData.is_certifi.kvm"}})],1),r("el-form-item",{attrs:{label:"ikvm",prop:"is_certifi.ikvm"}},[r("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:e.editServerFormData.is_certifi.ikvm,callback:function(t){e.$set(e.editServerFormData.is_certifi,"ikvm",t)},expression:"editServerFormData.is_certifi.ikvm"}})],1)],1)],1)])],1),r("div",{staticClass:"bottomOperationAdd"},[r("el-button",{attrs:{size:"small",type:"primary",loading:e.btnLoading},on:{click:e.editServer}},[e._v("保存更改")]),r("el-button",{attrs:{size:"small"},on:{click:e.goBack}},[e._v("返回")]),r("el-button",{attrs:{size:"small"},on:{click:e.editCancel}},[e._v("取消更改")])],1)])},i=[],s=(r("4160"),r("c975"),r("b0c0"),r("159b"),r("96cf"),r("1da1")),l=r("5446"),o={metaInfo:{title:"编辑接口"},data:function(){var e=function(e,t,r){-1!==t.indexOf("http")?r(new Error("无需输入http：//或https：//")):r()};return{id:"",editServerFormData:{id:void 0,name:"",hostname:"",username:"",password:"",port:"443",user_prefix:"",secure:1,disabled:0,reinstall_times:0,buy_times:0,reinstall_price:0,traffic:"off",kvm:"off",ikvm:"off",bmc:"off",reinstall:"off",reboot:"off",on:"off",off:"off",novnc:"off",rescue:"off",crack_pass:"off",enable_ip_custom:"off",ip_customid:"off",is_certifi:{bmc:"0",crack_pass:"0",enable_ip_custom:"0",ikvm:"0",kvm:"0",novnc:"0",off:"0",on:"0",reboot:"0",reinstall:"0",rescue:"0",traffic:"0"}},editServerFormRules:{name:[{required:!0,message:"请输入名称",trigger:"blur"}],hostname:[{required:!0,message:"请输入ip地址或域名",trigger:"blur"},{trigger:"blur",validator:e}]},areaArr:[],btnLoading:!1}},methods:{getId:function(){this.id=this.$route.query.id},getData:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(l["f"])(e.id);case 2:if(r=t.sent,a=r.data,200===a.status){t.next=6;break}return t.abrupt("return",!1);case 6:e.editServerFormData=a.data,e.areaArr=a.data.area,(e.areaArr||[]).forEach((function(e){}));case 9:case"end":return t.stop()}}),t)})))()},editServer:function(){var e=this;this.$refs.editServerFormRef.validate(function(){var t=Object(s["a"])(regeneratorRuntime.mark((function t(r){var a,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!r){t.next=17;break}return 0===e.editServerFormData.reinstall_times&&(e.editServerFormData.buy_times=0),e.editServerFormData.area=[],(e.areaArr||[]).forEach((function(t){e.editServerFormData.area[t.id]=t.name})),e.btnLoading=!0,t.next=7,Object(l["c"])(e.editServerFormData);case 7:if(a=t.sent,i=a.data,200===i.status){t.next=12;break}return e.$message({type:"error",message:i.msg}),t.abrupt("return",!1);case 12:e.$message({type:"success",message:i.msg}),e.btnLoading=!1,e.$router.push("/dcim"),t.next=18;break;case 17:return t.abrupt("return",!1);case 18:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},editCancel:function(){this.$refs.editServerFormRef.resetFields()},goBack:function(){this.$router.push("/dcim")},buyTimesChange:function(){0===this.editServerFormData.buy_times&&(this.editServerFormData.reinstall_times=0,this.editServerFormData.reinstall_price=0)},reinstallTimesChange:function(){0===this.editServerFormData.reinstall_times&&(this.editServerFormData.buy_times=0,this.editServerFormData.reinstall_price=0)},reinstallPriceChange:function(){}},created:function(){this.getId(),this.getData()},watch:{}},c=o,n=r("2877"),m=Object(n["a"])(c,a,i,!1,null,"7a083812",null);t["default"]=m.exports}}]);