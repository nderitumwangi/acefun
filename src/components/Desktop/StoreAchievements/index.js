import React, {Component} from "react";

import Fade from "react-reveal/Fade";
import Flip from "react-reveal/Flip";
import Tilt from "react-tilt";
import {REGISTER_DELIVERY_GUY, REGISTER_WINES_AND_SPIRITS, REGISTER_WINES_OR_DELIVERY_GUY} from "../../../configs";

class StoreAchievements extends Component {
    render() {
        return (
            <React.Fragment>
                <div className="container-fluid" style={{backgroundColor: "#FBFBFD"}}>
                    <div className="container">
                        <div className="row">
                            <Fade>
                                <div className="d-table mt-50 mb-50">
                                    <a href={REGISTER_WINES_AND_SPIRITS}>
                                        <Tilt className="Tilt" options={{max: 100, perspective: 650}}>
                                            <div
                                                className="col-xl-12 text-center d-table-cell align-middle store-achievement">
                                                <h3>Wines & Spirits</h3>
                                                <h6>
                                                    Register your wines and spirits business with Sherehez and earn
                                                    more.
                                                </h6>
                                            </div>
                                        </Tilt>
                                    </a>
                                </div>
                            </Fade>
                            <Flip top>
                                <div className="col-md-6 d-table mt-50 mb-50">
                                    <a href={REGISTER_DELIVERY_GUY}>
                                        <Tilt className="Tilt" options={{max: 100, perspective: 650}}>
                                            <div
                                                className="col-xl-12 text-center d-table-cell align-middle store-achievement">
                                                <h3>Delivery Guys</h3>
                                                <h6>
                                                    Register as a delivery guy and earn just by delivering drinks to
                                                    clients
                                                </h6>
                                            </div>
                                        </Tilt> </a>

                                </div>
                            </Flip>
                        </div>
                    </div>
                </div>
            </React.Fragment>
        );
    }
}

export default StoreAchievements;
