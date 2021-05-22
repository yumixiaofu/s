(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["HelpCategory~31ecd969"],{"3b00":function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"category-management"},[a("el-button",{attrs:{size:"small",type:"success",icon:"el-icon-plus"},on:{click:t.toAdd}},[t._v("添加分类")]),a("el-table",{staticClass:"mt-10",staticStyle:{width:"100%"},attrs:{data:t.tableData,border:""}},[a("div",{attrs:{slot:"empty"},slot:"empty"},[!t.tableData.length&&t.tableLoading?a("span",[a("i",{staticClass:"el-icon-loading"}),t._v(" 正在加载 ... ")]):t._e(),t.tableData.length||t.tableLoading?t._e():a("span",[t._v("暂无数据")])]),a("el-table-column",{attrs:{prop:"id",label:"ID",width:"70",align:"center"}}),a("el-table-column",{attrs:{prop:"title",label:"分类名称"}}),a("el-table-column",{attrs:{prop:"hidden",label:"隐藏",width:"80",align:"center"},scopedSlots:t._u([{key:"default",fn:function(t){var e=t.row;return[1===e.hidden?a("i",{staticClass:"el-icon-circle-check yes-icon "}):a("i",{staticClass:"el-icon-circle-close no-icon"})]}}])}),a("el-table-column",{attrs:{label:"操作",width:"120",align:"center"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{staticClass:"span-primary",attrs:{size:"small",type:"text",icon:"el-icon-edit",disabled:1===e.row.id||2===e.row.id},on:{click:function(a){return t.editCategory(e.row)}}},[t._v("编辑")]),a("el-button",{staticClass:"span-danger",attrs:{size:"small",type:"text",icon:"el-icon-delete",disabled:1===e.row.id||2===e.row.id},on:{click:function(a){return t.delCategory(e.row)}}},[t._v("删除")])]}}])})],1),a("el-pagination",{staticClass:"mt-10",attrs:{"current-page":t.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":t.search.limit,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange,"update:currentPage":function(e){return t.$set(t.search,"page",e)},"update:current-page":function(e){return t.$set(t.search,"page",e)},"update:pageSize":function(e){return t.$set(t.search,"limit",e)},"update:page-size":function(e){return t.$set(t.search,"limit",e)}}}),a("el-dialog",t._g(t._b({attrs:{visible:t.dialogVisible,title:t.isAdd?"新增帮助分类":"编辑帮助分类",width:"600px"},on:{open:t.onOpen,close:t.onClose}},"el-dialog",t.$attrs,!1),t.$listeners),[a("el-row",{attrs:{gutter:15}},[a("el-form",{ref:"elForm",attrs:{model:t.formData,rules:t.rules,"label-width":"80px"}},[this.isEdit?a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"ID",prop:"id"}},[a("el-input",{style:{width:"100%"},attrs:{size:"small",placeholder:"请输入ID",clearable:"",readonly:""},model:{value:t.formData.id,callback:function(e){t.$set(t.formData,"id",e)},expression:"formData.id"}})],1)],1):t._e(),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"分类名称",prop:"title"}},[a("el-input",{style:{width:"100%"},attrs:{size:"small",placeholder:"请输入分类名称",clearable:""},model:{value:t.formData.title,callback:function(e){t.$set(t.formData,"title",e)},expression:"formData.title"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"访问别名",prop:"bm"}},[a("el-col",{attrs:{span:1}},[a("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[a("el-row",[a("el-col",{attrs:{span:24}},[t._v("可选,可通过这个链接直接访问本新闻分类")])],1),a("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),a("el-col",{attrs:{span:22}},[a("span",[t._v(" "+t._s(t.originUrl))]),a("el-input",{style:{width:"150px"},attrs:{size:"small",placeholder:"请输入访问别名",clearable:""},on:{blur:t.bmVerify},model:{value:t.formData.alias,callback:function(e){t.$set(t.formData,"alias",e)},expression:"formData.alias"}}),a("span",{staticClass:"ml-10"},[t.bmVerifyLoding?a("i",{staticClass:"el-icon-loading"}):t._e(),this.formData.alias&&!t.bmVerifyLoding&&1===t.isUsed?a("el-tooltip",{attrs:{effect:"light",content:"别名可用",placement:"right"}},[a("i",{staticClass:"el-icon-circle-check yes-icon"})]):t._e(),this.formData.alias&&!t.bmVerifyLoding&&0===t.isUsed?a("el-tooltip",{attrs:{effect:"light",content:"别名不可用",placement:"right"}},[a("i",{staticClass:"el-icon-circle-close no-icon"})]):t._e()],1)],1)],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"是否隐藏",prop:"hidden"}},[a("el-switch",{attrs:{"active-value":"1","inactive-value":"0"},model:{value:t.formData.hidden,callback:function(e){t.$set(t.formData,"hidden",e)},expression:"formData.hidden"}})],1)],1)],1)],1),a("div",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{size:"small"},on:{click:t.close}},[t._v("取消")]),a("el-button",{attrs:{size:"small",type:"primary",loading:t.btnLoading},on:{click:t.handelConfirm}},[t._v("确定")])],1)],1)],1)},n=[],i=a("60b5"),s=(a("6a61"),a("24a8"),a("c22d"),a("9b5f"),a("e3b5"),a("94ca")),o={metaInfo:{title:"帮助分类"},data:function(){return{isUsed:null,originUrl:"",alias:"",bmVerifyLoding:!1,tableLoading:!1,tableData:[],dialogVisible:!1,isAdd:!1,isEdit:!1,search:{page:1,limit:Number(localStorage.getItem("limit"))||50,parent_id:2},total:0,formData:{id:void 0,title:"",parent_id:2,status:"",hidden:"0",sort:0,alias:""},rules:{title:[{required:!0,message:"请输入分类名称",trigger:"blur"},{pattern:/^.{1,10}$/,message:"分类名称10字以内",trigger:"blur"}]},btnLoading:!1}},methods:{bmVerify:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.formData.alias){e.next=10;break}return t.bmVerifyLoding=!0,a={},a=t.isEdit?{alias:t.formData.alias,id:t.formData.id}:{alias:t.formData.alias},e.next=6,Object(s["c"])(a);case 6:r=e.sent,n=r.data,200!==n.status?t.$message.error(n.msg):(t.isUsed=n.data,t.bmVerifyLoding=!1),t.bmVerifyLoding=!1;case 10:case"end":return e.stop()}}),e)})))()},getData:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){var a,r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.tableLoading=!0,e.next=3,Object(s["h"])(t.search);case 3:a=e.sent,r=a.data,200!==r.status?t.$message.error(r.msg):(t.tableData=r.data.list.filter((function(t){return 2===t.parent_id})),t.total=r.data.meta.total),t.tableLoading=!1;case 7:case"end":return e.stop()}}),e)})))()},handleSizeChange:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.search.page=1,e.getData();case 2:case"end":return t.stop()}}),t)})))()},handleCurrentChange:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.getData();case 1:case"end":return t.stop()}}),t)})))()},toAdd:function(){var t=this;return Object(i["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:t.originUrl=window.location.origin+"/knowledgebase/",t.dialogVisible=!0,t.isAdd=!0,t.isEdit=!1,t.formData.title="",t.formData.id=void 0;case 6:case"end":return e.stop()}}),e)})))()},onOpen:function(){},onClose:function(){this.dialogVisible=!1,this.formData.alias="",this.isUsed=null,this.bmVerifyLoding=!1},close:function(){this.$emit("update:visible",!1),this.dialogVisible=!1},handelConfirm:function(){var t=this;this.isAdd?this.$refs.elForm.validate(function(){var e=Object(i["a"])(regeneratorRuntime.mark((function e(a){var r,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(a){e.next=2;break}return e.abrupt("return");case 2:return t.btnLoading=!0,e.next=5,Object(s["a"])(t.formData);case 5:r=e.sent,n=r.data,200!==n.status?t.$message.error(n.msg):(t.$message.success(n.msg),t.getData(),t.isAdd=!1),t.btnLoading=!1,t.close();case 10:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}()):this.isEdit&&this.$refs.elForm.validate(function(){var e=Object(i["a"])(regeneratorRuntime.mark((function e(a){var r,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(a){e.next=2;break}return e.abrupt("return");case 2:return t.btnLoading=!0,e.next=5,Object(s["a"])(t.formData);case 5:r=e.sent,n=r.data,200!==n.status?t.$message.error(n.msg):(t.$message.success(n.msg),t.getData(),t.isEdit=!1),t.btnLoading=!1,t.close();case 10:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}())},editCategory:function(t){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function a(){return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:e.originUrl=window.location.origin+"/knowledgebase/",e.formData.alias=t.alias,e.isEdit=!0,e.isAdd=!1,e.formData.id=t.id,e.formData.parent_id=t.parent_id,e.formData.hidden=t.hidden?"1":"0",e.formData.title=t.title,e.dialogVisible=!0;case 9:case"end":return a.stop()}}),a)})))()},delCategory:function(t){var e=this;this.$confirm("将删除此分类, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){Object(s["d"])(t.id).then((function(t){200!==t.data.status?e.$message.error(t.data.msg):(e.$message.success(t.data.msg),e.getData())}))})).catch((function(){}))}},created:function(){this.getData()}},l=o,c=a("5d22"),u=Object(c["a"])(l,r,n,!1,null,null,null);e["default"]=u.exports},7041:function(t,e,a){var r=a("7ce6"),n=a("3086"),i=a("69a9"),s=n("species");t.exports=function(t){return i>=51||!r((function(){var e=[],a=e.constructor={};return a[s]=function(){return{foo:1}},1!==e[t](Boolean).foo}))}},"94ca":function(t,e,a){"use strict";a.d(e,"i",(function(){return n})),a.d(e,"h",(function(){return i})),a.d(e,"g",(function(){return s})),a.d(e,"a",(function(){return o})),a.d(e,"d",(function(){return l})),a.d(e,"b",(function(){return c})),a.d(e,"f",(function(){return u})),a.d(e,"e",(function(){return d})),a.d(e,"c",(function(){return f}));var r=a("a27e");function n(t,e,a,n,i){return Object(r["a"])({url:"news/list",params:{page:t,limit:e,parent_id:a,orderby:n,sorting:i}})}function i(t){return Object(r["a"])({url:"news/catspage",params:t})}function s(t){return Object(r["a"])({url:"news/catelist",params:t})}function o(t){return Object(r["a"])({url:"news/editcat",method:"post",data:t})}function l(t){return Object(r["a"])({url:"news/cat",method:"delete",params:{id:t}})}function c(t){return Object(r["a"])({url:"news/editcontent",method:"post",data:t})}function u(t){return Object(r["a"])({url:"news/content",params:{id:t}})}function d(t){return Object(r["a"])({url:"news/content",method:"delete",params:{id:t}})}function f(t){return Object(r["a"])({url:"news/checkalias",method:"get",params:t})}},a756:function(t,e){t.exports=Object.is||function(t,e){return t===e?0!==t||1/t===1/e:t!=t&&e!=e}},c22d:function(t,e,a){"use strict";var r=a("9194"),n=a("baa9"),i=a("4023"),s=a("a756"),o=a("1a58");r("search",1,(function(t,e,a){return[function(e){var a=i(this),r=void 0==e?void 0:e[t];return void 0!==r?r.call(e,a):new RegExp(e)[t](String(a))},function(t){var r=a(e,t,this);if(r.done)return r.value;var i=n(t),l=String(this),c=i.lastIndex;s(c,0)||(i.lastIndex=0);var u=o(i,l);return s(i.lastIndex,c)||(i.lastIndex=c),null===u?-1:u.index}]}))},e3b5:function(t,e,a){"use strict";var r=a("1f04"),n=a("59bf").filter,i=a("7041"),s=i("filter");r({target:"Array",proto:!0,forced:!s},{filter:function(t){return n(this,t,arguments.length>1?arguments[1]:void 0)}})}}]);