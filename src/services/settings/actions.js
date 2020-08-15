import {GET_SETTINGS} from "./actionTypes";
import {GET_SETTINGS_URL} from "../../configs";
import Axios from "axios";

export const getSettings = () => dispatch => {
    Axios.post(GET_SETTINGS_URL)
        .then(response => {
            const settings = response.data;
            settings.forEach(function (setting) {
                localStorage.setItem(setting.key, setting.value);
            })
            return dispatch({type: GET_SETTINGS, payload: settings});
        })
        .catch(function (error) {
            console.log(error);
        });
};
