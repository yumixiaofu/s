(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["CustomerPromotionplan~31ecd969"],{"07e9":function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"sales"},[a("el-tabs",{model:{value:e.activeName,callback:function(t){e.activeName=t},expression:"activeName"}},[a("el-tab-pane",{attrs:{label:"推介计划",name:"grouping"}},[a("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 推介计划 "),a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[e._v("此列表记录了在前台激活推介计划的用户详细信息。")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("div",[a("el-row",[a("el-col",{attrs:{span:24}},[a("el-button",{attrs:{size:"small"},on:{click:function(t){e.showSearchArea=!e.showSearchArea}}},[e._v(" "+e._s(e.showSearchArea?"收起搜索":"高级搜索")+" ")])],1)],1),a("transition",{attrs:{name:"el-zoom-in-top"}},[e.showSearchArea?a("el-form",{ref:"elForm",staticClass:"mt-10 mb-20 unfold-search",attrs:{inline:"",model:e.search,"label-width":"82px"}},[a("el-form-item",{attrs:{label:"客户名",prop:"id"}},[a("el-input",{style:{width:"220px"},attrs:{size:"small",placeholder:"请输入客户名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchHandeClick(t)}},model:{value:e.search.username,callback:function(t){e.$set(e.search,"username",t)},expression:"search.username"}})],1),a("el-form-item",{attrs:{label:"可提现佣金",prop:"balance"}},[a("el-input",{style:{width:"220px"},attrs:{controls:!1,precision:2,size:"small",type:"number",placeholder:"请输入可提现佣金",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchHandeClick(t)}},model:{value:e.search.balance,callback:function(t){e.$set(e.search,"balance",e._n(t))},expression:"search.balance"}},[a("el-select",{style:{width:"70px"},attrs:{slot:"prepend",size:"small",placeholder:"请选择类型"},slot:"prepend",model:{value:e.search.balance_type,callback:function(t){e.$set(e.search,"balance_type",t)},expression:"search.balance_type"}},e._l(e.typeSelectOption,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("el-form-item",{attrs:{label:"访问量",prop:"visitors"}},[a("el-input",{style:{width:"220px"},attrs:{size:"small",placeholder:"请输入访问量",type:"number",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchHandeClick(t)}},model:{value:e.search.visitors,callback:function(t){e.$set(e.search,"visitors",e._n(t))},expression:"search.visitors"}},[a("el-select",{style:{width:"70px"},attrs:{slot:"prepend",size:"small",placeholder:"请选择类型"},slot:"prepend",model:{value:e.search.visitors_type,callback:function(t){e.$set(e.search,"visitors_type",t)},expression:"search.visitors_type"}},e._l(e.typeSelectOption,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("el-form-item",{attrs:{label:"已提现佣金",prop:"withdrawn"}},[a("el-input",{style:{width:"220px"},attrs:{controls:!1,precision:2,size:"small",type:"number",placeholder:"请输入已提现佣金",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchHandeClick(t)}},model:{value:e.search.withdrawn,callback:function(t){e.$set(e.search,"withdrawn",e._n(t))},expression:"search.withdrawn"}},[a("el-select",{style:{width:"70px"},attrs:{slot:"prepend",size:"small",placeholder:"请选择类型"},slot:"prepend",model:{value:e.search.withdrawn_type,callback:function(t){e.$set(e.search,"withdrawn_type",t)},expression:"search.withdrawn_type"}},e._l(e.typeSelectOption,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("el-form-item",{attrs:{label:"注册数量",prop:"registcount"}},[a("el-input",{style:{width:"220px"},attrs:{size:"small",placeholder:"请输入注册数量",clearable:"",type:"number"},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchHandeClick(t)}},model:{value:e.search.registcount,callback:function(t){e.$set(e.search,"registcount",e._n(t))},expression:"search.registcount"}},[a("el-select",{style:{width:"70px"},attrs:{slot:"prepend",size:"small",placeholder:"请选择类型"},slot:"prepend",model:{value:e.search.registcount_type,callback:function(t){e.$set(e.search,"registcount_type",t)},expression:"search.registcount_type"}},e._l(e.typeSelectOption,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1)],1),a("el-form-item",{attrs:{label:" "}},[a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:e.searchHandeClick}},[e._v("搜索")]),a("el-button",{attrs:{size:"mini"},on:{click:e.clearSearchHandleClick}},[e._v("清空")])],1)],1):e._e()],1),a("el-table",{staticClass:"mt-10",staticStyle:{width:"100%"},attrs:{data:e.tableData,border:""},on:{"sort-change":e.sortChange}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!e.tableData.length&&e.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),e._v(" 正在加载 ... ")]):e._e(),e.tableData.length||e.tableLoading?e._e():a("span",[e._v("暂无数据")])]),a("el-table-column",{attrs:{prop:"id",label:"ID",sortable:"",width:"70",align:"center"}}),a("el-table-column",{attrs:{prop:"username",label:"姓名(公司名)",sortable:"",width:"300"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("el-link",{on:{click:function(t){return e.goUserInner(r.uid)}}},[e._v(e._s(r.username)+e._s(r.companyname?"("+r.companyname+")":"")+" ")])]}}])}),a("el-table-column",{attrs:{prop:"visitors",label:"访问数量",sortable:"","min-width":"100"}}),a("el-table-column",{attrs:{prop:"registcount",label:"注册数量",sortable:"","min-width":"100"}}),a("el-table-column",{attrs:{prop:"payamount",label:"订购数量",sortable:"","min-width":"100"}}),a("el-table-column",{attrs:{prop:"sum",label:"总佣金",sortable:"custom","min-width":"100"}}),a("el-table-column",{attrs:{prop:"withdrawn",label:"已提现佣金",sortable:"","min-width":"120"}})],1),a("el-pagination",{staticClass:"mt-10",attrs:{"current-page":e.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":e.search.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.pageInfo.total},on:{"size-change":e.handleSizeChange,"current-change":e.currentChange}})],1)]),e._e()],1)],1)},n=[],s=a("60b5"),i=(a("6a61"),a("24a8"),a("16ca"),a("c22d"),a("9b5f"),a("2fd6")),o={metaInfo:{title:"推介计划"},data:function(){return{tableLoading:!1,tableLoading02:!1,paymentOptions:[],typeSelectOption:[{id:1,name:"大于"},{id:2,name:"小于"}],statusSelectOption:[{id:1,name:"待审核"},{id:2,name:"通过"},{id:3,name:"拒绝"}],accessTypeSelectOptions:[{id:1,name:"余额"},{id:2,name:"仅记录"},{id:3,name:"流水支持"}],showSearchArea:!1,showSearchArea2:!1,search:{page:1,limit:Number(localStorage.getItem("limit"))||50,order:"id",sort:"desc",username:void 0,visitors:void 0,visitors_type:1,balance:void 0,balance_type:1,withdrawn:void 0,withdrawn_type:1,registcount:void 0,registcount_type:1},search2:{page:1,limit:Number(localStorage.getItem("limit"))||50,order:"id",sort:"desc",id:void 0,user_nickname:void 0,status:void 0},labelWidth:window.document.body.clientWidth>768?"155px":null,activeName:"grouping",toData:[],dialogVis:!1,withdrawDepositVis:!1,isEdit:!1,isAdd:!1,isReject:!1,isPass:!1,tableData:[],tableData02:[],pageInfo:{total:0},pageInfo2:{total:0},formData:{},withdrawDepositData:{id:void 0,status:void 0,type:void 0,payment:void 0,trans_id:void 0,reason:void 0},defaultProps:{label:"name",children:"children"},rules:{affiliate_renew_type:[{required:!0,message:"请选择二次续费比例比例类型",trigger:"change"}],affiliate_type:[{required:!0,message:"请选择推介计划比例类型",trigger:"change"}],affiliate_reorder_type:[{required:!0,message:"请选择二次订单比例类型",trigger:"change"}]},accessOrRjectRules:{type:[{required:!0,message:"请选择通过类型",trigger:"change"}],payment:[{required:!0,message:"请选择支付方式",trigger:"change"}],trans_id:[{required:!0,message:"请填写付款流水号",trigger:"blur"}],reason:[{required:!0,message:"请填写驳回原因",trigger:"blur"}]},pidsOptions:[],btnLoading:!1}},filters:{withdrawDepositDataFilter:function(e){return 1===e?"提现的金额将添加到推介人的余额中。":2===e?"在此列表中记录，不会有任何的操作。":3===e?"审核后系统将添加一笔交易流水。":void 0}},methods:{goUserInner:function(e){this.$router.push({name:"promotion_plan",query:{id:e}})},companyNameAndUserName:function(e){return e.companyname?"".concat(e.username,"(").concat(e.companyname,")"):e.username},getpayType:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(i["b"])();case 2:a=t.sent,r=a.data,200===r.status?e.paymentOptions=r.gateway:e.$message.error(r.msg);case 5:case"end":return t.stop()}}),t)})))()},changeTypeOption:function(e){3===e&&(this.paymentOptions=[],this.getpayType())},searchHandeClick:function(){this.showSearchArea=!1,this.getData(this.search)},searchHandeClick2:function(){this.showSearchArea2=!1,this.getLadder(this.search2)},statusText:function(e){switch(e){case 1:return"待审核";case 2:return"审核通过";case 3:return"拒绝";default:return""}},operating:function(e,t){this.withdrawDepositData.id=e.id,1===t?(this.withdrawDepositData.type=1,this.isPass=!0,this.isReject=!1):2===t&&(this.isReject=!0,this.isPass=!1),this.withdrawDepositVis=!0},clearSearchHandleClick:function(){this.search.page=1,this.search.limit=50,this.search.username=void 0,this.search.visitors=void 0,this.search.visitors_type=1,this.search.balance=void 0,this.search.balance_type=1,this.search.withdrawn=void 0,this.search.withdrawn_type=1,this.search.registcount=void 0,this.search.registcount_type=1,this.getData(this.search)},clearSearchHandleClick2:function(){this.search2.page=1,this.search2.limit=50,this.search2.id=void 0,this.search2.user_nickname=void 0,this.search2.status=void 0,this.search2.sort="desc",this.search2.order="id",this.getLadder()},goToView:function(e){this.$router.push({path:"/customer-view/promotion_plan",query:{id:e}})},getData:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.tableLoading=!0,t.next=3,Object(i["c"])(e.search);case 3:a=t.sent,r=a.data,200!==r.status?e.$message.error(r.msg):(e.tableData=r.data,e.pageInfo.total=r.total),e.tableLoading=!1;case 7:case"end":return t.stop()}}),t)})))()},getLadder:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){var a,r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.tableLoading02=!0,t.next=3,Object(i["a"])(e.search2);case 3:if(a=t.sent,r=a.data,200===r.status){t.next=8;break}return r.msg&&e.$message.error(r.msg),t.abrupt("return");case 8:e.tableData02=r.data,e.pageInfo2.total02=r.total,e.tableLoading02=!1;case 11:case"end":return t.stop()}}),t)})))()},handleSizeChange:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){var r,n;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return t.search.limit=e,a.next=3,Object(i["c"])(t.search);case 3:if(r=a.sent,n=r.data,200===n.status){a.next=8;break}return t.$message.error(n.msg),a.abrupt("return");case 8:t.tableData=n.data,t.pageInfo.total=n.total;case 10:case"end":return a.stop()}}),a)})))()},handleSizeChange02:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:t.search2.limit=e,t.getLadder();case 2:case"end":return a.stop()}}),a)})))()},currentChange:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){var r,n;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return t.search.page=e,a.next=3,Object(i["c"])(t.search);case 3:if(r=a.sent,n=r.data,200===n.status){a.next=8;break}return t.$message.error("发生了错误"),a.abrupt("return");case 8:t.tableData=n.data,t.pageInfo.total=n.total;case 10:case"end":return a.stop()}}),a)})))()},currentChange02:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:t.search2.page=e,t.getLadder();case 2:case"end":return a.stop()}}),a)})))()},onOpen:function(){},onClose:function(){this.$refs.elForm.resetFields(),this.dialogVis=!1,this.isEdit=!1,this.isAdd=!1,this.pidsOptions=[]},close:function(){this.$emit("update:visible",!1),this.dialogVis=!1,this.isEdit=!1,this.isAdd=!1,this.pidsOptions=[]},onLadderOpen:function(){},onLadderClose:function(){this.$refs.elLadderForm.resetFields(),this.withdrawDepositVis=!1,this.withdrawDepositData={id:void 0,status:void 0,type:void 0,payment:void 0,trans_id:void 0,reason:void 0}},ladderclose:function(){this.$emit("update:visible",!1),this.withdrawDepositVis=!1,this.isReject=!1,this.isPass=!1},handelConfirm:function(){var e=this;this.$refs.elLadderForm.validate(function(){var t=Object(s["a"])(regeneratorRuntime.mark((function t(a){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(a){t.next=2;break}return t.abrupt("return");case 2:return e.btnLoading=!0,t.prev=3,e.isPass?e.withdrawDepositData.status=2:e.isReject&&(e.withdrawDepositData.status=3),t.next=7,Object(i["h"])(e.withdrawDepositData);case 7:r=t.sent,n=r.data,e.btnLoading=!1,200!==n.status?e.$message.error(n.msg):(e.$message.success(n.msg),e.getLadder(),e.onLadderClose()),t.next=16;break;case 13:t.prev=13,t.t0=t["catch"](3),e.btnLoading=!1;case 16:case"end":return t.stop()}}),t,null,[[3,13]])})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.elForm.resetFields()},sortChange:function(e,t,a){this.search.order=e.prop,"ascending"===e.order?this.search.sort="asc":this.search.sort="desc",this.getData(this.search)},sortChange2:function(e,t,a){this.search2.order=e.prop,"ascending"===e.order?this.search2.sort="asc":this.search2.sort="desc",this.getLadder(this.search2)}},created:function(){this.activeName=this.$route.query.activeName||"grouping",this.getData(this.search),this.getLadder(this.search2)}},c=o,l=(a("7f4f"),a("5d22")),u=Object(l["a"])(c,r,n,!1,null,"18a4f873",null);t["default"]=u.exports},"16ca":function(e,t,a){"use strict";var r=a("1f04"),n=a("7ce6"),s=a("0914"),i=a("97f5"),o=a("f8d3"),c=a("a187"),l=a("98a5"),u=a("6827"),d=a("7041"),h=a("3086"),p=a("69a9"),f=h("isConcatSpreadable"),m=9007199254740991,g="Maximum allowed index exceeded",b=p>=51||!n((function(){var e=[];return e[f]=!1,e.concat()[0]!==e})),v=d("concat"),w=function(e){if(!i(e))return!1;var t=e[f];return void 0!==t?!!t:s(e)},y=!b||!v;r({target:"Array",proto:!0,forced:y},{concat:function(e){var t,a,r,n,s,i=o(this),d=u(i,0),h=0;for(t=-1,r=arguments.length;t<r;t++)if(s=-1===t?i:arguments[t],w(s)){if(n=c(s.length),h+n>m)throw TypeError(g);for(a=0;a<n;a++,h++)a in s&&l(d,h,s[a])}else{if(h>=m)throw TypeError(g);l(d,h++,s)}return d.length=h,d}})},"2fd6":function(e,t,a){"use strict";a.d(t,"c",(function(){return n})),a.d(t,"a",(function(){return s})),a.d(t,"h",(function(){return i})),a.d(t,"b",(function(){return o})),a.d(t,"d",(function(){return c})),a.d(t,"j",(function(){return l})),a.d(t,"i",(function(){return u})),a.d(t,"e",(function(){return d})),a.d(t,"g",(function(){return h})),a.d(t,"f",(function(){return p}));var r=a("a27e");function n(e){return Object(r["a"])({url:"aff",params:e})}function s(e){return Object(r["a"])({url:"aff/affiwithdraw_record",method:"post",data:e})}function i(e){return Object(r["a"])({url:"aff/affiwithdrawsh",method:"post",data:e})}function o(){return Object(r["a"])({url:"aff/gateway_list",method:"get"})}function c(e){return Object(r["a"])({url:"aff/useraffi_page",method:"get",params:e})}function l(e){return Object(r["a"])({url:"aff/useraffi_post",method:"post",data:e})}function u(e){return Object(r["a"])({url:"aff/useraffi_balance",method:"post",data:e})}function d(e){return Object(r["a"])({url:"aff/useraffi_list",method:"get",params:e})}function h(e){return Object(r["a"])({url:"aff/useraffibuy_record",method:"get",params:e})}function p(e){return Object(r["a"])({url:"aff/useraffi_record",method:"get",params:e})}},7041:function(e,t,a){var r=a("7ce6"),n=a("3086"),s=a("69a9"),i=n("species");e.exports=function(e){return s>=51||!r((function(){var t=[],a=t.constructor={};return a[i]=function(){return{foo:1}},1!==t[e](Boolean).foo}))}},"7f4f":function(e,t,a){"use strict";a("f168")},"98a5":function(e,t,a){"use strict";var r=a("3de9"),n=a("d320"),s=a("1f88");e.exports=function(e,t,a){var i=r(t);i in e?n.f(e,i,s(0,a)):e[i]=a}},a756:function(e,t){e.exports=Object.is||function(e,t){return e===t?0!==e||1/e===1/t:e!=e&&t!=t}},c22d:function(e,t,a){"use strict";var r=a("9194"),n=a("baa9"),s=a("4023"),i=a("a756"),o=a("1a58");r("search",1,(function(e,t,a){return[function(t){var a=s(this),r=void 0==t?void 0:t[e];return void 0!==r?r.call(t,a):new RegExp(t)[e](String(a))},function(e){var r=a(t,e,this);if(r.done)return r.value;var s=n(e),c=String(this),l=s.lastIndex;i(l,0)||(s.lastIndex=0);var u=o(s,c);return i(s.lastIndex,l)||(s.lastIndex=l),null===u?-1:u.index}]}))},f168:function(e,t,a){}}]);