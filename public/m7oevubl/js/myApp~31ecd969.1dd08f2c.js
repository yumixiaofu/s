(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["myApp~31ecd969"],{"0aba":function(t,e,a){"use strict";var n=a("3c5f"),r=a.n(n);r.a},"0b91":function(t,e,a){"use strict";a.d(e,"c",(function(){return r})),a.d(e,"e",(function(){return s})),a.d(e,"d",(function(){return i})),a.d(e,"b",(function(){return c})),a.d(e,"a",(function(){return o}));var n=a("a27e");function r(t){return Object(n["a"])({url:"app_store",params:t})}function s(t){return Object(n["a"])({url:"app_store/ranking_list",params:t})}function i(){return Object(n["a"])({url:"app_store/my_apps"})}function c(t){return Object(n["a"])({url:"app_store/favorite",params:t})}function o(t){return Object(n["a"])({url:"app_store/favorite/app/".concat(t),method:"delete"})}},"1dde":function(t,e,a){var n=a("d039"),r=a("b622"),s=a("2d00"),i=r("species");t.exports=function(t){return s>=51||!n((function(){var e=[],a=e.constructor={};return a[i]=function(){return{foo:1}},1!==e[t](Boolean).foo}))}},"24ec":function(t,e,a){t.exports=a.p+"img/noData.94b22447.png"},"3c5f":function(t,e,a){},"4de4":function(t,e,a){"use strict";var n=a("23e7"),r=a("b727").filter,s=a("1dde"),i=a("ae40"),c=s("filter"),o=i("filter");n({target:"Array",proto:!0,forced:!c||!o},{filter:function(t){return r(this,t,arguments.length>1?arguments[1]:void 0)}})},"5fe8":function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"app-list"},[n("div",{staticClass:"my_app_tabs",class:{tabs_active:t.myappPage},on:{click:function(e){return t.changeTabs(1)}}},[n("span",{class:{tabsText_active:t.myappPage}},[t._v("我的应用")])]),n("div",{staticClass:"my_favorites",class:{tabs_active:!t.myappPage},on:{click:function(e){return t.changeTabs(2)}}},[n("span",{class:{tabsText_active:!t.myappPage}},[t._v("我的收藏")])]),t.myappPage?t._l(t.topBtn,(function(e){return n("div",{key:e.value,staticClass:"status_btn",class:{btnactive:t.btnActive===e.value},on:{click:function(a){return t.changeStatus(e.value)}}},[t._v(t._s(e.label)+" ")])})):t._e(),t.pageLoading?n("Loading"):t._e(),t.myAppPageData.length||t.pageLoading?t._e():n("div",{staticClass:"empty",staticStyle:{width:"100%",height:"100%",display:"flex","align-items":"center","justify-content":"center","flex-direction":"column"}},[n("img",{attrs:{src:a("24ec"),alt:""}}),t.myappPage&&1===t.btnActive?n("span",{staticClass:"mt-10 fz-14"},[t._v("暂无已安装应用")]):t.myappPage&&2===t.btnActive?n("span",{staticClass:"mt-10 fz-14"},[t._v("暂无可安装应用")]):t.myappPage&&3===t.btnActive?n("span",{staticClass:"mt-10 fz-14"},[t._v("暂无待更新应用")]):t.myappPage?t._e():n("span",{staticClass:"mt-10 fz-14"},[t._v("暂无收藏")])]),n("div",{staticClass:"app_main"},[t._l(t.myAppPageData,(function(e,a){return[n("div",{key:a,staticClass:"app_item ",on:{click:function(a){return t.goInner(e)}}},[n("div",{staticClass:"app_item_wrapper"},[n("div",{staticClass:"app_item_left"},[n("el-image",{staticClass:"cursor-pointer",style:{width:"54px",height:"54px"},attrs:{src:e.icon[0],fit:"contain"}},[n("div",{staticClass:"flexc fz-12 color-999 w-100 h-100",staticStyle:{color:"#999"},attrs:{slot:"placeholder"},slot:"placeholder"},[t._v("加载中...")]),n("div",{staticClass:"flexc fz-12 color-999 w-100 h-100",staticStyle:{color:"#999"},attrs:{slot:"error"},slot:"error"},[t._v("加载中...")])])],1),n("div",{staticClass:"app_item_center"},[n("span",{staticClass:"app_item_name"},[t._v(t._s(e.name))]),n("span",[n("el-rate",{attrs:{disabled:"","void-icon-class":"el-icon-star-on",colors:["#ffa000","#ffa000","#ffa000"],"void-color":"#e6e8f0","disabled-void-color":"#e6e8f0"},model:{value:e.app_score,callback:function(a){t.$set(e,"app_score",a)},expression:"item.app_score"}})],1)]),n("div",{staticClass:"app_item_right"},[t.myappPage?t.myappPage&&1===e.status?n("span",{staticClass:"install"},[t._v("未安装")]):t.myappPage&&3===e.status?n("span",{staticClass:"install"},[t._v("待更新")]):!t.myappPage||2!==e.status&&3!==e.status?t._e():n("span",{staticClass:"install"},[t._v("已安装")]):n("el-popconfirm",{attrs:{"confirm-button-text":"好的","cancel-button-text":"不用了",icon:"el-icon-info","icon-color":"red",title:"确认取消收藏吗"},on:{onConfirm:function(a){return t.changeCollection(e)}}},[n("span",{staticClass:"collection",style:{color:!0===e.favorite?"#e64a19":"#999"},attrs:{slot:"reference"},slot:"reference"},[n("i",{staticClass:"iconfont icon-aixin"}),t._v("+收藏")])])],1)]),n("div",{staticClass:"app_item_text"},[t._v(" "+t._s(e.info)+" ")])])]}))],2)],2)},r=[],s=(a("4de4"),a("96cf"),a("1da1")),i=a("0b91"),c=a("7ac2"),o=a("7ce2"),l=a.n(o),p={components:{Loading:c["a"]},data:function(){return{pageLoading:!1,myAppPageData:[],allData:[],topBtn:[{label:"已安装",value:1},{label:"未安装",value:2},{label:"待更新",value:3}],myappPage:!0,btnActive:1}},created:function(){this.myappPage="myCollection"!==this.$route.query.type,this.myappPage?this.myApps():this.favorite()},mounted:function(){},methods:{goInner:function(t){var e;e=this.myappPage?t.pid:t.id,this.$router.push({name:"appInner",query:{id:e}})},changeCollection:function(t){var e=this;return Object(s["a"])(regeneratorRuntime.mark((function a(){var n,r;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return a.next=2,Object(i["a"])(t.id);case 2:if(n=a.sent,r=n.data,200===r.status){a.next=7;break}return e.$message.error(r.msg),a.abrupt("return");case 7:e.$message.success(r.msg),e.favorite();case 9:case"end":return a.stop()}}),a)})))()},myApps:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var a,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.pageLoading=!0,t.myAppPageData=[],e.next=4,Object(i["d"])();case 4:if(a=e.sent,n=a.data,200===n.status){e.next=9;break}return t.$message.error(n.msg),e.abrupt("return");case 9:t.allData=n.data,t.pageLoading=!1,1===t.btnActive?t.myAppPageData=n.data.filter((function(t){return 2===t.status||3===t.status})):2===t.btnActive?t.myAppPageData=n.data.filter((function(t){return 1===t.status})):3===t.btnActive&&(t.myAppPageData=n.data.filter((function(t){return 3===t.status})));case 12:case"end":return e.stop()}}),e)})))()},favorite:function(){var t=this;return Object(s["a"])(regeneratorRuntime.mark((function e(){var a,n,r,s;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.pageLoading=!0,t.myAppPageData=[],e.next=4,Object(i["b"])();case 4:if(a=e.sent,n=a.data,200===n.status){e.next=9;break}return t.$message.error(n.msg),e.abrupt("return");case 9:for(r=0;r<n.data.products.length;r++)s=n.data.products[r],s.favorite=!0;t.pageLoading=!1,t.myAppPageData=n.data.products;case 12:case"end":return e.stop()}}),e)})))()},changeStatus:function(t){this.btnActive=t,1===t?this.myAppPageData=this.allData.filter((function(t){return 2===t.status||3===t.status})):2===t?this.myAppPageData=this.allData.filter((function(t){return 1===t.status})):3===t&&(this.myAppPageData=this.allData.filter((function(t){return 3===t.status})))},changeTabs:function(t){2===t?(this.$router.push({query:l()(this.$route.query,{type:"myCollection"})}).catch((function(){})),this.favorite()):(this.$router.push({query:l()({})}).catch((function(){})),this.myApps()),this.myappPage=1===t}},computed:{},watch:{}},u=p,f=(a("0aba"),a("2877")),m=Object(f["a"])(u,n,r,!1,null,"ad5ddace",null);e["default"]=m.exports},"7ac2":function(t,e,a){"use strict";var n=function(t,e){var a=e._c;return a("div",{},[a("svg",{staticStyle:{margin:"auto",background:"#fff",display:"block"},attrs:{xmlns:"http://www.w3.org/2000/svg","xmlns:xlink":"http://www.w3.org/1999/xlink",width:"200px",height:"200px",viewBox:"0 0 100 100",preserveAspectRatio:"xMidYMid"}},[a("g",[a("circle",{attrs:{cx:"73.801",cy:"68.263",fill:"#93dbe9",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"0s"}})],1),a("circle",{attrs:{cx:"68.263",cy:"73.801",fill:"#689cc5",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.062s"}})],1),a("circle",{attrs:{cx:"61.481",cy:"77.716",fill:"#5e6fa3",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.125s"}})],1),a("circle",{attrs:{cx:"53.916",cy:"79.743",fill:"#3b4368",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.187s"}})],1),a("circle",{attrs:{cx:"46.084",cy:"79.743",fill:"#191d3a",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.25s"}})],1),a("circle",{attrs:{cx:"38.519",cy:"77.716",fill:"#d9dbee",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.312s"}})],1),a("circle",{attrs:{cx:"31.737",cy:"73.801",fill:"#b3b7e2",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.375s"}})],1),a("circle",{attrs:{cx:"26.199",cy:"68.263",fill:"#93dbe9",r:"3"}},[a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;360 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s",begin:"-0.437s"}})],1),a("animateTransform",{attrs:{attributeName:"transform",type:"rotate",calcMode:"spline",values:"0 50 50;0 50 50",times:"0;1",keySplines:"0.5 0 0.5 1",repeatCount:"indefinite",dur:"1.4925373134328357s"}})],1)])])},r=[],s={name:"Loading",data:function(){return{}},methods:{},computed:{},watch:{}},i=s,c=a("2877"),o=Object(c["a"])(i,n,r,!0,null,"0d4485ce",null);e["a"]=o.exports}}]);