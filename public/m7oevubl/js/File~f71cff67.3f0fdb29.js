(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["File~f71cff67"],{5574:function(e,t,a){},6671:function(e,t,a){"use strict";a.d(t,"h",(function(){return i})),a.d(t,"b",(function(){return o})),a.d(t,"f",(function(){return l})),a.d(t,"g",(function(){return s})),a.d(t,"d",(function(){return n})),a.d(t,"c",(function(){return d})),a.d(t,"i",(function(){return u})),a.d(t,"a",(function(){return c})),a.d(t,"e",(function(){return m})),a.d(t,"j",(function(){return f}));var r=a("a27e");function i(e){return Object(r["a"])({url:"downloads/list",params:{id:e}})}function o(e){return Object(r["a"])({url:"downloads/create",method:"post",data:e})}function l(e){return Object(r["a"])({url:"downloads/edit",params:{id:e}})}function s(e){return Object(r["a"])({url:"downloads/update",method:"post",data:e})}function n(e){return Object(r["a"])({url:"downloads/cat",method:"delete",params:{id:e}})}function d(e){return Object(r["a"])({url:"downloads/file",method:"delete",params:{id:e}})}function u(e){return Object(r["a"])({url:"downloads/filepage",params:{id:e}})}function c(e){return Object(r["a"])({url:"downloads/addfile",method:"post",data:e})}function m(e){return Object(r["a"])({url:"downloads/savefile",method:"post",data:e})}function f(e){return Object(r["a"])({url:"downloads/updatesort",method:"post",data:e})}},"739e":function(e,t,a){"use strict";var r=a("5574"),i=a.n(r);i.a},7441:function(e,t,a){e.exports=a.p+"img/pic.76b2a05b.svg"},"81cd":function(e,t,a){e.exports=a.p+"img/zip.b39f9e2a.svg"},a83a:function(e,t,a){e.exports=a.p+"img/txt.c45c8fe9.svg"},e494:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{},[r("h2",[e._v(e._s(e.isAdd?"添加文件":"编辑文件"))]),r("div",[r("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,size:"medium","label-width":"auto"}},[e.isEdit?r("el-form-item",{attrs:{label:"文件分类"}},[r("el-input",{attrs:{size:"small",readonly:""},model:{value:e.formData.category,callback:function(t){e.$set(e.formData,"category",t)},expression:"formData.category"}})],1):e._e(),r("el-form-item",{attrs:{label:"文件类型",prop:"type"}},[r("el-select",{style:{width:"260px"},attrs:{placeholder:"请选择文件类型",clearable:""},model:{value:e.formData.type,callback:function(t){e.$set(e.formData,"type",t)},expression:"formData.type"}},e._l(e.pageData.type,(function(e,t){return r("el-option",{key:t,attrs:{label:e.name,value:e.id.toString(),disabled:e.disabled}})})),1)],1),r("el-form-item",{attrs:{label:"标题",prop:"title"}},[r("el-input",{style:{width:"260px"},attrs:{placeholder:"请输入标题",clearable:""},model:{value:e.formData.title,callback:function(t){e.$set(e.formData,"title",t)},expression:"formData.title"}})],1),r("el-form-item",{attrs:{label:"描述",prop:"description"}},[r("el-input",{style:{width:"260px"},attrs:{type:"textarea",placeholder:"请输入描述",autosize:{minRows:5,maxRows:5}},model:{value:e.formData.description,callback:function(t){e.$set(e.formData,"description",t)},expression:"formData.description"}})],1),e.isAdd?r("el-form-item",{attrs:{label:"上传文件",prop:"filetype"}},[r("el-radio-group",{attrs:{size:"medium"},model:{value:e.formData.filetype,callback:function(t){e.$set(e.formData,"filetype",t)},expression:"formData.filetype"}},e._l(e.filetypeOptions,(function(t,a){return r("el-radio",{key:a,attrs:{label:t.value,disabled:t.disabled}},[e._v(e._s(t.label))])})),1)],1):e._e(),e.isEdit?[r("el-form-item",{attrs:{label:"上传文件"}},[r("div",{staticClass:"file_main"},[r("div",["1"===e.formData.type?r("img",{staticStyle:{"margin-bottom":"-5px"},attrs:{src:a("81cd"),alt:"",width:"50px"}}):e._e(),"2"===e.formData.type?r("img",{staticStyle:{"margin-bottom":"-5px"},attrs:{src:a("7441"),alt:"",width:"50px"}}):e._e(),"3"===e.formData.type?r("img",{staticStyle:{"margin-bottom":"-5px"},attrs:{src:a("a83a"),alt:"",width:"50px"}}):e._e(),r("i",{staticClass:"el-icon-download",staticStyle:{"font-size":"20px",color:"#2e53e9",cursor:"pointer"},on:{click:e.downLoadFile}})]),r("div",{staticClass:"file_name"},[e._v(e._s(e.formData.locationname))])])]),r("el-form-item",{attrs:{label:"下载次数"}},[r("el-input-number",{attrs:{size:"mini",controls:!1,min:0},model:{value:e.formData.downloads,callback:function(t){e.$set(e.formData,"downloads",t)},expression:"formData.downloads"}})],1)]:e._e(),e.showFileName&&!e.isEdit?r("el-form-item",{attrs:{label:"输入文件名",prop:"filename"}},[r("el-input",{style:{width:"100%"},attrs:{placeholder:"请输入输入文件名",clearable:""},model:{value:e.formData.filename,callback:function(t){e.$set(e.formData,"filename",t)},expression:"formData.filename"}})],1):e._e(),e.showFileName||!1!==e.isEdit?e._e():r("el-form-item",{staticStyle:{"margin-bottom":"0 !important"},attrs:{label:""}},[r("el-upload",{ref:"attachment",attrs:{"file-list":e.fileList,action:e.attachmentAction,limit:1,"before-upload":e.beforeUpload,"on-success":e.successUpload,"before-remove":e.handleRemove,"with-credentials":"",name:"uploadfile","on-exceed":e.handleExceed,accept:".rar,.zip,.png,.jpg,.jpeg,.gif,.doc,.docx,.key,.number,.pages,.pdf,.ppt,.pptx,.txt,.rtf,.vcf,.xls,.xlsx"}},[r("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-upload"}},[e._v("点击上传")]),r("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[e._v("只能上传 1个 不超过 50MB 的文件")])],1)],1),r("el-form-item",{attrs:{label:"需要登录",prop:"clientsonly"}},[r("el-checkbox",{attrs:{"true-label":1,"false-label":0,label:"用户登录之后才能下载该文件"},model:{value:e.formData.clientsonly,callback:function(t){e.$set(e.formData,"clientsonly",t)},expression:"formData.clientsonly"}})],1),r("el-form-item",{attrs:{label:"产品附件",prop:"productdownload"}},[r("el-checkbox",{attrs:{"true-label":1,"false-label":0,label:"需要购买相应的产品后才可下载该文件，需在指定产品内页查看并下载"},model:{value:e.formData.productdownload,callback:function(t){e.$set(e.formData,"productdownload",t)},expression:"formData.productdownload"}})],1),r("el-form-item",{attrs:{label:"隐藏",prop:"hidden"}},[r("el-checkbox",{attrs:{"true-label":1,"false-label":0,label:"隐藏后列表不可见"},model:{value:e.formData.hidden,callback:function(t){e.$set(e.formData,"hidden",t)},expression:"formData.hidden"}})],1),e.isEdit?r("el-form-item",{attrs:{label:"下载链接"}},[r("el-input",{attrs:{size:"mini",readonly:""},model:{value:e.formData.url,callback:function(t){e.$set(e.formData,"url",t)},expression:"formData.url"}})],1):e._e()],2)],1),r("div",{staticClass:"bottomOperationAdd"},[r("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.submitForm}},[e._v("提交")]),r("el-button",{attrs:{size:"small"},on:{click:e.resetForm}},[e._v("重置")])],1)])},i=[],o=(a("96cf"),a("1da1")),l=a("6671"),s={components:{},props:[],data:function(){return{opType:this.$route.query.type,fileInfo:{},fileList:[],pageData:{type:[]},showFileName:!1,isAdd:!1,isEdit:!1,formData:{url:"",id:0,downloads:0,cateid:0,type:void 0,title:void 0,description:void 0,filetype:"upload",filename:"",uploadfile:"",uploadfilename:"",clientsonly:0,productdownload:0,hidden:0},rules:{type:[{required:!0,message:"请选择文件类型",trigger:"change"}],title:[{required:!0,message:"请输入文件名称",trigger:"blur"}],description:[],filetype:[{required:!0,message:"上传文件不能为空",trigger:"change"}],filename:[{required:!1,message:"请输入输入文件名",trigger:"blur"}],clientsonly:[],productdownload:[],hidden:[]},filetypeOptions:[{label:"上传文件",value:"upload"},{label:"通过FTP手动上传至public/upload/support目录",value:"manual"}],attachmentAction:this.$baseUrl+"/downloads/uploadfile"}},computed:{},watch:{"formData.filetype":{handler:function(e){"manual"===e&&this.isAdd?(this.showFileName=!0,this.rules.filename[0].required=!0):"upload"===e&&(this.showFileName=!1,this.rules.filename[0].required=!1)},immediate:!0,deep:!0}},created:function(){this.getData(),"add"===this.$route.query.type?(this.isAdd=!0,this.isEdit=!1):"edit"===this.$route.query.type?(this.isAdd=!1,this.isEdit=!0,this.rules.filetype[0].required=!1):(this.isAdd=!1,this.isEdit=!1,this.$message.error("缺少必要数据，请从“文件下载”页面进入")),this.formData.id=this.$route.query.wid,this.formData.cateid=this.$route.query.wid},mounted:function(){},methods:{handleExceed:function(e,t){this.$message.warning("最多上传1个文件。")},downLoadFile:function(){open(this.$baseUrl+"/downloads/file/id/"+this.$route.query.wid)},handleRemove:function(e){this.formData.uploadfile=""},successUpload:function(e,t,a){if(200!==e.status)return this.$refs.attachment.clearFiles(),this.formData.uploadfile="",this.$message.error(e.msg),!1;this.$message.success("上传成功"),this.formData.uploadfile=e.data.savename,this.formData.uploadfilename=e.data.origin_name},beforeUpload:function(e){var t=e.size/1024/1024<50;t||(this.$message.error("文件大小超过 50MB"),this.$refs.attachment.clearFiles())},getData:function(){var e=this;return Object(o["a"])(regeneratorRuntime.mark((function t(){var a,r,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a=e.$route.query.wid?e.$route.query.wid:0,t.next=3,Object(l["i"])(a);case 3:r=t.sent,i=r.data,e.pageData=i.data,"edit"===e.$route.query.type&&(e.formData=i.data.file_info);case 7:case"end":return t.stop()}}),t)})))()},submitForm:function(){var e=this;this.$refs.elForm.validate(function(){var t=Object(o["a"])(regeneratorRuntime.mark((function t(a){var r,i,o,s,n,d;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(a){t.next=2;break}return t.abrupt("return",!1);case 2:if(!e.isAdd){t.next=11;break}return e.formData.cateid=e.$route.query.id,t.next=6,Object(l["a"])(e.formData);case 6:r=t.sent,i=r.data,200!==i.status?e.$message.error(i.data):(e.$message.success(i.data),e.$store.commit("fileGroupId",e.$route.query.id),e.$router.push({name:"ServiceSupport"})),t.next=30;break;case 11:if(!e.isEdit){t.next=30;break}if("manual"!==e.formData.filetype){t.next=22;break}return e.formData.cateid=e.$route.query.id,e.formData.filename=e.formData.location,t.next=17,Object(l["e"])(e.formData);case 17:o=t.sent,s=o.data,200!==s.status?e.$message.error(s.data):e.$message.success(s.data),t.next=30;break;case 22:return e.formData.cateid=e.$route.query.id,e.formData.uploadfile=e.formData.location,e.formData.uploadfilename=e.formData.locationname,t.next=27,Object(l["e"])(e.formData);case 27:n=t.sent,d=n.data,200!==d.status?e.$message.error(d.data):(e.$message.success(d.data),e.$store.commit("fileGroupId",e.$route.query.id),e.$router.push({name:"ServiceSupport"}));case 30:e.$store.commit("setFileOp",e.opType);case 31:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.elForm.resetFields()}}},n=s,d=(a("739e"),a("2877")),u=Object(d["a"])(n,r,i,!1,null,"02241be8",null);t["default"]=u.exports}}]);