(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["DatabaseMessage~f71cff67"],{"51bf":function(t,e,n){"use strict";n.d(e,"h",(function(){return r})),n.d(e,"e",(function(){return o})),n.d(e,"g",(function(){return s})),n.d(e,"d",(function(){return c})),n.d(e,"f",(function(){return i})),n.d(e,"c",(function(){return u})),n.d(e,"k",(function(){return l})),n.d(e,"b",(function(){return d})),n.d(e,"i",(function(){return b})),n.d(e,"j",(function(){return f})),n.d(e,"a",(function(){return p}));var a=n("a27e");function r(){return Object(a["a"])({url:"system/info"})}function o(){return Object(a["a"])({url:"system/lastversion"})}function s(){return Object(a["a"])({url:"system/phpinfo"})}function c(){return Object(a["a"])({url:"system/databaseinfo"})}function i(){return Object(a["a"])({url:"system/optimizeTables",method:"post"})}function u(){return Object(a["a"])({url:"system/downdatabackup",method:"post",responseType:"blob"})}function l(){return Object(a["a"])({url:"system/autoupdate"})}function d(){return Object(a["a"])({url:"system/checkautoupdate"})}function b(t){return Object(a["a"])({url:"system/toggleversion",method:"post",data:t})}function f(){return Object(a["a"])({url:"system/updatecontent"})}function p(t){return Object(a["a"])({url:"system/license",method:"put",data:t})}},"7e4f":function(t,e,n){"use strict";var a=n("b66d"),r=n.n(a);r.a},b66d:function(t,e,n){},cf86:function(t,e,n){"use strict";n.r(e);var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticClass:"databasemsg_header"},[n("el-row",[n("el-col",{attrs:{span:24}},[n("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-refresh",loading:t.optLoading},on:{click:t.optimize}},[t._v("优化数据表 ")]),n("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-download",loading:t.downloading},on:{click:t.download}},[t._v(" 下载数据库备份")])],1)],1)],1),n("div",{staticClass:"databasemsg_footer"},[n("el-row",[n("el-col",{attrs:{span:24}},[n("span",[t._v(" 总表数："+t._s(t.total_count)+" ")]),n("span",[t._v(" 总行数："+t._s(t.total_rows)+" ")]),n("span",[t._v(" 总大小："+t._s(t.total_size)+" ")])])],1)],1),n("div",{staticClass:"databasemsg_table"},[n("el-table",{staticStyle:{width:"100%"},attrs:{data:t.tableData,border:""}},[n("div",{attrs:{slot:"empty"},slot:"empty"},[!t.tableData.length&&t.tableLoading?n("span",[n("i",{staticClass:"el-icon-loading"}),t._v(" 正在加载 ... ")]):t._e(),t.tableData.length||t.tableLoading?t._e():n("span",[t._v("暂无数据")])]),n("el-table-column",{attrs:{prop:"name",label:"表名称"}}),n("el-table-column",{attrs:{prop:"rows",label:"表行数"}}),n("el-table-column",{attrs:{prop:"size",label:"表大小"}})],1)],1)])},r=[],o=(n("d3b7"),n("3ca3"),n("ddb0"),n("2b3d"),n("96cf"),n("1da1")),s=n("51bf"),c={metaInfo:{title:"数据库状态"},data:function(){return{tableLoading:!1,tableData:[],total_count:void 0,total_rows:void 0,total_size:void 0,optLoading:!1,downloading:!1}},methods:{getData:function(){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function e(){var n,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.tableLoading=!0,e.next=3,Object(s["d"])();case 3:if(n=e.sent,a=n.data,200===a.status){e.next=7;break}return e.abrupt("return",!1);case 7:t.tableData=a.data.report_array,t.total_count=a.data.total_count,t.total_rows=a.data.total_rows,t.total_size=a.data.total_size,t.tableLoading=!1;case 12:case"end":return e.stop()}}),e)})))()},optimize:function(){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function e(){var n,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.optLoading=!0,e.next=3,Object(s["f"])();case 3:if(n=e.sent,a=n.data,200===a.status){e.next=7;break}return e.abrupt("return",!1);case 7:t.getData(),t.$message({message:"优化成功!",type:"success"}),t.optLoading=!1;case 10:case"end":return e.stop()}}),e)})))()},download:function(){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function e(){var n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.downloading=!0,e.next=3,Object(s["c"])();case 3:n=e.sent,t.downloadBinary(n.data,n.headers),t.downloading=!1;case 6:case"end":return e.stop()}}),e)})))()},downloadBinary:function(t,e){return Object(o["a"])(regeneratorRuntime.mark((function n(){var a,r,o;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:a=new Blob([t],{type:"".concat(t.type,";charset=utf-8")}),r=document.createElement("a"),o=window.URL.createObjectURL(a),r.href=o,r.download=e.file_name,document.body.appendChild(r),r.click(),document.body.removeChild(r);case 8:case"end":return n.stop()}}),n)})))()}},created:function(){this.getData()}},i=c,u=(n("7e4f"),n("2877")),l=Object(u["a"])(i,a,r,!1,null,"e3ef027c",null);e["default"]=l.exports}}]);