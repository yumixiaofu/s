(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["EnterpriseAuthentication~31ecd969","OtherControl~987e6011","OtherServerUpgradeConfig~987e6011"],{"05b0":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"authentication layout_card"},[a("div",{staticClass:"breadcrumb"},[a("el-breadcrumb",{attrs:{"separator-class":"el-icon-arrow-right"}},[a("el-breadcrumb-item",{attrs:{to:{path:"/verified"}}},[a("i",{staticClass:"iconfont icon-shimingrenzheng1"}),e._v(" 实名认证 ")]),a("el-breadcrumb-item",[e._v(" 企业认证 ")])],1)],1),a("div",{staticClass:"page-title"},[e._v(e._s(e.$t("verified.enterpriseCertification")))]),a("el-row",{staticClass:"authentication_main",attrs:{gutter:15}},[a("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,size:"medium","label-width":"135px"}},[a("el-col",{staticStyle:{overflow:"hidden","text-indent":"-9999em"},attrs:{xs:1,sm:4,md:5,lg:6,xl:7}},[e._v(".")]),a("el-col",{attrs:{xs:22,sm:16,md:14,lg:12,xl:10}},[a("el-row",{attrs:{gutter:15}},[e.certifi_typeOptions.length>1?a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"认证方式",prop:"certifi_type"}},[a("el-select",{style:{width:"100%"},attrs:{placeholder:"请选择认证方式"},model:{value:e.formData.certifi_type,callback:function(t){e.$set(e.formData,"certifi_type",t)},expression:"formData.certifi_type"}},e._l(e.certifi_typeOptions,(function(e,t){return a("el-option",{key:t,attrs:{label:e.name,value:e.value,disabled:e.disabled}})})),1)],1)],1):e._e(),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.companyName"),prop:"company_name"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.companyName"),clearable:""},model:{value:e.formData.company_name,callback:function(t){e.$set(e.formData,"company_name",t)},expression:"formData.company_name"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.businessLicense"),prop:"company_organ_code"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterBusinessLicenseNum"),clearable:""},model:{value:e.formData.company_organ_code,callback:function(t){e.$set(e.formData,"company_organ_code",t)},expression:"formData.company_organ_code"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.authorName"),prop:"real_name"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterAuthorName"),clearable:""},model:{value:e.formData.real_name,callback:function(t){e.$set(e.formData,"real_name",t)},expression:"formData.real_name"}})],1)],1),a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.identityCode"),prop:"idcard"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterIdentityCode"),clearable:""},model:{value:e.formData.idcard,callback:function(t){e.$set(e.formData,"idcard",t)},expression:"formData.idcard"}})],1)],1),"three"===e.formData.certifi_type?[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.enterBankID"),prop:"bank"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterBank"),clearable:""},model:{value:e.formData.bank,callback:function(t){e.$set(e.formData,"bank",t)},expression:"formData.bank"}})],1)],1),"three"===e.formData.certifi_type&&"four"===e.verData.three?[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.phoneNum"),prop:"phone"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterPhone"),clearable:""},model:{value:e.formData.phone,callback:function(t){e.$set(e.formData,"phone",t)},expression:"formData.phone"}})],1)],1)]:e._e()]:e._e(),"phonethree"===e.formData.certifi_type?[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.phoneNum"),prop:"phone"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:e.$t("verified.enterPhone"),clearable:""},model:{value:e.formData.phone,callback:function(t){e.$set(e.formData,"phone",t)},expression:"formData.phone"}})],1)],1)]:e._e(),"1"===e.certifi_is_upload?a("div",{staticClass:"limit-idcard"},[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:e.$t("verified.cardFrontBack"),prop:"idimage"}},[a("el-upload",{ref:"idimageRef",attrs:{"list-type":"picture-card",action:e.idimageAction,"on-success":e.handleSuccess,"on-exceed":e.handleExceed,"with-credentials":"","before-upload":e.idimageBeforeUpload,limit:2,name:"image","before-remove":e.handleRemove,accept:"image/*"}},[a("i",{staticClass:"el-icon-upload2"})])],1)],1)],1):e._e(),"1"===e.certifi_is_upload?a("div",{staticClass:"limit-company"},[a("el-col",{attrs:{span:24}},[a("el-form-item",{staticClass:"limitAgain",attrs:{label:e.$t("verified.businessLicense"),rules:[{required:!0}]}},[a("el-upload",{ref:"licenseRef",attrs:{"list-type":"picture-card",action:e.licenseAction,"on-success":e.handleSuccess,"on-exceed":e.licenseExceed,"with-credentials":"","before-upload":e.licenseBeforeUpload,limit:1,name:"image","before-remove":e.handleRemove,accept:"image/*"}},[a("i",{staticClass:"el-icon-upload2"})])],1)],1)],1):e._e()],2),"1"===e.certifi_is_upload?a("el-form-item",[a("div",{staticClass:"explanation"},[a("div",{staticClass:"explanation_msg"},[e._v(e._s(e.$t("verified.legendTips")))]),a("img",{attrs:{src:r("8097"),alt:""}}),a("img",{attrs:{src:r("3f64"),alt:""}})])]):e._e(),a("el-row",[a("el-col",{staticClass:"btn-margin",attrs:{span:24}},[a("el-form-item",{attrs:{size:"large"}},[a("el-button",{staticClass:"btn fr",staticStyle:{"margin-left":"10px"},attrs:{type:"primary",loading:e.btnLoading},on:{click:e.submitForm}},[e._v(" "+e._s(e.$t("verified.submitInformation")))]),a("el-button",{staticClass:"btn fr",on:{click:e.resetForm}},[e._v(e._s(e.$t("verified.reset")))])],1)],1)],1)],1),a("el-col",{staticStyle:{overflow:"hidden","text-indent":"-9999em"},attrs:{xs:1,sm:4,md:5,lg:6,xl:7}},[e._v(".")])],1)],1),a("el-dialog",e._g(e._b({attrs:{visible:e.qrVis,title:e.$t("verified.alipayScanCode"),width:"500px"},on:{open:e.onOpen,close:e.onClose}},"el-dialog",e.$attrs,!1),e.$listeners),[a("div",{staticClass:"qr"},[a("vue-qr",{attrs:{text:e.qr,size:450}})],1),a("div",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:e.close}},[e._v(e._s(e.$t("btnCancle")))]),a("el-button",{attrs:{type:"primary"},on:{click:e.handelConfirm}},[e._v(e._s(e.$t("btnConfirmation")))])],1)])],1)},i=[],n=(r("c740"),r("baa5"),r("a434"),r("b0c0"),r("4d63"),r("ac1f"),r("25f0"),r("466d"),r("96cf"),r("1da1")),s=r("ff07"),o={metaInfo:function(){return{title:this.$t("verified.pageTitle"),htmlAttrs:{lang:this.$t("htmlAttrs.lang"),amp:!0}}},data:function(){return{verData:{three:""},hasFile:!1,qr:"",qrVis:!1,timer:void 0,certifi_is_upload:"",formData:{certifi_type:"",company_name:void 0,company_organ_code:"",real_name:void 0,idcard:void 0,idimage:[],license:null,bank:"",phone:""},certifi_typeOptions:[],rules:{certifi_type:[{required:!0,message:"请选择认证方式",trigger:"blur"}],company_name:[{required:!0,message:this.$t("verified.enterCompanyName"),trigger:"blur"}],company_organ_code:[{required:!0,pattern:/^[a-zA-Z0-9,.()]{1,}$/,message:this.$t("verified.enterCorrectBusinessLicenseNum"),trigger:"blur"}],real_name:[{required:!0,message:this.$t("verified.enterAuthorName"),trigger:"blur"}],idcard:[{required:!0,message:this.$t("verified.enterIdentityCode"),trigger:"blur"}],idimage:[{required:!0,message:this.$t("verified.uploadCardFrontBack"),trigger:"blur"}],license:[{required:!1,message:this.$t("verified.uploadBusinessLicense"),trigger:"blur"}],bank:[{required:!0,message:this.$t("verified.enterBank"),trigger:"blur"},{pattern:/^[1-9]\d{9,29}$/,message:this.$t("verified.BankVerification"),trigger:"blur"}],phone:[{required:!0,message:this.$t("verified.enterPhone"),trigger:"blur"},{pattern:/^[0-9]\d{5,13}$/,message:this.$t("verified.PhoneVerification"),trigger:"blur"}]},idimageAction:this.$baseUrl+"/upload_image",licenseAction:this.$baseUrl+"/upload_image",btnLoading:!1}},methods:{getData:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(s["a"])();case 2:r=t.sent,a=r.data,e.verData=a,200!==a.status?e.$message.error(a.msg):(e.certifi_typeOptions=a.certifi_select,e.formData.certifi_type=a.default),e.certifi_is_upload=a.certifi_message.certifi_is_upload;case 7:case"end":return t.stop()}}),t)})))()},onOpen:function(){},onClose:function(){clearInterval(this.timer),this.qrVis=!1},close:function(){this.$emit("update:visible",!1),clearInterval(this.timer),this.qrVis=!1},handelConfirm:function(){clearInterval(this.timer),this.qrVis=!1},submitForm:function(){var e=this;this.$refs.elForm.validate(function(){var t=Object(n["a"])(regeneratorRuntime.mark((function t(r){var a,i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r){t.next=4;break}return t.abrupt("return",!1);case 4:if(3===e.formData.idimage.length||"1"!==e.certifi_is_upload){t.next=9;break}return e.$message.error(e.$t("verified.submitAfterUpload")),t.abrupt("return",!1);case 9:return e.btnLoading=!0,t.next=12,Object(s["d"])(e.formData);case 12:if(a=t.sent,i=a.data,200===i.status){t.next=18;break}e.$message.error(i.msg),t.next=30;break;case 18:if(!i.url){t.next=25;break}e.qr=i.url,e.qrVis=!0,e.$message.success(e.$t("verified.submitSuccess")+i.msg),e.timer=setInterval(Object(n["a"])(regeneratorRuntime.mark((function t(){var r;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(s["c"])();case 2:if(r=t.sent,200!==r.data.status){t.next=12;break}if("cart"!==e.$route.query.from){t.next=7;break}return e.$router.push({name:"OrderCart"}),t.abrupt("return");case 7:clearInterval(e.timer),e.$message.success(r.data.msg),e.$router.push({name:"Verified"}),t.next=12;break;case 12:case"end":return t.stop()}}),t)}))),3e3),t.next=30;break;case 25:if(e.$message.success(e.$t("verified.submitInformationSuccess")),"cart"!==e.$route.query.from){t.next=29;break}return e.$router.push({name:"OrderCart"}),t.abrupt("return");case 29:setTimeout((function(){e.$router.push({name:"Verified"})}),500);case 30:e.btnLoading=!1;case 31:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.elForm.resetFields(),this.$refs.idimageRef.clearFiles(),this.$refs.licenseRef.clearFiles()},field109BeforeUpload:function(e){var t=e.size/1024/1024<5;return t||this.$message.error(this.$t("verified.More5MBTips")),t},licenseBeforeUpload:function(e){if(!e.type.match(new RegExp("^image.*$")))return this.$message.error("格式不支持"),!1;if(e.size>=5242880)return this.$message.error(this.$t("verified.More5MB")),!1;var t=e.name.lastIndexOf("."),r=e.name.substring(0,t),a=/^[\u4E00-\u9FA5A-Za-z0-9_-]+$/;return a.test(r)?void 0:(this.$message.error("文件名只允许包含汉字，字母，数字，下划线，中划线"),this.formData.idimage=[],this.$refs.licenseRef.clearFiles(),!1)},handleExceed:function(){return this.$message.error(this.$t("verified.only2Pic")),!1},licenseExceed:function(){return this.$message.error(this.$t("verified.only1Pic")),!1},handleSuccess:function(e){if(200!==e.status)return this.$message.error(e.msg),this.$refs.idimageRef.clearFiles(),this.$refs.licenseRef.clearFiles(),void(this.formData.idimage.length=0);this.hasFile=!0,this.formData.idimage.push(e.savename)},handleRemove:function(e){var t=this.formData.idimage.findIndex((function(t){return t===e.response.savename}));this.formData.idimage.splice(t,1)},idimageBeforeUpload:function(e){if(e.type.match(new RegExp("^image.*$"))){if(e.size>=5242880)return this.$message.error(this.$t("verified.More5MB")),!1;var t=e.name.lastIndexOf("."),r=e.name.substring(0,t),a=/^[\u4E00-\u9FA5A-Za-z0-9_-]+$/;if(!a.test(r))return this.$message.error("文件名只允许包含汉字，字母，数字，下划线，中划线"),this.formData.idimage=[],this.$refs.idimageRef.clearFiles(),!1}else this.$message.error("格式不支持")},certification:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(s["a"])();case 2:r=t.sent,a=r.data,200!==a.status?e.$message.error(a.msg):(e.certifi_is_upload=a.certifi_message.certifi_is_upload,"2"===e.certifi_is_upload&&(e.rules.idimage=[]));case 5:case"end":return t.stop()}}),t)})))()}},created:function(){this.getData()}},c=o,l=(r("8022"),r("2877")),f=Object(l["a"])(c,a,i,!1,null,"65a8b167",null);t["default"]=f.exports},"1dde":function(e,t,r){var a=r("d039"),i=r("b622"),n=r("2d00"),s=i("species");e.exports=function(e){return n>=51||!a((function(){var t=[],r=t.constructor={};return r[s]=function(){return{foo:1}},1!==t[e](Boolean).foo}))}},"25f0":function(e,t,r){"use strict";var a=r("6eeb"),i=r("825a"),n=r("d039"),s=r("ad6d"),o="toString",c=RegExp.prototype,l=c[o],f=n((function(){return"/a/b"!=l.call({source:"a",flags:"b"})})),u=l.name!=o;(f||u)&&a(RegExp.prototype,o,(function(){var e=i(this),t=String(e.source),r=e.flags,a=String(void 0===r&&e instanceof RegExp&&!("flags"in c)?s.call(e):r);return"/"+t+"/"+a}),{unsafe:!0})},"3f64":function(e,t,r){e.exports=r.p+"img/upload-id-card-back.7d81446f.png"},"44e7":function(e,t,r){var a=r("861d"),i=r("c6b6"),n=r("b622"),s=n("match");e.exports=function(e){var t;return a(e)&&(void 0!==(t=e[s])?!!t:"RegExp"==i(e))}},"4d63":function(e,t,r){var a=r("83ab"),i=r("da84"),n=r("94ca"),s=r("7156"),o=r("9bf2").f,c=r("241c").f,l=r("44e7"),f=r("ad6d"),u=r("9f7f"),d=r("6eeb"),m=r("d039"),p=r("69f3").set,g=r("2626"),h=r("b622"),b=h("match"),v=i.RegExp,_=v.prototype,$=/a/g,x=/a/g,y=new v($)!==$,D=u.UNSUPPORTED_Y,k=a&&n("RegExp",!y||D||m((function(){return x[b]=!1,v($)!=$||v(x)==x||"/a/i"!=v($,"i")})));if(k){var w=function(e,t){var r,a=this instanceof w,i=l(e),n=void 0===t;if(!a&&i&&e.constructor===w&&n)return e;y?i&&!n&&(e=e.source):e instanceof w&&(n&&(t=f.call(e)),e=e.source),D&&(r=!!t&&t.indexOf("y")>-1,r&&(t=t.replace(/y/g,"")));var o=s(y?new v(e,t):v(e,t),a?this:_,w);return D&&r&&p(o,{sticky:r}),o},C=function(e){e in w||o(w,e,{configurable:!0,get:function(){return v[e]},set:function(t){v[e]=t}})},R=c(v),O=0;while(R.length>O)C(R[O++]);_.constructor=w,w.prototype=_,d(i,"RegExp",w)}g("RegExp")},8022:function(e,t,r){"use strict";var a=r("99af4"),i=r.n(a);i.a},8097:function(e,t,r){e.exports=r.p+"img/upload-id-card-fron.09d78ed5.png"},8418:function(e,t,r){"use strict";var a=r("c04e"),i=r("9bf2"),n=r("5c6c");e.exports=function(e,t,r){var s=a(t);s in e?i.f(e,s,n(0,r)):e[s]=r}},"99af4":function(e,t,r){},a434:function(e,t,r){"use strict";var a=r("23e7"),i=r("23cb"),n=r("a691"),s=r("50c4"),o=r("7b0b"),c=r("65f0"),l=r("8418"),f=r("1dde"),u=r("ae40"),d=f("splice"),m=u("splice",{ACCESSORS:!0,0:0,1:2}),p=Math.max,g=Math.min,h=9007199254740991,b="Maximum allowed length exceeded";a({target:"Array",proto:!0,forced:!d||!m},{splice:function(e,t){var r,a,f,u,d,m,v=o(this),_=s(v.length),$=i(e,_),x=arguments.length;if(0===x?r=a=0:1===x?(r=0,a=_-$):(r=x-2,a=g(p(n(t),0),_-$)),_+r-a>h)throw TypeError(b);for(f=c(v,a),u=0;u<a;u++)d=$+u,d in v&&l(f,u,v[d]);if(f.length=a,r<a){for(u=$;u<_-a;u++)d=u+a,m=u+r,d in v?v[m]=v[d]:delete v[m];for(u=_;u>_-a+r;u--)delete v[u-1]}else if(r>a)for(u=_-a;u>$;u--)d=u+a-1,m=u+r-1,d in v?v[m]=v[d]:delete v[m];for(u=0;u<r;u++)v[u+$]=arguments[u+2];return v.length=_-a+r,f}})},baa5:function(e,t,r){var a=r("23e7"),i=r("e58c");a({target:"Array",proto:!0,forced:i!==[].lastIndexOf},{lastIndexOf:i})},c740:function(e,t,r){"use strict";var a=r("23e7"),i=r("b727").findIndex,n=r("44d2"),s=r("ae40"),o="findIndex",c=!0,l=s(o);o in[]&&Array(1)[o]((function(){c=!1})),a({target:"Array",proto:!0,forced:c||!l},{findIndex:function(e){return i(this,e,arguments.length>1?arguments[1]:void 0)}}),n(o)},ff07:function(e,t,r){"use strict";r.d(t,"a",(function(){return i})),r.d(t,"b",(function(){return n})),r.d(t,"d",(function(){return s})),r.d(t,"c",(function(){return o}));var a=r("a27e");function i(){return Object(a["a"])({url:"/certifi"})}function n(e){return Object(a["a"])({url:"/person_certifi_post",method:"post",data:e})}function s(e){return Object(a["a"])({url:"/company_certifi_post",method:"post",data:e})}function o(){return Object(a["a"])({url:"/certifi_ping"})}}}]);