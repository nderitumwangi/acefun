@extends('admin.layouts.master')
@section("title") {{__('storeDashboard.spPageTitle')}}
@endsection
@section('content')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDWGAw0IbrDHTlPClEUtBx3WO_G6DrGDyQ"
            type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/gmap3/7.2.0/gmap3.min.js"></script>
    <style>
        .delivery-div {
            background-color: #fafafa;
            padding: 1rem;
        }

        .location-search-block {
            position: relative;
            top: -26rem;
            z-index: 999;
        }
    </style>
    <div class="page-header">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-circle-right2 mr-2"></i>
                    <span class="font-weight-bold mr-2">{{__('storeDashboard.total')}}</span>
                    <span class="badge badge-primary badge-pill animated flipInX">{{ count($restaurants) }}</span>
                </h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
            <div class="header-elements d-none py-0 mb-3 mb-md-0">
                <div class="breadcrumb">
                    <button type="button" class="btn btn-secondary btn-labeled btn-labeled-left mr-2"
                            id="addNewRestaurant"
                            data-toggle="modal" data-target="#addNewRestaurantModal">
                        <b><i class="icon-plus2"></i></b>
                        {{__('storeDashboard.spAddNewStoreBtn')}}
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>{{__('storeDashboard.spTableID')}}</th>
                            <th>{{__('storeDashboard.spTableImage')}}</th>
                            <th>{{__('storeDashboard.spTableName')}}</th>
                            <th>{{__('storeDashboard.spTableAddress')}}</th>
                            <th>{{__('storeDashboard.spTableStatus')}}</th>
                            <th style="width: 15%">{{__('storeDashboard.spTableCA')}}</th>
                            <th class="text-center" style="width: 10%;"><i class="
                                icon-circle-down2"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($restaurants as $restaurant)
                            <tr>
                                <td>{{ $restaurant->id }}</td>
                                <td><img src="{{substr(url("/"), 0, strrpos(url("/"), '/'))}}{{ $restaurant->image }}"
                                         alt="{{ $restaurant->name }}" height="80" width="80"
                                         style="border-radius: 0.275rem;"></td>
                                <td>{{ $restaurant->name }}</td>
                                <td>{{ $restaurant->address }}</td>
                                <td>
                                    @if(!$restaurant->is_accepted)
                                        <span class="badge badge-flat border-grey-800 text-default text-capitalize">
                                {{__('storeDashboard.spRowPending')}}
                                </span>
                                    @endif
                                    <span class="badge badge-flat border-grey-800 text-default text-capitalize">
                                @if($restaurant->is_active) {{__('storeDashboard.spRowActive')}} @else {{__('storeDashboard.spRowInActive')}} @endif
                                </span>
                                </td>
                                <td>{{ $restaurant->created_at->diffForHumans() }}</td>
                                <td class="text-center">
                                    <div class="btn-group btn-group-justified">
                                        <a href="{{ route('restaurant.get.editRestaurant', $restaurant->id) }}"
                                           class="badge badge-primary badge-icon"> {{__('storeDashboard.edit')}} <i
                                                    class="icon-database-edit2 ml-1"></i></a>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="addNewRestaurantModal" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><span
                                class="font-weight-bold">{{__('storeDashboard.spAddNewStoreBtn')}}</span></h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('restaurant.saveNewRestaurant') }}" method="POST"
                          enctype="multipart/form-data">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblStoreName')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="name"
                                       placeholder="{{__('storeDashboard.sePhStoreName')}}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span class="text-danger">*</span>MPESA Till Number:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="till_number"
                                       placeholder="MPESA Till Number" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span class="text-danger">*</span>
                                Business Type
                            </label>
                            <div class="col-lg-9">
                                <select class="form-control select-search select" name="business_type" required
                                        placeholder="Select Business Type">
                                    <option value=""></option>
                                    <option value="Bar"
                                            class="text-capitalize">Bar
                                    </option>
                                    <option value="Wines & Spirits"
                                            class="text-capitalize">Wines & Spirits
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblDescription')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="description"
                                       placeholder="{{__('storeDashboard.sePhDescription')}}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblImage')}}:</label>
                            <div class="col-lg-9">
                                <img class="slider-preview-image hidden"/>
                                <div class="uploader">
                                    <input type="file" class="form-control-lg form-control-uniform" name="image"
                                           required accept="image/x-png,image/gif,image/jpeg" onchange="readURL(this);">
                                    <span class="help-text text-muted">{{__('storeDashboard.sePhImage')}}</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblApproxDeliveryTime')}}
                                :</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg delivery_time"
                                       name="delivery_time"
                                       placeholder="{{__('storeDashboard.sePhApproxDeliveryTime')}}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblApproxPriceForTwo')}}
                                :</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg price_range" name="price_range"
                                       placeholder="{{__('storeDashboard.sePhApproxPriceForTwo')}} {{ config('settings.currencyFormat') }}"
                                       required>
                            </div>
                        </div>
                        <hr>
                        <fieldset class="gllpLatlonPicker d-none">
                            <div width="100%" id="map" class="gllpMap"
                                 style="position: relative; overflow: hidden;"></div>
                            <div class="form-group row">
                                <div class="col-lg-6">
                                    <label class="col-form-label">{{__('storeDashboard.seLblLat')}}:</label><input
                                            type="text" class="form-control form-control-lg gllpLatitude latitude"
                                            value="40.6976701" name="latitude" placeholder="Latitude of the Restaurant"
                                            required="required">
                                </div>
                                <div class="col-lg-6">
                                    <label class="col-form-label">{{__('storeDashboard.seLblLong')}}:</label><input
                                            type="text" class="form-control form-control-lg gllpLongitude longitude"
                                            value="-74.2598672" name="longitude"
                                            placeholder="Longitude of the Restaurant" required="required">
                                </div>
                            </div>
                            {{--  <input type="hidden" class="gllpZoom" value="20">
                             <div class="d-flex justify-content-center">
                                 <div class="col-lg-6 d-flex location-search-block">
                                     <input type="text" class="form-control form-control-lg gllpSearchField" placeholder="Search for resraurant, city or town...">
                                     <button type="button" class="btn btn-primary gllpSearchButton">{{__('storeDashboard.seLblSearch')}}</button>
                                 </div>
                             </div> --}}
                        </fieldset>
                        <hr>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label"><span
                                        class="text-danger">*</span>{{__('storeDashboard.seLblFullAddress')}}:</label>
                            <div class="col-lg-9">
                                <select type="text" class="form-control form-control-lg" id="loc"
                                        name="address"
                                        placeholder="{{__('storeDashboard.sePhFullAddress')}}" required></select>
                            </div>
                        </div>
                        <div class="form-group row d-none">
                            <label class="col-lg-3 col-form-label" data-popup="tooltip"
                                   title="{{__('storeDashboard.seToolTipPincode')}}"
                                   data-placement="bottom">{{__('storeDashboard.seLblPincode')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="pincode"
                                       placeholder="{{__('storeDashboard.seToolTipPincode')}}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label" data-popup="tooltip"
                                   title="E.g Near Kenya National Archives"
                                   data-placement="bottom">{{__('storeDashboard.seLblLandMark')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="landmark"
                                       placeholder="{{__('storeDashboard.sePhLandMark')}}">
                            </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">{{__('storeDashboard.seLblCertificate')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg" name="certificate"
                                       placeholder="{{__('storeDashboard.sePhCertificate')}}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">{{__('storeDashboard.seLblStoreCharge')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg restaurant_charges"
                                       name="restaurant_charges"
                                       placeholder="{{__('storeDashboard.sePhStoreCharge')}} {{ config('settings.currencyFormat') }}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">{{__('storeDashboard.seLblPureVeg')}}</label>
                            <div class="col-lg-9">
                                <div class="checkbox checkbox-switchery mt-2">
                                    <label>
                                        <input value="true" type="checkbox" class="switchery-primary" checked="checked"
                                               name="is_pureveg">
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">{{__('storeDashboard.seLblMinOrderPrice')}}:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control form-control-lg min_order_price"
                                       name="min_order_price"
                                       placeholder="{{__('storeDashboard.sePhMinOrderPrice')}} {{ config('settings.currencyFormat') }}"
                                       value="0">
                            </div>
                        </div>

                        @csrf
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">
                                {{__('storeDashboard.save')}}
                                <i class="icon-database-insert ml-1"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                let reader = new FileReader();
                reader.onload = function (e) {
                    $('.slider-preview-image')
                        .removeClass('hidden')
                        .attr('src', e.target.result)
                        .width(160)
                        .height(117)
                        .css('borderRadius', '0.275rem');
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        $(function () {
            $('.select-search').select2({
                minimumResultsForSearch: Infinity,
                placeholder: 'Select Option',
            });

            var primary = document.querySelector('.switchery-primary');
            var switchery = new Switchery(primary, {color: '#2196F3'});

            $('.form-control-uniform').uniform();

            $('.delivery_time').numeric({allowThouSep: false});
            $('.price_range').numeric({allowThouSep: false});
            $('.latitude').numeric({allowThouSep: false});
            $('.longitude').numeric({allowThouSep: false});
            $('.restaurant_charges').numeric({allowThouSep: false, maxDecimalPlaces: 2});
            $('.delivery_charges').numeric({allowThouSep: false, maxDecimalPlaces: 2});
            $('.min_order_price').numeric({allowThouSep: false, maxDecimalPlaces: 2, allowMinus: false});
        });

        // get user location
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);

            } else {
                x.innerHTML = "Geolocation is not supported by this browser.";
            }
        }

        function showPosition(position) {
            $('.latitude').val(position.coords.latitude)
            $('.longitude').val(position.coords.longitude)

            // let fullAddress = initMap(position.coords.latitude, position.coords.longitude)
            let fullAddress = geocodeLatLng(position.coords.latitude, position.coords.longitude)

        }

        $(document).ready(function () {
            getLocation()
        });

        function geocodeLatLng(latitude, longitude) {
            const geocoder = new google.maps.Geocoder()
            const latlng = {
                lat: parseFloat(latitude),
                lng: parseFloat(longitude)
            };
            geocoder.geocode({location: latlng}, (results, status) => {
                if (status === "OK") {
                    if (results[0]) {
                        let length = results.length;
                        for (let i = 0; i < length; i++) {
                            var newOption = new Option(results[i]['formatted_address'], results[i]['formatted_address'], false, false);
                            $('#loc').append(newOption).trigger('change');
                        }
                    } else {
                        window.alert("No results found");
                    }
                } else {
                    window.alert("Geocoder failed due to: " + status);
                }
            });
        }

        function initMap(lat, lng) {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: lat, lng: lng},
                zoom: 13
            });
            var card = document.getElementById('pac-card');
            var input = document.getElementById('pac-input');
            console.log(input)
            var types = document.getElementById('type-selector');
            var strictBounds = document.getElementById('strict-bounds-selector');

            map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);

            var autocomplete = new google.maps.places.Autocomplete(input);

            // Bind the map's bounds (viewport) property to the autocomplete object,
            // so that the autocomplete requests use the current map bounds for the
            // bounds option in the request.
            autocomplete.bindTo('bounds', map);

            // Set the data fields to return when the user selects a place.
            autocomplete.setFields(
                ['address_components', 'geometry', 'icon', 'name']);

            var infowindow = new google.maps.InfoWindow();
            var infowindowContent = document.getElementById('infowindow-content');
            infowindow.setContent(infowindowContent);
            var marker = new google.maps.Marker({
                map: map,
                anchorPoint: new google.maps.Point(0, -29)
            });

            autocomplete.addListener('place_changed', function () {
                infowindow.close();
                marker.setVisible(false);
                var place = autocomplete.getPlace();
                if (!place.geometry) {
                    // User entered the name of a Place that was not suggested and
                    // pressed the Enter key, or the Place Details request failed.
                    window.alert("No details available for input: '" + place.name + "'");
                    return;
                }

                // If the place has a geometry, then present it on a map.
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17);  // Why 17? Because it looks good.
                }
                marker.setPosition(place.geometry.location);
                marker.setVisible(true);

                var address = '';
                if (place.address_components) {
                    address = [
                        (place.address_components[0] && place.address_components[0].short_name || ''),
                        (place.address_components[1] && place.address_components[1].short_name || ''),
                        (place.address_components[2] && place.address_components[2].short_name || '')
                    ].join(' ');
                }

                infowindowContent.children['place-icon'].src = place.icon;
                infowindowContent.children['place-name'].textContent = place.name;
                infowindowContent.children['place-address'].textContent = address;
                infowindow.open(map, marker);
            });

            // Sets a listener on a radio button to change the filter type on Places
            // Autocomplete.
            function setupClickListener(id, types) {
                var radioButton = document.getElementById(id);
                radioButton.addEventListener('click', function () {
                    autocomplete.setTypes(types);
                });
            }

            setupClickListener('changetype-all', []);
            setupClickListener('changetype-address', ['address']);
            setupClickListener('changetype-establishment', ['establishment']);
            setupClickListener('changetype-geocode', ['geocode']);

            document.getElementById('use-strict-bounds')
                .addEventListener('click', function () {
                    console.log('Checkbox clicked! New state=' + this.checked);
                    autocomplete.setOptions({strictBounds: this.checked});
                });
        }
    </script>
@endsection