(window.webpackJsonp=window.webpackJsonp||[]).push([[27],{214:function(e,t,a){var s,r,n;r=[a(0)],void 0===(n="function"===typeof(s=function(e){"use strict";function t(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){if(Symbol.iterator in Object(e)||"[object Arguments]"===Object.prototype.toString.call(e)){var a=[],s=!0,r=!1,n=void 0;try{for(var o,i=e[Symbol.iterator]();!(s=(o=i.next()).done)&&(a.push(o.value),!t||a.length!==t);s=!0);}catch(e){r=!0,n=e}finally{try{s||null==i.return||i.return()}finally{if(r)throw n}}return a}}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance")}()}function a(e){return(a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function s(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var s=Object.getOwnPropertySymbols(e);t&&(s=s.filter(function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable})),a.push.apply(a,s)}return a}function r(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?s(a,!0).forEach(function(t){i(e,t,a[t])}):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):s(a).forEach(function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))})}return e}function n(e,t){for(var a=0;a<t.length;a++){var s=t[a];s.enumerable=s.enumerable||!1,s.configurable=!0,"value"in s&&(s.writable=!0),Object.defineProperty(e,s.key,s)}}function o(e,t,a){return t&&n(e.prototype,t),a&&n(e,a),e}function i(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}var l=function(){function s(){var t=this,n=0<arguments.length&&void 0!==arguments[0]?arguments[0]:{};!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,s),i(this,"showMessageFor",function(e){t.visibleFields.includes(e)||t.visibleFields.push(e),t.helpers.forceUpdateIfNeeded()}),i(this,"hideMessageFor",function(e){var a=t.visibleFields.indexOf(e);-1<a&&t.visibleFields.splice(a,1),t.helpers.forceUpdateIfNeeded()}),i(this,"helpers",{parent:this,passes:function(e,t,a,s){return s.hasOwnProperty(e)?!(this.isRequired(e,s)||!this.isBlank(t))||!1!==s[e].rule(t,a,this.parent):(console.error("Rule Not Found: There is no rule with the name ".concat(e,".")),!0)},isRequired:function(e,t){return t[e].hasOwnProperty("required")&&t[e].required},isBlank:function(e){return null==e||this.testRegex(e,/^[\s]*$/)},normalizeValues:function(e,t){return[this.valueOrEmptyString(e),this.getValidation(t),this.getOptions(t)]},getValidation:function(e){return e===Object(e)&&Object.keys(e).length?Object.keys(e)[0]:e.split(":")[0]},getOptions:function(e){if(e===Object(e)&&Object.values(e).length){var t=Object.values(e)[0];return Array.isArray(t)?t:[t]}return 1<(t=e.split(":")).length?t[1].split(","):[]},valueOrEmptyString:function(e){return null==e?"":e},toSentence:function(e){return e.slice(0,-2).join(", ")+(e.slice(0,-2).length?", ":"")+e.slice(-2).join(2<e.length?", or ":" or ")},testRegex:function(e,t){return null!==e.toString().match(t)},forceUpdateIfNeeded:function(){this.parent.autoForceUpdate&&this.parent.autoForceUpdate.forceUpdate()},message:function(e,t,a,s){a.messages=a.messages||{};var r=a.messages[e]||a.messages.default||this.parent.messages[e]||this.parent.messages.default||s[e].message;return r.replace(":attribute",this.humanizeFieldName(t))},humanizeFieldName:function(e){return e.replace(/([A-Z])/g," $1").replace(/_/g," ").toLowerCase()},element:function(e,t){var a=t.element||this.parent.element;return a(e,t.className)},numeric:function(e){return this.testRegex(e,/^(\d+.?\d*)?$/)},momentInstalled:function(){return!(!window||!window.moment)||(console.warn("Date validators require using momentjs https://momentjs.com and moment objects."),!1)},size:function(e,t){return"string"===t||void 0===t||"array"===t?e.length:"num"===t?parseFloat(e):void 0},sizeText:function(e){return"string"===e||void 0===e?" characters":"array"===e?" elements":""}}),this.fields={},this.visibleFields=[],this.errorMessages={},this.messagesShown=!1,this.rules=r({accepted:{message:"The :attribute must be accepted.",rule:function(e){return!0===e},required:!0},after:{message:"The :attribute must be after :date.",rule:function(e,a){return t.helpers.momentInstalled()&&moment.isMoment(e)&&e.isAfter(a[0],"day")},messageReplace:function(e,t){return e.replace(":date",t[0].format("MM/DD/YYYY"))}},after_or_equal:{message:"The :attribute must be after or on :date.",rule:function(e,a){return t.helpers.momentInstalled()&&moment.isMoment(e)&&e.isSameOrAfter(a[0],"day")},messageReplace:function(e,t){return e.replace(":date",t[0].format("MM/DD/YYYY"))}},alpha:{message:"The :attribute may only contain letters.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z]*$/i)}},alpha_space:{message:"The :attribute may only contain letters and spaces.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z\s]*$/i)}},alpha_num:{message:"The :attribute may only contain letters and numbers.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z0-9]*$/i)}},alpha_num_space:{message:"The :attribute may only contain letters, numbers, and spaces.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z0-9\s]*$/i)}},alpha_num_dash:{message:"The :attribute may only contain letters, numbers, and dashes.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z0-9_-]*$/i)}},alpha_num_dash_space:{message:"The :attribute may only contain letters, numbers, dashes, and spaces.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z0-9_-\s]*$/i)}},array:{message:"The :attribute must be an array.",rule:function(e){return Array.isArray(e)}},before:{message:"The :attribute must be before :date.",rule:function(e,a){return t.helpers.momentInstalled()&&moment.isMoment(e)&&e.isBefore(a[0],"day")},messageReplace:function(e,t){return e.replace(":date",t[0].format("MM/DD/YYYY"))}},before_or_equal:{message:"The :attribute must be before or on :date.",rule:function(e,a){return t.helpers.momentInstalled()&&moment.isMoment(e)&&e.isSameOrBefore(a[0],"day")},messageReplace:function(e,t){return e.replace(":date",t[0].format("MM/DD/YYYY"))}},between:{message:"The :attribute must be between :min and :max:type.",rule:function(e,a){return t.helpers.size(e,a[2])>=parseFloat(a[0])&&t.helpers.size(e,a[2])<=parseFloat(a[1])},messageReplace:function(e,a){return e.replace(":min",a[0]).replace(":max",a[1]).replace(":type",t.helpers.sizeText(a[2]))}},boolean:{message:"The :attribute must be a boolean.",rule:function(e){return!1===e||!0===e}},card_exp:{message:"The :attribute must be a valid expiration date.",rule:function(e){return t.helpers.testRegex(e,/^(([0]?[1-9]{1})|([1]{1}[0-2]{1}))\s?\/\s?(\d{2}|\d{4})$/)}},card_num:{message:"The :attribute must be a valid credit card number.",rule:function(e){return t.helpers.testRegex(e,/^\d{4}\s?\d{4,6}\s?\d{4,5}\s?\d{0,8}$/)}},currency:{message:"The :attribute must be a valid currency.",rule:function(e){return t.helpers.testRegex(e,/^\$?(\d{1,3})(\,?\d{3})*\.?\d{0,2}$/)}},date:{message:"The :attribute must be a date.",rule:function(e){return t.helpers.momentInstalled()&&moment.isMoment(e)}},date_equals:{message:"The :attribute must be on :date.",rule:function(e,a){return t.helpers.momentInstalled()&&moment.isMoment(e)&&e.isSame(a[0],"day")},messageReplace:function(e,t){return e.replace(":date",t[0].format("MM/DD/YYYY"))}},email:{message:"The :attribute must be a valid email address.",rule:function(e){return t.helpers.testRegex(e,/^[A-Z0-9.!#$%&'*+-\/=?^_`{|}~]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i)}},in:{message:"The selected :attribute must be :values.",rule:function(e,t){return t.includes(e)},messageReplace:function(e,a){return e.replace(":values",t.helpers.toSentence(a))}},integer:{message:"The :attribute must be an integer.",rule:function(e){return t.helpers.testRegex(e,/^\d*$/)}},max:{message:"The :attribute may not be greater than :max:type.",rule:function(e,a){return t.helpers.size(e,a[1])<=parseFloat(a[0])},messageReplace:function(e,a){return e.replace(":max",a[0]).replace(":type",t.helpers.sizeText(a[1]))}},min:{message:"The :attribute must be at least :min:type.",rule:function(e,a){return t.helpers.size(e,a[1])>=parseFloat(a[0])},messageReplace:function(e,a){return e.replace(":min",a[0]).replace(":type",t.helpers.sizeText(a[1]))}},not_in:{message:"The selected :attribute must not be :values.",rule:function(e,t){return!t.includes(e)},messageReplace:function(e,a){return e.replace(":values",t.helpers.toSentence(a))}},not_regex:{message:"The :attribute must not match the required pattern.",rule:function(e,a){return!t.helpers.testRegex(e,"string"==typeof a[0]||a[0]instanceof String?new RegExp(a[0]):a[0])}},numeric:{message:"The :attribute must be a number.",rule:function(e){return t.helpers.numeric(e)}},phone:{message:"The :attribute must be a valid phone number.",rule:function(e){return t.helpers.testRegex(e,/^(\+?\d{0,4})?\s?-?\s?(\(?\d{3}\)?)\s?-?\s?(\(?\d{3}\)?)\s?-?\s?(\(?\d{4}\)?)?$/)}},regex:{message:"The :attribute must match the required pattern.",rule:function(e,a){return t.helpers.testRegex(e,"string"==typeof a[0]||a[0]instanceof String?new RegExp(a[0]):a[0])}},required:{message:"The :attribute field is required.",rule:function(e){return!t.helpers.isBlank(e)},required:!0},size:{message:"The :attribute must be :size:type.",rule:function(e,a){return t.helpers.size(e,a[1])==parseFloat(a[0])},messageReplace:function(e,a){return e.replace(":size",a[0]).replace(":type",t.helpers.sizeText(a[1]))}},string:{message:"The :attribute must be a string.",rule:function(e){return a(e)===a("string")}},typeof:{message:"The :attribute is not the correct type of :type.",rule:function(e,t){return a(e)===a(t[0])},messageReplace:function(e,t){return e.replace(":type",a(t[0]))}},url:{message:"The :attribute must be a url.",rule:function(e){return t.helpers.testRegex(e,/^(https?|ftp):\/\/(-\.)?([^\s\/?\.#-]+\.?)+(\/[^\s]*)?$/i)}}},n.validators||{}),s.locales.hasOwnProperty(n.locale)||console.warn("Locale not found! Make sure it is spelled correctly and the locale file is loaded.");var o=s.locales[n.locale]||{};Object.keys(this.rules).forEach(function(e){t.rules[e].message=o[e]||t.rules[e].message}),this.messages=n.messages||{},this.className=n.className,this.autoForceUpdate=n.autoForceUpdate||!1,!1===n.element?this.element=function(e){return e}:n.hasOwnProperty("element")?this.element=n.element:"object"===("undefined"==typeof navigator?"undefined":a(navigator))&&"ReactNative"===navigator.product?this.element=function(e){return e}:this.element=function(a,s){return e.createElement("div",{className:s||t.className||"srv-validation-message"},a)}}return o(s,null,[{key:"addLocale",value:function(e,t){this.locales[e]=t}}]),o(s,[{key:"getErrorMessages",value:function(){return this.errorMessages}},{key:"showMessages",value:function(){this.messagesShown=!0,this.helpers.forceUpdateIfNeeded()}},{key:"hideMessages",value:function(){this.messagesShown=!1,this.helpers.forceUpdateIfNeeded()}},{key:"allValid",value:function(){for(var e in this.fields)if(!1===this.fieldValid(e))return!1;return!0}},{key:"fieldValid",value:function(e){return this.fields.hasOwnProperty(e)&&!0===this.fields[e]}},{key:"purgeFields",value:function(){this.fields={},this.errorMessages={}}},{key:"messageWhenPresent",value:function(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:{};if(!this.helpers.isBlank(e)&&this.messagesShown)return this.helpers.element(e,t)}},{key:"messageAlways",value:function(e,t){var a=2<arguments.length&&void 0!==arguments[2]?arguments[2]:{};if(console.warn("The messageAlways() method is deprecated in SimpleReactValidator. Please see the documentation and switch to the messageWhenPresent() method."),t&&this.messagesShown)return this.helpers.element(t,a)}},{key:"message",value:function(e,a,s){var n=3<arguments.length&&void 0!==arguments[3]?arguments[3]:{};this.errorMessages[e]=null,this.fields[e]=!0,Array.isArray(s)||(s=s.split("|"));var o=n.validators?r({},this.rules,{},n.validators):this.rules,i=!0,l=!1,u=void 0;try{for(var c,m=s[Symbol.iterator]();!(i=(c=m.next()).done);i=!0){var d=c.value,p=t(this.helpers.normalizeValues(a,d),3),h=p[0],g=p[1],f=p[2];if(!this.helpers.passes(g,h,f,o)){this.fields[e]=!1;var b=this.helpers.message(g,e,n,o);if(0<f.length&&o[g].hasOwnProperty("messageReplace")&&(b=o[g].messageReplace(b,f)),this.errorMessages[e]=b,this.messagesShown||this.visibleFields.includes(e))return this.helpers.element(b,n)}}}catch(e){l=!0,u=e}finally{try{i||null==m.return||m.return()}finally{if(l)throw u}}}}]),s}();return i(l,"version","1.2.4"),i(l,"locales",{en:{}}),l})?s.apply(t,r):s)||(e.exports=n)},216:function(e,t,a){"use strict";var s=a(3),r=a(4),n=a(6),o=a(5),i=a(7),l=a(0),u=a.n(l),c=a(21),m=a.n(c),d=function(e){function t(){return Object(s.a)(this,t),Object(n.a)(this,Object(o.a)(t).apply(this,arguments))}return Object(i.a)(t,e),Object(r.a)(t,[{key:"render",value:function(){return u.a.createElement(u.a.Fragment,null,u.a.createElement("button",{type:"button",className:"btn search-navs-btns back-button",style:{position:"relative"},onClick:this.context.router.history.goBack},u.a.createElement("i",{className:"si si-arrow-left"}),u.a.createElement(m.a,{duration:"500"})))}}]),t}(l.Component);d.contextTypes={router:function(){return null}},t.a=d},308:function(e,t,a){"use strict";a.r(t);var s=a(90),r=a(3),n=a(4),o=a(6),i=a(5),l=a(7),u=a(91),c=a(0),m=a.n(c),d=a(214),p=a.n(d),h=a(332),g=a(216),f=a(16),b=a(89),v=function(e){function t(){var e;return Object(r.a)(this,t),(e=Object(o.a)(this,Object(i.a)(t).call(this))).state={loading:!1,email:"",code:"",password:"",show_mail_form:!0,show_code_validation_form:!1,show_password_change_form:!1,error:!1,error_msg:"",dontHaveOtp:!0,completed:!1},e.handleInputChange=function(t){e.setState(Object(s.a)({},t.target.name,t.target.value))},e.handleAlreadyHaveOtp=function(){e.validator.fieldValid("email")?e.setState({show_mail_form:!1,show_code_validation_form:!0,dontHaveOtp:!1},function(){e.refs.otpInput.focus()}):(e.refs.emailInput.focus(),e.validator.showMessages())},e.handleDontHaveOtp=function(){e.setState({show_mail_form:!0,show_code_validation_form:!1,dontHaveOtp:!0},function(){e.refs.emailInput.focus()})},e.handleSendEmail=function(t){t.preventDefault(),e.validator.fieldValid("email")?(e.refs.otpEmailSendBtn.setAttribute("disabled","disabled"),e.props.sendPasswordResetMail(e.state.email),e.setState({loading:!0})):(console.log("Email Validation Failed"),e.validator.showMessages(),e.refs.emailInput.focus())},e.handleValidateCode=function(t){t.preventDefault(),e.validator.fieldValid("code")?(e.refs.otpVerifyBtn.setAttribute("disabled","disabled"),e.props.verifyPasswordResetOtp(e.state.email,e.state.code),e.setState({loading:!0})):(console.log("Code Validation Failed"),e.validator.showMessages(),e.refs.otpInput.focus())},e.handleChangePassword=function(t){t.preventDefault(),e.validator.fieldValid("password")?(e.refs.changePassBtn.setAttribute("disabled","disabled"),e.props.changeUserPassword(e.state.email,e.state.code,e.state.password),e.setState({loading:!0})):(console.log("Password Validation Failed"),e.validator.showMessages(),e.refs.passwordInput.focus())},e.validator=new p.a({autoForceUpdate:Object(u.a)(Object(u.a)(e)),messages:{required:localStorage.getItem("fieldValidationMsg"),email:localStorage.getItem("emailValidationMsg"),min:localStorage.getItem("minimumLengthValidationMessage")}}),e}return Object(l.a)(t,e),Object(n.a)(t,[{key:"componentWillReceiveProps",value:function(e){var t=this;this.props.reset_mail!==e.reset_mail&&(e.reset_mail.success?(console.log("Mail Sending Success"),this.setState({loading:!1,show_mail_form:!1,show_code_validation_form:!0,show_password_change_form:!1})):(console.log("Mail Sending Failed"),this.refs.otpEmailSendBtn.removeAttribute("disabled","disabled"),this.setState({loading:!1,error:!0}),"UNF"===e.reset_mail.error_code?this.setState({error_msg:localStorage.getItem("userNotFoundErrorMessage")}):this.setState({error_msg:localStorage.getItem("loginErrorMessage")}))),this.props.validate_email_otp!==e.validate_email_otp&&(e.validate_email_otp.success?(console.log("OTP Validation Success"),this.setState({loading:!1,show_mail_form:!1,show_code_validation_form:!1,show_password_change_form:!0})):(console.log("OTP Validation Failed"),this.refs.otpVerifyBtn.removeAttribute("disabled","disabled"),this.setState({loading:!1,error:!0}),"UNF"===e.validate_email_otp.error_code&&(console.log("userNotFoundErrorMessage"),this.setState({error_msg:localStorage.getItem("userNotFoundErrorMessage")})),"IVOTP"===e.validate_email_otp.error_code&&(console.log("invalidOtpErrorMessage"),this.setState({error_msg:localStorage.getItem("invalidOtpErrorMessage")})),"SWR"===e.validate_email_otp.error_code&&(console.log("loginErrorMessage"),this.setState({error_msg:localStorage.getItem("loginErrorMessage")})))),this.props.change_password!==e.change_password&&(e.change_password.success?(console.log("Password Change Success"),this.setState({loading:!1,show_mail_form:!1,show_code_validation_form:!1,show_password_change_form:!1,error:!1,completed:!0},function(){setTimeout(function(){console.log("Redirecting to login page"),t.context.router.history.push("/login")},2e3)})):(console.log("Password Change Failed"),this.refs.changePassBtn.removeAttribute("disabled","disabled"),this.setState({loading:!1,error:!0}),"UNF"===e.change_password.error_code&&this.setState({error_msg:localStorage.getItem("userNotFoundErrorMessage")}),"IVOTP"===e.change_password.error_code&&this.setState({error_msg:localStorage.getItem("invalidOtpErrorMessage")}),"SWR"===e.change_password.error_code&&this.setState({error_msg:localStorage.getItem("loginErrorMessage")})))}},{key:"render",value:function(){return window.innerWidth>768?m.a.createElement(h.a,{to:"/"}):null===localStorage.getItem("storeColor")?m.a.createElement(h.a,{to:"/"}):m.a.createElement(m.a.Fragment,null,this.state.error&&m.a.createElement("div",{className:"auth-error"},m.a.createElement("div",{className:"error-shake"},this.state.error_msg)),m.a.createElement("div",{style:{backgroundColor:"#f2f4f9"}},m.a.createElement("div",{className:"input-group"},m.a.createElement("div",{className:"input-group-prepend"},m.a.createElement(g.a,{history:this.props.history}))),m.a.createElement("img",{src:"/assets/img/login-header.png",className:"login-image pull-right mr-15",alt:"login-header"}),m.a.createElement("div",{className:"login-texts px-15 mt-50 pb-20"},m.a.createElement("span",{className:"login-title"},localStorage.getItem("resetPasswordPageTitle")),m.a.createElement("br",null),m.a.createElement("span",{className:"login-subtitle"},localStorage.getItem("resetPasswordPageSubTitle")))),m.a.createElement("div",{className:"bg-white"},this.state.show_mail_form&&m.a.createElement(m.a.Fragment,null,m.a.createElement("form",{onSubmit:this.handleSendEmail},m.a.createElement("div",{className:"form-group px-15 pt-30"},m.a.createElement("label",{className:"col-12 edit-address-input-label"},localStorage.getItem("loginLoginEmailLabel")," ",this.validator.message("email",this.state.email,"required|email")),m.a.createElement("div",{className:"col-md-9 pb-5"},m.a.createElement("input",{type:"text",name:"email",onChange:this.handleInputChange,className:"form-control edit-address-input",ref:"emailInput"}))),m.a.createElement("div",{className:"mt-20 px-15 pt-15 button-block"},m.a.createElement("button",{type:"submit",className:"btn btn-main",style:{backgroundColor:localStorage.getItem("storeColor")},ref:"otpEmailSendBtn",required:!0},localStorage.getItem("sendOtpOnEmailButtonText")))),this.state.dontHaveOtp&&m.a.createElement("div",{className:"d-flex justify-content-center mt-50"},m.a.createElement("div",{className:"p-10 btn resend-otp w-75",onClick:this.handleAlreadyHaveOtp},localStorage.getItem("alreadyHaveResetOtpButtonText")))),this.state.show_code_validation_form&&m.a.createElement(m.a.Fragment,null,m.a.createElement("form",{onSubmit:this.handleValidateCode},m.a.createElement("div",{className:"form-group px-15 pt-30"},m.a.createElement("label",{className:"col-12 edit-address-input-label"},localStorage.getItem("enterResetOtpMessageText")," ",this.state.email," ",this.validator.message("code",this.state.code,"required")),m.a.createElement("div",{className:"col-md-9 pb-5"},m.a.createElement("input",{ref:"otpInput",type:"text",name:"code",onChange:this.handleInputChange,className:"form-control edit-address-input",required:!0}))),m.a.createElement("div",{className:"mt-20 px-15 pt-15 button-block"},m.a.createElement("button",{type:"submit",className:"btn btn-main",style:{backgroundColor:localStorage.getItem("storeColor")},ref:"otpVerifyBtn"},localStorage.getItem("verifyResetOtpButtonText")))),!this.state.dontHaveOtp&&m.a.createElement("div",{className:"d-flex justify-content-center mt-50"},m.a.createElement("div",{className:"p-10 btn resend-otp w-75",onClick:this.handleDontHaveOtp},localStorage.getItem("dontHaveResetOtpButtonText")))),this.state.show_password_change_form&&m.a.createElement("form",{onSubmit:this.handleChangePassword},m.a.createElement("p",{className:"text-muted font-w700 px-15 mt-20 mb-0"},localStorage.getItem("enterNewPasswordText")),m.a.createElement("div",{className:"form-group px-15 pt-30"},m.a.createElement("label",{className:"col-12 edit-address-input-label"},localStorage.getItem("newPasswordLabelText")," ",this.validator.message("password",this.state.password,"required|min:8")),m.a.createElement("div",{className:"col-md-9 pb-5"},m.a.createElement("input",{ref:"passwordInput",type:"text",name:"password",onChange:this.handleInputChange,className:"form-control edit-address-input",required:!0}))),m.a.createElement("div",{className:"mt-20 px-15 pt-15 button-block"},m.a.createElement("button",{type:"submit",className:"btn btn-main",style:{backgroundColor:localStorage.getItem("storeColor")},ref:"changePassBtn"},localStorage.getItem("setNewPasswordButtonText")))),this.state.loading&&m.a.createElement("div",{className:"d-flex justify-content-center"},m.a.createElement("img",{src:"/assets/img/various/spinner.svg",alt:"Loading...",style:{width:"50px"}})),this.state.completed&&m.a.createElement("div",{className:"d-flex justify-content-center mt-20"},m.a.createElement("img",{src:"/assets/img/order-placed.gif",alt:"Completed",style:{width:"100px"}}))))}}]),t}(c.Component);v.contextTypes={router:function(){return null}};t.default=Object(f.b)(function(e){return{user:e.user.user,reset_mail:e.user.reset_mail,validate_email_otp:e.user.validate_email_otp,change_password:e.user.change_password}},{sendPasswordResetMail:b.j,verifyPasswordResetOtp:b.m,changeUserPassword:b.b})(v)}}]);