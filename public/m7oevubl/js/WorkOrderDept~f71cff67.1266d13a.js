(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["WorkOrderDept~f71cff67"],{"22fc":function(t,e,n){"use strict";n.d(e,"l",(function(){return a})),n.d(e,"i",(function(){return c})),n.d(e,"g",(function(){return i})),n.d(e,"k",(function(){return u})),n.d(e,"b",(function(){return s})),n.d(e,"f",(function(){return o})),n.d(e,"d",(function(){return l})),n.d(e,"m",(function(){return d})),n.d(e,"n",(function(){return m})),n.d(e,"h",(function(){return p})),n.d(e,"a",(function(){return f})),n.d(e,"j",(function(){return b})),n.d(e,"e",(function(){return g})),n.d(e,"c",(function(){return _}));var r=n("a27e");function a(){return Object(r["a"])({url:"list_ticket_department"})}function c(){return Object(r["a"])({url:"get_ticket_deliver"})}function i(){return Object(r["a"])({url:"get_ticket_department"})}function u(t){return Object(r["a"])({url:"list_ticket_department/"+t})}function s(t){return Object(r["a"])({url:"add_ticket_department",method:"post",data:t})}function o(t){return Object(r["a"])({url:"save_ticket_department",method:"post",data:t})}function l(t){return Object(r["a"])({url:"delete_ticket_department",method:"post",data:t})}function d(t){return Object(r["a"])({url:"movedown_ticket_department",method:"post",data:t})}function m(t){return Object(r["a"])({url:"moveup_ticket_department",method:"post",data:t})}function p(t){return Object(r["a"])({url:"get_custom_param_type",method:"get",params:t})}function f(t){return Object(r["a"])({url:"add_ticket_custom_param",method:"get",params:t})}function b(t){return Object(r["a"])({url:"get_ticket_param_val",method:"get",params:t})}function g(t){return Object(r["a"])({url:"edit_ticket_custom_param",method:"get",params:t})}function _(t){return Object(r["a"])({url:"del_ticket_custom_param",method:"get",params:t})}},e653:function(t,e,n){"use strict";n.r(e);var r=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("h5",{staticClass:"mt-0"},[t._v("这是您配置的支持工单部门。您输入的邮件地址将用于检测发送到该部门，所有该部门的邮件也将用此邮件地址发出。邮件管道（Email Piping）允许通过邮件回复或开启工单，并可以使用以下方式之一设置。 ")]),n("el-row",{staticClass:"mt-10"},[n("el-col",{attrs:{md:24}},[n("el-button",{attrs:{size:"small",type:"success"},on:{click:t.newDeptHandleClick}},[n("i",{staticClass:"el-icon-plus"}),t._v(" 添加新部门 ")])],1)],1),n("el-table",{staticClass:"mt-10",staticStyle:{width:"100%"},attrs:{data:t.workOrderDeptTableData,"default-sort":{prop:"id",order:"descending"},border:""}},[n("div",{attrs:{slot:"empty"},slot:"empty"},[!t.workOrderDeptTableData.length&&t.tableLoading?n("span",[n("i",{staticClass:"el-icon-loading"}),t._v(" 正在加载 ... ")]):t._e(),t.workOrderDeptTableData.length||t.tableLoading?t._e():n("span",[t._v("暂无数据")])]),n("el-table-column",{attrs:{prop:"name",label:"部门名称",sortable:""}}),n("el-table-column",{attrs:{prop:"description",label:"描述"}}),n("el-table-column",{attrs:{label:"是否隐藏",width:"120",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){var r=e.row;return[n("el-switch",{attrs:{"active-value":1,"inactive-value":0,disabled:""},model:{value:r.hidden,callback:function(e){t.$set(r,"hidden",e)},expression:"row.hidden"}})]}}])}),n("el-table-column",{attrs:{label:"自动回复",width:"120",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){var r=e.row;return[n("el-switch",{attrs:{"active-value":1,"inactive-value":0,disabled:""},model:{value:r.auto_reply,callback:function(e){t.$set(r,"auto_reply",e)},expression:"row.auto_reply"}})]}}])}),n("el-table-column",{attrs:{label:"操作",width:"135",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-button",{staticClass:"span-primary",attrs:{size:"small",type:"text",icon:"el-icon-edit"},on:{click:function(n){return t.editHandleClick(e.row.id)}}},[t._v("编辑")]),n("el-button",{staticClass:"span-danger",attrs:{size:"small",type:"text",icon:"el-icon-delete"},on:{click:function(n){return t.deleteHandleClick(e.row.id)}}},[t._v("删除")])]}}])})],1)],1)},a=[],c=n("60b5"),i=(n("6a61"),n("22fc")),u={metaInfo:{title:"工单部门"},data:function(){return{tableLoading:!1,workOrderDeptTableData:[]}},methods:{getData:function(){var t=this;return Object(c["a"])(regeneratorRuntime.mark((function e(){var n,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.tableLoading=!0,e.next=3,Object(i["l"])();case 3:if(n=e.sent,r=n.data,200===r.status){e.next=9;break}return t.$message.error(r.msg),t.tableLoading=!1,e.abrupt("return");case 9:t.workOrderDeptTableData=r.data,t.tableLoading=!1;case 11:case"end":return e.stop()}}),e)})))()},newDeptHandleClick:function(){this.$router.push({path:"/new-work-order-dept"})},editHandleClick:function(t){this.$router.push({path:"/new-work-order-dept",query:{id:t}})},deleteHandleClick:function(t){var e=this;this.$confirm("此操作将永久删除该文件, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(c["a"])(regeneratorRuntime.mark((function n(){var r,a;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.next=2,Object(i["d"])({id:t});case 2:r=n.sent,a=r.data,200===a.status?(e.$message.success(a.msg),e.getData()):e.$message.error(a.msg);case 5:case"end":return n.stop()}}),n)})))).catch((function(){}))},moveUpHandleClick:function(t){var e=this;return Object(c["a"])(regeneratorRuntime.mark((function n(){var r,a;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.next=2,Object(i["n"])({id:t});case 2:r=n.sent,a=r.data,200===a.status?(e.$message.success(a.msg),e.getData()):e.$message.error(a.msg);case 5:case"end":return n.stop()}}),n)})))()},moveDownHandleClick:function(t){var e=this;return Object(c["a"])(regeneratorRuntime.mark((function n(){var r,a;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.next=2,Object(i["m"])({id:t});case 2:r=n.sent,a=r.data,200===a.status?(e.$message.success(a.msg),e.getData()):e.$message.error(a.msg);case 5:case"end":return n.stop()}}),n)})))()}},mounted:function(){this.getData()}},s=u,o=n("5d22"),l=Object(o["a"])(s,r,a,!1,null,"e403fb10",null);e["default"]=l.exports}}]);