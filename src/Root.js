import * as serviceWorker from "./serviceWorker";

import { Provider } from "react-redux";
import React from "react";
import store from "./services/store";
// import { checkVersion } from "./checkVersion";
import CheckVersion from "./components/CheckVersion";
import InAppNotification from "./components/Mobile/InAppNotification";
import PWAPrompt from "react-ios-pwa-prompt";
import { Offline, Online } from "react-detect-offline";
import OfflineComponent from "./components/Mobile/OfflineComponent";
import CustomCssProvider from "./components/CustomCssProvider";

const Root = ({ children, initialState = {} }) => (
	<React.Fragment>
		{/* {checkVersion()} */}
		<Provider store={store(initialState)}>
			<CustomCssProvider />
			<Online>
				{children}
				<img className="cart-empty-img hidden" src="/assets/img/various/offline.png" alt="offline" />
				<CheckVersion />
				<InAppNotification />
				{localStorage.getItem("enIOSPWAPopup") === "true" && (
					<PWAPrompt
						delay={2500}
						copyTitle={localStorage.getItem("iOSPWAPopupTitle")}
						copyBody={localStorage.getItem("iOSPWAPopupBody")}
						copyShareButtonLabel={localStorage.getItem("iOSPWAPopupShareButtonLabel")}
						copyAddHomeButtonLabel={localStorage.getItem("iOSPWAPopupAddButtonLabel")}
						copyClosePrompt={localStorage.getItem("iOSPWAPopupCloseButtonLabel")}
					/>
				)}
			</Online>
			<Offline>
				<OfflineComponent />
			</Offline>
		</Provider>
	</React.Fragment>
);
serviceWorker.register();
// serviceWorker.unregister();

export default Root;
