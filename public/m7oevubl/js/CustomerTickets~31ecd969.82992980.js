(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["CustomerTickets~31ecd969"],{3440:function(t,e,n){},"7cec":function(t,e,n){"use strict";n("3440")},a756:function(t,e){t.exports=Object.is||function(t,e){return t===e?0!==t||1/t===1/e:t!=t&&e!=e}},c22d:function(t,e,n){"use strict";var a=n("9194"),r=n("baa9"),s=n("4023"),o=n("a756"),i=n("1a58");a("search",1,(function(t,e,n){return[function(e){var n=s(this),a=void 0==e?void 0:e[t];return void 0!==a?a.call(e,n):new RegExp(e)[t](String(n))},function(t){var a=n(e,t,this);if(a.done)return a.value;var s=r(t),c=String(this),u=s.lastIndex;o(u,0)||(s.lastIndex=0);var l=i(s,c);return o(s.lastIndex,u)||(s.lastIndex=u),null===l?-1:l.index}]}))},f6b0:function(t,e,n){"use strict";n.d(e,"q",(function(){return r})),n.d(e,"s",(function(){return s})),n.d(e,"n",(function(){return o})),n.d(e,"a",(function(){return i})),n.d(e,"r",(function(){return c})),n.d(e,"m",(function(){return u})),n.d(e,"l",(function(){return l})),n.d(e,"g",(function(){return d})),n.d(e,"j",(function(){return p})),n.d(e,"h",(function(){return _})),n.d(e,"f",(function(){return f})),n.d(e,"e",(function(){return h})),n.d(e,"u",(function(){return m})),n.d(e,"x",(function(){return b})),n.d(e,"c",(function(){return g})),n.d(e,"b",(function(){return v})),n.d(e,"p",(function(){return w})),n.d(e,"A",(function(){return j})),n.d(e,"k",(function(){return O})),n.d(e,"B",(function(){return k})),n.d(e,"t",(function(){return y})),n.d(e,"y",(function(){return x})),n.d(e,"z",(function(){return C})),n.d(e,"d",(function(){return $})),n.d(e,"v",(function(){return D})),n.d(e,"o",(function(){return S})),n.d(e,"i",(function(){return L})),n.d(e,"w",(function(){return z}));var a=n("a27e");function r(t){return Object(a["a"])({url:"client_list",method:"post",data:t})}function s(t){return Object(a["a"])({url:"summary?client_id=".concat(t)})}function o(){return Object(a["a"])({url:"create_client"})}function i(t){return Object(a["a"])({url:"create_client_post",method:"post",data:t})}function c(t){return Object(a["a"])({url:"profile/".concat(t)})}function u(t){return Object(a["a"])({url:"profile_post",method:"post",data:t})}function l(t){return Object(a["a"])({url:"delete_client/".concat(t)})}function d(t){return Object(a["a"])({url:"close_client/".concat(t)})}function p(t){return Object(a["a"])({url:"user_invoice",params:t})}function _(t,e){return Object(a["a"])({url:"close_client/".concat(t),params:e})}function f(t){return Object(a["a"])({url:"client_ticket",params:t})}function h(t){return Object(a["a"])({url:"log_record",params:t})}function m(t){return Object(a["a"])({url:"login_by_user/"+t})}function b(t){return Object(a["a"])({url:"certifi_person_detail/".concat(t)})}function g(t){return Object(a["a"])({url:"add_user_invoice",method:"post",data:t})}function v(t){return Object(a["a"])({url:"add_recharge_invoice/"+t.uid,method:"post",data:t})}function w(t){return Object(a["a"])({url:"get_user",params:t})}function j(t){return Object(a["a"])({url:"request_cancel_list",params:t})}function O(t){return Object(a["a"])({url:"request_cancel_list/".concat(t),method:"delete"})}function k(t){return Object(a["a"])({url:"searchlist",params:{value:t}})}function y(t){return Object(a["a"])({url:"hostbyuid",params:t})}function x(t){return Object(a["a"])({url:"clients_services/host_batch_renew_page",method:"post",data:t})}function C(t){return Object(a["a"])({url:"clients_services/host_batch_renew",method:"post",data:t})}function $(t){return Object(a["a"])({url:"clients_services/apply_credit",method:"post",data:t})}function D(t){return Object(a["a"])({url:"invoice/paid",params:t})}function S(t){return Object(a["a"])({url:"get_combine_invoices",params:t})}function L(t){return Object(a["a"])({url:"combine_invoices",method:"post",data:t})}function z(t){return Object(a["a"])({url:"post_client_notes",method:"post",data:t})}},fd26:function(t,e,n){"use strict";n.r(e);var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"box"},[n("el-row",{staticClass:"mb-10",attrs:{gutter:15}},[n("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[n("el-card",{staticClass:"tac"},[n("div",{staticClass:"count"},[t._v(t._s(t.opened_this_month))]),n("div",[t._v("本月打开工单")])])],1),n("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[n("el-card",{staticClass:"tac mtxs-20"},[n("div",{staticClass:"count"},[t._v(t._s(t.opened_last_month))]),n("div",[t._v("上月打开工单")])])],1),n("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[n("el-card",{staticClass:"tac mtsm-20"},[n("div",{staticClass:"count"},[t._v(t._s(t.opened_this_year))]),n("div",[t._v("今年打开工单")])])],1),n("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[n("el-card",{staticClass:"tac mtsm-20"},[n("div",{staticClass:"count"},[t._v(t._s(t.opened_last_year))]),n("div",[t._v("去年打开工单")])])],1)],1),n("el-button",{staticClass:"mt-20",attrs:{size:"small",type:"success",icon:"el-icon-plus"},on:{click:t.newTicketsHandleClick}},[t._v("新建工单 ")]),n("el-table",{staticClass:"mt-20",staticStyle:{width:"100%"},attrs:{data:t.tableData,border:""},on:{"sort-change":t.changeSort}},[n("div",{attrs:{slot:"empty"},slot:"empty"},[!t.tableData.length&&t.tableLoading?n("span",[n("i",{staticClass:"el-icon-loading"}),t._v(" 正在加载 ... ")]):t._e(),t.tableData.length||t.tableLoading?t._e():n("span",[t._v("暂无数据")])]),n("el-table-column",{attrs:{prop:"id",label:"ID",width:"80",sortable:"",align:"center"}}),n("el-table-column",{attrs:{prop:"title",label:"主题","min-width":"200px"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("router-link",{attrs:{to:{path:"/support-ticket-detail",query:{id:e.row.id,tid:e.row.tid}}}},[n("el-link",{on:{click:function(n){return t.toDetail(e.row.id,e.row.tid)}}},[t._v("#"+t._s(e.row.tid)+"-"+t._s(e.row.title))])],1)]}}])}),n("el-table-column",{attrs:{prop:"status.title",label:"状态",width:"100"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[n("span",{style:{color:a.status?a.status.color:""}},[t._v(t._s(a.status?a.status.title:""))])]}}])}),n("el-table-column",{attrs:{prop:"depart_name",label:"部门",width:"150"}}),n("el-table-column",{attrs:{prop:"create_time",label:"提交时间",sortable:"",width:"135",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){var n=e.row;return[t._v(" "+t._s(0===n.create_time?"-":t.$moment(1e3*n.create_time).format("YYYY-MM-DD HH:mm"))+" ")]}}])}),n("el-table-column",{attrs:{prop:"last_replay",label:"上次回复",sortable:"",width:"120",align:"center"}})],1),n("el-pagination",{staticClass:"mt-10",attrs:{"current-page":t.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":t.search.limit,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.getTableData,"update:currentPage":function(e){return t.$set(t.search,"page",e)},"update:current-page":function(e){return t.$set(t.search,"page",e)},"update:pageSize":function(e){return t.$set(t.search,"limit",e)},"update:page-size":function(e){return t.$set(t.search,"limit",e)}}})],1)},r=[],s=n("60b5"),o=(n("6a61"),n("24a8"),n("c22d"),n("9b5f"),n("f6b0")),i={data:function(){return{tableLoading:!1,id:this.$route.query.id,opened_this_month:0,opened_last_month:0,opened_this_year:0,opened_last_year:0,tableData:[],total:0,search:{uid:Number(this.$route.query.id),page:1,limit:Number(localStorage.getItem("limit"))||50,order:"id",sort:"desc",hostid:void 0}}},methods:{getTableData:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var n,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if("{}"!==JSON.stringify(t.$store.state.workList)){e.next=20;break}return t.tableLoading=!0,e.next=4,Object(o["f"])(t.search);case 4:if(n=e.sent,a=n.data,200===a.status){e.next=11;break}return t.$message.error(a.msg),e.abrupt("return",!1);case 11:t.tableData=a.data.ticket_data,t.total=a.data.meta.total,t.opened_this_month=a.data.opened_this_month,t.opened_last_month=a.data.opened_last_month,t.opened_this_year=a.data.opened_this_year,t.opened_last_year=a.data.opened_last_year;case 17:t.tableLoading=!1,e.next=26;break;case 20:t.tableData=t.$store.state.workList.ticket_data,t.total=t.$store.state.workList.meta.total,t.opened_this_month=t.$store.state.workList.opened_this_month,t.opened_last_month=t.$store.state.workList.opened_last_month,t.opened_this_year=t.$store.state.workList.opened_this_year,t.opened_last_year=t.$store.state.workList.opened_last_year;case 26:case"end":return e.stop()}}),e)})))()},changeSort:function(t){"descending"===t.order?(this.search.order=t.prop,this.search.sort="desc"):(this.search.order=t.prop,this.search.sort="asc"),this.getTableData()},handleSizeChange:function(){this.search.page=1,this.getTableData()},newTicketsHandleClick:function(){this.$router.push({path:"/add-support-ticket",query:{uid:this.id}})},toDetail:function(t,e){this.$router.push({path:"/support-ticket-detail",query:{id:t,tid:e}})}},created:function(){this.getTableData(),this.$store.commit("setWorkOrder",{})}},c=i,u=(n("7cec"),n("5d22")),l=Object(u["a"])(c,a,r,!1,null,"1ec146f6",null);e["default"]=l.exports}}]);