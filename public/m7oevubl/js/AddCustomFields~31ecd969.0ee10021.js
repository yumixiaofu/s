(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["AddCustomFields~31ecd969"],{"057f":function(e,t,r){var n=r("fc6a"),a=r("241c").f,i={}.toString,o="object"==typeof window&&window&&Object.getOwnPropertyNames?Object.getOwnPropertyNames(window):[],d=function(e){try{return a(e)}catch(t){return o.slice()}};e.exports.f=function(e){return o&&"[object Window]"==i.call(e)?d(e):a(n(e))}},"22fc":function(e,t,r){"use strict";r.d(t,"l",(function(){return a})),r.d(t,"i",(function(){return i})),r.d(t,"g",(function(){return o})),r.d(t,"k",(function(){return d})),r.d(t,"b",(function(){return s})),r.d(t,"f",(function(){return c})),r.d(t,"d",(function(){return l})),r.d(t,"m",(function(){return u})),r.d(t,"n",(function(){return f})),r.d(t,"h",(function(){return p})),r.d(t,"a",(function(){return m})),r.d(t,"j",(function(){return b})),r.d(t,"e",(function(){return g})),r.d(t,"c",(function(){return h}));var n=r("a27e");function a(){return Object(n["a"])({url:"list_ticket_department"})}function i(){return Object(n["a"])({url:"get_ticket_deliver"})}function o(){return Object(n["a"])({url:"get_ticket_department"})}function d(e){return Object(n["a"])({url:"list_ticket_department/"+e})}function s(e){return Object(n["a"])({url:"add_ticket_department",method:"post",data:e})}function c(e){return Object(n["a"])({url:"save_ticket_department",method:"post",data:e})}function l(e){return Object(n["a"])({url:"delete_ticket_department",method:"post",data:e})}function u(e){return Object(n["a"])({url:"movedown_ticket_department",method:"post",data:e})}function f(e){return Object(n["a"])({url:"moveup_ticket_department",method:"post",data:e})}function p(e){return Object(n["a"])({url:"get_custom_param_type",method:"get",params:e})}function m(e){return Object(n["a"])({url:"add_ticket_custom_param",method:"get",params:e})}function b(e){return Object(n["a"])({url:"get_ticket_param_val",method:"get",params:e})}function g(e){return Object(n["a"])({url:"edit_ticket_custom_param",method:"get",params:e})}function h(e){return Object(n["a"])({url:"del_ticket_custom_param",method:"get",params:e})}},"746f":function(e,t,r){var n=r("428f"),a=r("5135"),i=r("e538"),o=r("9bf2").f;e.exports=function(e){var t=n.Symbol||(n.Symbol={});a(t,e)||o(t,e,{value:i.f(e)})}},a4d3:function(e,t,r){"use strict";var n=r("23e7"),a=r("da84"),i=r("d066"),o=r("c430"),d=r("83ab"),s=r("4930"),c=r("fdbf"),l=r("d039"),u=r("5135"),f=r("e8b5"),p=r("861d"),m=r("825a"),b=r("7b0b"),g=r("fc6a"),h=r("c04e"),v=r("5c6c"),y=r("7c73"),w=r("df75"),O=r("241c"),_=r("057f"),k=r("7418"),j=r("06cf"),F=r("9bf2"),D=r("d1e7"),x=r("9112"),S=r("6eeb"),$=r("5692"),I=r("f772"),q=r("d012"),P=r("90e3"),R=r("b622"),C=r("e538"),L=r("746f"),z=r("d44e"),E=r("69f3"),N=r("b727").forEach,T=I("hidden"),A="Symbol",J="prototype",W=R("toPrimitive"),B=E.set,Q=E.getterFor(A),G=Object[J],H=a.Symbol,K=i("JSON","stringify"),M=j.f,U=F.f,V=_.f,X=D.f,Y=$("symbols"),Z=$("op-symbols"),ee=$("string-to-symbol-registry"),te=$("symbol-to-string-registry"),re=$("wks"),ne=a.QObject,ae=!ne||!ne[J]||!ne[J].findChild,ie=d&&l((function(){return 7!=y(U({},"a",{get:function(){return U(this,"a",{value:7}).a}})).a}))?function(e,t,r){var n=M(G,t);n&&delete G[t],U(e,t,r),n&&e!==G&&U(G,t,n)}:U,oe=function(e,t){var r=Y[e]=y(H[J]);return B(r,{type:A,tag:e,description:t}),d||(r.description=t),r},de=c?function(e){return"symbol"==typeof e}:function(e){return Object(e)instanceof H},se=function(e,t,r){e===G&&se(Z,t,r),m(e);var n=h(t,!0);return m(r),u(Y,n)?(r.enumerable?(u(e,T)&&e[T][n]&&(e[T][n]=!1),r=y(r,{enumerable:v(0,!1)})):(u(e,T)||U(e,T,v(1,{})),e[T][n]=!0),ie(e,n,r)):U(e,n,r)},ce=function(e,t){m(e);var r=g(t),n=w(r).concat(me(r));return N(n,(function(t){d&&!ue.call(r,t)||se(e,t,r[t])})),e},le=function(e,t){return void 0===t?y(e):ce(y(e),t)},ue=function(e){var t=h(e,!0),r=X.call(this,t);return!(this===G&&u(Y,t)&&!u(Z,t))&&(!(r||!u(this,t)||!u(Y,t)||u(this,T)&&this[T][t])||r)},fe=function(e,t){var r=g(e),n=h(t,!0);if(r!==G||!u(Y,n)||u(Z,n)){var a=M(r,n);return!a||!u(Y,n)||u(r,T)&&r[T][n]||(a.enumerable=!0),a}},pe=function(e){var t=V(g(e)),r=[];return N(t,(function(e){u(Y,e)||u(q,e)||r.push(e)})),r},me=function(e){var t=e===G,r=V(t?Z:g(e)),n=[];return N(r,(function(e){!u(Y,e)||t&&!u(G,e)||n.push(Y[e])})),n};if(s||(H=function(){if(this instanceof H)throw TypeError("Symbol is not a constructor");var e=arguments.length&&void 0!==arguments[0]?String(arguments[0]):void 0,t=P(e),r=function(e){this===G&&r.call(Z,e),u(this,T)&&u(this[T],t)&&(this[T][t]=!1),ie(this,t,v(1,e))};return d&&ae&&ie(G,t,{configurable:!0,set:r}),oe(t,e)},S(H[J],"toString",(function(){return Q(this).tag})),S(H,"withoutSetter",(function(e){return oe(P(e),e)})),D.f=ue,F.f=se,j.f=fe,O.f=_.f=pe,k.f=me,C.f=function(e){return oe(R(e),e)},d&&(U(H[J],"description",{configurable:!0,get:function(){return Q(this).description}}),o||S(G,"propertyIsEnumerable",ue,{unsafe:!0}))),n({global:!0,wrap:!0,forced:!s,sham:!s},{Symbol:H}),N(w(re),(function(e){L(e)})),n({target:A,stat:!0,forced:!s},{for:function(e){var t=String(e);if(u(ee,t))return ee[t];var r=H(t);return ee[t]=r,te[r]=t,r},keyFor:function(e){if(!de(e))throw TypeError(e+" is not a symbol");if(u(te,e))return te[e]},useSetter:function(){ae=!0},useSimple:function(){ae=!1}}),n({target:"Object",stat:!0,forced:!s,sham:!d},{create:le,defineProperty:se,defineProperties:ce,getOwnPropertyDescriptor:fe}),n({target:"Object",stat:!0,forced:!s},{getOwnPropertyNames:pe,getOwnPropertySymbols:me}),n({target:"Object",stat:!0,forced:l((function(){k.f(1)}))},{getOwnPropertySymbols:function(e){return k.f(b(e))}}),K){var be=!s||l((function(){var e=H();return"[null]"!=K([e])||"{}"!=K({a:e})||"{}"!=K(Object(e))}));n({target:"JSON",stat:!0,forced:be},{stringify:function(e,t,r){var n,a=[e],i=1;while(arguments.length>i)a.push(arguments[i++]);if(n=t,(p(t)||void 0!==e)&&!de(e))return f(t)||(t=function(e,t){if("function"==typeof n&&(t=n.call(this,e,t)),!de(t))return t}),a[1]=t,K.apply(null,a)}})}H[J][W]||x(H[J],W,H[J].valueOf),z(H,A),q[T]=!0},d0fe:function(e,t,r){"use strict";r.r(t);var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",[r("h2",[e._v(e._s(e.fieldId?"修改字段":"新增字段"))]),r("el-divider"),r("el-row",{staticClass:"topform_wrap"},[r("el-form",{ref:"addSupportTicketForm",attrs:{model:e.addFieldsData,"label-width":e.labelWidth}},[r("el-form-item",{attrs:{label:"字段名称",prop:"fieldname"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入字段名称",clearable:""},model:{value:e.addFieldsData.fieldname,callback:function(t){e.$set(e.addFieldsData,"fieldname",t)},expression:"addFieldsData.fieldname"}}),r("span",{staticClass:"ml-20"},[e._v("用于在提交工单时显示")])],1),r("el-form-item",{attrs:{label:"字段类型",prop:"fieldtype"}},[r("el-select",{style:{width:"260px"},attrs:{placeholder:"请选择字段类型"},model:{value:e.addFieldsData.fieldtype,callback:function(t){e.$set(e.addFieldsData,"fieldtype",t)},expression:"addFieldsData.fieldtype"}},e._l(e.fieldOptions,(function(e){return r("el-option",{key:e.key,attrs:{label:e.value,value:e.key}})})),1)],1),r("el-form-item",{attrs:{label:"描述",prop:"description"}},[r("el-input",{style:{width:"260px"},attrs:{type:"textarea",placeholder:"请输入描述",maxlength:1e4,autosize:{minRows:5,maxRows:5},"show-word-limit":""},model:{value:e.addFieldsData.description,callback:function(t){e.$set(e.addFieldsData,"description",t)},expression:"addFieldsData.description"}}),r("span",{staticClass:"ml-20"},[e._v("用于在提交时显示")])],1),r("el-form-item",{attrs:{label:"选项",prop:"fieldoptions"}},[r("el-input",{style:{width:"260px"},attrs:{size:"small",placeholder:"请输入选项",clearable:"",disabled:"dropdown"!==e.addFieldsData.fieldtype},model:{value:e.addFieldsData.fieldoptions,callback:function(t){e.$set(e.addFieldsData,"fieldoptions",t)},expression:"addFieldsData.fieldoptions"}}),r("span",{staticClass:"ml-20"},[e._v("只对 下拉 有效-用英文半角逗号分隔")])],1),r("el-form-item",{attrs:{label:"必填",prop:"required"}},[r("el-checkbox",{model:{value:e.addFieldsData.required,callback:function(t){e.$set(e.addFieldsData,"required",t)},expression:"addFieldsData.required"}})],1)],1)],1),r("div",{staticClass:"bottomOperationAdd"},[r("el-button",{attrs:{size:"small",loading:e.btnLoading,type:"primary"},on:{click:e.saveFields}},[e._v("保存")]),r("el-button",{attrs:{size:"small"},on:{click:e.cancel}},[e._v("取消")])],1)],1)},a=[],i=(r("a4d3"),r("e01a"),r("96cf"),r("1da1")),o=r("22fc"),d={metaInfo:{title:"新建工单"},data:function(){return{btnLoading:!1,fieldId:this.$route.query.fieldId?this.$route.query.fieldId:"",labelWidth:window.document.body.clientWidth>768?"100px":null,addFieldsData:{fieldname:"",fieldtype:"",description:"",fieldoptions:"",required:!0},fieldOptions:[],value:""}},mounted:function(){this.getFieldsList(),this.fieldId&&this.getDetail()},methods:{getDetail:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(o["j"])({fieldId:e.fieldId});case 2:r=t.sent,n=r.data,200===n.status?(e.addFieldsData.fieldname=n.data.fieldname,e.addFieldsData.fieldtype=n.data.fieldtype,e.addFieldsData.description=n.data.description,e.addFieldsData.fieldoptions=n.data.fieldoptions,e.addFieldsData.required=Boolean(n.data.required)):e.$message({message:n.msg,type:"error"});case 5:case"end":return t.stop()}}),t)})))()},saveFields:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var r,n,a,i,d,s,c,l,u,f;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.btnLoading=!0,r=e.addFieldsData,n=r.fieldname,a=r.fieldtype,i=r.description,d=r.fieldoptions,s={},!e.fieldId){t.next=13;break}return s={ticketId:e.$route.query.ticketId,fieldId:e.fieldId,fieldname:n,fieldtype:a,description:i,fieldoptions:d,required:e.addFieldsData.required?"1":"0"},t.next=7,Object(o["e"])(s);case 7:c=t.sent,l=c.data,200===l.status?(e.$message({message:l.msg,type:"success"}),e.$router.back()):e.$message({message:l.msg,type:"error"}),e.btnLoading=!1,t.next=20;break;case 13:return s={ticketId:e.$route.query.ticketId,fieldname:n,fieldtype:a,description:i,fieldoptions:d,required:e.addFieldsData.required?"1":"0"},t.next=16,Object(o["a"])(s);case 16:u=t.sent,f=u.data,200===f.status?(e.$message({message:f.msg,type:"success"}),e.$router.back()):e.$message({message:f.msg,type:"error"}),e.btnLoading=!1;case 20:case"end":return t.stop()}}),t)})))()},getFieldsList:function(){var e=this;return Object(i["a"])(regeneratorRuntime.mark((function t(){var r,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(o["h"])();case 2:r=t.sent,n=r.data,200===n.status?e.fieldOptions=e.objToArr(n.data):e.$message({message:n.msg,type:"error"});case 5:case"end":return t.stop()}}),t)})))()},cancel:function(){this.$router.back()},objToArr:function(e){var t=[];for(var r in e){var n={};n.key=r,n.value=e[r],t.push(n)}return t}}},s=d,c=r("2877"),l=Object(c["a"])(s,n,a,!1,null,"5e1d6cac",null);t["default"]=l.exports},e01a:function(e,t,r){"use strict";var n=r("23e7"),a=r("83ab"),i=r("da84"),o=r("5135"),d=r("861d"),s=r("9bf2").f,c=r("e893"),l=i.Symbol;if(a&&"function"==typeof l&&(!("description"in l.prototype)||void 0!==l().description)){var u={},f=function(){var e=arguments.length<1||void 0===arguments[0]?void 0:String(arguments[0]),t=this instanceof f?new l(e):void 0===e?l():l(e);return""===e&&(u[t]=!0),t};c(f,l);var p=f.prototype=l.prototype;p.constructor=f;var m=p.toString,b="Symbol(test)"==String(l("test")),g=/^Symbol\((.*)\)[^)]+$/;s(p,"description",{configurable:!0,get:function(){var e=d(this)?this.valueOf():this,t=m.call(e);if(o(u,e))return"";var r=b?t.slice(7,-1):t.replace(g,"$1");return""===r?void 0:r}}),n({global:!0,forced:!0},{Symbol:f})}},e538:function(e,t,r){var n=r("b622");t.f=n}}]);