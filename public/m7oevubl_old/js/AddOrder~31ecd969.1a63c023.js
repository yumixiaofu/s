(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["AddOrder~31ecd969"],{"1dde":function(e,t,r){var o=r("d039"),a=r("b622"),n=r("2d00"),i=a("species");e.exports=function(e){return n>=51||!o((function(){var t=[],r=t.constructor={};return r[i]=function(){return{foo:1}},1!==t[e](Boolean).foo}))}},2532:function(e,t,r){"use strict";var o=r("23e7"),a=r("5a34"),n=r("1d80"),i=r("ab13");o({target:"String",proto:!0,forced:!i("includes")},{includes:function(e){return!!~String(n(this)).indexOf(a(e),arguments.length>1?arguments[1]:void 0)}})},"44e7":function(e,t,r){var o=r("861d"),a=r("c6b6"),n=r("b622"),i=n("match");e.exports=function(e){var t;return o(e)&&(void 0!==(t=e[i])?!!t:"RegExp"==a(e))}},"46f4":function(e,t,r){},"4d63":function(e,t,r){var o=r("83ab"),a=r("da84"),n=r("94ca"),i=r("7156"),s=r("9bf2").f,c=r("241c").f,l=r("44e7"),u=r("ad6d"),d=r("9f7f"),p=r("6eeb"),m=r("d039"),f=r("69f3").set,_=r("2626"),h=r("b622"),v=h("match"),y=a.RegExp,b=y.prototype,g=/a/g,O=/a/g,x=new y(g)!==g,w=d.UNSUPPORTED_Y,D=o&&n("RegExp",!x||w||m((function(){return O[v]=!1,y(g)!=g||y(O)==O||"/a/i"!=y(g,"i")})));if(D){var k=function(e,t){var r,o=this instanceof k,a=l(e),n=void 0===t;if(!o&&a&&e.constructor===k&&n)return e;x?a&&!n&&(e=e.source):e instanceof k&&(n&&(t=u.call(e)),e=e.source),w&&(r=!!t&&t.indexOf("y")>-1,r&&(t=t.replace(/y/g,"")));var s=i(x?new y(e,t):y(e,t),o?this:b,k);return w&&r&&f(s,{sticky:r}),s},j=function(e){e in k||s(k,e,{configurable:!0,get:function(){return y[e]},set:function(t){y[e]=t}})},$=c(y),C=0;while($.length>C)j($[C++]);b.constructor=k,k.prototype=b,p(a,"RegExp",k)}_("RegExp")},"5a34":function(e,t,r){var o=r("44e7");e.exports=function(e){if(o(e))throw TypeError("The method doesn't accept regular expressions");return e}},"6a8e":function(e,t,r){"use strict";r.d(t,"e",(function(){return a})),r.d(t,"f",(function(){return n})),r.d(t,"c",(function(){return i})),r.d(t,"b",(function(){return s})),r.d(t,"a",(function(){return c})),r.d(t,"d",(function(){return l})),r.d(t,"g",(function(){return u})),r.d(t,"i",(function(){return d})),r.d(t,"h",(function(){return p}));var o=r("a27e");function a(e,t){return Object(o["a"])({url:"common/get_product_list",params:{type:e,id:t}})}function n(e){return Object(o["a"])({url:"common/get_promo_code",params:{type:e}})}function i(){return Object(o["a"])({url:"common/get_getways"})}function s(e){return Object(o["a"])({url:"common/get_email_tem",params:{type:e}})}function c(){return Object(o["a"])({url:"common/get_client_groups"})}function l(e){return Object(o["a"])({url:"common/host_list",params:{uid:e}})}function u(){return Object(o["a"])({url:"common/get_sms_country"})}function d(){return Object(o["a"])({url:"common/product_config_options"})}function p(e){return Object(o["a"])({url:"common/get_upstream_ticket_department_list",params:{id:e}})}},8049:function(e,t,r){"use strict";var o=r("46f4"),a=r.n(o);a.a},8418:function(e,t,r){"use strict";var o=r("c04e"),a=r("9bf2"),n=r("5c6c");e.exports=function(e,t,r){var i=o(t);i in e?a.f(e,i,n(0,r)):e[i]=r}},a434:function(e,t,r){"use strict";var o=r("23e7"),a=r("23cb"),n=r("a691"),i=r("50c4"),s=r("7b0b"),c=r("65f0"),l=r("8418"),u=r("1dde"),d=r("ae40"),p=u("splice"),m=d("splice",{ACCESSORS:!0,0:0,1:2}),f=Math.max,_=Math.min,h=9007199254740991,v="Maximum allowed length exceeded";o({target:"Array",proto:!0,forced:!p||!m},{splice:function(e,t){var r,o,u,d,p,m,y=s(this),b=i(y.length),g=a(e,b),O=arguments.length;if(0===O?r=o=0:1===O?(r=0,o=b-g):(r=O-2,o=_(f(n(t),0),b-g)),b+r-o>h)throw TypeError(v);for(u=c(y,o),d=0;d<o;d++)p=g+d,p in y&&l(u,d,y[p]);if(u.length=o,r<o){for(d=g;d<b-o;d++)p=d+o,m=d+r,p in y?y[m]=y[p]:delete y[m];for(d=b;d>b-o+r;d--)delete y[d-1]}else if(r>o)for(d=b-o;d>g;d--)p=d+o-1,m=d+r-1,p in y?y[m]=y[p]:delete y[m];for(d=0;d<r;d++)y[d+g]=arguments[d+2];return y.length=b-o+r,u}})},a673:function(e,t,r){"use strict";r.r(t);var o=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"box"},[r("h2",[e._v("添加订单")]),r("el-divider"),r("el-row",[r("el-col",{staticClass:"order-info",attrs:{md:24,lg:16,xl:16}},[r("el-form",{ref:"elForm",attrs:{model:e.formData,rules:e.rules,"label-width":e.labelWidth}},[r("el-form-item",{attrs:{label:"客户",prop:"uid"}},[r("el-autocomplete",{style:{width:"260px"},attrs:{"trigger-on-focus":!0,size:"small","fetch-suggestions":e.querySearchAsync,placeholder:"请输入用户"},on:{input:e.clearUid,select:e.handleSelect},scopedSlots:e._u([{key:"default",fn:function(t){var o=t.item;return[r("el-row",[r("el-col",{attrs:{span:24}},[r("span",{staticStyle:{"font-size":"14px"}},[e._v(e._s(o.username))]),r("span",[e._v(e._s(o.companyname?" ("+o.companyname+")":""))]),r("span",[e._v(e._s(o.id?" - #"+o.id:""))])]),r("el-col",{staticStyle:{"margin-top":"-10px"},attrs:{span:24}},[r("span",{staticStyle:{"font-size":"12px",color:"#999"}},[e._v(e._s(o.email))])])],1)]}}]),model:{value:e.formData.username,callback:function(t){e.$set(e.formData,"username",t)},expression:"formData.username"}})],1),r("el-form-item",{attrs:{label:"支付方式",prop:"payment"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 支付方式 "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("选择对应支付网关进行结算付款。")]),r("el-col",{staticClass:"tar",attrs:{span:24}},[r("router-link",{attrs:{to:{path:"/payment-interface"},target:"_blank"}},[r("el-link",{attrs:{type:"primary"}},[e._v("设置支付方式")])],1)],1)],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择付款方式",clearable:""},model:{value:e.formData.payment,callback:function(t){e.$set(e.formData,"payment",t)},expression:"formData.payment"}},e._l(e.paymentOptions,(function(e,t){return r("el-option",{key:t,attrs:{label:e.title,value:e.name}})})),1)],1),r("el-form-item",{attrs:{label:"优惠码",prop:"promo_code"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 优惠码 "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("下拉菜单中选择优惠码，可对订单应用折扣。")])],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择优惠码",clearable:"",filterable:""},on:{change:e.orderGetTotal},model:{value:e.formData.promo_code,callback:function(t){e.$set(e.formData,"promo_code",t)},expression:"formData.promo_code"}},e._l(e.promo_codeOptions,(function(t,o){return r("el-option-group",{key:o,attrs:{label:t.promo_codeGroupName}},e._l(t.child,(function(e){return r("el-option",{key:e.id,attrs:{label:e.promo_desc,value:e.code}})})),1)})),1),r("el-button",{staticClass:"mlpage-10",attrs:{size:"small",icon:"el-icon-plus"},on:{click:function(t){e.promo_codeDialogVisiable=!0}}},[e._v("添加优惠码 ")])],1),r("el-form-item",{attrs:{label:"",prop:""}},[r("el-checkbox",{attrs:{"true-label":1,"false-label":0},model:{value:e.formData.adminorderconf,callback:function(t){e.$set(e.formData,"adminorderconf",t)},expression:"formData.adminorderconf"}},[e._v("订单确认")]),r("el-checkbox",{attrs:{"true-label":1,"false-label":0},model:{value:e.formData.admingenerateinvoice,callback:function(t){e.$set(e.formData,"admingenerateinvoice",t)},expression:"formData.admingenerateinvoice"}},[e._v("生成账单")]),r("el-checkbox",{attrs:{"true-label":1,"false-label":0},model:{value:e.formData.adminsendinvoice,callback:function(t){e.$set(e.formData,"adminsendinvoice",t)},expression:"formData.adminsendinvoice"}},[e._v("发送邮件")])],1),e._l(e.productArr,(function(t,o){return r("div",{key:o},[r("el-divider"),r("h4",[e._v(e._s(t.name?t.name:"产品/服务")),0!==o?r("i",{staticClass:"el-icon-delete ml-10 cursor-pointer",on:{click:function(t){return e.deleteProduct(o)}}}):e._e()]),r("el-form-item",{attrs:{label:"产品/服务",prop:"pid["+t.id+"+]"}},[r("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 产品/服务 "),r("el-popover",{attrs:{placement:"top-start",title:"",width:"200",trigger:"hover"}},[r("el-row",[r("el-col",{attrs:{span:24}},[e._v("配置产品。")]),r("el-col",{staticClass:"tar",attrs:{span:24}},[r("router-link",{attrs:{to:{path:"product-server"},target:"_blank"}},[r("el-link",{attrs:{type:"primary"}},[e._v("前往配置产品")])],1)],1)],1),r("i",{staticClass:"el-icon-question blue_qus",attrs:{slot:"reference"},slot:"reference"})],1)],1),r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择产品/服务",clearable:"",filterable:""},on:{change:function(r){return e.productSelectChange(t.id,o)}},model:{value:t.id,callback:function(r){e.$set(t,"id",r)},expression:"productItem.id"}},e._l(e.productGroupOptions,(function(t){return r("el-option-group",{key:t.id,attrs:{label:t.name}},e._l(t.product,(function(e){return r("el-option",{key:e.id,attrs:{label:e.name,value:e.id}})})),1)})),1)],1),r("el-form-item",{attrs:{label:"付款周期",prop:"cycle["+t.id+"+]"}},[r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:"请选择付款周期",clearable:""},on:{change:e.orderGetTotal},model:{value:t.cycle,callback:function(r){e.$set(t,"cycle",r)},expression:"productItem.cycle"}},e._l(t.cycleListOptions,(function(e,t){return r("el-option",{key:t,attrs:{label:e.label,value:e.value}})})),1)],1),r("el-form-item",{attrs:{label:"数量",prop:""}},[r("el-input-number",{style:{width:"260px"},attrs:{size:"small",controls:!1,"controls-position":"right",min:1,precision:0,placeholder:"请输入数量",clearable:""},on:{change:e.orderGetTotal},model:{value:t.qty,callback:function(r){e.$set(t,"qty",r)},expression:"productItem.qty"}})],1),r("el-form-item",{attrs:{label:"内部价格(首次)",prop:""}},[r("el-input-number",{style:{width:"260px",textAlign:"left"},attrs:{size:"small",controls:!1,"controls-position":"right",precision:2,placeholder:"请输入内部价格",clearable:""},on:{change:e.orderGetTotal},model:{value:t.interior_price,callback:function(r){e.$set(t,"interior_price",r)},expression:"productItem.interior_price"}}),e._v("（只有手动输入价格才能替换默认的价格） ")],1),r("el-form-item",{attrs:{label:"内部价格(续费)",prop:""}},[r("el-input-number",{style:{width:"260px",textAlign:"left"},attrs:{size:"small",controls:!1,"controls-position":"right",precision:2,placeholder:"请输入内部价格",clearable:""},on:{change:e.orderGetTotal},model:{value:t.interior_price_renew,callback:function(r){e.$set(t,"interior_price_renew",r)},expression:"productItem.interior_price_renew"}}),e._v("（只有手动输入价格才能替换默认的价格） ")],1),r("h4",{directives:[{name:"show",rawName:"v-show",value:t.optionArr.length,expression:"productItem.optionArr.length"}]},[e._v("可配置选项")]),e._l(t.optionArr,(function(t,o){return r("el-form-item",{key:"option1"+o,attrs:{label:t.option_name}},[1===t.option_type||6===t.option_type||8===t.option_type||10===t.option_type||13===t.option_type?r("el-select",{style:{width:"260px"},attrs:{size:"small",clearable:""},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}},e._l(t.child,(function(e,t){return r("el-option",{key:"Dropdown"+t,attrs:{label:e.option_name,value:e.id}})})),1):e._e(),e._l(t.child,(function(o,a){return r("el-radio",{directives:[{name:"show",rawName:"v-show",value:2===t.option_type,expression:"optionItem.option_type === 2"}],key:"Radio"+a,attrs:{label:o.id},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}},[e._v(e._s(o.option_name)+" ")])})),e._l(t.child,(function(o,a){return r("el-checkbox",{directives:[{name:"show",rawName:"v-show",value:3===t.option_type,expression:"optionItem.option_type === 3"}],key:"yes/no"+a,attrs:{"true-label":o.id,"false-label":void 0},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}},[e._v(e._s(o.option_name))])})),[4,7,9,11,14,15,16,17,18,19].includes(t.option_type)?r("el-slider",{staticClass:"qty-slider",style:{width:e.screenWidth>768?"30%":"100%"},attrs:{min:t.qty_minimum,max:t.qty_maximum,disabled:t.qty_minimum===t.qty_maximum},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}}):e._e(),[4,7,9,11,14,15,16,17,18,19].includes(t.option_type)?r("el-input-number",{staticClass:"ml-10",staticStyle:{width:"100px"},attrs:{size:"mini",min:t.qty_minimum,max:t.qty_maximum,controls:!0,precision:0,disabled:t.qty_minimum===t.qty_maximum},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}}):e._e(),5===t.option_type||12===t.option_type?r("el-cascader",{style:{width:"260px"},attrs:{options:t.child,props:{expandTrigger:"hover"}},on:{change:e.orderGetTotal},model:{value:t.option_value,callback:function(r){e.$set(t,"option_value",r)},expression:"optionItem.option_value"}}):e._e()],2)})),r("h4",{directives:[{name:"show",rawName:"v-show",value:t.customFieldsArr.length,expression:"productItem.customFieldsArr.length"}]},[e._v("自定义字段")]),e._l(t.customFieldsArr,(function(t,o){return r("el-form-item",{key:o,attrs:{label:t.fieldname}},["dropdown"===t.fieldtype?r("el-select",{style:{width:"260px"},attrs:{size:"small",placeholder:t.description,clearable:""},on:{change:e.orderGetTotal},model:{value:t.fieldvalue,callback:function(r){e.$set(t,"fieldvalue",r)},expression:"customFieldsItem.fieldvalue"}},e._l(t.dropdown_option,(function(e,t){return r("el-option",{key:t,attrs:{label:e,value:e}})})),1):e._e(),"password"===t.fieldtype||"textarea"===t.fieldtype||"text"===t.fieldtype||"link"===t.fieldtype?r("el-input",{style:{width:"260px"},attrs:{size:"small",type:t.fieldtype,placeholder:t.description,clearable:""},on:{input:e.orderGetTotal},model:{value:t.fieldvalue,callback:function(r){e.$set(t,"fieldvalue",r)},expression:"customFieldsItem.fieldvalue"}}):e._e(),"tickbox"===t.fieldtype?r("el-checkbox",{on:{change:e.orderGetTotal},model:{value:t.fieldvalue,callback:function(r){e.$set(t,"fieldvalue",r)},expression:"customFieldsItem.fieldvalue"}}):e._e()],1)})),t.dcimOsOptions.length?r("h4",[e._v("魔方DCIM")]):e._e(),t.dcimOsOptions.length?r("el-form-item",{attrs:{label:"魔方DCIM操作系统"}},[r("el-select",{style:{width:"25%"},attrs:{size:"small"},on:{change:function(r){return e.dcimSelectChange(t.id,t.dcimOsId,t.dcimOsOptions)}},model:{value:t.dcimOsId,callback:function(r){e.$set(t,"dcimOsId",r)},expression:"productItem.dcimOsId"}},e._l(t.dcimOsOptions,(function(e,t){return r("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1),r("el-select",{style:{width:"50%",marginLeft:"20px"},attrs:{size:"small"},model:{value:t.dcimOsVersionId,callback:function(r){e.$set(t,"dcimOsVersionId",r)},expression:"productItem.dcimOsVersionId"}},e._l(t.dcimOsVersionOptions,(function(e,t){return r("el-option",{key:t,attrs:{label:e.name,value:e.id}})})),1)],1):e._e()],2)})),r("el-form-item",[r("el-button",{attrs:{size:"small",icon:"el-icon-circle-plus-outline"},on:{click:e.addOtherProduct}},[e._v("添加其他产品")])],1)],2)],1),r("el-col",{staticStyle:{position:"sticky",top:"0"},attrs:{md:24,lg:8,xl:8}},[r("el-card",{attrs:{shadow:"always"}},[r("h3",{staticClass:"tac",staticStyle:{"margin-top":"0"}},[e._v("订单详情")]),r("el-row",[e.asyncOrderData?e._e():r("el-col",{staticClass:"tac product-order",attrs:{span:24}},[e._v("未选择项目")]),e.asyncOrderData?r("div",e._l(e.asyncOrderData.products,(function(t,o){return r("el-col",{key:o,staticClass:"product-order",attrs:{span:24}},[r("el-col",{attrs:{span:12}},[r("span",[e._v(e._s(t.name?t.name:"产品/服务")+"×"+e._s(t.qty))]),r("div",{staticClass:"pay-cycle"},[e._v(e._s(t.billingcycle_zh))])]),r("el-col",{staticClass:"tar",attrs:{span:12}},[e._v(" "+e._s(e.asyncOrderData.currency.prefix+t.product_price+e.asyncOrderData.currency.suffix)+" + "+e._s(e.asyncOrderData.currency.prefix+t.product_setup_fee+e.asyncOrderData.currency.suffix)+"初装费 ")]),t.child.length?r("el-col",{staticClass:"fs-14 mt-10",attrs:{span:24}},e._l(t.child,(function(t,o){return r("div",{key:o},[e._v("» "+e._s(t.option_name)+": "+e._s(t.suboption_name)+" ~ "+e._s(t.qty?t.qty+"×":"")+e._s(e.asyncOrderData.currency.prefix+t.suboption_price+e.asyncOrderData.currency.suffix)+" + "+e._s(e.asyncOrderData.currency.prefix+t.suboption_setup_fee+e.asyncOrderData.currency.suffix)+"初装费 ")])})),0):e._e(),["onetime","ontrial","free"].includes(t.billingcycle)?e._e():r("el-col",{staticClass:"mt-10",attrs:{span:24}},[r("el-col",{attrs:{span:12}},[e._v("循环优惠")]),r("el-col",{staticClass:"tar",attrs:{span:12}},[e._v(" "+e._s(e.asyncOrderData.currency.prefix+t.product_price_total_recurring+e.asyncOrderData.currency.suffix)+" ")])],1)],1)})),1):e._e(),r("el-col",{attrs:{span:24}},[r("el-col",{staticClass:"sub-total",attrs:{span:12}},[e._v("小计")]),r("el-col",{staticClass:"tar sub-total",attrs:{span:12}},[e._v(" "+e._s(e.asyncOrderData?e.asyncOrderData.currency.prefix+e.asyncOrderData.subtotal+e.asyncOrderData.currency.suffix:"0.00")+" ")]),e.youhuiFlag?r("el-row",[r("el-col",{staticClass:"sub-total",attrs:{span:12}},[e._v("已优惠")]),r("el-col",{staticClass:"tar sub-total",attrs:{span:12}},[e._v(" "+e._s(e.asyncOrderData?e.asyncOrderData.currency.prefix+e.asyncOrderData.saleproducts+e.asyncOrderData.currency.suffix:"0.00")+" ")])],1):e._e()],1),e.asyncOrderData&&"0.00"!==e.asyncOrderData.discount?r("el-col",{attrs:{span:24}},[r("el-col",{staticClass:"sub-total",attrs:{span:12}},[e._v("促销折扣")]),r("el-col",{staticClass:"tar sub-total",attrs:{span:12}},[e._v(" "+e._s(e.asyncOrderData?e.asyncOrderData.currency.prefix+e.asyncOrderData.discount+e.asyncOrderData.currency.suffix:"0.00")+" ")])],1):e._e(),r("el-col",{attrs:{span:24}},[r("el-col",{attrs:{span:12}},[r("h3",{staticClass:"total"},[e._v("总计")])]),r("el-col",{staticClass:"tar",attrs:{span:12}},[r("h3",{staticClass:"total"},[e._v(" "+e._s(e.asyncOrderData?e.asyncOrderData.currency.prefix+e.asyncOrderData.total+e.asyncOrderData.currency.suffix:"0.00")+" ")])])],1),e.asyncOrderData&&e.asyncOrderData.credit?r("el-col",{attrs:{span:24}},[e._v(" 客户可用余额为"+e._s(e.asyncOrderData?e.asyncOrderData.currency.prefix+e.asyncOrderData.credit+e.asyncOrderData.currency.suffix:"0.00")+"。 ")]):e._e(),e.asyncOrderData&&e.asyncOrderData.credit?r("el-col",{attrs:{span:24}},[r("el-radio-group",{style:{width:"100%"},model:{value:e.formData.use_credit,callback:function(t){e.$set(e.formData,"use_credit",t)},expression:"formData.use_credit"}},[r("div",{staticClass:"mt-10"},[r("el-radio",{attrs:{label:1}},[e._v("使用余额")])],1),r("div",{staticClass:"mt-10"},[r("el-radio",{attrs:{label:0}},[e._v("不使用余额")])],1)])],1):e._e()],1),r("div",{staticClass:"tac mt-20"},[r("el-button",{attrs:{size:"small",type:"primary",loading:e.submitLoading},on:{click:e.submitOrder}},[e._v("提交订单")])],1)],1)],1)],1),r("el-dialog",{attrs:{title:"添加优惠码",visible:e.promo_codeDialogVisiable,width:"35%"},on:{"update:visible":function(t){e.promo_codeDialogVisiable=t},closed:e.resetForm,open:e.promoCodePage}},[r("el-form",{ref:"promo_codeForm",attrs:{model:e.promo_codeFormData,rules:e.promo_codeFormRules,"label-width":e.labelWidth}},[r("el-row",{attrs:{gutter:15}},[r("el-form-item",{attrs:{label:"优惠码",prop:"code"}},[r("el-input",{style:{width:"100%"},attrs:{size:"small",placeholder:"请输入优惠码",clearable:""},model:{value:e.promo_codeFormData.code,callback:function(t){e.$set(e.promo_codeFormData,"code",t)},expression:"promo_codeFormData.code"}},[r("el-button",{attrs:{slot:"append",size:"small"},on:{click:function(t){return e.randomPromo(8)}},slot:"append"},[e._v("点此自动生成优惠码")])],1)],1),r("el-form-item",{attrs:{label:"类型",prop:"type"}},[r("el-select",{style:{width:"100%"},attrs:{size:"small",placeholder:"请选择类型",clearable:""},model:{value:e.promo_codeFormData.type,callback:function(t){e.$set(e.promo_codeFormData,"type",t)},expression:"promo_codeFormData.type"}},e._l(e.typeOptions,(function(e,t){return r("el-option",{key:t,attrs:{label:e,value:t}})})),1)],1),r("el-form-item",{attrs:{label:"价值",prop:"value"}},[r("el-input-number",{style:{width:"100%"},attrs:{size:"small",controls:!1},model:{value:e.promo_codeFormData.value,callback:function(t){e.$set(e.promo_codeFormData,"value",t)},expression:"promo_codeFormData.value"}})],1),r("el-form-item",{attrs:{label:"循环优惠",prop:"recurring"}},[r("el-checkbox",{model:{value:e.promo_codeFormData.recurring,callback:function(t){e.$set(e.promo_codeFormData,"recurring",t)},expression:"promo_codeFormData.recurring"}},[e._v("启用")])],1),r("el-form-item",{attrs:{"label-width":"5%",prop:""}},[e._v(" * 在此处将会创建动态优惠码，可用于在订单中的所有项目 ")])],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{size:"small",type:"primary",loading:e.promoLoading},on:{click:e.sureHandleClick}},[e._v("确定")]),r("el-button",{attrs:{size:"small"},on:{click:function(t){e.promo_codeDialogVisiable=!1}}},[e._v("取消")])],1)],1)],1)},a=[],n=(r("4160"),r("caad"),r("d81d"),r("a434"),r("b0c0"),r("a9e3"),r("4d63"),r("ac1f"),r("25f0"),r("2532"),r("159b"),r("96cf"),r("1da1")),i=r("af9c");function s(e){var t=[];for(var r in e)t.push(e[r]);return t}var c=r("f235"),l=r("6a8e"),u={metaInfo:{title:"添加订单"},data:function(){return{youhuiFlag:!1,screenWidth:window.document.body.clientWidth,labelWidth:window.document.body.clientWidth>768?"120px":null,itemWidth:window.document.body.clientWidth>768?"50%":"100%",formData:{username:"",uid:this.$route.query.uid?Number(this.$route.query.uid):"",payment:void 0,promo_code:void 0,status:"Pending",adminorderconf:1,admingenerateinvoice:1,adminsendinvoice:1,use_credit:0,ops:[]},rules:{uid:[{required:!0,message:"请选择客户"}],payment:[{required:!0,message:"请选择付款方式",trigger:"change"}],promo_code:[],status:[]},uidOptions:[],paymentOptions:[],promo_codeOptions:[],promo_codeDialogVisiable:!1,promo_codeFormData:{code:void 0,type:void 0,recurring:!1,recurfor:void 0,value:void 0},promo_codeFormRules:{code:[{required:!0,message:"请输入优惠码",trigger:"blur"}],type:[],value:[],recurring:[],recurfor:[]},typeOptions:[],statusOptions:[{label:"待审核",value:"Pending"},{label:"已激活",value:"Active"}],productArr:[{name:"",id:void 0,domainName:"",cycle:void 0,cycleListOptions:[],qty:1,interior_price:void 0,interior_price_renew:void 0,optionArr:[],customFieldsArr:[],dcimOsOptions:[],dcimOsId:"",dcimOsVersionOptions:[],dcimOsVersionId:""}],productGroupOptions:[],optionSystemNameArr:["os","system","操作系统","系统"],asyncOrderData:void 0,customVerifyLink:!1,submitLoading:!1,promoLoading:!1}},methods:{clearUid:function(){this.formData.uid=""},handleSelect:function(e){"notFound"!==e.type&&(this.formData.username=e.username,this.formData.uid=e.id)},querySearchAsync:function(e,t){var r=this;return Object(n["a"])(regeneratorRuntime.mark((function o(){var a,n,s;return regeneratorRuntime.wrap((function(o){while(1)switch(o.prev=o.next){case 0:return o.next=2,Object(i["f"])(e);case 2:if(a=o.sent,n=a.data,200===n.status){o.next=7;break}return r.$message.error(n.msg),o.abrupt("return");case 7:n.data.length?t(n.data):(s=[{username:"未找到相关数据",type:"notFound"}],t(s));case 8:case"end":return o.stop()}}),o)})))()},getOrderCreatePageInfo:function(e,t,r){var o=this;return Object(n["a"])(regeneratorRuntime.mark((function r(){var a,n,s,c;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.next=2,Object(i["o"])({uid:o.formData.uid,pid:t?t.id:void 0,flag:e||void 0});case 2:if(a=r.sent,n=a.data,400!==n.status){r.next=8;break}return o.$message.error(n.msg),o.$router.go(-1),r.abrupt("return");case 8:e?(t.cycleListOptions=n.data.product.cycle,t.cycle=n.data.product.cycle.length?n.data.product.cycle[0].value:"",o.orderGetTotal()):(s=n.data,c=s.users.map((function(e){return e.id})),Array.isArray(s.default)||c.includes(s.default.id)||s.users.push(s.default),o.uidOptions=s.users);case 9:case"end":return r.stop()}}),r)})))()},promoCodePage:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(i["p"])();case 2:r=t.sent,o=r.data,200!==o.status?e.$message.error(o.msg):e.typeOptions=o.type;case 5:case"end":return t.stop()}}),t)})))()},randomPromo:function(e){for(var t="",r=parseInt(e),o=[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],a=0;a<r;a++){var n=Math.floor(62*Math.random());t+=o[n]}var i=/^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d).*$/,s=new RegExp(i);s.test(t)?this.promo_codeFormData.code=t:this.randomPromo(e)},getPromo:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(c["g"])();case 2:r=t.sent,o=r.data,e.promo_codeFormData.code=o.rand;case 5:case"end":return t.stop()}}),t)})))()},sureHandleClick:function(){var e=this;this.$refs.promo_codeForm.validate(function(){var t=Object(n["a"])(regeneratorRuntime.mark((function t(r){var o,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r){t.next=2;break}return t.abrupt("return",!1);case 2:return e.promo_codeFormData.recurring=Boolean(e.promo_codeFormData.recurring),e.promoLoading=!0,t.next=6,Object(i["d"])(e.promo_codeFormData);case 6:o=t.sent,a=o.data,200!==a.status?e.$message.error(a.msg):(e.$message.success(a.msg),e.getOrderCreatePageInfo(),e.promo_codeDialogVisiable=!1,e.formData.promo_code=e.promo_codeFormData.code,e.orderGetTotal()),e.promoLoading=!1;case 10:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())},resetForm:function(){this.$refs.promo_codeForm.resetFields()},productSelectChange:function(e,t){var r=this;return Object(n["a"])(regeneratorRuntime.mark((function o(){var a,n;return regeneratorRuntime.wrap((function(o){while(1)switch(o.prev=o.next){case 0:return o.next=2,Object(i["m"])({pid:e});case 2:a=o.sent,n=a.data,200!==n.status?r.$message.error(n.msg):r.productArr.forEach((function(o,a){if(o.id===e&&a===t){if(r.getOrderCreatePageInfo(1,o,t),o.name=n.product.name,(n.option||[]).forEach((function(e,t){if(1===e.option_type||2===e.option_type||6===e.option_type||8===e.option_type||10===e.option_type||13===e.option_type)e.child&&e.child!=={}?e.option_value=s(e.child)[0].id:e.option_value=void 0;else if(3===e.option_type)e.option_value=void 0;else if([4,7,9,11,14,15,16,17,18,19].includes(e.option_type))e.option_value=e.qty_minimum;else if(5===e.option_type){var r=[],o=function(t){var o=[];(e.child[t].child||[]).forEach((function(e){o.push({label:e.version,value:e.id})})),r.push({label:e.child[t].system,value:e.child[t].system,icon:e.child[t].ico_url,children:o})};for(var a in e.child)o(a);e.child=r,e.option_value=[],e.child.length?(e.option_value.push(e.child[0].value),e.child[0].children.length?e.option_value.push(e.child[0].children[0].value):e.option_value=void 0):e.option_value=void 0}else if(12===e.option_type){var n=[],i=function(t){var r=[];(e.child[t].area||[]).forEach((function(e){r.push({label:e.area_zh,value:e.id})})),n.push({label:t,value:t,icon:e.child[t].country_code,children:r})};for(var c in e.child)i(c);e.child=n,e.option_value=[],e.child.length?(e.option_value.push(e.child[0].value),e.child[0].children.length?e.option_value.push(e.child[0].children[0].value):e.option_value=void 0):e.option_value=void 0}})),o.optionArr=n.option.length?n.option:[],(n.custom_fields||[]).forEach((function(e,t){e.fieldvalue=void 0})),o.customFieldsArr=n.custom_fields.length?n.custom_fields:[],n.os===[])o.dcimOsOptions=n.os;else for(var i in o.dcimOsOptions=[],n.os)o.dcimOsOptions.push(n.os[i]);o.dcimOsId=o.dcimOsOptions.length?o.dcimOsOptions[0].id:"",r.dcimSelectChange(o.id,o.dcimOsId,o.dcimOsOptions)}}));case 5:case"end":return o.stop()}}),o)})))()},dcimSelectChange:function(e,t,r){(this.productArr||[]).forEach((function(o){e===o.id&&(r||[]).forEach((function(e){t===e.id&&(o.dcimOsVersionOptions=e.child||[],o.dcimOsVersionId=e.child.length?e.child[0].id:void 0)}))}))},addOtherProduct:function(){this.productArr.push({name:"",id:void 0,cycle:void 0,cycleListOptions:[],qty:1,interior_price:void 0,interior_price_renew:void 0,optionArr:[],customFieldsArr:[],dcimOsOptions:[],dcimOsId:"",dcimOsVersionOptions:[],dcimOsVersionId:""})},deleteProduct:function(e){this.productArr.splice(e,1),this.orderGetTotal()},orderGetTotal:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return window.cancel(),r={pid:[],billingcycle:[],qty:[],configoption:[],price_override:[],price_override_renew:[],uid:e.formData.uid,customfield:[],code:e.formData.promo_code},e.productArr.forEach((function(e,t){r.pid.push(e.id),r.billingcycle.push(e.cycle),r.qty.push(e.qty),r.price_override.push(e.interior_price),r.price_override_renew.push(e.interior_price_renew),r.configoption[t]=[],(e.optionArr||[]).forEach((function(e){var o=e.option_value;5===e.option_type||12===e.option_type?r.configoption[t][e.id]=o?o[o.length-1]:o:r.configoption[t][e.id]=o})),r.customfield[t]=[],(e.customFieldsArr||[]).forEach((function(e){r.customfield[t][e.id]=e.fieldvalue}))})),t.next=5,Object(i["j"])(e.$qs.stringify(r));case 5:o=t.sent,a=o.data,200!==a.status?("用户不存在"===a.msg?e.$refs.elForm.validateField("uid",(function(e){})):e.$message.error(a.msg),e.asyncOrderData=void 0):(e.asyncOrderData=a,e.asyncOrderData.saleproducts?e.youhuiFlag=!0:e.youhuiFlag=!1);case 8:case"end":return t.stop()}}),t)})))()},submitOrder:function(){var e=this;this.productArr[0].id?(this.formData.ops=[],this.productArr.forEach((function(t){var r={};(t.customFieldsArr||[]).forEach((function(e){r[e.id]=e.fieldvalue}));var o={};(t.optionArr||[]).forEach((function(e){5===e.option_type||12===e.option_type?o[e.id]=e.option_value[1]:o[e.id]=e.option_value}));var a={};(t.dcimOsVersionOptions||[]).forEach((function(e){t.dcimOsVersionId===e.id&&(a[e.id]=e.name)})),e.formData.ops.push({pid:t.id,billingcycle:t.cycle,qty:t.qty,interior_price:t.interior_price,interior_price_renew:t.interior_price_renew,customfield:r,configoptions:o,os:a})})),this.$refs.elForm.validate(function(){var t=Object(n["a"])(regeneratorRuntime.mark((function t(r){var o,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r){t.next=4;break}return t.abrupt("return",!1);case 4:return e.submitLoading=!0,t.next=7,Object(i["c"])(e.formData);case 7:o=t.sent,a=o.data,200!==a.status?e.$message.error(a.msg):(e.$message.success(a.msg),e.$router.push({path:"order-detail",query:{id:a.data.orderid}})),e.submitLoading=!1;case 11:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())):this.$message.warning("请选择产品")},checkCustomFields:function(e){var t=new RegExp(/^(((ht|f)tps?):\/\/)?[\w-]+(\.[\w-]+)+([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$/);return t.test(e)},getGetways:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(l["c"])();case 2:if(r=t.sent,o=r.data,200===o.status){t.next=7;break}return e.$message.error(o.msg),t.abrupt("return");case 7:e.paymentOptions=o.gateway,e.formData.payment=o.gateway.length?o.gateway[0].name:void 0;case 9:case"end":return t.stop()}}),t)})))()},getPromoList:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o,a;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(l["f"])();case 2:if(r=t.sent,o=r.data,200===o.status){t.next=7;break}return e.$message.error(o.msg),t.abrupt("return");case 7:for(a in e.promo_codeOptions=[],o.promo_code)e.promo_codeOptions.push({promo_codeGroupName:a,child:o.promo_code[a]});e.promo_codeOptions=e.promo_codeOptions.reverse();case 10:case"end":return t.stop()}}),t)})))()},getProductList:function(){var e=this;return Object(n["a"])(regeneratorRuntime.mark((function t(){var r,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,Object(l["e"])();case 2:if(r=t.sent,o=r.data,200===o.status){t.next=6;break}return t.abrupt("return",!1);case 6:e.productGroupOptions=o.client_groups;case 7:case"end":return t.stop()}}),t)})))()}},created:function(){this.getOrderCreatePageInfo(),this.getGetways(),this.getPromoList(),this.getProductList(),"{}"===JSON.stringify(this.$store.state.addOrderInfo)||(this.formData.username=this.$store.state.addOrderInfo.name,this.formData.uid=this.$store.state.addOrderInfo.uid,this.$store.commit("setAddOrderInfo",{}))}},d=u,p=(r("8049"),r("2877")),m=Object(p["a"])(d,o,a,!1,null,"107c9105",null);t["default"]=m.exports},ab13:function(e,t,r){var o=r("b622"),a=o("match");e.exports=function(e){var t=/./;try{"/./"[e](t)}catch(r){try{return t[a]=!1,"/./"[e](t)}catch(o){}}return!1}},af9c:function(e,t,r){"use strict";r.d(t,"l",(function(){return a})),r.d(t,"k",(function(){return n})),r.d(t,"h",(function(){return i})),r.d(t,"a",(function(){return s})),r.d(t,"e",(function(){return c})),r.d(t,"o",(function(){return l})),r.d(t,"c",(function(){return u})),r.d(t,"i",(function(){return d})),r.d(t,"m",(function(){return p})),r.d(t,"j",(function(){return m})),r.d(t,"d",(function(){return f})),r.d(t,"n",(function(){return _})),r.d(t,"p",(function(){return h})),r.d(t,"b",(function(){return v})),r.d(t,"g",(function(){return y})),r.d(t,"f",(function(){return b}));var o=r("a27e");function a(e){return Object(o["a"])({url:"order/search_page",params:e})}function n(e){return Object(o["a"])({url:"order/search",params:e})}function i(e){return Object(o["a"])({url:"order/check",params:e})}function s(e){return Object(o["a"])({url:"order/cancel",params:e})}function c(e){return Object(o["a"])({url:"orders/delete",method:"delete",params:e})}function l(e){return Object(o["a"])({url:"order/create_page",params:e})}function u(e){return Object(o["a"])({url:"order/create",method:"post",data:e})}function d(e){return Object(o["a"])({url:"orders/"+e})}function p(e){return Object(o["a"])({url:"orders/set_config",params:e})}function m(e){return Object(o["a"])({url:"get_total",method:"post",data:e})}function f(e){return Object(o["a"])({url:"order/save_promo_code",method:"post",data:e})}function _(e){return Object(o["a"])({url:"orders/active",method:"post",data:e})}function h(){return Object(o["a"])({url:"order/promo_code_page"})}function v(e){return Object(o["a"])({url:"orders/change_status",method:"post",data:e})}function y(e){return Object(o["a"])({url:"order/order_commission",method:"post",data:e})}function b(e){return Object(o["a"])({url:"order/getclients",params:{username:e}})}},caad:function(e,t,r){"use strict";var o=r("23e7"),a=r("4d64").includes,n=r("44d2"),i=r("ae40"),s=i("indexOf",{ACCESSORS:!0,1:0});o({target:"Array",proto:!0,forced:!s},{includes:function(e){return a(this,e,arguments.length>1?arguments[1]:void 0)}}),n("includes")},d81d:function(e,t,r){"use strict";var o=r("23e7"),a=r("b727").map,n=r("1dde"),i=r("ae40"),s=n("map"),c=i("map");o({target:"Array",proto:!0,forced:!s||!c},{map:function(e){return a(this,e,arguments.length>1?arguments[1]:void 0)}})},f235:function(e,t,r){"use strict";r.d(t,"h",(function(){return a})),r.d(t,"a",(function(){return n})),r.d(t,"g",(function(){return i})),r.d(t,"b",(function(){return s})),r.d(t,"f",(function(){return c})),r.d(t,"c",(function(){return l})),r.d(t,"d",(function(){return u})),r.d(t,"e",(function(){return d}));var o=r("a27e");function a(e){return Object(o["a"])({url:"list_promo_code",params:e})}function n(){return Object(o["a"])({url:"add_promo_code/page"})}function i(){return Object(o["a"])({url:"auto_promo_code"})}function s(e){return Object(o["a"])({url:"add_promo_code",method:"post",data:e})}function c(e){return Object(o["a"])({url:"expired_promo_code",method:"post",data:{id:e}})}function l(e){return Object(o["a"])({url:"delete_promo_code",method:"post",data:{id:e}})}function u(e){return Object(o["a"])({url:"save_promo_code/page",params:{id:e}})}function d(e){return Object(o["a"])({url:"save_promo_code",method:"post",data:e})}}}]);