(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["vendors~StandaloneServer~StandaloneServerTraffic~39b705c0"],{2412:function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("c3e2"),a=e("b455");function u(t){for(var n=0,e=[],r=0;r<t.length-1;r++){var u=t[r],i=t[r+1],o=a.distance(u[0],u[1],i[0],i[1]),c={from:u,to:i,length:o};e.push(c),n+=o}return{segments:e,totalLength:n}}function i(t){if(t.length<2)return 0;for(var n=0,e=0;e<t.length-1;e++){var r=t[e],u=t[e+1];n+=a.distance(r[0],r[1],u[0],u[1])}return n}function o(t,n){if(n>1||n<0||t.length<2)return null;var e=u(t),a=e.segments,i=e.totalLength;if(0===i)return{x:t[0][0],y:t[0][1]};for(var o=0,c=null,s=0;s<a.length;s++){var f=a[s],h=f.from,l=f.to,p=f.length/i;if(n>=o&&n<=o+p){var v=(n-o)/p;c=r.default.pointAt(h[0],h[1],l[0],l[1],v);break}o+=p}return c}function c(t,n){if(n>1||n<0||t.length<2)return 0;for(var e=u(t),r=e.segments,a=e.totalLength,i=0,o=0,c=0;c<r.length;c++){var s=r[c],f=s.from,h=s.to,l=s.length/a;if(n>=i&&n<=i+l){o=Math.atan2(h[1]-f[1],h[0]-f[0]);break}i+=l}return o}function s(t,n,e){for(var a=1/0,u=0;u<t.length-1;u++){var i=t[u],o=t[u+1],c=r.default.pointDistance(i[0],i[1],o[0],o[1],n,e);c<a&&(a=c)}return a}n.lengthOfSegment=i,n.pointAtSegments=o,n.angleAtSegments=c,n.distanceAtSegment=s},"493b":function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("b455"),a=1e-4;function u(t,n,e,u,i){for(var o,c=.005,s=1/0,f=[e,u],h=0;h<=20;h++){var l=.05*h,p=[i.apply(null,t.concat([l])),i.apply(null,n.concat([l]))],v=r.distance(f[0],f[1],p[0],p[1]);v<s&&(o=l,s=v)}if(0===o)return{x:t[0],y:n[0]};if(1===o){var M=t.length;return{x:t[M-1],y:n[M-1]}}s=1/0;for(h=0;h<32;h++){if(c<a)break;var d=o-c,y=o+c;p=[i.apply(null,t.concat([d])),i.apply(null,n.concat([d]))],v=r.distance(f[0],f[1],p[0],p[1]);if(d>=0&&v<s)o=d,s=v;else{var g=[i.apply(null,t.concat([y])),i.apply(null,n.concat([y]))],x=r.distance(f[0],f[1],g[0],g[1]);y<=1&&x<s?(o=y,s=x):c*=.5}}return{x:i.apply(null,t.concat([o])),y:i.apply(null,n.concat([o]))}}function i(t,n){for(var e=0,a=t.length,u=0;u<a;u++){var i=t[u],o=n[u],c=t[(u+1)%a],s=n[(u+1)%a];e+=r.distance(i,o,c,s)}return e/2}n.nearestPoint=u,n.snapLength=i},"7d16":function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("b455"),a=e("c3e2"),u=e("493b");function i(t,n,e,r,a){var u=1-a;return u*u*u*t+3*n*a*u*u+3*e*a*a*u+r*a*a*a}function o(t,n,e,r,a){var u=1-a;return 3*(u*u*(n-t)+2*u*a*(e-n)+a*a*(r-e))}function c(t,n,e,a){var u,i,o,c=-3*t+9*n-9*e+3*a,s=6*t-12*n+6*e,f=3*n-3*t,h=[];if(r.isNumberEqual(c,0))r.isNumberEqual(s,0)||(u=-f/s,u>=0&&u<=1&&h.push(u));else{var l=s*s-4*c*f;r.isNumberEqual(l,0)?h.push(-s/(2*c)):l>0&&(o=Math.sqrt(l),u=(-s+o)/(2*c),i=(-s-o)/(2*c),u>=0&&u<=1&&h.push(u),i>=0&&i<=1&&h.push(i))}return h}function s(t,n,e,r,u,o,c,s,f){var h=i(t,e,u,c,f),l=i(n,r,o,s,f),p=a.default.pointAt(t,n,e,r,f),v=a.default.pointAt(e,r,u,o,f),M=a.default.pointAt(u,o,c,s,f),d=a.default.pointAt(p.x,p.y,v.x,v.y,f),y=a.default.pointAt(v.x,v.y,M.x,M.y,f);return[[t,n,p.x,p.y,d.x,d.y,h,l],[h,l,y.x,y.y,M.x,M.y,c,s]]}function f(t,n,e,r,a,i,o,c,h){if(0===h)return u.snapLength([t,e,a,o],[n,r,i,c]);var l=s(t,n,e,r,a,i,o,c,.5),p=l[0],v=l[1];return p.push(h-1),v.push(h-1),f.apply(null,p)+f.apply(null,v)}n.default={extrema:c,box:function(t,n,e,a,u,o,s,f){for(var h=[t,s],l=[n,f],p=c(t,e,u,s),v=c(n,a,o,f),M=0;M<p.length;M++)h.push(i(t,e,u,s,p[M]));for(M=0;M<v.length;M++)l.push(i(n,a,o,f,v[M]));return r.getBBoxByArray(h,l)},length:function(t,n,e,r,a,u,i,o){return f(t,n,e,r,a,u,i,o,3)},nearestPoint:function(t,n,e,r,a,o,c,s,f,h){return u.nearestPoint([t,e,a,c],[n,r,o,s],f,h,i)},pointDistance:function(t,n,e,a,u,i,o,c,s,f){var h=this.nearestPoint(t,n,e,a,u,i,o,c,s,f);return r.distance(h.x,h.y,s,f)},interpolationAt:i,pointAt:function(t,n,e,r,a,u,o,c,s){return{x:i(t,e,a,o,s),y:i(n,r,u,c,s)}},divide:function(t,n,e,r,a,u,i,o,c){return s(t,n,e,r,a,u,i,o,c)},tangentAngle:function(t,n,e,a,u,i,c,s,f){var h=o(t,e,u,c,f),l=o(n,a,i,s,f);return r.piMod(Math.atan2(l,h))}}},"7ec0":function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("b455");function a(t,n){var e=Math.abs(t);return n>0?e:-1*e}n.default={box:function(t,n,e,r){return{x:t-e,y:n-r,width:2*e,height:2*r}},length:function(t,n,e,r){return Math.PI*(3*(e+r)-Math.sqrt((3*e+r)*(e+3*r)))},nearestPoint:function(t,n,e,r,u,i){var o=e,c=r;if(0===o||0===c)return{x:t,y:n};for(var s,f,h=u-t,l=i-n,p=Math.abs(h),v=Math.abs(l),M=o*o,d=c*c,y=Math.PI/4,g=0;g<4;g++){s=o*Math.cos(y),f=c*Math.sin(y);var x=(M-d)*Math.pow(Math.cos(y),3)/o,b=(d-M)*Math.pow(Math.sin(y),3)/c,P=s-x,A=f-b,m=p-x,_=v-b,B=Math.hypot(A,P),I=Math.hypot(_,m),S=B*Math.asin((P*_-A*m)/(B*I)),q=S/Math.sqrt(M+d-s*s-f*f);y+=q,y=Math.min(Math.PI/2,Math.max(0,y))}return{x:t+a(s,h),y:n+a(f,l)}},pointDistance:function(t,n,e,a,u,i){var o=this.nearestPoint(t,n,e,a,u,i);return r.distance(o.x,o.y,u,i)},pointAt:function(t,n,e,r,a){var u=2*Math.PI*a;return{x:t+e*Math.cos(u),y:n+r*Math.sin(u)}},tangentAngle:function(t,n,e,a,u){var i=2*Math.PI*u,o=Math.atan2(a*Math.cos(i),-e*Math.sin(i));return r.piMod(o)}}},a12b:function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("b455"),a=e("7ec0");function u(t,n,e,r,a,u,i,o){return-1*e*Math.cos(a)*Math.sin(o)-r*Math.sin(a)*Math.cos(o)}function i(t,n,e,r,a,u,i,o){return-1*e*Math.sin(a)*Math.sin(o)+r*Math.cos(a)*Math.cos(o)}function o(t,n,e){return Math.atan(-n/t*Math.tan(e))}function c(t,n,e){return Math.atan(n/(t*Math.tan(e)))}function s(t,n,e,r,a,u){return e*Math.cos(a)*Math.cos(u)-r*Math.sin(a)*Math.sin(u)+t}function f(t,n,e,r,a,u){return e*Math.sin(a)*Math.cos(u)+r*Math.cos(a)*Math.sin(u)+n}function h(t,n,e,r){var a=Math.atan2(r*t,e*n);return(a+2*Math.PI)%(2*Math.PI)}function l(t,n,e){return{x:t*Math.cos(e),y:n*Math.sin(e)}}function p(t,n,e){var r=Math.cos(e),a=Math.sin(e);return[t*r-n*a,t*a+n*r]}n.default={box:function(t,n,e,r,a,u,i){for(var h=o(e,r,a),l=1/0,p=-1/0,v=[u,i],M=2*-Math.PI;M<=2*Math.PI;M+=Math.PI){var d=h+M;u<i?u<d&&d<i&&v.push(d):i<d&&d<u&&v.push(d)}for(M=0;M<v.length;M++){var y=s(t,n,e,r,a,v[M]);y<l&&(l=y),y>p&&(p=y)}var g=c(e,r,a),x=1/0,b=-1/0,P=[u,i];for(M=2*-Math.PI;M<=2*Math.PI;M+=Math.PI){var A=g+M;u<i?u<A&&A<i&&P.push(A):i<A&&A<u&&P.push(A)}for(M=0;M<P.length;M++){var m=f(t,n,e,r,a,P[M]);m<x&&(x=m),m>b&&(b=m)}return{x:l,y:x,width:p-l,height:b-x}},length:function(t,n,e,r,a,u,i){},nearestPoint:function(t,n,e,r,u,i,o,c,s){var f=p(c-t,s-n,-u),v=f[0],M=f[1],d=a.default.nearestPoint(0,0,e,r,v,M),y=h(e,r,d.x,d.y);y<i?d=l(e,r,i):y>o&&(d=l(e,r,o));var g=p(d.x,d.y,u);return{x:g[0]+t,y:g[1]+n}},pointDistance:function(t,n,e,a,u,i,o,c,s){var f=this.nearestPoint(t,n,e,a,c,s);return r.distance(f.x,f.y,c,s)},pointAt:function(t,n,e,r,a,u,i,o){var c=(i-u)*o+u;return{x:s(t,n,e,r,a,c),y:f(t,n,e,r,a,c)}},tangentAngle:function(t,n,e,a,o,c,s,f){var h=(s-c)*f+c,l=u(t,n,e,a,o,c,s,h),p=i(t,n,e,a,o,c,s,h);return r.piMod(Math.atan2(p,l))}}},b455:function(t,n,e){"use strict";function r(t){return Math.min.apply(null,t)}function a(t){return Math.max.apply(null,t)}function u(t,n,e,r){var a=t-e,u=n-r;return Math.sqrt(a*a+u*u)}function i(t,n){return Math.abs(t-n)<.001}function o(t,n){var e=r(t),u=r(n),i=a(t),o=a(n);return{x:e,y:u,width:i-e,height:o-u}}function c(t,n,e,u){return{minX:r([t,e]),maxX:a([t,e]),minY:r([n,u]),maxY:a([n,u])}}function s(t){return(t+2*Math.PI)%(2*Math.PI)}Object.defineProperty(n,"__esModule",{value:!0}),n.distance=u,n.isNumberEqual=i,n.getBBoxByArray=o,n.getBBoxRange=c,n.piMod=s},c31b:function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("c3e2"),a=e("b455"),u=e("493b");function i(t,n,e,r){var a=1-r;return a*a*t+2*r*a*n+r*r*e}function o(t,n,e){var r=t+e-2*n;if(a.isNumberEqual(r,0))return[.5];var u=(t-n)/r;return u<=1&&u>=0?[u]:[]}function c(t,n,e,r){return 2*(1-r)*(n-t)+2*r*(e-n)}function s(t,n,e,a,u,o,c){var s=i(t,e,u,c),f=i(n,a,o,c),h=r.default.pointAt(t,n,e,a,c),l=r.default.pointAt(e,a,u,o,c);return[[t,n,h.x,h.y,s,f],[s,f,l.x,l.y,u,o]]}function f(t,n,e,r,u,i,o){if(0===o)return(a.distance(t,n,e,r)+a.distance(e,r,u,i)+a.distance(t,n,u,i))/2;var c=s(t,n,e,r,u,i,.5),h=c[0],l=c[1];return h.push(o-1),l.push(o-1),f.apply(null,h)+f.apply(null,l)}n.default={box:function(t,n,e,r,u,c){var s=o(t,e,u)[0],f=o(n,r,c)[0],h=[t,u],l=[n,c];return void 0!==s&&h.push(i(t,e,u,s)),void 0!==f&&l.push(i(n,r,c,f)),a.getBBoxByArray(h,l)},length:function(t,n,e,r,a,u){return f(t,n,e,r,a,u,3)},nearestPoint:function(t,n,e,r,a,o,c,s){return u.nearestPoint([t,e,a],[n,r,o],c,s,i)},pointDistance:function(t,n,e,r,u,i,o,c){var s=this.nearestPoint(t,n,e,r,u,i,o,c);return a.distance(s.x,s.y,o,c)},interpolationAt:i,pointAt:function(t,n,e,r,a,u,o){return{x:i(t,e,a,o),y:i(n,r,u,o)}},divide:function(t,n,e,r,a,u,i){return s(t,n,e,r,a,u,i)},tangentAngle:function(t,n,e,r,u,i,o){var s=c(t,e,u,o),f=c(n,r,i,o),h=Math.atan2(f,s);return a.piMod(h)}}},c3e2:function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("b455"),a=e("6711");n.default={box:function(t,n,e,a){return r.getBBoxByArray([t,e],[n,a])},length:function(t,n,e,a){return r.distance(t,n,e,a)},pointAt:function(t,n,e,r,a){return{x:(1-a)*t+a*e,y:(1-a)*n+a*r}},pointDistance:function(t,n,e,a,u,i){var o=(e-t)*(u-t)+(a-n)*(i-n);if(o<0)return r.distance(t,n,u,i);var c=(e-t)*(e-t)+(a-n)*(a-n);return o>c?r.distance(e,a,u,i):this.pointToLine(t,n,e,a,u,i)},pointToLine:function(t,n,e,r,u,i){var o=[e-t,r-n];if(a.exactEquals(o,[0,0]))return Math.sqrt((u-t)*(u-t)+(i-n)*(i-n));var c=[-o[1],o[0]];a.normalize(c,c);var s=[u-t,i-n];return Math.abs(a.dot(s,c))},tangentAngle:function(t,n,e,r){return Math.atan2(r-n,e-t)}}},d6a3:function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=e("2412"),a=e("b455");n.default={box:function(t){for(var n=[],e=[],r=0;r<t.length;r++){var u=t[r];n.push(u[0]),e.push(u[1])}return a.getBBoxByArray(n,e)},length:function(t){return r.lengthOfSegment(t)},pointAt:function(t,n){return r.pointAtSegments(t,n)},pointDistance:function(t,n,e){return r.distanceAtSegment(t,n,e)},tangentAngle:function(t,n){return r.angleAtSegments(t,n)}}}}]);