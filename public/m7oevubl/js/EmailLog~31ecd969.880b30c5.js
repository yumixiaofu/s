(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["EmailLog~31ecd969"],{"129f":function(e,t){e.exports=Object.is||function(e,t){return e===t?0!==e||1/e===1/t:e!=e&&t!=t}},"213e":function(e,t,a){},"27e2":function(e,t,a){"use strict";var r=a("213e"),n=a.n(r);n.a},"841c":function(e,t,a){"use strict";var r=a("d784"),n=a("825a"),o=a("1d80"),i=a("129f"),l=a("14c3");r("search",1,(function(e,t,a){return[function(t){var a=o(this),r=void 0==t?void 0:t[e];return void 0!==r?r.call(t,a):new RegExp(t)[e](String(a))},function(e){var r=a(t,e,this);if(r.done)return r.value;var o=n(e),s=String(this),c=o.lastIndex;i(c,0)||(o.lastIndex=0);var u=l(o,s);return i(o.lastIndex,c)||(o.lastIndex=c),null===u?-1:u.index}]}))},"90ba":function(e,t,a){"use strict";a.d(t,"k",(function(){return n})),a.d(t,"a",(function(){return o})),a.d(t,"i",(function(){return i})),a.d(t,"g",(function(){return l})),a.d(t,"f",(function(){return s})),a.d(t,"j",(function(){return c})),a.d(t,"h",(function(){return u})),a.d(t,"b",(function(){return d})),a.d(t,"d",(function(){return p})),a.d(t,"c",(function(){return m})),a.d(t,"e",(function(){return f}));var r=a("a27e");function n(e){return Object(r["a"])({url:"log_record/systemlog",params:e})}function o(e){return Object(r["a"])({url:"log_record/adminlog",params:e})}function i(e){return Object(r["a"])({url:"log_record/notifylog",params:e})}function l(e){return Object(r["a"])({url:"log_record/emaillog",params:e})}function s(e){return Object(r["a"])({url:"log_record/emaildetail/"+e})}function c(e){return Object(r["a"])({url:"log_record/smslog",params:e})}function u(e){return Object(r["a"])({url:"log_record/cronsystemlog",params:e})}function d(e){return Object(r["a"])({url:"log_record/api_log",params:e})}function p(e){return Object(r["a"])({url:"log_record/delete_log_page",params:e})}function m(e){return Object(r["a"])({url:"log_record/affirm_delete_log_page",params:e})}function f(e){return Object(r["a"])({url:"log_record/delete_log",method:"delete",params:e})}},d45d:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"box"},[a("el-form",{ref:"searchFrom",attrs:{inline:"","label-width":"auto",model:e.search,size:"small"}},[a("el-form-item",{attrs:{label:"时间",prop:"search_time"}},[a("el-date-picker",{style:{width:"160px"},attrs:{"value-format":"timestamp",type:"date",placeholder:"选择日期",clearable:""},model:{value:e.search.search_time,callback:function(t){e.$set(e.search,"search_time",t)},expression:"search.search_time"}})],1),a("el-form-item",{attrs:{label:"收件人",prop:"username"}},[a("el-input",{style:{width:"160px"},attrs:{clearable:"",autocomplete:"off"},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.getData(t)}},model:{value:e.search.username,callback:function(t){e.$set(e.search,"username",t)},expression:"search.username"}})],1),a("el-form-item",{attrs:{label:"主题",prop:"subject"}},[a("el-input",{style:{width:"160px"},attrs:{clearable:"",autocomplete:"off"},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.getData(t)}},model:{value:e.search.subject,callback:function(t){e.$set(e.search,"subject",t)},expression:"search.subject"}})],1),a("el-form-item",[a("el-button",{attrs:{size:"mini",type:"primary",loading:e.btnLoading},on:{click:function(t){return e.getData("loading")}}},[e._v("搜索")]),a("el-button",{attrs:{size:"mini"},on:{click:e.resetForm}},[e._v("重置")])],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-table",{staticClass:"mt-10",attrs:{stripe:"",border:"",data:e.tableData},on:{"sort-change":e.sortChange}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!e.tableData.length&&e.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")]):e._e(),e.tableData.length||e.tableLoading?e._e():a("span",[e._v("暂无数据")])]),a("el-table-column",{attrs:{prop:"id",label:"ID",width:"80",sortable:"",align:"center"}}),a("el-table-column",{attrs:{prop:"create_time",label:"时间",width:"135",align:"center",sortable:""},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v(" "+e._s(t.row.create_time?e.$moment(1e3*t.row.create_time).format("YYYY-MM-DD HH:mm"):"-")+" ")]}}])}),a("el-table-column",{attrs:{prop:"subject",label:"主题",sortable:""},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-link",{on:{click:function(a){return e.subjectHandleClick(t.row.id)}}},[e._v(e._s(t.row.subject))])]}}])}),a("el-table-column",{attrs:{prop:"username",label:"收件人",sortable:"",width:"150"}}),a("el-table-column",{attrs:{prop:"status",label:"是否成功",sortable:"",width:"120",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[1==t.row.status?a("i",{staticClass:"el-icon-circle-check yes-icon"}):e._e(),0==t.row.status?a("i",{staticClass:"el-icon-circle-close no-icon"}):e._e()]}}])}),a("el-table-column",{attrs:{prop:"fail_reason",label:"失败原因",sortable:""}}),a("el-table-column",{attrs:{prop:"ip",label:"IP",sortable:"",width:"120"}})],1)],1)],1),a("el-row",{staticClass:"mt-10"},[a("el-col",{attrs:{span:24}},[a("el-pagination",{attrs:{"current-page":e.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":e.search.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.totalCount},on:{"size-change":e.handleSizeChange,"current-change":e.getData,"update:currentPage":function(t){return e.$set(e.search,"page",t)},"update:current-page":function(t){return e.$set(e.search,"page",t)},"update:pageSize":function(t){return e.$set(e.search,"limit",t)},"update:page-size":function(t){return e.$set(e.search,"limit",t)}}})],1)],1)],1)},n=[],o=(a("a9e3"),a("ac1f"),a("841c"),a("96cf"),a("1da1")),i=a("90ba"),l={metaInfo:{title:"邮件日志"},data:function(){return{tableLoading:!1,labelWidth:window.document.body.clientWidth>768?"120px":"70px",search:{page:1,limit:Number(localStorage.getItem("limit"))||50,orderby:"id",sorting:"desc",search_time:void 0,subject:void 0,username:void 0},totalCount:0,tableData:[],preWindow:null,btnLoading:!1}},methods:{handleSizeChange:function(e){this.search.page=1,this.getData()},getData:function(e){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function a(){var r,n;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return"loading"===e&&(t.btnLoading=!0),t.tableLoading=!0,t.search.search_time=t.search.search_time/1e3||void 0,a.next=5,Object(i["g"])(t.search);case 5:r=a.sent,n=r.data,200===n.status?(t.totalCount=n.count,t.tableData=n.data):t.$message.error(n.msg),t.search.search_time=1e3*t.search.search_time||void 0,t.btnLoading=!1,t.tableLoading=!1;case 11:case"end":return a.stop()}}),a)})))()},resetForm:function(){this.$refs.searchFrom.resetFields(),this.getData("loading")},sortChange:function(e,t,a){this.search.orderby=e.prop,"ascending"===e.order?this.search.sorting="asc":this.search.sorting="desc",this.getData()},subjectHandleClick:function(e){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function a(){var r;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:r=t.$baseUrl+"/#/email-log-detail1?id="+e,t.preWindow&&t.preWindow.close(),t.preWindow=window.open(r,"newwindow","height=900,width=1800,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");case 3:case"end":return a.stop()}}),a)})))()},sendEmailHandleClick:function(e){}},created:function(){this.getData()},mounted:function(){}},s=l,c=(a("27e2"),a("2877")),u=Object(c["a"])(s,r,n,!1,null,"ce48908a",null);t["default"]=u.exports}}]);