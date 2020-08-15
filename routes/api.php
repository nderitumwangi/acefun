<?php

use Illuminate\Http\Request;

/* API ROUTES */

Route::post('/coordinate-to-address', [
    'uses' => 'GeocoderController@coordinatesToAddress',
]);

Route::post('/address-to-coordinate', [
    'uses' => 'GeocoderController@addressToCoordinates',
]);

Route::post('/get-settings', [
    'uses' => 'SettingController@getSettings',
]);

Route::post('/search-location/{query}', [
    'uses' => 'LocationController@searchLocation',
]);

Route::post('/popular-locations', [
    'uses' => 'LocationController@popularLocations',
]);

Route::post('/popular-geo-locations', [
    'uses' => 'LocationController@popularGeoLocations',
]);

Route::post('/promo-slider', [
    'uses' => 'PromoSliderController@promoSlider',
]);

Route::post('/get-delivery-restaurants', [
    'uses' => 'RestaurantController@getDeliveryRestaurants',
]);

Route::post('/get-selfpickup-restaurants', [
    'uses' => 'RestaurantController@getSelfPickupRestaurants',
]);

Route::post('/get-restaurant-info/{slug}', [
    'uses' => 'RestaurantController@getRestaurantInfo',
]);

Route::post('/get-restaurant-info-by-id/{id}', [
    'uses' => 'RestaurantController@getRestaurantInfoById',
]);

Route::post('/get-restaurant-items/{slug}', [
    'uses' => 'RestaurantController@getRestaurantItems',
]);

Route::post('/apply-coupon', [
    'uses' => 'CouponController@applyCoupon',
]);

Route::post('/get-pages', [
    'uses' => 'PageController@getPages',
]);

Route::post('/get-single-page', [
    'uses' => 'PageController@getSinglePage',
]);

Route::post('/search-restaurants', [
    'uses' => 'RestaurantController@searchRestaurants',
]);

Route::post('/send-otp', [
    'uses' => 'SmsController@sendOtp',
]);
Route::post('/verify-otp', [
    'uses' => 'SmsController@verifyOtp',
]);
Route::post('/check-restaurant-operation-service', [
    'uses' => 'RestaurantController@checkRestaurantOperationService',
]);

Route::post('/get-single-item', [
    'uses' => 'RestaurantController@getSingleItem',
]);

Route::post('/get-all-languages', [
    'uses' => 'LanguageController@getAllLanguages',
]);

Route::post('/get-single-language', [
    'uses' => 'LanguageController@getSingleLanguage',
]);

Route::post('/get-restaurant-category-slides', [
    'uses' => 'RestaurantCategoryController@getRestaurantCategorySlider',
]);

Route::post('/get-all-restaurants-categories', [
    'uses' => 'RestaurantCategoryController@getAllRestaurantsCategories',
]);

Route::post('/get-filtered-restaurants', [
    'uses' => 'RestaurantController@getFilteredRestaurants',
]);

Route::post('/send-password-reset-mail', [
    'uses' => 'PasswordResetController@sendPasswordResetMail',
]);

Route::post('/verify-password-reset-otp', [
    'uses' => 'PasswordResetController@verifyPasswordResetOtp',
]);

Route::post('/change-user-password', [
    'uses' => 'PasswordResetController@changeUserPassword',
]);

Route::post('/check-cart-items-availability', [
    'uses' => 'RestaurantController@checkCartItemsAvailability',
]);

/* Protected Routes for Loggedin users */
Route::group(['middleware' => ['jwt.auth']], function () {
    Route::post('/save-notification-token', [
        'uses' => 'NotificationController@saveToken',
    ]);

    Route::post('/get-payment-gateways', [
        'uses' => 'PaymentController@getPaymentGateways',
    ]);

    Route::post('/get-addresses', [
        'uses' => 'AddressController@getAddresses',
    ]);
    Route::post('/save-address', [
        'uses' => 'AddressController@saveAddress',
    ]);
    Route::post('/delete-address', [
        'uses' => 'AddressController@deleteAddress',
    ]);
    Route::post('/update-user-info', [
        'uses' => 'UserController@updateUserInfo',
    ]);
    Route::post('/check-running-order', [
        'uses' => 'UserController@checkRunningOrder',
    ]);

    Route::group(['middleware' => ['isactiveuser']], function () {
        Route::post('/place-order', [
            'uses' => 'OrderController@placeOrder',
        ]);
    });

    Route::post('/set-default-address', [
        'uses' => 'AddressController@setDefaultAddress',
    ]);
    Route::post('/get-orders', [
        'uses' => 'OrderController@getOrders',
    ]);
    Route::post('/get-order-items', [
        'uses' => 'OrderController@getOrderItems',
    ]);

    Route::post('/cancel-order', [
        'uses' => 'OrderController@cancelOrder',
    ]);

    Route::post('/get-wallet-transactions', [
        'uses' => 'UserController@getWalletTransactions',
    ]);

    Route::post('/get-user-notifications', [
        'uses' => 'NotificationController@getUserNotifications',
    ]);
    Route::post('/mark-all-notifications-read', [
        'uses' => 'NotificationController@markAllNotificationsRead',
    ]);
    Route::post('/mark-one-notification-read', [
        'uses' => 'NotificationController@markOneNotificationRead',
    ]);

    Route::post('/delivery/update-user-info', [
        'uses' => 'DeliveryController@updateDeliveryUserInfo',
    ]);

    Route::post('/delivery/get-delivery-orders', [
        'uses' => 'DeliveryController@getDeliveryOrders',
    ]);

    Route::post('/delivery/get-single-delivery-order', [
        'uses' => 'DeliveryController@getSingleDeliveryOrder',
    ]);

    Route::post('/delivery/set-delivery-guy-gps-location', [
        'uses' => 'DeliveryController@setDeliveryGuyGpsLocation',
    ]);

    Route::post('/delivery/get-delivery-guy-gps-location', [
        'uses' => 'DeliveryController@getDeliveryGuyGpsLocation',
    ]);

    Route::post('/delivery/accept-to-deliver', [
        'uses' => 'DeliveryController@acceptToDeliver',
    ]);

    Route::post('/delivery/pickedup-order', [
        'uses' => 'DeliveryController@pickedupOrder',
    ]);

    Route::post('/delivery/deliver-order', [
        'uses' => 'DeliveryController@deliverOrder',
    ]);

    Route::post('/conversation/chat', [
        'uses' => 'ChatController@deliveryCustomerChat',
    ]);

    Route::post('/change-avatar', [
        'uses' => 'UserController@changeAvatar',
    ]);

    Route::post('/check-ban', [
        'uses' => 'UserController@checkBan',
    ]);
});
/* END Protected Routes */

Route::post('/payment/process-razor-pay', [
    'uses' => 'PaymentController@processRazorpay',
]);

Route::post('/payment/process-m-pesa', [
    'uses' => 'PaymentController@processMpesa',
]);

Route::post('/payment/stk-push-status', [
    'uses' => 'PaymentController@getMpesaPushRequestStatus',
]);

Route::post('/payment/response', function (Request $request) {

    $response = json_encode($request->all());

    $checkoutRequestId = $response->Body->stkCallback->CheckoutRequestID;

    \App\MpesaCallback::create([
        'checkout_request_id' => $checkoutRequestId,
        'checkout_request_body' => $response
    ]);
});

Route::post('/payment/mercadopago-payment', [
    'uses' => 'PaymentController@mercadopagoPayment',
]);

Route::get('/payment/process-mercado-pago', [
    'uses' => 'PaymentController@processMercadoPago',
]);

/* Auth Routes */
Route::post('/login', [
    'uses' => 'UserController@login',
]);

Route::post('/register', [
    'uses' => 'UserController@register',
]);

Route::post('/delivery/login', [
    'uses' => 'DeliveryController@login',
]);

Route::get('/temp-items/search/{query}', function ($query) {
    $items = \App\TempItem::where('name', 'LIKE', "%" . $query . "%")->get();
    $view = view('restaurantowner.search-results', ['items' => $items]);
    $view = $view->render();
    return $view;

});
/* END Auth Routes */
