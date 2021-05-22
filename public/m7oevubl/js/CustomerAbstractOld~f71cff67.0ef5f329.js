(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["CustomerAbstractOld~f71cff67"],{"114e":function(t,e,r){"use strict";r.r(e);var a=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"customerabstract"},[r("div",{staticClass:"customerabstract_view"},[r("el-row",{attrs:{gutter:20}},[r("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("客户信息")]),r("div",{staticClass:"customerabstract_lis"},[r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("姓名")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.username))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("公司")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.companyname))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("国家")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.country))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("省")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.province))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("城市")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.city))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("地址")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.summary.address1))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("手机号")])]),t.summary.phonenumber?r("el-col",{attrs:{span:16}},[r("div",[t._v(" "+t._s(t.summary.phonenumber)+" "),r("el-tooltip",{attrs:{effect:"light",content:"已绑定",placement:"right"}},[r("i",{staticClass:"el-icon-circle-check",staticStyle:{color:"green",cursor:"pointer","font-weight":"600"}})])],1)]):t._e()],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("邮箱")])]),t.summary.email?r("el-col",{attrs:{span:16}},[r("div",[t._v(" "+t._s(t.summary.email)+" "),r("el-tooltip",{attrs:{effect:"light",content:"已绑定",placement:"right"}},[r("i",{staticClass:"el-icon-circle-check binded"})])],1)]):t._e()],1),r("el-row",[r("el-col",{attrs:{span:8}},[t._v("QQ")]),r("el-col",{attrs:{span:16}},[t._v(t._s(t.summary.qq))])],1),r("el-row",[r("el-col",{attrs:{span:8}},[t._v("销售")]),r("el-col",{attrs:{span:16}},[t._v(t._s(t.summary.saler))])],1)],1),r("div",{staticClass:"customerabstract_btns"},[r("el-row",[r("el-col",{attrs:{span:24}},[r("i",{staticClass:"el-icon-s-custom"}),r("a",{staticClass:"customer-login",attrs:{href:t.summary.home_url,target:"_blank"},on:{mousedown:t.toShopping}},[t._v("以该客户登录")])])],1)],1)])]),r("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("财务/账单")]),r("div",{staticClass:"customerabstract_lis"},[t._l(t.invoices,(function(e,a,n){return r("el-row",{key:n},[r("el-col",{attrs:{span:6}},[r("div",{style:{color:e.status_zh.color}},[t._v(t._s(e.status_zh.name))])]),r("el-col",{attrs:{span:18}},[r("div",[t._v(t._s(e.num)+"("+t._s(e.total)+")")])])],1)})),r("div",{staticStyle:{margin:"10px 0","font-weight":"700"}},[t._v("收入")]),r("el-row",[r("el-col",{attrs:{span:6}},[r("div",[t._v("总收入")])]),r("el-col",{attrs:{span:18}},[r("div",[t._v(t._s(t.intotal))])])],1),r("el-row",[r("el-col",{attrs:{span:6}},[r("div",[t._v("总支出")])]),r("el-col",{attrs:{span:18}},[r("div",[t._v(t._s(t.outtotal))])])],1),r("el-row",[r("el-col",{attrs:{span:6}},[r("div",[t._v("收入")])]),r("el-col",{attrs:{span:18}},[r("div",[t._v(t._s(t.income))])])],1),r("el-row",[r("el-col",{attrs:{span:6}},[r("div",[t._v("余额")])]),r("el-col",{attrs:{span:18}},[r("div",[t._v(t._s(t.credit))])])],1)],2),r("div",{staticClass:"customerabstract_btns"},[r("el-row",[r("el-col",{attrs:{span:24}},[r("el-link",{attrs:{icon:"el-icon-tickets"},on:{click:t.addBillHandleClick}},[t._v("添加账单")])],1),r("el-col",{attrs:{span:24}},[r("el-link",{attrs:{icon:"el-icon-document"},on:{click:function(e){t.dialogVisible=!0}}},[t._v("创建充值账单")])],1),r("el-col",{attrs:{span:24}},[r("el-link",{attrs:{icon:"el-icon-coin"},on:{click:t.toBalance}},[t._v("余额管理")])],1)],1)],1)])]),r("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("产品/服务")]),r("div",{staticClass:"customerabstract_lis"},t._l(t.host_server,(function(e,a,n){return r("el-row",{key:n},[r("el-col",{attrs:{span:8}},[r("div",[t._v(t._s(e.type_zh))])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(e.active)+"("+t._s(e.total)+")")])])],1)})),1)]),r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("其他信息")]),r("div",{staticClass:"customerabstract_lis"},[r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("状态")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.status))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("用户组")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.groupname))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("创建时间")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.create_time?t.$moment(1e3*t.other_info.create_time).format("YYYY-MM-DD HH:mm"):"-"))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("注册时长")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.register_time))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("最后登录时间")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.last_login?t.$moment(1e3*t.other_info.last_login).format("YYYY-MM-DD HH:mm"):"-"))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("最后登录IP")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.last_login_ip))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("最后登录主机")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.other_info.host))])])],1)],1)])]),r("el-col",{attrs:{span:6,xs:24,sm:12,md:6}},[r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("其他操作")]),r("div",{staticClass:"customerabstract_btns"},[r("el-row",[r("el-col",{attrs:{span:24}},[r("el-link",{attrs:{icon:"el-icon-circle-close"},on:{click:t.closeCustomer}},[t._v("关闭该客户账户")])],1),r("el-col",{attrs:{span:24}},[r("el-link",{attrs:{icon:"el-icon-delete"},on:{click:t.deleteCustomer}},[t._v("删除该客户账户")])],1),r("el-col",{attrs:{span:24}},[r("router-link",{attrs:{to:{path:"/add-order",query:{uid:t.id}}}},[r("el-link",{attrs:{icon:"el-icon-circle-plus-outline"}},[t._v("添加新订单")])],1)],1)],1)],1)]),t.hasCertificationInfo?r("div",{staticClass:"customerabstract_card"},[r("div",{staticClass:"customerabstract_title"},[t._v("实名认证信息")]),r("div",{staticClass:"customerabstract_lis"},[r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("实名类型")])]),0===t.certificationInfo.status?r("el-col",{attrs:{span:10}},[t._v("未认证")]):t._e(),0!==t.certificationInfo.status?r("el-col",{attrs:{span:10}},[r("div",[t._v(" "+t._s(1===t.certificationInfo.type?"个人":"企业")+" / "+t._s(t._f("statusFilter")(t.certificationInfo.status))+" ")])]):t._e(),1===t.certificationInfo.status||2===t.certificationInfo.status?r("el-col",{staticClass:"tar",attrs:{span:6}},[r("span",{staticClass:"change_status",on:{click:t.changeStatus}},[t._v("更改状态")])]):t._e()],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("实名时间")])]),r("el-col",{attrs:{span:16}},[t._v(" "+t._s(t.certificationInfo.create_time?t.$moment(1e3*t.certificationInfo.create_time).format("YYYY-MM-DDHH:mm"):"-")+" ")])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("姓名")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.certificationInfo.name?t.certificationInfo.name:"-"))])])],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("身份证")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.certificationInfo.idcard?t.certificationInfo.idcard:"-"))])])],1),2===t.certificationInfo.type?r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("企业号码")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.certificationInfo.company_organ_code?t.certificationInfo.company_organ_code:"-"))])])],1):t._e(),2===t.certificationInfo.type?r("el-row",[r("el-col",{attrs:{span:8}},[r("div",[t._v("企业")])]),r("el-col",{attrs:{span:16}},[r("div",[t._v(t._s(t.certificationInfo.company_name?t.certificationInfo.company_name:"-"))])])],1):t._e()],1)]):t._e()])],1)],1),r("div",{staticClass:"customerabstract_hosts"},[r("div",{staticClass:"customerabstract_table_title"},[t._v("产品/服务")]),r("el-table",{staticStyle:{width:"100%"},attrs:{data:t.hosts,border:""}},[r("el-table-column",{attrs:{label:"ID",width:"80"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[r("router-link",{attrs:{to:{name:"productInnerpage",query:{id:t.id,hid:a.hid}}}},[r("el-link",{on:{click:function(e){return t.goToProduct(a.hid)}}},[t._v(t._s(a.hid))])],1)]}}])}),r("el-table-column",{attrs:{prop:"hostname",label:"产品/服务","min-width":"200"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[r("router-link",{attrs:{to:{name:"productInnerpage",query:{id:t.id,hid:a.hid}}}},[r("el-link",{style:{color:a.status_color},on:{click:function(e){return t.goToProduct(a.hid)}}},[t._v(t._s(a.hostname))])],1)]}}])}),r("el-table-column",{attrs:{prop:"amount",label:"金额","min-width":"100"}}),r("el-table-column",{attrs:{label:"付款周期",width:"80"},scopedSlots:t._u([{key:"default",fn:function(e){var r=e.row;return[t._v(" "+t._s(r.billingcycle)+" ")]}}])}),r("el-table-column",{attrs:{label:"订购时间","min-width":"120"},scopedSlots:t._u([{key:"default",fn:function(e){var r=e.row;return[t._v(" "+t._s(r.regdate?t.$moment(1e3*r.regdate).format("YYYY-MM-DD"):"-")+" ")]}}])}),r("el-table-column",{attrs:{label:"到期时间","min-width":"120"},scopedSlots:t._u([{key:"default",fn:function(e){var r=e.row;return[t._v(" "+t._s(r.nextduedate?t.$moment(1e3*r.nextduedate).format("YYYY-MM-DD"):"-")+" ")]}}])}),r("el-table-column",{attrs:{prop:"domainstatus",label:"状态",width:"100"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[r("el-tag",{style:{"background-color":a.status_color,color:"#ffff","border-color":a.status_color},attrs:{size:"small",type:"info"}},[t._v(" "+t._s(a.domainstatus))])]}}])}),r("el-table-column",{attrs:{label:"操作",width:"100"},scopedSlots:t._u([{key:"default",fn:function(e){var a=e.row;return[r("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-edit"},on:{click:function(e){return t.goToProduct(a.hid)}}},[t._v("编辑")])]}}])})],1)],1),r("el-dialog",{attrs:{title:"创建充值账单",visible:t.dialogVisible,width:"30%"},on:{"update:visible":function(e){t.dialogVisible=e}}},[r("div",[t._v("您可以通过此方式允许客户存入资金到他们的账户中，或从客户的信用卡中收取一个具体数额的账目。")]),r("div",{staticClass:"mt-20 tac"},[t._v(" 金额: "),r("el-input-number",{attrs:{size:"small",controls:!1,precision:2},model:{value:t.rechargeAmount,callback:function(e){t.rechargeAmount=e},expression:"rechargeAmount"}})],1),r("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{size:"small"},on:{click:function(e){t.dialogVisible=!1}}},[t._v("取 消")]),r("el-button",{attrs:{size:"small",type:"primary"},on:{click:t.creatBillHandleClick}},[t._v("确 定")])],1)])],1)},n=[],s=r("60b5"),o=(r("24a8"),r("6a61"),r("f6b0")),i=r("78e3"),c=r("7ded"),l={data:function(){return{id:this.$route.query.id,summary:{},invoices:{},intotal:"",outtotal:"",income:"",credit:"",host_server:{},other_info:{},hosts:[],certificationInfo:{},hasCertificationInfo:!1,dialogVisible:!1,rechargeAmount:0}},filters:{statusFilter:function(t){switch(t){case 1:return"已认证";case 2:return"未通过";case 3:return"待审核";case 4:return"已提交资料"}}},methods:{getData:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["s"])(t.id);case 2:if(r=e.sent,a=r.data,404===a.status&&(t.$message.error(a.msg),t.$router.push("/customer-list")),200===a.status){e.next=7;break}return e.abrupt("return",!1);case 7:for(n in t.summary=a.summary,a.invoices)"draft"!==n&&"overdue"!==n&&"collections"!==n&&(t.invoices[n]=a.invoices[n]);t.intotal=a.intotal,t.outtotal=a.outtotal,t.income=a.income,t.credit=a.credit,t.host_server=a.host_server,t.other_info=a.other_info,t.hosts=a.hosts?a.hosts.reverse():a.hosts,t.$store.dispatch("addcustomerInfo",a.summary);case 17:case"end":return e.stop()}}),e)})))()},toShopping:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["u"])(t.id);case 2:r=e.sent,a=r.data,200!==a.status?t.$message.error(a.msg):localStorage.setItem("OrfLcI2IqQItv0vS",a.jwt);case 5:case"end":return e.stop()}}),e)})))()},setToken:function(){},getCommon:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(c["b"])();case 2:r=e.sent,a=r.data,200!==a.status?t.$message.error(a.msg):localStorage.setItem("common",JSON.stringify(a.data));case 5:case"end":return e.stop()}}),e)})))()},personDetail:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["x"])(t.$route.query.id);case 2:r=e.sent,a=r.data,200!==a.status?(t.$message.error(a.msg),t.hasCertificationInfo=!1):(t.certificationInfo=a.certifi_message,t.hasCertificationInfo=!0);case 5:case"end":return e.stop()}}),e)})))()},addBillHandleClick:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["c"])({uid:t.id});case 2:r=e.sent,a=r.data,200!==a.status?t.$message.error(a.msg):(t.$message.success(a.msg),setTimeout((function(){t.$router.push({path:"/bill-detail",query:{id:a.invoice_id,uid:t.id}})}),500));case 5:case"end":return e.stop()}}),e)})))()},creatBillHandleClick:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["b"])({uid:Number(t.id),amount:t.rechargeAmount});case 2:r=e.sent,a=r.data,200!==a.status?t.$message.error(a.msg):(t.$message.success(a.msg),t.dialogVisible=!1,t.$router.push({path:"/customer-view/bill",query:{id:t.id}}));case 5:case"end":return e.stop()}}),e)})))()},toBalance:function(){var t=this.$baseUrl+"/#/balance-details1?id="+this.id;window.open(t,"balance","height=800,width=1800,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=yes, status=no")},goToProduct:function(t){this.$router.push({name:"productInnerpage",query:{id:this.id,hid:t}})},closeCustomer:function(){var t=this;this.$confirm("此操作将关闭该客户账号, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["g"])(t.id);case 2:if(r=e.sent,a=r.data,200===a.status){e.next=6;break}return e.abrupt("return",!1);case 6:t.$message({type:"success",message:"关闭成功!"});case 7:case"end":return e.stop()}}),e)})))).catch((function(){t.$message({type:"info",message:"已取消本次操作!"})}))},deleteCustomer:function(){var t=this;this.$confirm("此操作将永久删除该客户账号, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(s["a"])(regeneratorRuntime.mark((function e(){var r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,Object(o["l"])(t.id);case 2:if(r=e.sent,a=r.data,200===a.status){e.next=6;break}return e.abrupt("return",!1);case 6:t.$message({type:"success",message:"删除成功!"}),t.$router.push({name:"customerList"});case 8:case"end":return e.stop()}}),e)})))).catch((function(){t.$message({type:"info",message:"已取消本次操作!"})}))},changeStatus:function(){var t=this,e=2===this.certificationInfo.status?"已认证":"未通过";this.$confirm(e,"确认修改实名状态为",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){Object(i["b"])({uid:t.id,type:t.certificationInfo.type,status:2===t.certificationInfo.status?1:2}).then((function(e){200!==e.data.status?t.$message.error(e.data.msg):(t.$message.success(e.data.msg),t.personDetail())}))})).catch((function(){}))}},created:function(){this.getData(),this.personDetail()}},u=l,d=(r("bfea"),r("5d22")),m=Object(d["a"])(u,a,n,!1,null,"6811696d",null);e["default"]=m.exports},"78e3":function(t,e,r){"use strict";r.d(e,"a",(function(){return n})),r.d(e,"b",(function(){return s}));var a=r("a27e");function n(t){return Object(a["a"])({url:"cerify_log_list",params:t})}function s(t){return Object(a["a"])({url:"certifi_status",method:"post",data:t})}},"9db2":function(t,e,r){},bfea:function(t,e,r){"use strict";r("9db2")},f6b0:function(t,e,r){"use strict";r.d(e,"q",(function(){return n})),r.d(e,"s",(function(){return s})),r.d(e,"n",(function(){return o})),r.d(e,"a",(function(){return i})),r.d(e,"r",(function(){return c})),r.d(e,"m",(function(){return l})),r.d(e,"l",(function(){return u})),r.d(e,"g",(function(){return d})),r.d(e,"j",(function(){return m})),r.d(e,"h",(function(){return f})),r.d(e,"f",(function(){return _})),r.d(e,"e",(function(){return v})),r.d(e,"u",(function(){return p})),r.d(e,"x",(function(){return h})),r.d(e,"c",(function(){return b})),r.d(e,"b",(function(){return g})),r.d(e,"p",(function(){return w})),r.d(e,"A",(function(){return y})),r.d(e,"k",(function(){return k})),r.d(e,"B",(function(){return O})),r.d(e,"t",(function(){return j})),r.d(e,"y",(function(){return C})),r.d(e,"z",(function(){return I})),r.d(e,"d",(function(){return x})),r.d(e,"v",(function(){return $})),r.d(e,"o",(function(){return Y})),r.d(e,"i",(function(){return S})),r.d(e,"w",(function(){return D}));var a=r("a27e");function n(t){return Object(a["a"])({url:"client_list",method:"post",data:t})}function s(t){return Object(a["a"])({url:"summary?client_id=".concat(t)})}function o(){return Object(a["a"])({url:"create_client"})}function i(t){return Object(a["a"])({url:"create_client_post",method:"post",data:t})}function c(t){return Object(a["a"])({url:"profile/".concat(t)})}function l(t){return Object(a["a"])({url:"profile_post",method:"post",data:t})}function u(t){return Object(a["a"])({url:"delete_client/".concat(t)})}function d(t){return Object(a["a"])({url:"close_client/".concat(t)})}function m(t){return Object(a["a"])({url:"user_invoice",params:t})}function f(t,e){return Object(a["a"])({url:"close_client/".concat(t),params:e})}function _(t){return Object(a["a"])({url:"client_ticket",params:t})}function v(t){return Object(a["a"])({url:"log_record",params:t})}function p(t){return Object(a["a"])({url:"login_by_user/"+t})}function h(t){return Object(a["a"])({url:"certifi_person_detail/".concat(t)})}function b(t){return Object(a["a"])({url:"add_user_invoice",method:"post",data:t})}function g(t){return Object(a["a"])({url:"add_recharge_invoice/"+t.uid,method:"post",data:t})}function w(t){return Object(a["a"])({url:"get_user",params:t})}function y(t){return Object(a["a"])({url:"request_cancel_list",params:t})}function k(t){return Object(a["a"])({url:"request_cancel_list/".concat(t),method:"delete"})}function O(t){return Object(a["a"])({url:"searchlist",params:{value:t}})}function j(t){return Object(a["a"])({url:"hostbyuid",params:t})}function C(t){return Object(a["a"])({url:"clients_services/host_batch_renew_page",method:"post",data:t})}function I(t){return Object(a["a"])({url:"clients_services/host_batch_renew",method:"post",data:t})}function x(t){return Object(a["a"])({url:"clients_services/apply_credit",method:"post",data:t})}function $(t){return Object(a["a"])({url:"invoice/paid",params:t})}function Y(t){return Object(a["a"])({url:"get_combine_invoices",params:t})}function S(t){return Object(a["a"])({url:"combine_invoices",method:"post",data:t})}function D(t){return Object(a["a"])({url:"post_client_notes",method:"post",data:t})}}}]);