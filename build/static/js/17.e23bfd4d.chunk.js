(window.webpackJsonp=window.webpackJsonp||[]).push([[17],{206:function(e,t,a){"use strict";var r=a(3),o=a(4),n=a(6),l=a(5),c=a(7),s=a(0),i=a.n(s),m=a(21),u=a.n(m),d=a(207),p=a.n(d),g=function(e){function t(){return Object(r.a)(this,t),Object(n.a)(this,Object(l.a)(t).apply(this,arguments))}return Object(c.a)(t,e),Object(o.a)(t,[{key:"render",value:function(){var e=this;return i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"col-12 p-0 fixed",style:{zIndex:"9"}},i.a.createElement("div",{className:"block m-0"},i.a.createElement("div",{className:"block-content p-0"},i.a.createElement("div",{className:"input-group ".concat(this.props.boxshadow&&"search-box")},!this.props.disable_back_button&&i.a.createElement("div",{className:"input-group-prepend"},this.props.back_to_home&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(u.a,{duration:"500"})),this.props.goto_orders_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/my-orders")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(u.a,{duration:"500"})),this.props.goto_accounts_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/my-account")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(u.a,{duration:"500"})),!this.props.back_to_home&&!this.props.goto_orders_page&&!this.props.goto_accounts_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.goBack()},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(u.a,{duration:"500"}))),i.a.createElement("p",{className:"form-control search-input"},this.props.logo&&i.a.createElement("img",{src:"/assets/img/logos/logo.png",alt:localStorage.getItem("storeName"),width:"120"}),this.props.has_title?i.a.createElement("span",{className:"nav-page-title"},this.props.title):null,this.props.has_delivery_icon&&i.a.createElement(p.a,{left:!0},i.a.createElement("img",{src:"/assets/img/various/delivery-bike.png",alt:this.props.title,className:"nav-page-title"}))),this.props.has_restaurant_info?i.a.createElement("div",{className:"fixed-restaurant-info hidden",ref:function(t){e.heading=t}},i.a.createElement("span",{className:"font-w700 fixedRestaurantName"},this.props.restaurant.name),i.a.createElement("br",null),i.a.createElement("span",{className:"font-w400 fixedRestaurantTime"},i.a.createElement("i",{className:"si si-clock"})," ",this.props.restaurant.delivery_time," ",localStorage.getItem("homePageMinsText"))):null,i.a.createElement("div",{className:"input-group-append"},!this.props.disable_search&&i.a.createElement("button",{type:"submit",className:"btn search-navs-btns",style:{position:"relative"}},i.a.createElement("i",{className:"si si-magnifier"}),i.a.createElement(u.a,{duration:"500"}))))))))}}]),t}(s.Component);g.contextTypes={router:function(){return null}},t.a=g},208:function(e,t,a){"use strict";a.d(t,"a",function(){return r});var r=function(e){if(e){var t=parseFloat(e);return t=t.toFixed(2)}return 0}},210:function(e,t,a){"use strict";a.d(t,"a",function(){return n});var r=a(93),o=a(208),n=function(e){return function(t){var a={productQuantity:e.reduce(function(e,t){return++e},0),totalPrice:e.reduce(function(e,t){var a=0;return t.selectedaddons&&t.selectedaddons.map(function(e){return a+=parseFloat(e.price)}),e+=t.price*t.quantity+a*t.quantity,e=parseFloat(e),Object(o.a)(e),e},0)};t({type:r.a,payload:a})}}},211:function(e,t,a){"use strict";a.d(t,"b",function(){return s}),a.d(t,"c",function(){return i}),a.d(t,"d",function(){return m}),a.d(t,"e",function(){return u}),a.d(t,"g",function(){return d}),a.d(t,"f",function(){return p}),a.d(t,"h",function(){return g}),a.d(t,"a",function(){return h});var r=a(90),o=a(30),n=a(9),l=a(10),c=a.n(l),s=function(e){return function(t){return c.a.post(n.D+"/"+e).then(function(e){var a=e.data;return t({type:o.b,payload:a})}).catch(function(e){console.log(e)})}},i=function(e){return function(t){return c.a.post(n.C+"/"+e).then(function(e){var a=e.data;return t({type:o.c,payload:a})}).catch(function(e){console.log(e)})}},m=function(e){return function(t){c.a.post(n.E+"/"+e).then(function(e){var a=e.data;return t({type:o.d,payload:a})}).catch(function(e){console.log(e)})}},u=function(e){return function(t){return c.a.post(n.I,{id:e}).then(function(e){var a=e.data;return t({type:o.h,payload:a})}).catch(function(e){console.log(e)})}},d=function(){return function(e){return e({type:o.f,payload:[]})}},p=function(){return function(e){return e({type:o.e,payload:[]})}},g=function(e,t,a,n){return function(l,c){var s=a+t,i=n+t,m=[],u=[];return e&&[e].length>=0&&Object.keys(e).forEach(function(a){e[a].forEach(function(e){m.push(e),u=m.filter(function(e){return-1!==e.name.toLowerCase().indexOf(t.toLowerCase())})})}),u.length>0?l({type:o.g,payload:{items:Object(r.a)({},s,u)}}):u.length<=0?l({type:o.g,payload:{items:Object(r.a)({},i,u)}}):void 0}},h=function(e){return function(t){return t({type:o.a,payload:e})}}},217:function(e,t,a){"use strict";a.d(t,"a",function(){return r});var r=function(e,t,a,r){function o(e){return e*Math.PI/180}var n=o(r-t),l=o(a-e),c=Math.sin(n/2)*Math.sin(n/2)+Math.cos(o(t))*Math.cos(o(r))*Math.sin(l/2)*Math.sin(l/2);return 6371*(2*Math.atan2(Math.sqrt(c),Math.sqrt(1-c)))}},221:function(e,t,a){"use strict";a.d(t,"b",function(){return c}),a.d(t,"a",function(){return s});var r=a(98),o=a(9),n=a(10),l=a.n(n),c=function(){return function(e){return e({type:r.a,payload:!0})}},s=function(e){return function(t){return l.a.post(o.g,{items:e}).then(function(e){return e.data}).catch(function(e){console.log(e)})}}},231:function(e,t,a){"use strict";a.d(t,"a",function(){return i});var r=a(97),o=a(9),n=a(95),l=a(10),c=a.n(l),s=a(210),i=function(e,t,a,l,i,m,u,d,p,g,h){return function(y,f){return c.a.post(o.V,{token:e.data.auth_token,user:e,order:t,coupon:a,location:l,order_comment:i,total:m,method:u,payment_token:d,delivery_type:p,partial_wallet:g,dis:h}).then(function(e){var t=e.data;if(!t.success)return t;y({type:r.a,payload:t});var a=f().cart.products;localStorage.removeItem("orderComment");for(var o=a.length-1;o>=0;o--)a.splice(o,1);y(Object(s.a)(a)),localStorage.removeItem("appliedCoupon");y({type:n.a,payload:[]})}).catch(function(e){return e.response})}}},232:function(e,t,a){"use strict";a.d(t,"a",function(){return o});var r=a(217),o=function(e,t,a,o,n,l){var c=[{lat:parseFloat(t),lng:parseFloat(e)}],s=[{lat:parseFloat(o),lng:parseFloat(a)}],i=n.maps.TravelMode.DRIVING;(new n.maps.DistanceMatrixService).getDistanceMatrix({origins:c,destinations:s,travelMode:i},function(n,c){if(console.log("RESPONSE",n),console.log("STATUS",n.rows[0].elements[0].status),"OK"===n.rows[0].elements[0].status){var s=(n.rows[0].elements[0].distance.value/1e3).toFixed(1);l(s)}else{console.log("Falling back to basic distance calculation");var i=Object(r.a)(e,t,a,o);l(i)}})}},319:function(e,t,a){"use strict";a.r(t);var r=a(3),o=a(4),n=a(6),l=a(5),c=a(7),s=a(0),i=a.n(s),m=a(206),u=a(38),d=a(91),p=a(44),g=a(56),h=a(274),y=a.n(h),f=a(9),v=a(279),b=a.n(v),E=a(16),S=a(208),_=a(231),k=a(89),w=a(217),I=a(232),N=a(10),C=a.n(N),x=a(222),O=a(211),P=function(e){function t(){var e,a;Object(r.a)(this,t);for(var o=arguments.length,c=new Array(o),s=0;s<o;s++)c[s]=arguments[s];return(a=Object(n.a)(this,(e=Object(l.a)(t)).call.apply(e,[this].concat(c)))).state={loading:!0,stripe_opened:!1,delivery_charges:0,error:!1,m_pesa_opened:!1,m_pesa_success:!1,razorpay_opened:!1,razorpay_success:!1,canPayPartialWithWallet:!1,walletChecked:!1,canPayFullWithWallet:!1,distance:0,placeOrderError:!1,errorMessage:""},a.__doesRestaurantOperatesAtThisLocation=function(e){var t=a.props.user;if(t.success){var r=Object(d.a)(Object(d.a)(a));if("true"===localStorage.getItem("enGDMA"))"DELIVERY"===localStorage.getItem("userSelected")&&a.props.handleProcessDistanceCalcLoading(!0),Object(I.a)(e.longitude,e.latitude,t.data.default_address.longitude,t.data.default_address.latitude,a.props.google,function(e){"DELIVERY"===localStorage.getItem("userSelected")&&("DYNAMIC"===r.props.restaurant_info.delivery_charge_type&&r.setState({distance:e},function(){r.calculateDynamicDeliveryCharge()}),r.props.handleProcessDistanceCalcLoading(!1))});else{var o=Object(w.a)(e.longitude,e.latitude,t.data.default_address.longitude,t.data.default_address.latitude);"DELIVERY"===localStorage.getItem("userSelected")&&"DYNAMIC"===a.props.restaurant_info.delivery_charge_type&&a.setState({distance:o},function(){a.calculateDynamicDeliveryCharge()})}}},a.calculateDynamicDeliveryCharge=function(){var e=a.props.restaurant_info,t=a.state.distance;if(t>e.base_delivery_distance){var r=(t-e.base_delivery_distance)/e.extra_delivery_distance*e.extra_delivery_charge,o=parseFloat(e.base_delivery_charge)+parseFloat(r);"true"===localStorage.getItem("enDelChrRnd")&&(o=Math.ceil(o)),a.setState({delivery_charges:o})}else a.setState({delivery_charges:e.base_delivery_charge})},a.onOpened=function(){a.setState({stripe_opened:!0})},a.onToken=function(e){a.__placeOrder(e,"STRIPE")},a.onSuccess=function(e){a.__placeOrder("","PAYPAL")},a.onCancel=function(e){console.log("Paypal Payment Canceled")},a.onError=function(e){console.log("Error!")},a.callback=function(e){if("success"===e.status){var t=e.reference;a.__placeOrder(t,"PAYSTACK")}else console.log(e)},a.close=function(){console.log("PayStack Payment Closed")},a.getReference=function(){for(var e="",t="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.=",a=0;a<15;a++)e+=t.charAt(Math.floor(Math.random()*t.length));return e},a.__placeOrder=function(e,t){for(var r=document.getElementsByClassName("paymentGatewayBlock"),o=0;o<r.length;o++)r[o].classList.add("no-click");var n=a.props,l=n.user,c=n.cartProducts,s=n.coupon,i=n.cartTotal;if(l.success){"SELFPICKUP"===localStorage.getItem("userSelected")?a.props.placeOrder(l,c,s.success?s:null,JSON.parse(localStorage.getItem("userSetAddress")),localStorage.getItem("orderComment"),i,t,e,2,a.state.walletChecked,parseFloat(a.state.distance)).then(function(e){e&&(e.success||a.setState({placeOrderError:!0,errorMessage:e.message}))}):a.props.placeOrder(l,c,s.success?s:null,JSON.parse(localStorage.getItem("userSetAddress")),localStorage.getItem("orderComment"),i,t,e,1,a.state.walletChecked,parseFloat(a.state.distance)).then(function(e){e&&(console.log("Came here"),console.log("THIS",e),401===e.status?(a.setState({placeOrderError:!0,errorMessage:localStorage.getItem("userInActiveMessage")}),a.resetPage()):e.success||(a.setState({placeOrderError:!0,errorMessage:e.message}),a.resetPage()))});var m=document.getElementById("progressBar");m.classList.remove("hidden");var u=0,d=setInterval(function(){u>100&&clearInterval(d),u+=1,m.style.width=u+"%"},20);a.setState({stripe_opened:!1})}},a.resetPage=function(){var e=document.getElementById("progressBar");e.classList.add("hidden"),setTimeout(function(){e.style.width="0%"},2200);for(var t=document.getElementsByClassName("paymentGatewayBlock"),a=0;a<t.length;a++)t[a].classList.remove("no-click")},a.getTotalAfterCalculation=function(){var e=a.props,t=e.coupon,r=e.restaurant_info,o=e.user,n=a.props.cartTotal.totalPrice,l=0;if(t.code)if("PERCENTAGE"===t.discount_type){var c=Object(S.a)(t.discount/100*parseFloat(n));t.max_discount&&parseFloat(c)>=t.max_discount&&(c=t.max_discount),t.appliedAmount=c,l=Object(S.a)(Object(S.a)(parseFloat(n)-c+parseFloat(r.restaurant_charges||0)+parseFloat(a.state.delivery_charges||0)))}else l=Object(S.a)(parseFloat(n)-(parseFloat(t.discount)||0)+((parseFloat(r.restaurant_charges)||0)+(parseFloat(a.state.delivery_charges)||0)));else l=Object(S.a)(parseFloat(n)+parseFloat(r.restaurant_charges||0)+parseFloat(a.state.delivery_charges||0));return"true"===localStorage.getItem("taxApplicable")?(l=Object(S.a)(parseFloat(parseFloat(l)+parseFloat(parseFloat(localStorage.getItem("taxPercentage"))/100)*l)),a.state.walletChecked&&o.data.wallet_balance<l&&(l-=o.data.wallet_balance),l):(a.state.walletChecked&&o.data.wallet_balance<l&&(l-=o.data.wallet_balance),l)},a.__handleRazorPay=function(){var e=Object(d.a)(Object(d.a)(a));a.setState({razorpay_opened:!0});var t=Object(S.a)(parseFloat(a.getTotalAfterCalculation()));C.a.post(f.W,{totalAmount:t}).then(function(r){if(r.data.razorpay_success){var o={key:localStorage.getItem("razorpayKeyId"),amount:t,name:localStorage.getItem("storeName"),currency:localStorage.getItem("currencyId"),order_id:r.data.response.id,handler:function(t){e.setState({razorpay_opened:!1,razorpay_success:!0});e.__placeOrder("","RAZORPAY")},modal:{ondismiss:function(){console.log("closed"),e.setState({razorpay_opened:!1,razorpay_success:!1})}},prefill:{name:a.props.user.data.name,email:a.props.user.data.email,contact:a.props.user.data.phone}};new window.Razorpay(o).open()}}).catch(function(e){console.log(e)})},a.__handleMpesa=function(){var e=Object(d.a)(Object(d.a)(a));a.setState({m_pesa_opened:!0});var t=Object(S.a)(parseFloat(a.getTotalAfterCalculation()));C.a.post(f.R,{totalAmount:t}).then(function(t){if(200===t.data.status)var a=JSON.parse(t.data.data).CheckoutRequestID,r=setInterval(function(){C.a.post(f.S,{checkoutRequestId:a}).then(function(t){if(0===t.data.result_code){e.setState({m_pesa_opened:!1,m_pesa_success:!0});e.__placeOrder("","M-PESA"),clearInterval(r)}})},3e3)}).catch(function(e){console.log(e)})},a}return Object(c.a)(t,e),Object(o.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=this.props.user;null!==localStorage.getItem("activeRestaurant")&&this.props.getRestaurantInfoById(localStorage.getItem("activeRestaurant")).then(function(t){t&&t.payload.id&&e.__doesRestaurantOperatesAtThisLocation(t.payload)}),t.success&&this.props.updateUserInfo(t.data.id,t.data.auth_token,null),"SELFPICKUP"===localStorage.getItem("userSelected")?this.setState({delivery_charges:0}):this.setState({delivery_charges:this.props.restaurant_info.delivery_charges})}},{key:"componentWillReceiveProps",value:function(e){this.props.paymentgateways!==e.paymentgateways&&this.setState({loading:!1}),e.checkout!==this.props.checkout&&(localStorage.removeItem("appliedCoupon"),this.context.router.history.push("/running-order/"+e.checkout.data.unique_order_id)),e.user.data.wallet_balance>0&&this.setState({canPayPartialWithWallet:!0,canPayFullWithWallet:!1}),e.user.data.wallet_balance>=parseFloat(this.getTotalAfterCalculation())&&this.setState({canPayFullWithWallet:!0,canPayPartialWithWallet:!1})}},{key:"render",value:function(){var e=this,t={sandbox:localStorage.getItem("paypalSandboxKey"),production:localStorage.getItem("paypalProductionKey")};return i.a.createElement(i.a.Fragment,null,this.state.placeOrderError&&i.a.createElement("div",{className:"auth-error ongoing-payment"},i.a.createElement("div",{className:"error-shake"},this.state.errorMessage)),this.props.paymentgateways.some(function(e){return"Razorpay"===e.name})&&i.a.createElement(g.Helmet,null,i.a.createElement("script",{src:"https://checkout.razorpay.com/v1/checkout.js"})),this.state.stripe_opened||this.state.razorpay_opened&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"height-80 overlay-loading ongoing-payment-spin"},i.a.createElement("div",{className:"spin-load"})),i.a.createElement("div",{className:"auth-error ongoing-payment"},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("checkoutPaymentInProcess")))),i.a.createElement("div",{className:"col-12 mb-50"},this.state.loading?i.a.createElement("div",{className:"row"},i.a.createElement("div",{className:"col-12"},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement(p.a,{height:70,width:window.innerWidth,speed:1.2,primaryColor:"#f3f3f3",secondaryColor:"#ecebeb"},i.a.createElement("rect",{x:"0",y:"10",rx:"0",ry:"0",width:"55",height:"55"}),i.a.createElement("rect",{x:"320",y:"10",rx:"0",ry:"0",width:"85",height:"20"}),i.a.createElement("rect",{x:"250",y:"40",rx:"0",ry:"0",width:"190",height:"18"}))))),i.a.createElement("div",{className:"col-12"},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement(p.a,{height:70,width:window.innerWidth,speed:1.2,primaryColor:"#f3f3f3",secondaryColor:"#ecebeb"},i.a.createElement("rect",{x:"0",y:"10",rx:"0",ry:"0",width:"55",height:"55"}),i.a.createElement("rect",{x:"320",y:"10",rx:"0",ry:"0",width:"85",height:"20"}),i.a.createElement("rect",{x:"250",y:"40",rx:"0",ry:"0",width:"190",height:"18"})))))):i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"text-center"},i.a.createElement("h3",{className:"btn btn-lg btn-outline-secondary btn-square d-block bg-white",style:{borderColor:"#eee"}},localStorage.getItem("cartToPayText")," ",i.a.createElement("span",{style:{color:localStorage.getItem("storeColor")}},"left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),Object(S.a)(parseFloat(this.getTotalAfterCalculation())),"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")))),i.a.createElement("div",{className:"row"},this.state.canPayPartialWithWallet&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"col-12",onClick:function(){return e.setState({walletChecked:!e.state.walletChecked})}},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/wallet.png",alt:localStorage.getItem("walletName"),className:"img-fluid"})),i.a.createElement("input",{type:"checkbox",name:"walletcheckbox",defaultChecked:this.props.walletChecked,className:"wallet-checkbox"}),i.a.createElement("div",{className:"font-size-h3 font-w600"},this.state.walletChecked&&i.a.createElement("i",{className:"si si-check mr-2",style:{color:localStorage.getItem("cartColorBg"),fontWeight:"900"}}),localStorage.getItem("walletName"),":"," ",i.a.createElement("span",{style:{color:localStorage.getItem("storeColor")}},"left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),this.props.user.data.wallet_balance,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},this.state.walletChecked?i.a.createElement(i.a.Fragment,null,i.a.createElement("span",{style:{color:localStorage.getItem("storeColor")}}," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),this.props.user.data.wallet_balance," ","right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))," ",localStorage.getItem("willbeDeductedText")," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),this.props.user.data.wallet_balance,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")):i.a.createElement(i.a.Fragment,null,i.a.createElement("span",null,localStorage.getItem("payPartialWithWalletText")),i.a.createElement("button",{className:"btn btn-redeem mt-2",style:{color:localStorage.getItem("cartColorBg"),borderColor:localStorage.getItem("cartColorBg")}},localStorage.getItem("walletRedeemBtnText")))))),i.a.createElement("hr",{className:"mb-4"}))),i.a.createElement("hr",null),i.a.createElement("div",{className:"col-12 text-center mb-0 mt-4"},i.a.createElement("h4",{className:"text-muted"},localStorage.getItem("checkoutPaymentListTitle"))),this.state.canPayFullWithWallet&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"col-12 paymentGatewayBlock",onClick:function(){return e.__placeOrder("","WALLET")}},i.a.createElement("p",{className:"mb-1"}),i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/wallet.png",alt:localStorage.getItem("walletName"),className:"img-fluid"})),i.a.createElement("div",{className:"font-size-h3 font-w600"},localStorage.getItem("walletName")),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},localStorage.getItem("payFullWithWalletText"),i.a.createElement("br",null),i.a.createElement("span",{style:{color:localStorage.getItem("storeColor")}},"left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),parseFloat(this.getTotalAfterCalculation()),"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))," ",localStorage.getItem("willbeDeductedText")," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),this.props.user.data.wallet_balance,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))))),i.a.createElement("hr",null)),this.props.paymentgateways.map(function(a){return i.a.createElement(i.a.Fragment,{key:a.id},i.a.createElement("div",{className:"col-12 paymentGatewayBlock"},"Stripe"===a.name&&i.a.createElement(b.a,{stripeKey:localStorage.getItem("stripePublicKey"),ComponentClass:"div",image:"".concat(window.location.origin.toString(),"/assets/img/favicons/").concat(localStorage.getItem("favicon-128x128")),locale:localStorage.getItem("stripeLocale"),name:localStorage.getItem("storeName"),email:e.props.user.data.email,token:e.onToken,opened:e.onOpened,amount:parseFloat(100*e.getTotalAfterCalculation()),currency:localStorage.getItem("currencyId"),alipay:"true"===localStorage.getItem("stripeAcceptAliPay"),bitcoin:"true"===localStorage.getItem("stripeAcceptBitCoin")},i.a.createElement("div",{className:"col-12 p-0"},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/stripe.png",alt:a.name,className:"img-fluid"})),i.a.createElement("div",{className:"font-size-h3 font-w600"},localStorage.getItem("checkoutStripeText"),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},localStorage.getItem("checkoutStripeSubText")))))))),"COD"===a.name&&i.a.createElement("div",{className:"col-12 paymentGatewayBlock",onClick:function(){return e.__placeOrder("","COD")}},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/cod.png",alt:a.name,className:"img-fluid"})),i.a.createElement("div",{className:"font-size-h3 font-w600"},localStorage.getItem("checkoutCodText")),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},localStorage.getItem("checkoutCodSubText"))))),"Razorpay"===a.name&&i.a.createElement("div",{className:"col-12 paymentGatewayBlock",onClick:function(){return e.__handleRazorPay()}},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/razorpay.png",alt:a.name,className:"img-fluid"})),i.a.createElement("div",{className:"font-size-h3 font-w600"},localStorage.getItem("checkoutRazorpayText")),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},localStorage.getItem("checkoutRazorpaySubText"))))),"M-Pesa"===a.name&&i.a.createElement("div",{className:"col-12 paymentGatewayBlock",onClick:function(){return e.__handleMpesa()}},i.a.createElement("div",{className:"block block-link-shadow text-left shadow-light"},i.a.createElement("div",{className:"block-content block-content-full clearfix py-3 payment-select-block"},i.a.createElement("div",{className:"float-right mt-10"},i.a.createElement("img",{src:"/assets/img/various/mpesa.png",alt:a.name,className:"img-fluid"})),i.a.createElement("div",{className:"font-size-h3 font-w600"},"Pay with M-Pesa"),i.a.createElement("div",{className:"font-size-sm font-w600 text-muted"},"You will get a notification on your phone to enter your M-Pesa pin.")))),"Paypal"===a.name&&i.a.createElement("div",{className:"col-12 paymentGatewayBlock"},i.a.createElement(y.a,{env:localStorage.getItem("paypalEnv"),client:t,currency:localStorage.getItem("currencyId"),total:parseFloat(e.getTotalAfterCalculation()),shipping:1,onError:e.onError,onSuccess:e.onSuccess,onCancel:e.onCancel,style:{size:"responsive",color:"silver",shape:"rect"}})))})))),i.a.createElement("div",{className:"col-12"},this.state.m_pesa_opened?i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"height-100 overlay-loading ongoing-payment-spin"},i.a.createElement("div",{className:"spin-load"})),i.a.createElement("div",{className:"auth-error ongoing-payment"},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("checkoutPaymentInProcess")))):i.a.createElement("div",null)),i.a.createElement("div",{className:"progress push m-0 progress-transparent",style:{height:"8px"}},i.a.createElement("div",{className:"progress-bar progress-bar-striped progress-bar-animated hidden",role:"progressbar",id:"progressBar",style:{backgroundColor:localStorage.getItem("storeColor"),width:"10%"}})))}}]),t}(s.Component);P.contextTypes={router:function(){return null}};var F=Object(E.b)(function(e){return{user:e.user.user,addresses:e.addresses.addresses,cartProducts:e.cart.products,cartTotal:e.total.data,coupon:e.coupon.coupon,checkout:e.checkout.checkout,restaurant_info:e.items.restaurant_info}},{placeOrder:_.a,updateUserInfo:k.k,getRestaurantInfoById:O.c})(Object(x.GoogleApiWrapper)({apiKey:localStorage.getItem("googleApiKey")})(P)),T=a(332),A=a(221),j=a(113),M=function(e){function t(){var e,a;Object(r.a)(this,t);for(var o=arguments.length,c=new Array(o),s=0;s<o;s++)c[s]=arguments[s];return(a=Object(n.a)(this,(e=Object(l.a)(t)).call.apply(e,[this].concat(c)))).state={process_distance_calc_loading:!1},a.fetchPaymentGateways=function(e){console.log("fetching again..."),a.props.getPaymentGateways(e)},a.handleProcessDistanceCalcLoading=function(e){a.setState({process_distance_calc_loading:e})},a}return Object(c.a)(t,e),Object(o.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=this.props.user;t&&this.props.getPaymentGateways(t.data.auth_token).then(function(a){a&&a.payload||(console.error("fetching payment gateways failed... trying again after 3s"),setTimeout(function(){e.fetchPaymentGateways(t.data.auth_token)},2500))}),this.props.cartProducts.length&&document.getElementsByTagName("body")[0].classList.add("bg-grey-light")}},{key:"componentWillUnmount",value:function(){document.getElementsByTagName("body")[0].classList.remove("bg-grey-light")}},{key:"render",value:function(){return this.props.cartProducts.length?window.innerWidth>768?i.a.createElement(T.a,{to:"/"}):this.props.confirmCart?null===localStorage.getItem("storeColor")?i.a.createElement(T.a,{to:"/"}):i.a.createElement(i.a.Fragment,null,this.state.process_distance_calc_loading&&i.a.createElement("div",{className:"height-100 overlay-loading ongoing-payment-spin"},i.a.createElement("div",{className:"spin-load"})),i.a.createElement(u.a,{seotitle:localStorage.getItem("checkoutPageTitle"),seodescription:localStorage.getItem("seoMetaDescription"),ogtype:"website",ogtitle:localStorage.getItem("seoOgTitle"),ogdescription:localStorage.getItem("seoOgDescription"),ogurl:window.location.href,twittertitle:localStorage.getItem("seoTwitterTitle"),twitterdescription:localStorage.getItem("seoTwitterDescription")}),i.a.createElement(m.a,{boxshadow:!0,has_title:!0,title:localStorage.getItem("checkoutPageTitle"),disable_search:!0}),i.a.createElement("div",{className:"pt-50"},i.a.createElement("div",{className:"pt-30"}),i.a.createElement(F,{handleProcessDistanceCalcLoading:this.handleProcessDistanceCalcLoading,paymentgateways:this.props.paymentgateways}))):i.a.createElement(T.a,{to:"/cart"}):i.a.createElement(T.a,{to:"/cart"})}}]),t}(s.Component);t.default=Object(E.b)(function(e){return{total:e.total.total,user:e.user.user,cartProducts:e.cart.products,cartTotal:e.total.data,coupon:e.coupon.coupon,confirmCart:e.confirmCart.confirmCart,paymentgateways:e.paymentgateways.paymentgateways}},{checkConfirmCart:A.b,getPaymentGateways:function(e){return function(t){return C.a.post(f.w,{token:e}).then(function(e){var a=e.data;return t({type:j.a,payload:a})}).catch(function(e){console.log(e)})}}})(M)}}]);