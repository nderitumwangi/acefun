import React, { Component } from "react";

import BackWithSearch from "../../Mobile/Elements/BackWithSearch";
import Meta from "../../helpers/meta";
import PaymentList from "./PaymentList";
import { Redirect } from "react-router";
import { checkConfirmCart } from "../../../services/confirmCart/actions";
import { connect } from "react-redux";
import { getPaymentGateways } from "../../../services/paymentgateways/actions";

class Checkout extends Component {
	state = {
		process_distance_calc_loading: false,
	};

	componentDidMount() {
		const { user } = this.props;

		if (user) {
			this.props.getPaymentGateways(user.data.auth_token).then((response) => {
				if (response && response.payload) {
					//
				} else {
					console.error("fetching payment gateways failed... trying again after 3s");
					setTimeout(() => {
						this.fetchPaymentGateways(user.data.auth_token);
					}, 2500);
				}
			});
		}

		if (this.props.cartProducts.length) {
			document.getElementsByTagName("body")[0].classList.add("bg-grey-light");
		}
	}

	fetchPaymentGateways = (token) => {
		console.log("fetching again...");
		this.props.getPaymentGateways(token);
	};

	componentWillUnmount() {
		document.getElementsByTagName("body")[0].classList.remove("bg-grey-light");
	}

	handleProcessDistanceCalcLoading = (value) => {
		this.setState({ process_distance_calc_loading: value });
	};

	render() {
		if (!this.props.cartProducts.length) {
			// no items in cart after checkout goto cart page
			return <Redirect to={"/cart"} />;
		}

		if (window.innerWidth > 768) {
			return <Redirect to="/" />;
		}
		//TODO:
		//check if the referrer is cart page, if not then redirect to cart
		if (!this.props.confirmCart) {
			return <Redirect to={"/cart"} />;
		}
		if (localStorage.getItem("storeColor") === null) {
			return <Redirect to={"/"} />;
		}
		return (
			<React.Fragment>
				{this.state.process_distance_calc_loading && (
					<div className="height-100 overlay-loading ongoing-payment-spin">
						<div className="spin-load" />
					</div>
				)}
				<Meta
					seotitle={localStorage.getItem("checkoutPageTitle")}
					seodescription={localStorage.getItem("seoMetaDescription")}
					ogtype="website"
					ogtitle={localStorage.getItem("seoOgTitle")}
					ogdescription={localStorage.getItem("seoOgDescription")}
					ogurl={window.location.href}
					twittertitle={localStorage.getItem("seoTwitterTitle")}
					twitterdescription={localStorage.getItem("seoTwitterDescription")}
				/>
				<BackWithSearch
					boxshadow={true}
					has_title={true}
					title={localStorage.getItem("checkoutPageTitle")}
					disable_search={true}
				/>
				<div className="pt-50">
					<div className="pt-30" />
					<PaymentList
						handleProcessDistanceCalcLoading={this.handleProcessDistanceCalcLoading}
						paymentgateways={this.props.paymentgateways}
					/>
				</div>
			</React.Fragment>
		);
	}
}

const mapStateToProps = (state) => ({
	total: state.total.total,
	user: state.user.user,
	cartProducts: state.cart.products,
	cartTotal: state.total.data,
	coupon: state.coupon.coupon,
	confirmCart: state.confirmCart.confirmCart,
	paymentgateways: state.paymentgateways.paymentgateways,
});

export default connect(
	mapStateToProps,
	{ checkConfirmCart, getPaymentGateways }
)(Checkout);
