(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["OrderDetail~31ecd969"],{"13d5":function(e,t,r){"use strict";var a=r("23e7"),n=r("d58f").left,o=r("a640"),s=r("ae40"),i=o("reduce"),l=s("reduce",{1:0});a({target:"Array",proto:!0,forced:!i||!l},{reduce:function(e){return n(this,e,arguments.length,arguments.length>1?arguments[1]:void 0)}})},"1dde":function(e,t,r){var a=r("d039"),n=r("b622"),o=r("2d00"),s=n("species");e.exports=function(e){return o>=51||!a((function(){var t=[],r=t.constructor={};return r[s]=function(){return{foo:1}},1!==t[e](Boolean).foo}))}},"6c3c":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"box"},[r("h2",[e._v("订单详情")]),r("el-divider"),r("el-form",{attrs:{"label-width":"100px"}},[r("el-row",{attrs:{gutter:15}},[r("el-row",[r("el-col",{staticStyle:{opacity:"0"},attrs:{lg:4,xl:4}},[e._v(".")]),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"时间"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.create_time?e.$moment(1e3*e.orderDetail.create_time).format("YYYY-MM-DD hh:mm"):"-"))])])],1),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"付款方式"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.payment))])])],1)],1),r("el-row",[r("el-col",{staticStyle:{opacity:"0"},attrs:{lg:4,xl:4}},[e._v(".")]),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"订单#"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.id))])])],1),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"金额"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.amount))])])],1)],1),r("el-row",[r("el-col",{staticStyle:{opacity:"0"},attrs:{lg:4,xl:4}},[e._v(".")]),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"账单#"}},[e.orderDetail.invoiceid?r("router-link",{staticClass:"order-info",attrs:{to:{path:"/bill-detail",query:{id:e.orderDetail.invoiceid,uid:e.orderDetail.uid}}}},[r("el-link",{attrs:{type:"primary",underline:!1},on:{click:function(t){return e.toBillDetail(e.orderDetail.invoiceid,e.orderDetail.uid)}}},[e._v(e._s(e.orderDetail.invoiceid_zh))])],1):r("span",{staticClass:"order-info",staticStyle:{width:"100%"}},[e._v(e._s(e.orderDetail.invoiceid_zh))])],1)],1),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"状态"}},[r("el-select",{style:{width:"95%"},attrs:{size:"small",clearable:""},on:{change:function(t){return e.changeStatus(e.ordersActiveForm.status)}},model:{value:e.ordersActiveForm.status,callback:function(t){e.$set(e.ordersActiveForm,"status",t)},expression:"ordersActiveForm.status"}},e._l(e.orderStatus,(function(e,t){return r("el-option",{key:t,style:{color:e.color},attrs:{label:e.name,value:t}})})),1)],1)],1)],1),r("el-row",[r("el-col",{staticStyle:{opacity:"0"},attrs:{lg:4,xl:4}},[e._v(".")]),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"客户"}},[r("router-link",{style:{width:"95%"},attrs:{to:{path:"/customer-view/abstract",query:{id:e.orderDetail.uid}}}},[r("el-link",{attrs:{type:"primary",underline:!1},on:{click:function(t){return e.toCustomerDetail(e.orderDetail.uid)}}},[e._v(e._s(e.orderDetail.username))])],1)],1)],1),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"IP地址"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.ip))])])],1)],1),r("el-row",[r("el-col",{staticStyle:{opacity:"0"},attrs:{lg:4,xl:4}},[e._v(".")]),r("el-col",{attrs:{md:18,lg:8,xl:8}},[r("el-form-item",{staticClass:"mb-0",attrs:{label:"优惠码"}},[r("span",{staticClass:"order-info",style:{width:"95%"}},[e._v(e._s(e.orderDetail.promo_code))])])],1)],1)],1)],1),r("h3",[e._v("订单项目")]),r("el-table",{staticStyle:{width:"100%"},attrs:{data:e.orderItemTableData,"summary-method":e.getSummaries}},[r("el-table-column",{attrs:{prop:"id",label:"ID",width:"80"}}),r("el-table-column",{attrs:{prop:"name",label:"条目"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("router-link",{attrs:{to:{path:"/customer-view/product-innerpage",query:{id:e.orderDetail.uid,hid:t.row.id}}}},[r("el-link",{on:{click:function(r){return e.toProductDetail(t.row.id)}}},[e._v(e._s(t.row.name))])],1)]}}])}),r("el-table-column",{attrs:{prop:"description",label:"描述"}}),r("el-table-column",{attrs:{prop:"billingcycle",label:"付款周期"}}),r("el-table-column",{attrs:{prop:"amount",sortable:"",label:"金额",width:"200"}}),r("el-table-column",{attrs:{sortable:"",label:"状态",width:"200"},scopedSlots:e._u([{key:"default",fn:function(t){var a=t.row;return["待审核"===a.domainstatus?r("span",{staticStyle:{color:"red"}},[e._v(e._s(a.domainstatus))]):"已激活"===a.domainstatus?r("span",{staticStyle:{color:"green"}},[e._v(e._s(a.domainstatus))]):"被取消"===a.domainstatus?r("span",{staticStyle:{color:"gray"}},[e._v(e._s(a.domainstatus))]):r("span",[e._v(e._s(a.domainstatus))])]}}])}),r("el-table-column",{attrs:{prop:"invoice_id",sortable:"",label:"付款状态",width:"200"},scopedSlots:e._u([{key:"default",fn:function(t){var a=t.row;return[r("span",{style:{color:a.invoice_id.color}},[e._v(e._s(a.invoice_id.name))])]}}])}),r("el-table-column",{attrs:{prop:"",sortable:"",label:"操作",width:"300"},scopedSlots:e._u([{key:"default",fn:function(t){var a=t.row;return[r("el-form",{attrs:{"label-width":"100px"}},[0===a.serverid?r("div",[r("el-form-item",[r("el-checkbox",{model:{value:a.sendwolcome,callback:function(t){e.$set(a,"sendwolcome",t)},expression:"row.sendwolcome"}},[e._v("发送产品开通邮件")])],1)],1):r("div",[r("el-form-item",{attrs:{label:"服务器:"}},[r("el-select",{attrs:{size:"small",clearable:""},model:{value:a.serverid,callback:function(t){e.$set(a,"serverid",t)},expression:"row.serverid"}},e._l(a.server_group,(function(e,t){return r("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1),r("el-form-item",[r("el-checkbox",{model:{value:a.runcreate,callback:function(t){e.$set(a,"runcreate",t)},expression:"row.runcreate"}},[e._v("执行自动开通模块")])],1),r("el-form-item",[r("el-checkbox",{model:{value:a.sendwolcome,callback:function(t){e.$set(a,"sendwolcome",t)},expression:"row.sendwolcome"}},[e._v("发送产品开通邮件")])],1)],1)])]}}])})],1),r("el-row",[r("el-col",{staticClass:"tar subtotal",attrs:{span:24}},[e._v("合计: "+e._s(e.orderDetail.total))])],1),r("el-row",[r("el-col",{staticClass:"tac mt-20",attrs:{span:24}},[r("el-button",{attrs:{size:"small",type:"success",icon:"el-icon-success",loading:e.examLoading},on:{click:e.examPassHandleClick}},[e._v("核验通过")]),r("el-button",{attrs:{size:"small",loading:e.cancelLoading},on:{click:e.cancelOrderHandleClick}},[e._v("取消订单")]),r("el-button",{attrs:{size:"small",type:"danger",loading:e.deleteLoading},on:{click:e.deleteOrderHandleClick}},[e._v("删除订单")])],1)],1)],1)},n=[],o=(r("a623"),r("4160"),r("d81d"),r("13d5"),r("a9e3"),r("159b"),r("96cf"),r("1da1")),s=r("af9c"),i={metaInfo:{title:"订单详情"},data:function(){return{examLoading:!1,cancelLoading:!1,deleteLoading:!1,id:Number(this.$route.query.id),orderDetail:"undefined",orderItemTableData:[],orderStatus:{},ordersActiveForm:{id:Number(this.$route.query.id),status:"",host:[{id:"",username:"",password:"",server:"",runcreate:!0,sendwolcome:!0}]}}},methods:{getOrderDetail:function(){var e=this;return Object(o["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(s["j"])(e.id);case 2:r=t.sent,a=r.data,200!==a.status?e.$message.error(a.msg):(e.orderDetail=a.data,e.orderItemTableData=a.data.server,e.ordersActiveForm.status=e.orderDetail.status,e.orderStatus=a.order_status);case 5:case"end":return t.stop()}}),t)})))()},toBillDetail:function(e,t){this.$router.push({path:"/bill-detail",query:{id:e,uid:t}})},toCustomerDetail:function(e){this.$router.push({path:"/customer-view/abstract",query:{id:e}})},changeStatus:function(e){var t=this;return Object(o["a"])(regeneratorRuntime.mark((function r(){var a,n;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.next=2,Object(s["b"])({id:t.id,status:e});case 2:a=r.sent,n=a.data,200!==n.status?t.$message.error(n.msg):(t.$message.success(n.msg),t.getOrderDetail());case 5:case"end":return r.stop()}}),r)})))()},toProductDetail:function(e){this.$router.push({path:"/customer-view/product-innerpage",query:{id:this.orderDetail.uid,hid:e}})},getSummaries:function(e){var t=e.columns,r=e.data,a=[];return t.forEach((function(e,t){if(0!==t){if("amount"===e.property){var n=r.map((function(t){return Number(t[e.property])}));n.every((function(e){return isNaN(e)}))?a[t]="N/A":(a[t]=n.reduce((function(e,t){var r=Number(t);return isNaN(r)?e:e+t}),0),a[t]+=" 元")}}else a[t]="总计"})),a},examPassHandleClick:function(){var e=this;this.$confirm("确定审核?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(o["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.ordersActiveForm.host=[],(e.orderItemTableData||[]).forEach((function(t,r){e.ordersActiveForm.host.push({id:t.id,username:t.username,password:t.password,server:t.serverid,runcreate:t.runcreate?1:0,sendwolcome:t.sendwolcome?1:0})})),e.examLoading=!0,t.next=5,Object(s["o"])(e.ordersActiveForm);case 5:r=t.sent,a=r.data,200===a.status?(e.getOrderDetail(),e.$message.success(a.msg)):e.$message.warning(a.msg),e.examLoading=!1;case 9:case"end":return t.stop()}}),t)})))).catch((function(){}))},cancelOrderHandleClick:function(){var e=this;this.$confirm("确定取消?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){e.cancelLoading=!0,Object(s["a"])({ids:e.id}).then((function(t){200===t.data.status?(e.getOrderDetail(),e.$message.success(t.data.msg)):e.$message.warning(t.data.msg),e.cancelLoading=!1}))})).catch((function(){}))},cancelAndRefundHandleClick:function(){},setCheatHandleClick:function(){},resetToPendingHandleClick:function(){},deleteOrderHandleClick:function(){var e=this;this.$confirm("此操作将永久删除该数据, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(o["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.deleteLoading=!0,t.next=3,Object(s["e"])({ids:e.id});case 3:r=t.sent,a=r.data,200===a.status?(e.$message.success(a.msg),e.$router.go(-1)):e.$message.warning(a.msg),e.deleteLoading=!1;case 7:case"end":return t.stop()}}),t)})))).catch((function(){}))}},created:function(){this.getOrderDetail()}},l=i,c=(r("fe8a"),r("2877")),u=Object(c["a"])(l,a,n,!1,null,"4e2a6142",null);t["default"]=u.exports},a623:function(e,t,r){"use strict";var a=r("23e7"),n=r("b727").every,o=r("a640"),s=r("ae40"),i=o("every"),l=s("every");a({target:"Array",proto:!0,forced:!i||!l},{every:function(e){return n(this,e,arguments.length>1?arguments[1]:void 0)}})},af9c:function(e,t,r){"use strict";r.d(t,"m",(function(){return n})),r.d(t,"l",(function(){return o})),r.d(t,"i",(function(){return s})),r.d(t,"a",(function(){return i})),r.d(t,"e",(function(){return l})),r.d(t,"p",(function(){return c})),r.d(t,"c",(function(){return u})),r.d(t,"j",(function(){return d})),r.d(t,"n",(function(){return m})),r.d(t,"k",(function(){return f})),r.d(t,"d",(function(){return p})),r.d(t,"o",(function(){return v})),r.d(t,"q",(function(){return b})),r.d(t,"b",(function(){return h})),r.d(t,"h",(function(){return g})),r.d(t,"f",(function(){return w})),r.d(t,"g",(function(){return _}));var a=r("a27e");function n(e){return Object(a["a"])({url:"order/search_page",params:e})}function o(e){return Object(a["a"])({url:"order/search",params:e})}function s(e){return Object(a["a"])({url:"order/check",params:e})}function i(e){return Object(a["a"])({url:"order/cancel",params:e})}function l(e){return Object(a["a"])({url:"orders/delete",method:"delete",params:e})}function c(e){return Object(a["a"])({url:"order/create_page",params:e})}function u(e){return Object(a["a"])({url:"order/create",method:"post",data:e})}function d(e){return Object(a["a"])({url:"orders/"+e})}function m(e){return Object(a["a"])({url:"orders/set_config",params:e})}function f(e){return Object(a["a"])({url:"get_total",method:"post",data:e})}function p(e){return Object(a["a"])({url:"order/save_promo_code",method:"post",data:e})}function v(e){return Object(a["a"])({url:"orders/active",method:"post",data:e})}function b(){return Object(a["a"])({url:"order/promo_code_page"})}function h(e){return Object(a["a"])({url:"orders/change_status",method:"post",data:e})}function g(e){return Object(a["a"])({url:"order/order_commission",method:"post",data:e})}function w(e){return Object(a["a"])({url:"order/getclients",params:{username:e}})}function _(e){return Object(a["a"])({url:"invoice/renew",method:"get",params:e})}},d58f:function(e,t,r){var a=r("1c0b"),n=r("7b0b"),o=r("44ad"),s=r("50c4"),i=function(e){return function(t,r,i,l){a(r);var c=n(t),u=o(c),d=s(c.length),m=e?d-1:0,f=e?-1:1;if(i<2)while(1){if(m in u){l=u[m],m+=f;break}if(m+=f,e?m<0:d<=m)throw TypeError("Reduce of empty array with no initial value")}for(;e?m>=0:d>m;m+=f)m in u&&(l=r(l,u[m],m,c));return l}};e.exports={left:i(!1),right:i(!0)}},d81d:function(e,t,r){"use strict";var a=r("23e7"),n=r("b727").map,o=r("1dde"),s=r("ae40"),i=o("map"),l=s("map");a({target:"Array",proto:!0,forced:!i||!l},{map:function(e){return n(this,e,arguments.length>1?arguments[1]:void 0)}})},e7c9:function(e,t,r){},fe8a:function(e,t,r){"use strict";var a=r("e7c9"),n=r.n(a);n.a}}]);