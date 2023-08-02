@extends('layouts.admin')

@section('content')
    <!-- Page content area start -->
    <div class="page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb__content">
                        <div class="breadcrumb__content__left">
                            <div class="breadcrumb__title">
                                <h2>{{ __('Application Settings') }}</h2>
                            </div>
                        </div>
                        <div class="breadcrumb__content__right">
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a
                                            href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __(@$title) }}</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4">
                    @include('admin.application_settings.sidebar')
                </div>
                <div class="col-lg-9 col-md-8">
                    <div class="email-inbox__area bg-style admin-dashboard-payment-method">
                        <div class="item-top mb-30">
                            <h2>{{ __(@$title) }}</h2>
                        </div>
                        <form action="{{ route('settings.save.setting') }}" method="post" class="form-horizontal"
                              enctype="multipart/form-data">
                            @csrf

                            <div class="row justify-content-center p-3 pb-0">
                                <div
                                    class="admin-dashboard-payment-title-left col-6 border border-bottom-0 pr-4 text-center">
                                    <h5 class="p-2">{{ __('PayPal') }}</h5>
                                </div>
                                <div
                                    class="admin-dashboard-payment-title-left col-6 border border-bottom-0 pr-4 text-center">
                                    <h5 class="p-2">{{ __('Mercado PAGO') }}</h5>
                                </div>
                            </div>

                            <div class="row justify-content-center px-3 pb-0 mb-3">

                                <div class="payment-getaway admin-dashboard-payment-content-box-left col-md-6 border p-3">
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label>{{ __('Currency ISO Code') }} </label>
                                                <select  name="paypal_currency" class="form-control paypal_currency currency">
                                                    @foreach(getCurrency() as $code => $currency)
                                                        <option value="{{$code}}" {{ get_option('paypal_currency') == $code ? 'selected' : '' }}>{{$currency}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <label>{{ __('Conversion Rate') }} </label>
                                            <div class="input-group mb-3">
                                                <span
                                                    class="input-group-text">{{ '1 ' . get_currency_symbol() . ' = ' }}</span>
                                                <input type="number" step="any" min="0"
                                                       name="paypal_conversion_rate"
                                                       value="{{ get_option('paypal_conversion_rate') ? get_option('paypal_conversion_rate') : 1 }}"
                                                       class="form-control">
                                                <span class="input-group-text paypal_append_currency append_currency"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label>{{ __('Status') }} </label>
                                                <select name="paypal_status" class="form-control">
                                                    <option value="1"
                                                        {{ get_option('paypal_status') == 1 ? 'selected' : '' }}>
                                                        {{ __('Enable') }} </option>
                                                    <option value="0"
                                                        {{ get_option('paypal_status') == '0' ? 'selected' : '' }}>
                                                        {{ __('Disable') }} </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label>{{ __('PayPal Mode') }} </label>
                                                <select name="PAYPAL_MODE" class="form-control">
                                                    <option value="sandbox"
                                                        {{ get_option('PAYPAL_MODE') == 'sandbox' ? 'selected' : '' }}>
                                                        {{ __('Sandbox') }} </option>
                                                    <option value="live"
                                                        {{ get_option('PAYPAL_MODE') == 'live' ? 'selected' : '' }}>
                                                        {{ __('Live') }} </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">

                                            <div class="form-group text-black">
                                                <label>{{ __('PayPal Client ID') }} </label>
                                                <input type="text" name="PAYPAL_CLIENT_ID"
                                                       value="{{ get_option('PAYPAL_CLIENT_ID') }}" class="form-control">
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">

                                            <div class="form-group text-black">
                                                <label>{{ __('PayPal Secret') }} </label>
                                                <input type="text" name="PAYPAL_SECRET"
                                                       value="{{ get_option('PAYPAL_SECRET') }}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="payment-getaway payment-getaway admin-dashboard-payment-content-box-right col-md-6 border p-3">
                                    <div class="row mb-3">

                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label>{{ __('Currency ISO Code') }} </label>
                                                <select  name="mercado_currency" class="form-control mercado_currency currency">
                                                    @foreach(getCurrency() as $code => $currency)
                                                        <option value="{{$code}}" {{ get_option('mercado_currency') == $code ? 'selected' : '' }}>{{$currency}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <label>{{ __('Conversion Rate') }} </label>
                                            <div class="input-group mb-3">
                                                <span
                                                    class="input-group-text">{{ '1 ' . get_currency_symbol() . ' = ' }}</span>
                                                <input type="number" step="any" min="0" name="mercado_conversion_rate"
                                                       value="{{ get_option('mercado_conversion_rate') ? get_option('mercado_conversion_rate') : 1 }}" class="form-control">
                                                <span class="input-group-text mercado_append_currency append_currency"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label>{{ __('Status') }} </label>
                                                <select name="mercado_status" class="form-control">
                                                    <option value=""> {{ __('Select Option') }}</option>
                                                    <option value="1"{{ get_option('mercado_status') == 1 ? 'selected' : '' }}>{{ __('Enable') }} </option>
                                                    <option value="0"{{ get_option('mercado_status') == '0' ? 'selected' : '' }}>{{ __('Disable') }} </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label> {{ __('Mercado Client ID') }} </label>
                                                <input type="text" name="MERCADO_PAGO_CLIENT_ID" value="{{ get_option('MERCADO_PAGO_CLIENT_ID') }}" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-group text-black">
                                                <label> {{ __('Mercado Client Secret') }} </label>
                                                <input type="text" name="MERCADO_PAGO_CLIENT_SECRET" value="{{ get_option('MERCADO_PAGO_CLIENT_SECRET') }}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input__group general-settings-btn">
                                        <button type="submit"
                                                class="btn btn-blue float-right">{{ __('Update') }}</button>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page content area end -->
@endsection

@push('script')
    <script src="{{ asset('admin/js/custom/payment-method.js') }}"></script>
@endpush
