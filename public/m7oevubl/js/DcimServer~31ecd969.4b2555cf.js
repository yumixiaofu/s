(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["DcimServer~31ecd969"],{2229:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"dcim_server"},[a("h5",{staticClass:"mt-0"},[e._v(" 系统支持对接魔方DCIM服务器管理系统，实现服务器自动开通，开关机，重装等操作。 "),a("el-link",{attrs:{type:"primary",href:"https://www.idcsmart.com/wiki_list/338.html",target:"blank"}},[e._v("帮助文档")])],1),a("div",{staticClass:"dcim_server_title"},[a("div",[a("el-button",{attrs:{size:"small",type:"success",icon:"el-icon-plus"},on:{click:function(t){e.addDialogVisible=!0}}},[e._v("新增接口")]),a("el-input",{style:{width:"200px",marginLeft:"15px"},attrs:{size:"small",placeholder:"按名称或IP搜索",clearable:""},model:{value:e.search,callback:function(t){e.search=t},expression:"search"}},[a("el-button",{attrs:{slot:"append",size:"small",icon:"el-icon-search"},on:{click:e.searchData},slot:"append"})],1)],1)]),a("div",{staticClass:"dcim_sever_box"},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,border:""},on:{"sort-change":e.changeSort}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!e.tableData.length&&e.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")]):e._e(),e.tableData.length||e.tableLoading?e._e():a("span",[e._v("暂无数据")])]),a("el-table-column",{attrs:{prop:"id",label:"ID",width:"70",sortable:"custom",align:"center"}}),a("el-table-column",{attrs:{prop:"api_status",width:"60",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[0!==r.api_status||r.statusLoading?e._e():a("el-tooltip",{attrs:{effect:"light",content:r.msg?r.msg:"连接失败",placement:"right"}},[a("i",{staticClass:"el-icon-circle-close no-icon",on:{click:function(t){return e.getSingleStatus(r)}}})]),0===r.api_status||r.statusLoading?e._e():a("el-tooltip",{attrs:{effect:"light",content:r.msg?r.msg:"连接成功",placement:"right"}},[a("i",{staticClass:"el-icon-circle-check yes-icon",on:{click:function(t){return e.getSingleStatus(r)}}})]),r.statusLoading?a("i",{staticClass:"el-icon-loading"}):e._e()]}}])},[a("template",{slot:"header"},[a("i",{staticClass:"el-icon-refresh mr-5",staticStyle:{cursor:"pointer"},on:{click:e.getAllStatus}}),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("点此刷新，状态为绿色代表可以成功连接到魔方DCIM的api接口。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1)],2),a("el-table-column",{attrs:{label:"名称",sortable:"custom"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("router-link",{attrs:{to:"/dcim-view?id="+r.id}},[a("el-link",{on:{click:function(t){return e.goToView(r.id)}}},[e._v(e._s(r.name))])],1)]}}])}),a("el-table-column",{attrs:{prop:"hostname",label:"IP",sortable:"custom"}}),a("el-table-column",{attrs:{prop:"server_num",label:"服务器数量",sortable:"custom"}},[a("template",{slot:"header"},[a("span",{staticClass:"mr-5"},[e._v("服务器数量")]),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("对接此接口开通的服务器数量总和，包括已激活及暂停的服务器。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1)],2),a("el-table-column",{attrs:{prop:"area",label:"区域"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("div",{staticStyle:{display:"flex"}},e._l(r.area,(function(t,r){return a("div",{key:r},[a("el-tag",{staticStyle:{"margin-right":"5px",display:"flex","align-items":"center"},attrs:{size:"small"}},[a("img",{staticClass:"mr-10",staticStyle:{height:"13px"},attrs:{src:"/upload/common/country/"+t.area+".png",alt:""}}),a("span",[e._v(e._s(t.name))])])],1)})),0)]}}])}),a("el-table-column",{attrs:{label:"操作",width:"135",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("el-button",{staticClass:"span-primary",attrs:{size:"small",type:"text",icon:"el-icon-edit"},on:{click:function(t){return e.goToView(r.id)}}},[e._v("编辑 ")]),a("el-button",{staticClass:"span-danger",attrs:{size:"small",type:"text",icon:"el-icon-delete",disabled:!r.removable},on:{click:function(t){return e.deleteServer(r.id)}}},[e._v("删除")])]}}])})],1)],1),a("el-pagination",{attrs:{"current-page":e.page,"page-sizes":[10,15,20,25,50,100],"page-size":e.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}}),a("el-dialog",{attrs:{title:"新增接口",visible:e.addDialogVisible,width:"800px"},on:{"update:visible":function(t){e.addDialogVisible=t},close:e.onClose}},[a("el-row",{attrs:{gutter:15}},[a("el-form",{ref:"addServerForm",attrs:{model:e.addServerFormData,rules:e.addServerFormRules,"label-width":"auto"}},[a("el-col",{attrs:{span:24}},[a("el-row",{attrs:{gutter:15}},[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"名称",prop:"name"}},[a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入名称",clearable:""},model:{value:e.addServerFormData.name,callback:function(t){e.$set(e.addServerFormData,"name",t)},expression:"addServerFormData.name"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"地址",prop:"hostname"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 地址 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方DCIM的域名或ip地址。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入ip地址或域名",clearable:""},model:{value:e.addServerFormData.hostname,callback:function(t){e.$set(e.addServerFormData,"hostname",t)},expression:"addServerFormData.hostname"}}),a("span",{staticClass:"ml-10"},[e._v("如需使用VNC，请务必配置为域名并确保证书正常")])],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"API用户名",prop:"username"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" API用户名 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方DCIM添加的api用户名。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入用户名",clearable:""},model:{value:e.addServerFormData.username,callback:function(t){e.$set(e.addServerFormData,"username",t)},expression:"addServerFormData.username"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"APIKEY",prop:"password"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" APIKEY "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"auto",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("填写魔方DCIM添加的api key。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入密码",type:"password",clearable:""},model:{value:e.addServerFormData.password,callback:function(t){e.$set(e.addServerFormData,"password",t)},expression:"addServerFormData.password"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"端口",prop:"port"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 端口 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("端口默认为443，如有变更魔方DCIM访问端口，请填写魔方DCIM端口。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input-number",{staticStyle:{width:"50%"},attrs:{size:"small",controls:!1,precision:0},model:{value:e.addServerFormData.port,callback:function(t){e.$set(e.addServerFormData,"port",t)},expression:"addServerFormData.port"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"财务标识",prop:"user_prefix"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 财务标识 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("是指调用该接口传递用户账号至DCIM时, 账号前会加此标识, 避免多套系统使用一个主控导致账号冲突。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-input",{staticStyle:{width:"50%"},attrs:{size:"small",placeholder:"请输入标识, 字母或数字"},model:{value:e.addServerFormData.user_prefix,callback:function(t){e.$set(e.addServerFormData,"user_prefix",t)},expression:"addServerFormData.user_prefix"}})],1)],1),e.$hiddenFunc?a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"是否禁用",prop:"disabled"}},[a("el-switch",{attrs:{"active-value":1,"inactive-value":0},model:{value:e.addServerFormData.disabled,callback:function(t){e.$set(e.addServerFormData,"disabled",t)},expression:"addServerFormData.disabled"}})],1)],1):e._e()],1)],1)],1)],1),a("div",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{size:"small"},on:{click:e.handelCancel}},[e._v("取消")]),a("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.handelConfirm}},[e._v("确定")])],1)],1)],1)},s=[],l=a("60b5"),n=(a("6a61"),a("24a8"),a("c22d"),a("9b5f"),a("3bae"),a("5446")),i={metaInfo:{title:"魔方DCIM"},data:function(){var e=function(e,t,a){-1!==t.indexOf("http")?a(new Error("请直接输入域名或ip地址，无需输入http：//或https：//")):a()};return{tableLoading:!1,tableData:[],page:1,limit:Number(localStorage.getItem("limit"))||50,total:0,orderby:"id",sort:"desc",search:"",addDialogVisible:!1,addServerFormData:{name:"",hostname:"",username:"",password:"",port:443,user_prefix:"",secure:1,disabled:0},addServerFormRules:{name:[{required:!0,message:"请输入名称",trigger:"blur"}],user_prefix:[{required:!1,pattern:/^[A-Za-z0-9]+$/,message:"请输入正确的标识",trigger:"blur"}],hostname:[{required:!0,message:"请输入ip地址或域名",trigger:"blur"},{trigger:"blur",validator:e}]}}},methods:{getData:function(){var e=this;return Object(l["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.tableLoading=!0,t.next=3,Object(n["d"])(e.page,e.limit,e.orderby,e.sort,e.search);case 3:if(a=t.sent,r=a.data,200===r.status){t.next=7;break}return t.abrupt("return",!1);case 7:(r.data.list||[]).forEach((function(e){e.statusLoading=!1})),e.tableData=r.data.list,e.total=r.data.sum,e.orderby=r.data.orderby,e.tableLoading=!1;case 12:case"end":return t.stop()}}),t)})))()},handleSizeChange:function(e){this.limit=e,this.getData()},handleCurrentChange:function(e){this.page=e,this.getData()},changeSort:function(e){"descending"===e.order?(this.orderby=e.prop,this.sort="desc"):(this.orderby=e.prop,this.sort="asc"),this.getData()},searchData:function(){this.getData()},onClose:function(){this.$refs.addServerForm.resetFields()},handelCancel:function(){this.addDialogVisible=!1,this.$refs.addServerForm.resetFields()},handelConfirm:function(){var e=this;this.$refs.addServerForm.validate(function(){var t=Object(l["a"])(regeneratorRuntime.mark((function t(a){var r,s;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!a){t.next=13;break}return t.next=3,Object(n["a"])(e.addServerFormData);case 3:if(r=t.sent,s=r.data,200===s.status){t.next=8;break}return e.$message({message:s.msg,type:"error"}),t.abrupt("return",!1);case 8:e.$message({message:s.msg,type:"success"}),e.addDialogVisible=!1,e.getData(),t.next=14;break;case 13:return t.abrupt("return",!1);case 14:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},deleteServer:function(e){var t=this;this.$confirm("此操作将永久删除该接口, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(l["a"])(regeneratorRuntime.mark((function a(){var r,s;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return a.next=2,Object(n["b"])(e);case 2:if(r=a.sent,s=r.data,200===s.status){a.next=7;break}return t.$message({type:"error",message:s.msg}),a.abrupt("return",!1);case 7:t.$message({type:"success",message:"删除成功!"}),t.getData();case 9:case"end":return a.stop()}}),a)})))).catch((function(){t.$message({type:"info",message:"已取消本次操作!"})}))},goToView:function(e){this.$router.push({path:"/dcim-view",query:{id:e}})},getAllStatus:function(){var e=this;(this.tableData||[]).forEach((function(t){e.getSingleStatus(t)}))},getSingleStatus:function(e){return Object(l["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.statusLoading=!0,t.next=3,Object(n["e"])(e.id);case 3:a=t.sent,r=a.data,200!==r.status?e.msg=r.msg:(e.api_status=r.server_status,0===r.server_status?e.msg=r.msg:e.msg="连接成功"),e.statusLoading=!1;case 7:case"end":return t.stop()}}),t)})))()}},created:function(){var e=this;return Object(l["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,e.getData();case 2:e.getAllStatus();case 3:case"end":return t.stop()}}),t)})))()},watch:{search:function(e){""===e&&this.getData()}}},o=i,c=(a("c852"),a("5d22")),u=Object(c["a"])(o,r,s,!1,null,"74a663a4",null);t["default"]=u.exports},5446:function(e,t,a){"use strict";a.d(t,"d",(function(){return s})),a.d(t,"a",(function(){return l})),a.d(t,"b",(function(){return n})),a.d(t,"f",(function(){return i})),a.d(t,"c",(function(){return o})),a.d(t,"e",(function(){return c}));var r=a("a27e");function s(e,t,a,s,l){return Object(r["a"])({url:"dcim/server",params:{page:e,limit:t,orderby:a,sort:s,search:l}})}function l(e){return Object(r["a"])({url:"dcim/server",method:"post",data:e})}function n(e){return Object(r["a"])({url:"dcim/server",method:"delete",data:{id:e}})}function i(e){return Object(r["a"])({url:"dcim/server/".concat(e)})}function o(e){return Object(r["a"])({url:"dcim/server",method:"put",data:e})}function c(e){return Object(r["a"])({url:"dcim/server/".concat(e,"/status")})}},"697f":function(e,t,a){},a756:function(e,t){e.exports=Object.is||function(e,t){return e===t?0!==e||1/e===1/t:e!=e&&t!=t}},c22d:function(e,t,a){"use strict";var r=a("9194"),s=a("baa9"),l=a("4023"),n=a("a756"),i=a("1a58");r("search",1,(function(e,t,a){return[function(t){var a=l(this),r=void 0==t?void 0:t[e];return void 0!==r?r.call(t,a):new RegExp(t)[e](String(a))},function(e){var r=a(t,e,this);if(r.done)return r.value;var l=s(e),o=String(this),c=l.lastIndex;n(c,0)||(l.lastIndex=0);var u=i(l,o);return n(l.lastIndex,c)||(l.lastIndex=c),null===u?-1:u.index}]}))},c852:function(e,t,a){"use strict";a("697f")}}]);