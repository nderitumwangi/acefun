(window.webpackJsonp=window.webpackJsonp||[]).push([[23],{206:function(e,t,a){"use strict";var r=a(3),n=a(4),l=a(6),o=a(5),c=a(7),s=a(0),i=a.n(s),m=a(21),d=a.n(m),u=a(207),p=a.n(u),g=function(e){function t(){return Object(r.a)(this,t),Object(l.a)(this,Object(o.a)(t).apply(this,arguments))}return Object(c.a)(t,e),Object(n.a)(t,[{key:"render",value:function(){var e=this;return i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"col-12 p-0 fixed",style:{zIndex:"9"}},i.a.createElement("div",{className:"block m-0"},i.a.createElement("div",{className:"block-content p-0"},i.a.createElement("div",{className:"input-group ".concat(this.props.boxshadow&&"search-box")},!this.props.disable_back_button&&i.a.createElement("div",{className:"input-group-prepend"},this.props.back_to_home&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(d.a,{duration:"500"})),this.props.goto_orders_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/my-orders")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(d.a,{duration:"500"})),this.props.goto_accounts_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.push("/my-account")},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(d.a,{duration:"500"})),!this.props.back_to_home&&!this.props.goto_orders_page&&!this.props.goto_accounts_page&&i.a.createElement("button",{type:"button",className:"btn search-navs-btns",style:{position:"relative"},onClick:function(){setTimeout(function(){e.context.router.history.goBack()},200)}},i.a.createElement("i",{className:"si si-arrow-left"}),i.a.createElement(d.a,{duration:"500"}))),i.a.createElement("p",{className:"form-control search-input"},this.props.logo&&i.a.createElement("img",{src:"/assets/img/logos/logo.png",alt:localStorage.getItem("storeName"),width:"120"}),this.props.has_title?i.a.createElement("span",{className:"nav-page-title"},this.props.title):null,this.props.has_delivery_icon&&i.a.createElement(p.a,{left:!0},i.a.createElement("img",{src:"/assets/img/various/delivery-bike.png",alt:this.props.title,className:"nav-page-title"}))),this.props.has_restaurant_info?i.a.createElement("div",{className:"fixed-restaurant-info hidden",ref:function(t){e.heading=t}},i.a.createElement("span",{className:"font-w700 fixedRestaurantName"},this.props.restaurant.name),i.a.createElement("br",null),i.a.createElement("span",{className:"font-w400 fixedRestaurantTime"},i.a.createElement("i",{className:"si si-clock"})," ",this.props.restaurant.delivery_time," ",localStorage.getItem("homePageMinsText"))):null,i.a.createElement("div",{className:"input-group-append"},!this.props.disable_search&&i.a.createElement("button",{type:"submit",className:"btn search-navs-btns",style:{position:"relative"}},i.a.createElement("i",{className:"si si-magnifier"}),i.a.createElement(d.a,{duration:"500"}))))))))}}]),t}(s.Component);g.contextTypes={router:function(){return null}},t.a=g},219:function(e,t,a){"use strict";a.d(t,"b",function(){return c}),a.d(t,"a",function(){return s});var r=a(73),n=a(9),l=a(10),o=a.n(l),c=function(e,t,a,l,c){return function(s){o.a.post(n.cb,{token:e,user_id:t,delivery_lat:a,delivery_long:l,heading:c}).then(function(e){var t=e.data;return s({type:r.b,payload:t})}).catch(function(e){console.log(e)})}},s=function(e,t){return function(a){o.a.post(n.p,{token:e,order_id:t}).then(function(e){var t=e.data;return a({type:r.a,payload:t})}).catch(function(e){console.log(e)})}}},236:function(e,t,a){"use strict";var r=a(3),n=a(4),l=a(6),o=a(5),c=a(7),s=a(0),i=a.n(s),m=a(16),d=a(219),u=function(e){function t(){var e,a;Object(r.a)(this,t);for(var n=arguments.length,c=new Array(n),s=0;s<n;s++)c[s]=arguments[s];return(a=Object(l.a)(this,(e=Object(o.a)(t)).call.apply(e,[this].concat(c)))).state={gpsAccessError:!1,lat:null,lng:null},a.__sendGpsLocation=function(e){a.props.sendDeliveryGuyGpsLocation(a.props.delivery_user.data.auth_token,a.props.delivery_user.data.id,e.coords.latitude,e.coords.longitude,e.coords.heading)},a}return Object(c.a)(t,e),Object(n.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=navigator&&navigator.geolocation;t&&(this.refreshSetInterval=setInterval(function(){t.getCurrentPosition(function(t){e.__sendGpsLocation(t)},function(t){console.log("Inside error"),console.log(t),e.setState({gpsAccessError:!0})},{enableHighAccuracy:!0})},15e3))}},{key:"componentWillUnmount",value:function(){clearInterval(this.refreshSetInterval),console.log("Cleared API CALL")}},{key:"render",value:function(){return i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"pt-50"},this.state.gpsAccessError&&i.a.createElement("div",{className:"auth-error location-error",style:{bottom:"5rem"}},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("allowLocationAccessMessage")))))}}]),t}(s.Component);t.a=Object(m.b)(function(e){return{delivery_user:e.delivery_user.delivery_user}},{sendDeliveryGuyGpsLocation:d.b})(u)},315:function(e,t,a){"use strict";a.r(t);var r=a(3),n=a(4),l=a(6),o=a(5),c=a(7),s=a(0),i=a.n(s),m=a(82),d=a(99),u=a(9),p=a(10),g=a.n(p),y=a(206),h=a(44),v=a(38),_=a(213),b=a.n(_),E=function(e){function t(){return Object(r.a)(this,t),Object(l.a)(this,Object(o.a)(t).apply(this,arguments))}return Object(c.a)(t,e),Object(n.a)(t,[{key:"render",value:function(){var e=this.props.item;return i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"d-flex justify-content-between"},i.a.createElement("div",{style:{maxWidth:"200px",minWidth:"200px"}},i.a.createElement("strong",null,e.name),"true"===localStorage.getItem("showOrderAddonsDelivery")&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",null,e&&e.order_item_addons.map(function(t,a){return i.a.createElement(i.a.Fragment,{key:e.id+t.addon_id},i.a.createElement("span",{style:{color:"#2b2b2b",fontSize:"0.9rem"}},i.a.createElement("small",null,t.addon_name,"true"===localStorage.getItem("showPriceAndOrderCommentsDelivery")&&i.a.createElement(i.a.Fragment,null," ","-"," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")," ",t.addon_price,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))),i.a.createElement("br",null)))})))),i.a.createElement("div",{className:""},i.a.createElement("span",{className:"order-item-quantity"},"x",e.quantity)),"true"===localStorage.getItem("showPriceAndOrderCommentsDelivery")&&i.a.createElement("div",{className:"cart-item-price"},i.a.createElement(i.a.Fragment,null,"left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")," ",e.price,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")))),i.a.createElement("hr",{className:"my-2"}))}}]),t}(s.Component),f=a(332),N=function(e){function t(){return Object(r.a)(this,t),Object(l.a)(this,Object(o.a)(t).apply(this,arguments))}return Object(c.a)(t,e),Object(n.a)(t,[{key:"render",value:function(){var e=this.props.order;return i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"block-content block-content-full"},i.a.createElement("img",{src:e.restaurant.image,alt:e.restaurant.name,className:"restaurant-image"})),i.a.createElement("div",{className:"block-content block-content-full restaurant-info"},i.a.createElement("div",{className:"font-w600 mb-5"},e.restaurant.name),i.a.createElement("div",{className:"font-size-sm text-muted truncate-text"},e.restaurant.description)))}}]),t}(s.Component),S=a(16),k=a(236),I=function(e){function t(){var e,a;Object(r.a)(this,t);for(var n=arguments.length,c=new Array(n),s=0;s<n;s++)c[s]=arguments[s];return(a=Object(l.a)(this,(e=Object(o.a)(t)).call.apply(e,[this].concat(c)))).state={loading:!1,already_accepted:!1,accepted_order:!1,picked_up:!1,delivered:!1,delivery_pin:"",delivery_pin_error:!1},a.__acceptToDeliver=function(){a.props.acceptToDeliverOrder(a.props.delivery_user.data.auth_token,a.props.delivery_user.data.id,a.props.single_delivery_order.id),a.setState({loading:!0})},a.__pickedUp=function(){a.props.pickupOrder(a.props.delivery_user.data.auth_token,a.props.single_delivery_order.id),a.setState({loading:!0})},a.__delivered=function(){a.props.deliverOrder(a.props.delivery_user.data.auth_token,a.props.single_delivery_order.id,a.state.delivery_pin),a.setState({loading:!0})},a.__getDirectionToRestaurant=function(e,t){var a="http://maps.google.com/maps?q="+e+","+t;window.open(a,"_blank")},a.__getDirectionToUser=function(e){try{JSON.parse(e);var t="http://maps.google.com/maps?q="+JSON.parse(e).lat+","+JSON.parse(e).lng;window.open(t,"_blank")}catch(r){JSON.parse(e);var a="http://maps.google.com/maps?q="+e;window.open(a,"_blank")}},a.__handleDeliveryPinInput=function(e){a.setState({delivery_pin:e.target.value})},a}return Object(c.a)(t,e),Object(n.a)(t,[{key:"componentDidMount",value:function(){document.getElementsByTagName("body")[0].classList.add("bg-grey"),this.props.delivery_user.success&&this.props.getSingleDeliveryOrder(this.props.delivery_user.data.auth_token,this.props.match.params.unique_order_id)}},{key:"componentWillReceiveProps",value:function(e){2===e.single_delivery_order.orderstatus_id&&(e.single_delivery_order.max_order&&this.setState({max_order:!0}),this.setState({loading:!1})),3===e.single_delivery_order.orderstatus_id&&(e.single_delivery_order.already_accepted&&this.setState({already_accepted:!0}),this.setState({accepted_order:!0}),this.setState({loading:!1})),4===e.single_delivery_order.orderstatus_id&&(this.setState({accepted_order:!0,picked_up:!0}),this.setState({loading:!1})),e.single_delivery_order.delivery_pin_error&&this.setState({delivery_pin_error:!0}),5===e.single_delivery_order.orderstatus_id&&(this.setState({loading:!1}),this.context.router.history.push("/delivery"))}},{key:"render",value:function(){var e=this;if(window.innerWidth>768)return i.a.createElement(f.a,{to:"/"});var t=this.props.single_delivery_order;return i.a.createElement(i.a.Fragment,null,i.a.createElement(v.a,{seotitle:"Delivery Orders",seodescription:localStorage.getItem("seoMetaDescription"),ogtype:"website",ogtitle:localStorage.getItem("seoOgTitle"),ogdescription:localStorage.getItem("seoOgDescription"),ogurl:window.location.href,twittertitle:localStorage.getItem("seoTwitterTitle"),twitterdescription:localStorage.getItem("seoTwitterDescription")}),i.a.createElement(y.a,{boxshadow:!0,has_title:!0,title:t.unique_order_id&&"#"+t.unique_order_id.substr(t.unique_order_id.length-8),disable_search:!0}),t.id?i.a.createElement(i.a.Fragment,null,this.state.loading&&i.a.createElement("div",{className:"height-100 overlay-loading ongoing-payment-spin"},i.a.createElement("div",{className:"spin-load"})),!this.state.delivered&&i.a.createElement(i.a.Fragment,null,this.state.max_order&&i.a.createElement("div",{className:"auth-error"},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("deliveryMaxOrderReachedMsg"))),this.state.already_accepted?i.a.createElement("div",{className:"auth-error"},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("deliveryAlreadyAccepted"))):i.a.createElement(i.a.Fragment,null,this.state.delivery_pin_error&&i.a.createElement("div",{className:"auth-error",style:{zIndex:"9",marginBottom:"4rem"}},i.a.createElement("div",{className:"error-shake"},localStorage.getItem("deliveryInvalidDeliveryPin"))),i.a.createElement("div",{className:"view-delivery-order",style:{paddingBottom:"20rem",paddingTop:"4rem"}},i.a.createElement("button",{className:"btn btn-clock text-center"},i.a.createElement("i",{className:"si si-clock mr-5"})," ",localStorage.getItem("deliveryOrderPlacedText"),":"," ",i.a.createElement(b.a,{fromNow:!0,interval:5e3},t.updated_at)),i.a.createElement(N,{order:t}),i.a.createElement("div",{className:"clearfix"}),i.a.createElement("hr",null),i.a.createElement("div",{className:"pt-15 px-15"},i.a.createElement("h3",null,i.a.createElement("span",{className:"delivery-orderItems-basket"},i.a.createElement("i",{className:"si si-basket mr-2"})),localStorage.getItem("deliveryOrderItems")),t.orderitems.map(function(e){return i.a.createElement(E,{item:e,key:e.id})}),"true"===localStorage.getItem("showPriceAndOrderCommentsDelivery")&&i.a.createElement(i.a.Fragment,null,i.a.createElement("p",null,t.order_comment),i.a.createElement("p",{className:"pull-right"},i.a.createElement("strong",null,"Total:"," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")," ",t.total,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"))))),i.a.createElement("hr",null),!this.state.picked_up&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"pt-15 px-15"},i.a.createElement("div",{className:"address restaurant-address"},i.a.createElement("h4",{className:"text-muted"},localStorage.getItem("deliveryRestaurantAddress")),i.a.createElement("p",{className:"m-0"},t.restaurant.address),i.a.createElement("p",{className:"m-0"},t.restaurant.pincode),i.a.createElement("div",{className:"pull-right",onClick:function(){return e.__getDirectionToRestaurant(t.restaurant.latitude,t.restaurant.longitude)}},i.a.createElement("button",{className:"btn btn-get-direction"},i.a.createElement("i",{className:"si si-action-redo mr-5"}),localStorage.getItem("deliveryGetDirectionButton"))),i.a.createElement("div",{className:"clearfix"}))),"true"===localStorage.getItem("showUserInfoBeforePickup")&&i.a.createElement("div",{className:"pt-15 px-15"},i.a.createElement("div",{className:"customer-address"},i.a.createElement("h4",{className:"text-muted"},localStorage.getItem("deliveryDeliveryAddress")),i.a.createElement("p",{className:"font-weight-bold mb-0"},t.user.name),i.a.createElement("p",{className:"mb-0"},t.user.phone),i.a.createElement("p",{className:"mb-2"},t.address),i.a.createElement("div",{className:"pull-right"},i.a.createElement("button",{className:"btn btn-get-direction",onClick:function(){return e.__getDirectionToUser(t.location)}},i.a.createElement("i",{className:"si si-action-redo mr-5"}),localStorage.getItem("deliveryGetDirectionButton"))),i.a.createElement("div",{className:"pull-right mr-2"},i.a.createElement("a",{className:"btn btn-get-direction",href:"tel:"+t.user.phone},i.a.createElement("i",{className:"si si-call-out mr-5"}),localStorage.getItem("callNowButton")," ")),i.a.createElement("div",{className:"clearfix"})))),this.state.picked_up&&i.a.createElement(i.a.Fragment,null,i.a.createElement("div",{className:"pt-15 px-15"},i.a.createElement("div",{className:"customer-address"},i.a.createElement("h4",{className:"text-muted"},localStorage.getItem("deliveryDeliveryAddress")),i.a.createElement("p",{className:"font-weight-bold mb-0"},t.user.name),i.a.createElement("p",{className:"mb-0"},t.user.phone),i.a.createElement("p",{className:"mb-2"},t.address),i.a.createElement("div",{className:"pull-right"},i.a.createElement("button",{className:"btn btn-get-direction",onClick:function(){return e.__getDirectionToUser(t.location)}},i.a.createElement("i",{className:"si si-action-redo mr-5"}),localStorage.getItem("deliveryGetDirectionButton"))),i.a.createElement("div",{className:"pull-right mr-2"},i.a.createElement("a",{className:"btn btn-get-direction",href:"tel:"+t.user.phone},i.a.createElement("i",{className:"si si-call-out mr-5"}),localStorage.getItem("callNowButton")," ")),i.a.createElement("div",{className:"clearfix"}))),i.a.createElement("div",{className:"pt-15 px-15"},"COD"===t.payment_mode?i.a.createElement("button",{className:"btn btn-cod"},localStorage.getItem("deliveryCashOnDelivery"),":"," ","left"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat"),t.payable,"right"===localStorage.getItem("currencySymbolAlign")&&localStorage.getItem("currencyFormat")):i.a.createElement("button",{className:"btn btn-payed-online"},i.a.createElement("i",{className:"si si-check mr-5"})," ",localStorage.getItem("deliveryOnlinePayment"))),"true"===localStorage.getItem("enableDeliveryPin")&&i.a.createElement("div",{className:"pt-10 px-15 delivery-pin-block"},i.a.createElement("div",{className:"form-group"},i.a.createElement("div",{className:"row"},i.a.createElement("div",{className:"col-12"},i.a.createElement("input",{type:"text",className:"form-control",placeholder:localStorage.getItem("deliveryDeliveryPinPlaceholder"),onChange:this.__handleDeliveryPinInput})))))),i.a.createElement("div",{className:"delivery-action"},!this.state.accepted_order&&!this.state.picked_up&&!this.state.delivered&&i.a.createElement("button",{onClick:this.__acceptToDeliver,type:"button",className:"btn btn-accept",style:{backgroundColor:localStorage.getItem("storeColor")}},i.a.createElement("i",{className:"si si-check mr-5"}),localStorage.getItem("deliveryAcceptOrderButton")),this.state.accepted_order&&!this.state.picked_up&&!this.state.delivered&&i.a.createElement("button",{onClick:this.__pickedUp,type:"button",className:"btn btn-accept",style:{backgroundColor:localStorage.getItem("storeColor")}},i.a.createElement("i",{className:"si si-bag mr-5"}),localStorage.getItem("deliveryPickedUpButton")),this.state.accepted_order&&this.state.picked_up&&!this.state.delivered&&i.a.createElement("button",{onClick:this.__delivered,type:"button",className:"btn btn-accept",style:{backgroundColor:localStorage.getItem("storeColor")}},i.a.createElement("i",{className:"si si-check mr-5"}),localStorage.getItem("deliveryDeliveredButton")),this.state.accepted_order&&this.state.picked_up&&this.state.delivered&&i.a.createElement("button",{type:"button",className:"btn btn-accept",style:{backgroundColor:localStorage.getItem("storeColor")}},i.a.createElement("i",{className:"si si-check mr-5"}),localStorage.getItem("deliveryOrderCompletedButton"))))))):i.a.createElement("div",{className:"pt-50"},i.a.createElement(h.a,{height:150,width:400,speed:1.2,primaryColor:"#f3f3f3",secondaryColor:"#ecebeb"},i.a.createElement("rect",{x:"20",y:"70",rx:"4",ry:"4",width:"80",height:"78"}),i.a.createElement("rect",{x:"144",y:"85",rx:"0",ry:"0",width:"115",height:"18"}),i.a.createElement("rect",{x:"144",y:"115",rx:"0",ry:"0",width:"165",height:"16"}))),i.a.createElement(k.a,null))}}]),t}(s.Component);I.contextTypes={router:function(){return null}};t.default=Object(S.b)(function(e){return{delivery_user:e.delivery_user.delivery_user,single_delivery_order:e.single_delivery_order.single_delivery_order,accepted_order:e.accepted_order.accepted_order}},{getSingleDeliveryOrder:function(e,t){return function(a){g.a.post(u.H,{token:e,unique_order_id:t}).then(function(e){var t=e.data;return a({type:d.a,payload:t})}).catch(function(e){console.log(e)})}},acceptToDeliverOrder:function(e,t,a){return function(r){g.a.post(u.a,{token:e,delivery_guy_id:t,order_id:a}).then(function(e){var t=e.data;r({type:m.a,payload:t}),r({type:d.a,payload:t})}).catch(function(e){console.log(e)})}},pickupOrder:function(e,t){return function(a){g.a.post(u.U,{token:e,order_id:t}).then(function(e){var t=e.data;a({type:m.c,payload:t}),a({type:d.a,payload:t})}).catch(function(e){console.log(e)})}},deliverOrder:function(e,t,a){return function(r){g.a.post(u.k,{token:e,order_id:t,delivery_pin:a}).then(function(e){var t=e.data;r({type:m.b,payload:t}),r({type:d.a,payload:t})}).catch(function(e){console.log(e)})}}})(I)}}]);