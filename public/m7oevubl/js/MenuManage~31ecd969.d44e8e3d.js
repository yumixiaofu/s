(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["MenuManage~31ecd969"],{"019f3":function(e,t,a){"use strict";a.d(t,"a",(function(){return r}));a("4160"),a("b64b"),a("d3b7"),a("3ca3"),a("10d1"),a("159b"),a("ddb0");var n=a("53ca");function r(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:new WeakMap;if(null===e||"object"!==Object(n["a"])(e))return e;if(t.get(e))return e;var a=Array.isArray(e)?[]:{};return t.set(e,a),Object.keys(e).forEach((function(n){a[n]=r(e[n],t)})),a}},"3d58":function(e,t,a){"use strict";var n=a("74c9"),r=a.n(n);r.a},"74c9":function(e,t,a){},"7f0f":function(e,t,a){"use strict";a.r(t);var n=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"menu-manage"},[a("h2",[e._v("导航管理")]),a("el-tabs",{on:{"tab-click":e.handleClick},model:{value:e.activeName,callback:function(t){e.activeName=t},expression:"activeName"}},[a("el-tab-pane",{attrs:{label:"导航位置管理",name:"first"}},[a("div",{staticClass:"loding"},[e.menuTypes.length?e._e():a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")])]),a("el-form",{attrs:{inline:!0,model:e.positionData}},e._l(e.menuTypes,(function(t){return a("el-form-item",{key:t.id},[a("template",{slot:"label"},[e._v(" "+e._s(t.name)+" "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("此处可对会员中心导航进行修改，并放置在会员中心左侧")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-select",{attrs:{size:"small",placeholder:"请选择"},model:{value:t.menuid,callback:function(a){e.$set(t,"menuid",a)},expression:"item.menuid"}},e._l(t.list,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],2)})),1),a("div",{staticClass:"btn-box"},[a("el-button",{attrs:{size:"small",type:"primary",loading:e.btnLoading},on:{click:e.saveChange}},[e._v("保存更改")]),a("el-button",{attrs:{size:"small"},on:{click:e.cancelChange}},[e._v("取消更改")])],1)],1),a("el-tab-pane",{attrs:{label:"所有导航",name:"second"}},[a("el-form",{attrs:{inline:!0,model:e.allMenuData}},[a("el-form-item",[a("el-button",{attrs:{size:"small",type:"primary"},on:{click:function(t){e.dialogVisible=!0}}},[e._v("创建导航")])],1)],1),a("el-table",{staticClass:"mt-10",staticStyle:{width:"100%"},attrs:{data:e.tableData,border:""}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!e.tableData.length&&e.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")]):e._e(),e.tableData.length||e.tableLoading?e._e():a("span",[e._v("暂无数据")])]),a("el-table-column",{attrs:{label:"序号",type:"index",align:"center",width:"100",index:e.indexMethod}}),a("el-table-column",{attrs:{prop:"name",label:"导航名称"},scopedSlots:e._u([{key:"default",fn:function(t){var n=t.row;return[a("span",{class:1==n.is_active?"is-active":""},[e._v(" "+e._s(n.name)+e._s(1==n.is_active?"（当前会员中心导航）":"")+" ")])]}}])}),a("el-table-column",{attrs:{prop:"cn_name",label:"类型"},scopedSlots:e._u([{key:"default",fn:function(t){var a=t.row;return[e._v(" "+e._s(a.cn_name)+" ")]}}])}),a("el-table-column",{attrs:{prop:"hidden",width:"200",label:"操作"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{staticClass:"span-primary",attrs:{size:"small",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.toEdit(t.row)}}},[e._v("修改 ")]),a("el-button",{staticClass:"span-danger",attrs:{size:"small",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.delNews(t.row)}}},[e._v("删除 ")])]}}])})],1),a("el-pagination",{attrs:{"current-page":e.currentPage,"page-sizes":[10,15,20,25,50,100],"page-size":e.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)],1),a("el-dialog",{attrs:{title:"创建导航",visible:e.dialogVisible,width:"30%","before-close":e.handleClose},on:{"update:visible":function(t){e.dialogVisible=t}}},[a("el-form",{ref:"createForm",attrs:{model:e.createData,rules:e.rules,"label-width":"100px"}},[a("el-form-item",{attrs:{prop:"name",label:"导航名称："}},[a("el-input",{style:{width:"80%"},attrs:{size:"small",maxlength:"15",placeholder:"请输入导航名称",clearable:""},model:{value:e.createData.name,callback:function(t){e.$set(e.createData,"name",t)},expression:"createData.name"}})],1),a("el-form-item",{attrs:{prop:"type",label:"导航类型："}},[a("el-select",{style:{width:"80%"},attrs:{size:"small",placeholder:"请选择导航类型"},model:{value:e.createData.type,callback:function(t){e.$set(e.createData,"type",t)},expression:"createData.type"}},e._l(e.menuTypes,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(t){e.dialogVisible=!1}}},[e._v("取 消")]),a("el-button",{attrs:{type:"primary",loading:e.confirmLoading},on:{click:e.createMenu}},[e._v("确 定")])],1)],1),a("el-dialog",{attrs:{title:"提示",visible:e.showDelModal,width:"30%","before-close":e.handleClose},on:{"update:visible":function(t){e.showDelModal=t}}},[a("p",[e._v("您将要删除的导航是您正在使用的导航，如果您要继续删除，请在下方重新选择当前导航 ")]),a("el-form",{ref:"delFrom",attrs:{model:e.delFrom,rules:e.delFromRules,"label-width":"120px"}},[a("el-form-item",{attrs:{prop:"menue_id",label:"新的当前导航："}},[a("el-select",{style:{width:"80%"},attrs:{size:"small",placeholder:"请选择新的当前导航"},model:{value:e.delFrom.menue_id,callback:function(t){e.$set(e.delFrom,"menue_id",t)},expression:"delFrom.menue_id"}},e._l(e.delMenuOptions,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(t){e.showDelModal=!1}}},[e._v("取 消")]),a("el-button",{attrs:{type:"primary"},on:{click:e.changeMenuConfirm}},[e._v("确 定")])],1)],1)],1)},r=[],i=(a("d81d"),a("b0c0"),a("a9e3"),a("96cf"),a("1da1")),s=a("c5a1"),o=a("019f3"),l={data:function(){return{tableLoading:!1,dialogVisible:!1,btnLoading:!1,confirmLoading:!1,showDelModal:!1,activeMenue:void 0,activeName:"first",total:0,limit:Number(localStorage.getItem("limit"))||50,currentPage:1,tableData:[],delFrom:{menue_id:""},delMenuOptions:[],menuTypes:[],allMenuTypes:[],positionData:{menber:""},allMenuData:{type:""},createData:{name:"",type:""},rules:{name:[{required:!0,message:"请输入导航名称",trigger:"blur"}],type:[{required:!0,message:"请选择导航类型",trigger:"change"}]},delFromRules:{menue_id:[{required:!0,message:"请选择新的当前导航",trigger:"change"}]}}},mounted:function(){this.getMenuTypeData(),this.getTableList()},methods:{indexMethod:function(e){return e+1},cancelChange:function(){sessionStorage.getItem("menuTypes")&&(this.menuTypes=JSON.parse(sessionStorage.getItem("menuTypes")))},getTableList:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var a,n,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a={limit:e.limit,page:e.currentPage},e.tableLoading=!0,t.next=4,Object(s["i"])(a);case 4:n=t.sent,r=n.data,200!==r.status?(e.$message.error(r.msg),e.tableLoading=!1):(e.total=r.data.count,e.tableData=r.data.list,e.tableLoading=!1);case 7:case"end":return t.stop()}}),t)})))()},saveChange:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var a,n,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a=e.menuTypes.map((function(e){var t={id:e.id,val:e.menuid||""};return t})),t.next=3,Object(s["f"])({data:a});case 3:n=t.sent,r=n.data,200!==r.status?e.$message.error(r.msg):(e.$message.success(r.msg),e.getMenuTypeData(),e.getTableList());case 6:case"end":return t.stop()}}),t)})))()},getMenuTypeData:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var a,n,r,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(s["j"])();case 2:if(a=t.sent,n=a.data,200!==n.status)e.$message.error(n.msg);else for(i in e.menuTypes=n.data,sessionStorage.setItem("menuTypes",JSON.stringify(n.data)),e.allMenuTypes=Object(o["a"])(e.menuTypes),e.allMenuTypes.unshift({id:"all",name:"全部"}),e.delMenuOptions=[],r=n.data[0].menuid,n.data[0].list)n.data[0].list[i].id!==r&&e.delMenuOptions.push(n.data[0].list[i]);case 5:case"end":return t.stop()}}),t)})))()},createMenu:function(){var e=this;this.$refs.createForm.validate((function(t){if(t){var a={menu_type:e.createData.type,name:e.createData.name};e.confirmLoading=!0,Object(s["b"])(a).then((function(t){200!==t.data.status?(e.$message.error(t.data.msg),e.confirmLoading=!1):(e.$router.push({path:"create_menu",query:{menuId:t.data.data}}),e.confirmLoading=!1)}))}}))},toEdit:function(e){this.$router.push({path:"create_menu",query:{menuId:e.id,flag:"edit"}})},changeMenuConfirm:function(){var e=this;this.$refs.delFrom.validate((function(t){if(t){var a={menu_id:e.delFrom.menue_id,old_menu_id:e.activeMenue};Object(s["e"])(a).then((function(t){200!==t.data.status?e.$message.error(t.data.msg):(e.$message.success(t.data.msg),e.showDelModal=!1,e.getMenuTypeData(),e.getTableList())}))}}))},delNews:function(e){var t=this;1===e.is_active?(this.activeMenue=e.id,this.showDelModal=!0):this.$confirm("将删除此导航, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){Object(s["d"])({menu_id:e.id}).then((function(e){200!==e.data.status?t.$message.error(e.data.msg):(t.$message.success(e.data.msg),t.getTableList())}))}))},handleClose:function(e){e()},handleClick:function(){},handleSizeChange:function(e){this.limit=e,this.getTableList()},handleCurrentChange:function(e){this.currentPage=e,this.getTableList()}}},u=l,c=(a("3d58"),a("2877")),d=Object(c["a"])(u,n,r,!1,null,"5c61a56c",null);t["default"]=d.exports},c5a1:function(e,t,a){"use strict";a.d(t,"j",(function(){return r})),a.d(t,"h",(function(){return i})),a.d(t,"f",(function(){return s})),a.d(t,"b",(function(){return o})),a.d(t,"i",(function(){return l})),a.d(t,"u",(function(){return u})),a.d(t,"k",(function(){return c})),a.d(t,"m",(function(){return d})),a.d(t,"l",(function(){return m})),a.d(t,"a",(function(){return f})),a.d(t,"d",(function(){return p})),a.d(t,"c",(function(){return g})),a.d(t,"e",(function(){return b})),a.d(t,"g",(function(){return h})),a.d(t,"o",(function(){return v})),a.d(t,"n",(function(){return y})),a.d(t,"t",(function(){return _})),a.d(t,"q",(function(){return M})),a.d(t,"p",(function(){return w})),a.d(t,"r",(function(){return O})),a.d(t,"s",(function(){return j}));var n=a("a27e");function r(e){return Object(n["a"])({url:"menus/getMenuType",method:"post",data:e})}function i(e){return Object(n["a"])({url:"menus/getMenu",method:"post",data:e})}function s(e){return Object(n["a"])({url:"menus/editMenuActive",method:"post",data:e})}function o(e){return Object(n["a"])({url:"menus/addMenu",method:"post",data:e})}function l(e){return Object(n["a"])({url:"menus/getMenuList",method:"post",data:e})}function u(e){return Object(n["a"])({url:"menus/setNavList",method:"post",data:e})}function c(e){return Object(n["a"])({url:"menus/getNavType",method:"post",data:e})}function d(e){return Object(n["a"])({url:"menus/getSystemNav",method:"post",data:e})}function m(e){return Object(n["a"])({url:"menus/getProductList",method:"post",data:e})}function f(e){return Object(n["a"])({url:"menus/addCustomPage",method:"post",data:e})}function p(e){return Object(n["a"])({url:"menus/delMenu",method:"post",data:e})}function g(e){return Object(n["a"])({url:"menus/addProductPage",method:"post",data:e})}function b(e){return Object(n["a"])({url:"menus/delTwoMenu",method:"post",data:e})}function h(e){return Object(n["a"])({url:"menus/getLang",method:"post",data:e})}function v(e){return Object(n["a"])({url:"RuleManage/getMenuList",method:"post",data:e})}function y(e){return Object(n["a"])({url:"RuleManage/addMenu",method:"post",data:e})}function _(e){return Object(n["a"])({url:"RuleManage/saveMenuList",method:"post",data:e})}function M(e){return Object(n["a"])({url:"RuleMiddle/getMenuList",method:"post",data:e})}function w(e){return Object(n["a"])({url:"RuleMiddle/addMenu",method:"post",data:e})}function O(e){return Object(n["a"])({url:"RuleMiddle/saveMenuList",method:"post",data:e})}function j(e){return Object(n["a"])({url:"RuleMiddle/getNav",method:"post",data:e})}},d81d:function(e,t,a){"use strict";var n=a("23e7"),r=a("b727").map,i=a("1dde"),s=a("ae40"),o=i("map"),l=s("map");n({target:"Array",proto:!0,forced:!o||!l},{map:function(e){return r(this,e,arguments.length>1?arguments[1]:void 0)}})}}]);