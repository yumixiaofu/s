(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["CustomerAnnex~31ecd969"],{a505:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{},[a("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.openDia}},[e._v("上传")]),a("el-row",{staticClass:"mt-20"},[a("el-col",[a("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,"tooltip-effect":"light"},on:{"sort-change":e.changeSort}},[a("el-table-column",{attrs:{prop:"name",label:"附件名称",sortable:"","show-overflow-tooltip":""},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("el-link",{on:{click:function(t){return e.download(r.id)}}},[e._v(e._s(r.name))])]}}])}),a("el-table-column",{attrs:{prop:"create_time",label:"上传时间",width:"135",align:"center",sortable:""},scopedSlots:e._u([{key:"default",fn:function(t){var a=t.row;return[e._v(" "+e._s(0===a.create_time?"-":e.$moment(1e3*a.create_time).format("YYYY-MM-DD HH:mm"))+" ")]}}])}),a("el-table-column",{attrs:{prop:"user_nickname",label:"上传人",sortable:""}}),a("el-table-column",{attrs:{prop:"downame",label:"文件名",sortable:"","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"remarks",label:"备注",sortable:"","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"操作",width:"120",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){var r=t.row;return[a("el-button",{staticClass:"span-primary",attrs:{type:"text",size:"small",icon:"el-icon-edit"},on:{click:function(t){return e.editRow(r.id)}}},[e._v("编辑 ")]),a("el-button",{staticClass:"span-danger",attrs:{type:"text",size:"small",icon:"el-icon-circle-close"},on:{click:function(t){return e.delRow(r.id)}}},[e._v("删除")])]}}])})],1),a("el-pagination",{attrs:{"current-page":e.search.page,"page-sizes":[10,15,20,25,50,100],"page-size":e.search.limit,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.getUserDown,"update:currentPage":function(t){return e.$set(e.search,"page",t)},"update:current-page":function(t){return e.$set(e.search,"page",t)},"update:pageSize":function(t){return e.$set(e.search,"limit",t)},"update:page-size":function(t){return e.$set(e.search,"limit",t)}}})],1)],1),a("el-dialog",e._g(e._b({attrs:{visible:e.addDiaVis,title:e.isEdit?"编辑":"添加",width:"500px"},on:{"update:visible":function(t){e.addDiaVis=t},open:e.onOpen}},"el-dialog",e.$attrs,!1),e.$listeners),[a("el-row",{attrs:{gutter:15,span:23}},[a("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,size:"medium","label-width":"auto"}},[e.isEdit?e._e():a("el-form-item",{attrs:{label:"选择文件",prop:"field105"}},[a("span",{attrs:{slot:"label"},slot:"label"},[a("span",{staticStyle:{color:"#f00",display:"inline-block","margin-right":"5px"}},[e._v("*")]),e._v("选择文件 ")]),a("el-upload",{ref:"field105",attrs:{"on-success":e.onSuccess,"on-remove":e.onRemove,"on-exceed":e.onExceed,limit:1,data:{uid:e.$route.query.id},action:e.field105Action,"before-upload":e.field105BeforeUpload,"file-list":e.upList,name:"uploadfile"}},[a("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-upload"}},[e._v("点击上传")])],1)],1),a("el-form-item",{attrs:{label:"附件名称",prop:"name"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:"请输入附件名称",clearable:""},model:{value:e.formData.name,callback:function(t){e.$set(e.formData,"name",t)},expression:"formData.name"}})],1),a("el-form-item",{attrs:{label:"备注",prop:"remarks"}},[a("el-input",{style:{width:"100%"},attrs:{type:"textarea",placeholder:"请输入备注",maxlength:30,"show-word-limit":"",autosize:{minRows:4,maxRows:4}},model:{value:e.formData.remarks,callback:function(t){e.$set(e.formData,"remarks",t)},expression:"formData.remarks"}})],1)],1)],1),a("div",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:e.close}},[e._v("取消")]),a("el-button",{attrs:{type:"primary"},on:{click:e.handelConfirm}},[e._v("确定")])],1)],1)],1)},n=[],s=a("60b5"),i=(a("6a61"),a("24a8"),a("1d43"),a("c22d"),a("9b5f"),a("a27e"));function o(e){return Object(i["a"])({url:"downloads/userdownlist",params:e})}function l(e){return Object(i["a"])({url:"downloads/adduserfile",method:"post",data:e})}function u(e){return Object(i["a"])({url:"downloads/userfilepage",params:e})}function c(e){return Object(i["a"])({url:"downloads/saveuserfile",method:"post",params:e})}function d(e){return Object(i["a"])({url:"downloads/userfile",params:e})}var m={data:function(){var e=this,t=function(t,a,r){0===e.upList.length?r(new Error("请上传文件")):r()};return{isEdit:!1,search:{page:1,limit:Number(localStorage.getItem("limit"))||50,order:"id",sort:"DESC"},addDiaVis:!1,formData:{uid:void 0,name:void 0,remarks:void 0,filename:""},rules:{name:[{required:!0,message:"请输入附件名称",trigger:"blur"}],remarks:[],field105:[{validator:t,trigger:"blur"}]},field105Action:this.$baseUrl+"/downloads/uploaduserfile?uid="+this.$route.query.id,upList:[],tableData:[],total:0}},created:function(){this.getUserDown()},mounted:function(){},methods:{openDia:function(){var e=this;this.isEdit=!1,this.upList=[],this.$nextTick((function(){e.$refs.elForm.resetFields()})),this.addDiaVis=!0},download:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:open(t.$baseUrl+"/downloads/getuserfile?id="+e+"&uid="+t.$route.query.id);case 1:case"end":return a.stop()}}),a)})))()},delRow:function(e){var t=this;this.$confirm("将删除此文件, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){var a={id:e};d(a).then((function(e){200!==e.data.status?t.$message.error(e.data.msg):(t.$message.success(e.data.msg),t.getUserDown())}))})).catch((function(){}))},editRow:function(e){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){var r,n,s;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return t.isEdit=!0,t.addDiaVis=!0,r={id:e},a.next=5,u(r);case 5:if(n=a.sent,s=n.data,200===s.status){a.next=10;break}return t.$message.error(s.msg),a.abrupt("return");case 10:t.formData.name=s.data.name,t.formData.remarks=s.data.remarks,t.formData.id=e;case 13:case"end":return a.stop()}}),a)})))()},handleSizeChange:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.search.page=1,e.getUserDown();case 2:case"end":return t.stop()}}),t)})))()},changeSort:function(e){"amount_in"!==e.prop&&("descending"===e.order?(this.search.order=e.prop,this.search.sort="DESC"):(this.search.order=e.prop,this.search.sort="AESC"),this.getUserDown())},getUserDown:function(){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function t(){var a,r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a={uid:e.$route.query.id},t.next=3,o(a);case 3:if(r=t.sent,n=r.data,200===n.status){t.next=8;break}return e.$message.error(n.msg),t.abrupt("return");case 8:e.tableData=n.data,e.total=n.total;case 10:case"end":return t.stop()}}),t)})))()},onExceed:function(){this.$message.warning("单次文件最多上传一个")},onSuccess:function(e,t,a){if(200!==e.status)return this.$message.error(e.msg),this.formData.filename="",void(this.upList=[]);var r={name:t.raw.name};this.upList.push(r),this.formData.filename=e.data.savename,this.formData.name=t.raw.name},onRemove:function(e,t){this.upList=[],this.formData.filename=""},onOpen:function(){var e=this;this.$nextTick((function(){e.$refs.elForm.resetFields()})),this.formData.uid=this.$route.query.id},close:function(){var e=this;this.addDiaVis=!1,this.upList=[],this.formData.filename="",this.formData.uid="",this.$nextTick((function(){e.$refs.elForm.resetFields()})),this.isEdit=!1},handelConfirm:function(){var e=this;this.$refs.elForm.validate(function(){var t=Object(s["a"])(regeneratorRuntime.mark((function t(a){var r,n,s,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(a){t.next=2;break}return t.abrupt("return");case 2:if(!e.isEdit){t.next=15;break}return t.next=5,c(e.formData);case 5:if(r=t.sent,n=r.data,200===n.status){t.next=10;break}return e.$message.error(n.msg),t.abrupt("return");case 10:e.$message.success(n.data),e.getUserDown(),e.close(),t.next=25;break;case 15:return t.next=17,l(e.formData);case 17:if(s=t.sent,i=s.data,200===i.status){t.next=22;break}return e.$message.error(i.data),t.abrupt("return");case 22:e.$message.success(i.data),e.getUserDown(),e.close();case 25:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},field105BeforeUpload:function(e){this.upList.length&&this.$message.warning("最多上传1个");var t=e.size/1024/1024<32;return t||this.$message.error("文件大小超过 32MB"),t}},computed:{},watch:{}},f=m,p=a("5d22"),h=Object(p["a"])(f,r,n,!1,null,"70576eda",null);t["default"]=h.exports},a756:function(e,t){e.exports=Object.is||function(e,t){return e===t?0!==e||1/e===1/t:e!=e&&t!=t}},c22d:function(e,t,a){"use strict";var r=a("9194"),n=a("baa9"),s=a("4023"),i=a("a756"),o=a("1a58");r("search",1,(function(e,t,a){return[function(t){var a=s(this),r=void 0==t?void 0:t[e];return void 0!==r?r.call(t,a):new RegExp(t)[e](String(a))},function(e){var r=a(t,e,this);if(r.done)return r.value;var s=n(e),l=String(this),u=s.lastIndex;i(u,0)||(s.lastIndex=0);var c=o(s,l);return i(s.lastIndex,u)||(s.lastIndex=u),null===c?-1:c.index}]}))}}]);