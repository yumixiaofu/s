(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["SupportTicket~31ecd969"],{"129f":function(t,e){t.exports=Object.is||function(t,e){return t===e?0!==t||1/t===1/e:t!=t&&e!=e}},"3e9e":function(t,e,a){},"841c":function(t,e,a){"use strict";var r=a("d784"),n=a("825a"),i=a("1d80"),s=a("129f"),o=a("14c3");r("search",1,(function(t,e,a){return[function(e){var a=i(this),r=void 0==e?void 0:e[t];return void 0!==r?r.call(e,a):new RegExp(e)[t](String(a))},function(t){var r=a(e,t,this);if(r.done)return r.value;var i=n(t),c=String(this),u=i.lastIndex;s(u,0)||(i.lastIndex=0);var l=o(i,c);return s(i.lastIndex,u)||(i.lastIndex=u),null===l?-1:l.index}]}))},"8a83":function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"workOrder"},[r("h5",{staticClass:"mt-0"},[t._v("与客户沟通的所有工单记录，不同管理员只能访问自己所在部门的工单。")]),t.haveNew?r("el-alert",{staticStyle:{"margin-bottom":"10px"},attrs:{title:"请注意，有新的未查看的工单，请及时处理",type:"warning",closable:!1}}):t._e(),r("audio",{attrs:{preload:"auto",id:"audio",src:a("eb41")}}),r("div",{staticClass:"autorefresh"},[r("span",{staticStyle:{"font-size":"12px",color:"#798494","margin-right":"10px"}},[t._v("自动刷新")]),r("el-select",{style:{width:"160px"},attrs:{size:"small",placeholder:"请选择"},on:{change:t.autoRefreshHandleClick},model:{value:t.autoRefreshTime,callback:function(e){t.autoRefreshTime=e},expression:"autoRefreshTime"}},[r("el-option",{attrs:{label:"不刷新",value:"never"}}),r("el-option",{attrs:{label:"30秒",value:"0.5"}}),r("el-option",{attrs:{label:"1分钟",value:"1"}}),r("el-option",{attrs:{label:"2分钟",value:"2"}}),r("el-option",{attrs:{label:"3分钟",value:"3"}}),r("el-option",{attrs:{label:"10分钟",value:"10"}}),r("el-option",{attrs:{label:"15分钟",value:"15"}}),r("el-option",{attrs:{label:"30分钟",value:"30"}})],1)],1),r("el-tabs",{attrs:{type:"card"},on:{"tab-click":t.handleClick},model:{value:t.activeName,callback:function(e){t.activeName=e},expression:"activeName"}},t._l(t.statusCustomOptions,(function(t,e){return r("el-tab-pane",{key:e,attrs:{label:t.title,name:t.id}})})),1),r("div",{staticClass:"search_warpper"}),r("el-row",{staticClass:"mt-10 mb-10"},[r("el-col",{attrs:{md:24}},[r("el-button",{attrs:{size:"small",type:"success",icon:"el-icon-plus"},on:{click:t.newTicketHandleClick}},[t._v("新建工单")]),r("el-button",{staticClass:"ml-10",attrs:{size:"small"},on:{click:t.changeSearchWarpper}},[t._v(t._s(t.searchWarpper?"收起搜索":"高级搜索")+" ")])],1)],1),r("transition",{attrs:{name:"el-zoom-in-top"}},[t.searchWarpper?[r("el-form",{ref:"elForm",staticClass:"unfold-search mt-10 mb-20",attrs:{inline:"",model:t.search,"label-width":"80px"}},[r("el-form-item",{attrs:{prop:"uid",label:"客户"}},[r("el-autocomplete",{style:{width:"160px"},attrs:{"trigger-on-focus":!0,size:"small","fetch-suggestions":t.querySearchAsync,placeholder:"请输入用户"},on:{input:t.clearUid,select:t.handleSelect},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.item;return[r("el-row",[r("el-col",{attrs:{span:24}},[r("span",{staticStyle:{"font-size":"14px"}},[t._v(t._s(a.username))]),r("span",[t._v(t._s(a.companyname?" ("+a.companyname+")":""))]),r("span",[t._v(t._s(a.id?" - #"+a.id:""))])]),r("el-col",{staticStyle:{"margin-top":"-10px"},attrs:{span:24}},[r("span",{staticStyle:{"font-size":"12px",color:"#999"}},[t._v(t._s(a.email))])])],1)]}}],null,!1,1605673202),model:{value:t.search.username,callback:function(e){t.$set(t.search,"username",e)},expression:"search.username"}})],1),r("el-form-item",{attrs:{prop:"dptid",label:"部门"}},[r("el-select",{style:{width:"160px"},attrs:{size:"small",placeholder:"不限",clearable:""},model:{value:t.search.dptid,callback:function(e){t.$set(t.search,"dptid",e)},expression:"search.dptid"}},t._l(t.deptOptions,(function(t,e){return r("el-option",{key:t.id+e,attrs:{label:t.name,value:t.id}})})),1)],1),r("el-form-item",{attrs:{prop:"status",label:"状态"}},[r("el-select",{style:{width:"160px"},attrs:{size:"small",clearable:"",placeholder:"请选择状态"},model:{value:t.search.status,callback:function(e){t.$set(t.search,"status",e)},expression:"search.status"}},t._l(t.statusOptions,(function(t,e){return r("el-option",{key:t.id+e,style:{color:t.color},attrs:{label:t.title,value:t.id}})})),1)],1),r("el-form-item",{attrs:{prop:"priority",label:"优先级"}},[r("el-select",{style:{width:"160px"},attrs:{size:"small",placeholder:"不限",clearable:""},model:{value:t.search.priority,callback:function(e){t.$set(t.search,"priority",e)},expression:"search.priority"}},t._l(t.priorityLevelOptions,(function(t,e){return r("el-option",{key:t.id+e,attrs:{label:t.name,value:t.id}})})),1)],1),r("el-form-item",{attrs:{prop:"content",label:"主题/内容"}},[r("el-input",{style:{width:"160px"},attrs:{size:"small"},nativeOn:{keyup:function(e){return!e.type.indexOf("key")&&t._k(e.keyCode,"enter",13,e.key,"Enter")?null:t.searchHandleClick(e)}},model:{value:t.search.content,callback:function(e){t.$set(t.search,"content",e)},expression:"search.content"}})],1),r("el-form-item",{attrs:{prop:"tid",label:"工单编号"}},[r("el-input",{style:{width:"160px"},attrs:{size:"small"},nativeOn:{keyup:function(e){return!e.type.indexOf("key")&&t._k(e.keyCode,"enter",13,e.key,"Enter")?null:t.searchHandleClick(e)}},model:{value:t.search.tid,callback:function(e){t.$set(t.search,"tid",e)},expression:"search.tid"}})],1),r("el-form-item",{attrs:{label:" "}},[r("el-button",{attrs:{size:"mini",type:"primary"},on:{click:t.searchHandleClick}},[t._v("查询")]),r("el-button",{attrs:{size:"mini"},on:{click:t.resetHandleClick}},[t._v("重置")])],1)],1)]:t._e()],2),r("el-table",{staticClass:"mt-10",staticStyle:{width:"100%"},attrs:{data:t.ticketTableData,border:""},on:{"sort-change":t.sortChange,"selection-change":t.handleSelectionChange}},[r("div",{attrs:{slot:"empty"},slot:"empty"},[!t.ticketTableData.length&&t.tableLoading?r("span",[r("i",{staticClass:"el-icon-loading"}),t._v(" 正在加载 ... ")]):t._e(),t.ticketTableData.length||t.tableLoading?t._e():r("span",[t._v("暂无数据")])]),r("el-table-column",{attrs:{type:"selection",width:"45"}}),r("el-table-column",{attrs:{prop:"id",label:"ID",sortable:"",width:"80"},scopedSlots:t._u([{key:"default",fn:function(e){return[r("router-link",{attrs:{to:{path:"/support-ticket-detail",query:{id:e.row.id,tid:e.row.tid}}}},[r("el-link",{on:{click:function(a){return t.toDetail(e.row.id,e.row.tid)}}},[t._v(t._s(e.row.tid))])],1)]}}])}),r("el-table-column",{attrs:{prop:"title",label:"主题",sortable:""},scopedSlots:t._u([{key:"default",fn:function(e){return[r("router-link",{attrs:{to:{path:"/support-ticket-detail",query:{id:e.row.id,tid:e.row.tid}}}},[r("el-link",{style:{"font-weight":e.row.admin_unread?"600":"400"},on:{click:function(a){return t.toDetail(e.row.id,e.row.tid)}}},[t._v(t._s(e.row.title))])],1),e.row.admin_unread?r("span",{staticClass:"newIcon"},[r("i",{staticClass:"iconfont icon-new"})]):t._e()]}}])}),r("el-table-column",{attrs:{prop:"user_name",label:"提交人",sortable:""},scopedSlots:t._u([{key:"default",fn:function(e){return[0===e.row.uid?r("span",[t._v(t._s(e.row.user_name))]):r("router-link",{attrs:{to:{path:"/customer-view/abstract",query:{id:e.row.uid}}}},[r("el-link",{on:{click:function(a){return t.goToView(e.row.uid)}}},[t._v(t._s(e.row.user_name))])],1),1===e.row.is_receive?r("el-tag",{staticClass:"ml-10",attrs:{type:"mini"}},[t._v("下游API提交")]):t._e(),1===e.row.is_deliver?r("el-tag",{staticClass:"ml-10",attrs:{type:"mini"}},[t._v("API至上游")]):t._e()]}}])}),r("el-table-column",{attrs:{prop:"status_title",label:"状态",sortable:"",width:"90"},scopedSlots:t._u([{key:"default",fn:function(e){return[1===e.row.deliver_status||2===e.row.deliver_status?r("span",{style:{color:e.row.statusColor}},[t._v(" "+t._s(e.row.deliver_status_title)+" ")]):r("span",{style:{color:e.row.statusColor}},[t._v(t._s(e.row.status_title))])]}}])}),r("el-table-column",{attrs:{prop:"handle_name",label:"处理人",sortable:"",width:"90"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[t._v(" "+t._s(a.handle_name||"-")+" ")]}}])}),r("el-table-column",{attrs:{prop:"department_name",label:"部门",sortable:"",width:"120"}}),r("el-table-column",{attrs:{prop:"create_time",label:"提交时间",sortable:"",width:"135",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){return[t._v(" "+t._s(e.row.create_time?t.$moment(1e3*e.row.create_time).format("YYYY-MM-DD HH:mm"):"-")+" ")]}}])}),r("el-table-column",{attrs:{prop:"last_reply_time",label:"上次回复",sortable:"",width:"120"},scopedSlots:t._u([{key:"default",fn:function(e){return[t._v(" "+t._s(t.$timeDiff(1e3*e.row.last_reply_time))+" ")]}}])})],1),r("el-row",{staticClass:"mt-10"},[r("el-col",{attrs:{md:24}},[t._v(" 选中的项目: "),r("el-button",{attrs:{size:"small",loading:t.closeLoading},on:{click:t.closeTicketHandleClick}},[t._v("关闭")]),r("el-button",{attrs:{size:"small",type:"danger",loading:t.deleteLoading},on:{click:t.deleteTicketHandleClick}},[t._v("删除")])],1)],1),t.adPageFlag&&!t.OriginalSearch?r("el-pagination",{attrs:{"current-page":t.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":t.search.limit,layout:"total, prev, pager, next, jumper",total:t.vuexTotal},on:{"current-change":t.adSizeChange,"update:currentPage":function(e){return t.$set(t.search,"page",e)},"update:current-page":function(e){return t.$set(t.search,"page",e)},"update:pageSize":function(e){return t.$set(t.search,"limit",e)},"update:page-size":function(e){return t.$set(t.search,"limit",e)}}}):r("el-pagination",{staticClass:"mt-10",attrs:{"current-page":t.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":t.search.limit,total:t.total,layout:"total, sizes, prev, pager, next, jumper"},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange,"update:currentPage":function(e){return t.$set(t.search,"page",e)},"update:current-page":function(e){return t.$set(t.search,"page",e)},"update:pageSize":function(e){return t.$set(t.search,"limit",e)},"update:page-size":function(e){return t.$set(t.search,"limit",e)}}})],1)},n=[],i=(a("4160"),a("b0c0"),a("a9e3"),a("ac1f"),a("841c"),a("159b"),a("96cf"),a("1da1")),s=a("dd77"),o=a("af9c"),c=a("a200"),u=a("7ce2"),l=a.n(u),d={metaInfo:{title:"工单"},inject:["reload"],data:function(){return{haveNew:!1,musicTimer:void 0,timer:void 0,searchWarpper:!1,tableLoading:!1,adPageFlag:!1,OriginalSearch:void 0,first:!0,vuexTotal:this.$store.state.searchObj.total,mergeLoading:!1,closeLoading:!1,deleteLoading:!1,timeWidth:window.document.body.clientWidth>768?"200px":"100px",activeName:"pending",search:{tid:void 0,email:void 0,content:void 0,priority:void 0,dptid:void 0,uid:void 0,status:void 0,orderby:"last_reply_time",sorting:"desc",limit:Number(localStorage.getItem("limit"))||50,page:1},total:0,deptOptions:[],customerOptions:[],statusOptions:[],statusCustomOptions:[{title:"待处理",id:"pending"},{title:"已回复",id:"2"},{title:"等待中",id:"5"},{title:"关闭",id:"4"},{title:"全部",id:"0"}],priorityLevelOptions:[{id:"high",name:"高"},{id:"medium",name:"中"},{id:"low",name:"低"}],autoRefreshTime:"never",ticketTableData:[],selectedTableData:[],selectedTableDataIds:[],btnLoading:!1}},created:function(){var t=this;if(this.getData(),this.getDepartmentData(),this.$route.query.AutoRefresh){var e=this.$route.query.AutoRefresh;this.autoRefreshTime=e,"never"!==e||"custom"!==e?this.timer=setInterval((function(){t.getData()}),60*parseFloat(e)*1e3):clearInterval(this.timer)}},methods:{handleClick:function(t){window.cancel(),this.search.status=t.name,this.getData()},changeSearchWarpper:function(){this.searchWarpper=!this.searchWarpper},adSearch:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function a(){var r,n,i,o;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return r={},Object.assign(r,e.$route.query),r.page=t,r.table=e.$route.query.type,r.limit=Number(localStorage.getItem("limit"))||50,a.next=7,Object(s["a"])(r);case 7:n=a.sent,i=n.data,e.ticketTableData=i.data,e.vuexTotal=i.sum,e.btnLoading=!1,o=JSON.parse(JSON.stringify(e.$route.query)),o.page=t,delete o.request_time,e.$router.push({query:l()({},o)});case 16:case"end":return a.stop()}}),a)})))()},adSizeChange:function(t){this.adSearch(t)},clearUid:function(){this.search.uid=""},handleSelect:function(t){"notFound"!==t.type&&(this.search.username=t.username,this.search.uid=t.id)},querySearchAsync:function(t,e){var a=this;return Object(i["a"])(regeneratorRuntime.mark((function r(){var n,i,s;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.next=2,Object(o["f"])(t);case 2:if(n=r.sent,i=n.data,200===i.status){r.next=7;break}return a.$message.error(i.msg),r.abrupt("return");case 7:i.data.length?e(i.data):(s=[{username:"未找到相关数据",type:"notFound"}],e(s));case 8:case"end":return r.stop()}}),r)})))()},sortChange:function(t,e,a){this.search.orderby=t.prop,"ascending"===t.order?this.search.sorting="asc":this.search.sorting="desc",this.getData()},getData:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r,n,i,o,u,l;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.$route.query.type||t.OriginalSearch){e.next=20;break}return t.tableLoading=!0,t.adPageFlag=!0,a={},Object.assign(a,t.$route.query),a.table=t.$route.query.type,a.limit=Number(localStorage.getItem("limit"))||50,t.search.page=t.$route.query.page||1,delete a.type,e.next=11,Object(s["a"])(a);case 11:r=e.sent,n=r.data,t.ticketTableData=n.data,t.statusOptions=n.ticket_status,t.statusOptions.unshift({color:"#000000",id:0,title:"任意状态"}),t.vuexTotal=n.sum,t.tableLoading=!1,e.next=55;break;case 20:if(!t.$store.state.adFlag||!t.first){e.next=30;break}t.adPageFlag=t.$store.state.adFlag,t.ticketTableData=t.$store.state.searchObj.data,t.statusOptions=t.$store.state.searchObj.ticket_status,t.statusOptions.unshift({color:"#000000",id:0,title:"任意状态"}),t.vuexTotal=t.$store.state.searchObj.sum,t.first=!1,t.$store.commit("setAdFlag",!1),e.next=55;break;case 30:return t.ticketTableData=[],t.tableLoading=!0,e.next=34,Object(c["n"])(t.search);case 34:if(i=e.sent,o=i.data,200===o.status){e.next=39;break}return t.$message.error(o.msg),e.abrupt("return",!1);case 39:t.ticketTableData=o.data.list,t.haveNew=!1,u=0;case 42:if(!(u<o.data.list.length)){e.next=51;break}if(l=o.data.list[u],!l.admin_unread){e.next=48;break}return t.haveNew=!0,t.playMusic(),e.abrupt("return");case 48:u++,e.next=42;break;case 51:t.statusOptions=o.data.ticket_status,t.statusOptions.unshift({color:"#000000",id:0,title:"任意状态"}),t.total=o.data.sum,t.tableLoading=!1;case 55:case"end":return e.stop()}}),e)})))()},playMusic:function(){var t=document.querySelector("#audio"),e=1;t.addEventListener("ended",(function(){this.musicTimer=setTimeout((function(){if(e<2){try{t.play()}catch(a){}e++}}),0)}),!1);try{t.play()}catch(a){}},getUserData:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(c["k"])();case 2:if(a=e.sent,r=a.data,200===r.status){e.next=6;break}return e.abrupt("return",!1);case 6:t.customerOptions=r.data;case 7:case"end":return e.stop()}}),e)})))()},getDepartmentData:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(c["l"])();case 2:if(a=e.sent,r=a.data,200===r.status){e.next=6;break}return e.abrupt("return",!1);case 6:t.deptOptions=r.data;case 7:case"end":return e.stop()}}),e)})))()},goToView:function(t){this.$router.push({path:"/customer-view/abstract",query:{id:t}})},handleSizeChange:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.search.page=1,e.getData();case 2:case"end":return t.stop()}}),t)})))()},handleCurrentChange:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.getData();case 1:case"end":return t.stop()}}),t)})))()},searchHandleClick:function(){this.adPageFlag=!1,this.OriginalSearch=!0,this.activeName="",this.search.page=1,this.getData()},resetHandleClick:function(){this.activeName="",this.$refs.elForm.resetFields(),this.getData()},autoRefreshHandleClick:function(){this.$router.push({query:l()(this.$route.query,{AutoRefresh:this.autoRefreshTime})}),this.$message.success("设置成功")},showAllHandleClick:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.search.status=0,t.btnLoading=!0,e.next=4,t.getData();case 4:t.btnLoading=!1,t.$message.success("请求成功");case 6:case"end":return e.stop()}}),e)})))()},newTicketHandleClick:function(){this.$router.push("/add-support-ticket")},handleSelectionChange:function(t){var e=this;this.selectedTableData=t,(this.selectedTableData||[]).forEach((function(t){e.selectedTableDataIds.push(t.id)}))},mergeTicketHandleClick:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(0!==t.selectedTableData.length){e.next=4;break}t.$message.warning("请选择要操作的数据"),e.next=11;break;case 4:return t.mergeLoading=!0,e.next=7,Object(c["p"])({id:t.selectedTableDataIds});case 7:a=e.sent,r=a.data,200===r.status?t.getData():t.$message.warning(r.msg),t.mergeLoading=!1;case 11:case"end":return e.stop()}}),e)})))()},closeTicketHandleClick:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(0!==t.selectedTableData.length){e.next=4;break}t.$message.warning("请选择要操作的数据"),e.next=11;break;case 4:return t.closeLoading=!0,e.next=7,Object(c["c"])({id:t.selectedTableDataIds});case 7:a=e.sent,r=a.data,200===r.status?t.getData():t.$message.warning(r.msg),t.closeLoading=!1;case 11:case"end":return e.stop()}}),e)})))()},deleteTicketHandleClick:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:0===t.selectedTableData.length?t.$message.warning("请选择要操作的数据"):t.$confirm("此操作将永久删除该数据, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.deleteLoading=!0,e.next=3,Object(c["f"])({id:t.selectedTableDataIds});case 3:a=e.sent,r=a.data,200===r.status?t.getData():t.$message.warning(r.msg),t.deleteLoading=!1;case 7:case"end":return e.stop()}}),e)})))).catch((function(){}));case 1:case"end":return e.stop()}}),e)})))()},toDetail:function(t,e){this.$router.push({path:"/support-ticket-detail",query:{id:t,tid:e}})}},beforeDestroy:function(){this.$store.commit("searchQuery",{}),this.$store.commit("setAdFlag",!1),clearInterval(this.timer),clearInterval(this.musicTimer)},watch:{vuexData:function(t){this.adPageFlag=!0,this.ticketTableData=t.data,this.statusOptions=t.ticket_status,this.statusOptions.unshift({color:"#000000",id:0,title:"任意状态"}),this.vuexTotal=t.sum,this.OriginalSearch=!1,this.$store.commit("setAdFlag",!1),this.first=!1}},computed:{vuexData:function(){return this.$store.state.searchObj}},mounted:function(){}},p=d,h=(a("f926"),a("2877")),m=Object(h["a"])(p,r,n,!1,null,"0714c44e",null);e["default"]=m.exports},a200:function(t,e,a){"use strict";a.d(e,"j",(function(){return n})),a.d(e,"b",(function(){return i})),a.d(e,"n",(function(){return s})),a.d(e,"q",(function(){return o})),a.d(e,"i",(function(){return c})),a.d(e,"p",(function(){return u})),a.d(e,"c",(function(){return l})),a.d(e,"f",(function(){return d})),a.d(e,"a",(function(){return p})),a.d(e,"d",(function(){return h})),a.d(e,"e",(function(){return m})),a.d(e,"g",(function(){return f})),a.d(e,"m",(function(){return g})),a.d(e,"h",(function(){return b})),a.d(e,"k",(function(){return v})),a.d(e,"l",(function(){return k})),a.d(e,"o",(function(){return _})),a.d(e,"r",(function(){return w})),a.d(e,"s",(function(){return y})),a.d(e,"t",(function(){return O}));var r=a("a27e");function n(t){return Object(r["a"])({url:"add_ticket_page",params:t})}function i(t){return Object(r["a"])({url:"add_ticket",method:"post",data:t})}function s(t){return Object(r["a"])({url:"list_ticket",params:t})}function o(t){return Object(r["a"])({url:"reply_ticket",method:"post",data:t})}function c(t){return Object(r["a"])({url:"save_ticket_reply",method:"post",data:t})}function u(t){return Object(r["a"])({url:"merge_ticket",method:"post",data:t})}function l(t){return Object(r["a"])({url:"close_ticket",method:"post",data:t})}function d(t){return Object(r["a"])({url:"delete_ticket",method:"post",data:t})}function p(t){return Object(r["a"])({url:"add_ticket_note",method:"post",data:t})}function h(t){return Object(r["a"])({url:"delete_ticket_note",method:"post",data:t})}function m(t){return Object(r["a"])({url:"delete_ticket_reply",method:"post",data:t})}function f(t){return Object(r["a"])({url:"download_ticket_attachment",params:t})}function g(t){return Object(r["a"])({url:"list_ticket/"+t})}function b(t){return Object(r["a"])({url:"save_ticket",method:"post",data:t})}function v(){return Object(r["a"])({url:"getClient"})}function k(){return Object(r["a"])({url:"getTicketDepartment"})}function _(t){return Object(r["a"])({url:"hostbyuid",params:t})}function w(t){return Object(r["a"])({url:"ticket_receive",method:"put",data:t})}function y(t){return Object(r["a"])({url:"ticket_transfer_list",params:t})}function O(t){return Object(r["a"])({url:"ticket_transfer",method:"put",data:t})}},af9c:function(t,e,a){"use strict";a.d(e,"l",(function(){return n})),a.d(e,"k",(function(){return i})),a.d(e,"h",(function(){return s})),a.d(e,"a",(function(){return o})),a.d(e,"e",(function(){return c})),a.d(e,"o",(function(){return u})),a.d(e,"c",(function(){return l})),a.d(e,"i",(function(){return d})),a.d(e,"m",(function(){return p})),a.d(e,"j",(function(){return h})),a.d(e,"d",(function(){return m})),a.d(e,"n",(function(){return f})),a.d(e,"p",(function(){return g})),a.d(e,"b",(function(){return b})),a.d(e,"g",(function(){return v})),a.d(e,"f",(function(){return k}));var r=a("a27e");function n(t){return Object(r["a"])({url:"order/search_page",params:t})}function i(t){return Object(r["a"])({url:"order/search",params:t})}function s(t){return Object(r["a"])({url:"order/check",params:t})}function o(t){return Object(r["a"])({url:"order/cancel",params:t})}function c(t){return Object(r["a"])({url:"orders/delete",method:"delete",params:t})}function u(t){return Object(r["a"])({url:"order/create_page",params:t})}function l(t){return Object(r["a"])({url:"order/create",method:"post",data:t})}function d(t){return Object(r["a"])({url:"orders/"+t})}function p(t){return Object(r["a"])({url:"orders/set_config",params:t})}function h(t){return Object(r["a"])({url:"get_total",method:"post",data:t})}function m(t){return Object(r["a"])({url:"order/save_promo_code",method:"post",data:t})}function f(t){return Object(r["a"])({url:"orders/active",method:"post",data:t})}function g(){return Object(r["a"])({url:"order/promo_code_page"})}function b(t){return Object(r["a"])({url:"orders/change_status",method:"post",data:t})}function v(t){return Object(r["a"])({url:"order/order_commission",method:"post",data:t})}function k(t){return Object(r["a"])({url:"order/getclients",params:{username:t}})}},dd77:function(t,e,a){"use strict";a.d(e,"a",(function(){return n}));var r=a("a27e");function n(t){return Object(r["a"])({url:"searchfornamelist",method:"post",data:t})}},eb41:function(t,e,a){t.exports=a.p+"media/ticket_music.3882b501.mp3"},f926:function(t,e,a){"use strict";var r=a("3e9e"),n=a.n(r);n.a}}]);