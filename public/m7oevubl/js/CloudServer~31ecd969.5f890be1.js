(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["CloudServer~31ecd969"],{"0d85":function(e,t,a){"use strict";var r=a("f561"),s=a.n(r);s.a},"129f":function(e,t){e.exports=Object.is||function(e,t){return e===t?0!==e||1/e===1/t:e!=e&&t!=t}},"841c":function(e,t,a){"use strict";var r=a("d784"),s=a("825a"),l=a("1d80"),i=a("129f"),n=a("14c3");r("search",1,(function(e,t,a){return[function(t){var a=l(this),r=void 0==t?void 0:t[e];return void 0!==r?r.call(t,a):new RegExp(t)[e](String(a))},function(e){var r=a(t,e,this);if(r.done)return r.value;var l=s(e),o=String(this),c=l.lastIndex;i(c,0)||(l.lastIndex=0);var d=n(l,o);return i(l.lastIndex,c)||(l.lastIndex=c),null===d?-1:d.index}]}))},f01c:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"dcim_server"},[a("h5",{staticClass:"mt-0"},[e._v(" 系统支持对接魔方云系统，实现自动开通云服务器，开关机，重装等操作。 "),a("el-link",{attrs:{type:"primary",href:"https://www.idcsmart.com/wiki_list/358.html",target:"blank"}},[e._v("帮助文档")])],1),a("div",{staticClass:"dcim_server_title"},[a("div",[a("el-button",{attrs:{size:"small",type:"success",icon:"el-icon-plus"},on:{click:e.clickAddShow}},[e._v("新增接口")]),a("el-input",{style:{width:"200px",marginLeft:"15px"},attrs:{size:"small",placeholder:"按名称或IP搜索",clearable:""},model:{value:e.search,callback:function(t){e.search=t},expression:"search"}},[a("el-button",{attrs:{slot:"append",size:"small",icon:"el-icon-search"},on:{click:e.searchData},slot:"append"})],1)],1)]),a("div",{staticClass:"dcim_sever_box"},[a("el-table",{attrs:{data:e.tableData,border:""},on:{"sort-change":e.changeSort}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!e.tableData.length&&e.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")]):e._e(),e.tableData.length||e.tableLoading?e._e():a("span",[e._v("暂无数据")])]),a("el-table-column",{attrs:{prop:"id",label:"ID",width:"70",sortable:"custom",align:"center"}}),a("el-table-column",{attrs:{prop:"api_status",width:"60",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[0!==r.api_status||r.statusLoading?e._e():a("el-tooltip",{attrs:{effect:"dark",content:r.msg?r.msg:"连接失败",placement:"right"}},[a("i",{staticClass:"el-icon-circle-close no-icon",on:{click:function(t){return e.getSingleStatus(r)}}})]),0===r.api_status||r.statusLoading?e._e():a("el-tooltip",{attrs:{effect:"dark",content:r.msg?r.msg:"连接成功",placement:"right"}},[a("i",{staticClass:"el-icon-circle-check yes-icon",on:{click:function(t){return e.getSingleStatus(r)}}})]),r.statusLoading?a("i",{staticClass:"el-icon-loading"}):e._e()]}}])},[a("template",{slot:"header"},[a("i",{staticClass:"el-icon-refresh mr-5",staticStyle:{cursor:"pointer"},on:{click:e.getAllStatus}}),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("点此刷新，状态为绿色代表可以成功连接到魔方云的api接口。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1)],2),a("el-table-column",{attrs:{label:"名称",prop:"name",sortable:"custom"}}),a("el-table-column",{attrs:{prop:"hostname",label:"IP",sortable:"custom"}}),a("el-table-column",{attrs:{prop:"server_num",label:"服务器数量",sortable:"custom"}},[a("template",{slot:"header"},[a("span",{staticClass:"mr-5"},[e._v("服务器数量")]),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("对接此接口开通的服务器数量总和，包括已激活及暂停的服务器。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1)],2),a("el-table-column",{attrs:{label:"操作",width:"135",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("el-button",{staticClass:"span-primary",attrs:{size:"small",type:"text",icon:"el-icon-edit"},on:{click:function(t){return e.clickUpdateShow(r)}}},[e._v(" 编辑")]),a("el-button",{staticClass:"span-danger",attrs:{size:"small",type:"text",icon:"el-icon-delete",disabled:!r.removable},on:{click:function(t){return e.deleteServer(r.id)}}},[e._v("删除")])]}}])})],1)],1),a("el-pagination",{attrs:{"current-page":e.page,"page-sizes":[10,15,20,25,50,100],"page-size":e.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}}),a("el-dialog",{attrs:{title:e.dialog.title,visible:e.addDialogVisible,width:"800px"},on:{"update:visible":function(t){e.addDialogVisible=t},closed:e.onClose}},[a("el-row",{attrs:{gutter:15}},[a("el-form",{ref:"addServerForm",attrs:{model:e.addServerFormData,rules:e.addServerFormRules,"label-width":"auto"}},[a("el-col",{attrs:{span:24}},[a("el-row",{attrs:{gutter:15}},[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"名称",prop:"name"}},[a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入名称",clearable:""},model:{value:e.addServerFormData.name,callback:function(t){e.$set(e.addServerFormData,"name",t)},expression:"addServerFormData.name"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"地址",prop:"hostname"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 地址 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方云的域名或ip+端口+后台管理员路径"),a("br"),e._v("如：192.168.10.1:8443/zjmf123")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入ip地址或域名",clearable:""},model:{value:e.addServerFormData.hostname,callback:function(t){e.$set(e.addServerFormData,"hostname",t)},expression:"addServerFormData.hostname"}}),a("span",{staticClass:"ml-10"},[e._v("如需使用VNC，请务必配置为域名并确保证书正常")])],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"API用户名",prop:"username"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" API用户名 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方云添加的api用户名。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入用户名",clearable:""},model:{value:e.addServerFormData.username,callback:function(t){e.$set(e.addServerFormData,"username",t)},expression:"addServerFormData.username"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"APIKEY",prop:"password"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" APIKEY "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方云添加的api key。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入密码",type:"password",clearable:"","show-password":""},model:{value:e.addServerFormData.password,callback:function(t){e.$set(e.addServerFormData,"password",t)},expression:"addServerFormData.password"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"是否https",prop:"secure"}},[a("el-switch",{attrs:{"active-value":1,"inactive-value":0},model:{value:e.addServerFormData.secure,callback:function(t){e.$set(e.addServerFormData,"secure",t)},expression:"addServerFormData.secure"}})],1)],1),a("el-col",{attrs:{span:6}},[a("el-form-item",{attrs:{label:"重装是否收费",prop:"buy_times"}},[a("el-switch",{attrs:{"active-value":1,"inactive-value":0},on:{change:e.buyTimesChange},model:{value:e.addServerFormData.buy_times,callback:function(t){e.$set(e.addServerFormData,"buy_times",t)},expression:"addServerFormData.buy_times"}})],1)],1),a("el-col",{directives:[{name:"show",rawName:"v-show",value:e.addServerFormData.buy_times,expression:"addServerFormData.buy_times"}],attrs:{span:9}},[a("el-form-item",{attrs:{label:"免费重装次数",prop:"reinstall_times"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 免费重装次数 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[e._v(" 客户在前台每周对魔方云服务器重装系统的次数限制, 为0代表不限制。 "),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})])],1),a("el-input-number",{attrs:{size:"small",min:0},on:{change:e.reinstallTimesChange},model:{value:e.addServerFormData.reinstall_times,callback:function(t){e.$set(e.addServerFormData,"reinstall_times",t)},expression:"addServerFormData.reinstall_times"}})],1)],1),a("el-col",{directives:[{name:"show",rawName:"v-show",value:e.addServerFormData.buy_times,expression:"addServerFormData.buy_times"}],attrs:{span:9}},[a("el-form-item",{attrs:{label:"超出后重装单价",prop:"reinstall_price"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 超出后重装单价 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[e._v(" 当客户在本周把免费的重装次数使用完后, 需要付此单价购买一次重装次数。 "),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})])],1),a("el-input-number",{attrs:{size:"small",controls:!1,precision:2,min:0,disabled:0===e.addServerFormData.reinstall_times||0===e.addServerFormData.buy_times},on:{change:e.reinstallPriceChange},model:{value:e.addServerFormData.reinstall_price,callback:function(t){e.$set(e.addServerFormData,"reinstall_price",t)},expression:"addServerFormData.reinstall_price"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"是否启用",prop:"disabled"}},[a("el-switch",{attrs:{"active-value":0,"inactive-value":1},model:{value:e.addServerFormData.disabled,callback:function(t){e.$set(e.addServerFormData,"disabled",t)},expression:"addServerFormData.disabled"}})],1)],1)],1)],1)],1)],1),a("div",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{size:"small"},on:{click:e.handelCancel}},[e._v("取消")]),a("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.handelConfirm}},[e._v("确定")])],1)],1)],1)},s=[],l=(a("4160"),a("c975"),a("b0c0"),a("a9e3"),a("ac1f"),a("841c"),a("159b"),a("96cf"),a("1da1")),i=a("a27e");function n(e,t,a,r,s){return Object(i["a"])({url:"dcimcloud/server",params:{page:e,limit:t,orderby:a,sort:r,search:s}})}function o(e){return Object(i["a"])({url:"dcimcloud/server",method:"post",data:e})}function c(e){return Object(i["a"])({url:"dcimcloud/server",method:"delete",data:{id:e}})}function d(e){return Object(i["a"])({url:"dcimcloud/server",method:"put",data:e})}function u(e){return Object(i["a"])({url:"dcimcloud/server/".concat(e,"/status")})}var m={metaInfo:{title:"魔方云"},data:function(){var e=function(e,t,a){-1!==t.indexOf("http")?a(new Error("请直接输入域名或ip地址，无需输入http：//或https：//")):a()};return{tableLoading:!1,tableData:[],page:1,limit:Number(localStorage.getItem("limit"))||50,total:0,orderby:"id",sort:"desc",search:"",addDialogVisible:!1,addServerFormData:{id:"",name:"",hostname:"",username:"",password:"",port:0,secure:1,disabled:0,buy_times:0,reinstall_times:0,reinstall_price:0},addServerFormRules:{name:[{required:!0,message:"请输入名称",trigger:"blur"}],hostname:[{required:!0,message:"请输入ip地址或域名",trigger:"blur"},{trigger:"blur",validator:e}]},dialog:{title:"新增接口",type:"add"}}},methods:{getData:function(){var e=this;return Object(l["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.tableLoading=!0,t.next=3,n(e.page,e.limit,e.orderby,e.sort,e.search);case 3:if(a=t.sent,r=a.data,200===r.status){t.next=7;break}return t.abrupt("return",!1);case 7:(r.data.list||[]).forEach((function(e){e.statusLoading=!1})),e.tableData=r.data.list,e.total=r.data.sum,e.orderby=r.data.orderby,e.tableLoading=!1;case 12:case"end":return t.stop()}}),t)})))()},handleSizeChange:function(e){this.limit=e,this.getData()},handleCurrentChange:function(e){this.page=e,this.getData()},changeSort:function(e){"descending"===e.order?(this.orderby=e.prop,this.sort="desc"):(this.orderby=e.prop,this.sort="asc"),this.getData()},searchData:function(){this.page=1,this.getData()},clickAddShow:function(){this.dialog={title:"新增接口",type:"add"},this.addDialogVisible=!0},clickUpdateShow:function(e){this.addDialogVisible=!0,this.addServerFormData={id:e.id,name:e.name,hostname:e.hostname,username:e.username,password:e.password,port:0,secure:e.secure,disabled:e.disabled,buy_times:e.buy_times,reinstall_times:e.reinstall_times,reinstall_price:e.reinstall_price},this.dialog={title:"修改接口",type:"update"}},onClose:function(){this.addServerFormData={name:"",hostname:"",username:"",password:"",port:0,secure:1,disabled:0,buy_times:0,reinstall_times:0,reinstall_price:0},this.$refs.addServerForm.resetFields()},handelCancel:function(){this.addDialogVisible=!1,this.$refs.addServerForm.resetFields()},handelConfirm:function(){var e=this;this.$refs.addServerForm.validate(function(){var t=Object(l["a"])(regeneratorRuntime.mark((function t(a){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!a){t.next=20;break}if(r={},"update"!==e.dialog.type){t.next=8;break}return t.next=5,d(e.addServerFormData);case 5:r=t.sent,t.next=11;break;case 8:return t.next=10,o(e.addServerFormData);case 10:r=t.sent;case 11:if(r=r.data,200===r.status){t.next=15;break}return e.$message({message:r.msg,type:"error"}),t.abrupt("return",!1);case 15:e.$message({message:r.msg,type:"success"}),e.addDialogVisible=!1,e.getData(),t.next=21;break;case 20:return t.abrupt("return",!1);case 21:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},deleteServer:function(e){var t=this;this.$confirm("此操作将永久删除该接口, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(l["a"])(regeneratorRuntime.mark((function a(){var r,s;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return a.next=2,c(e);case 2:if(r=a.sent,s=r.data,200===s.status){a.next=7;break}return t.$message({type:"error",message:s.msg}),a.abrupt("return",!1);case 7:t.$message({type:"success",message:"删除成功!"}),t.getData();case 9:case"end":return a.stop()}}),a)})))).catch((function(){t.$message({type:"info",message:"已取消本次操作!"})}))},goToView:function(e){this.$router.push({path:"/dcim-view",query:{id:e}})},getAllStatus:function(){var e=this;(this.tableData||[]).forEach((function(t){e.getSingleStatus(t)}))},getSingleStatus:function(e){return Object(l["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.statusLoading=!0,t.next=3,u(e.id);case 3:a=t.sent,r=a.data,200!==r.status?e.msg=r.msg:(e.api_status=r.server_status,0===r.server_status?e.msg=r.msg:e.msg="连接成功"),e.statusLoading=!1;case 7:case"end":return t.stop()}}),t)})))()},buyTimesChange:function(){0===this.addServerFormData.buy_times&&(this.addServerFormData.reinstall_times=0,this.addServerFormData.reinstall_price=0)},reinstallTimesChange:function(){0===this.addServerFormData.reinstall_times&&(this.addServerFormData.buy_times=0,this.addServerFormData.reinstall_price=0)}},created:function(){this.getData()},watch:{search:function(e){""===e&&this.getData()}}},p=m,v=(a("0d85"),a("2877")),h=Object(v["a"])(p,r,s,!1,null,"338d0910",null);t["default"]=h.exports},f561:function(e,t,a){}}]);