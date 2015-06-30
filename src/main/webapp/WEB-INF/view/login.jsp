<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Baby Room</title>

    <!-- Vendor CSS -->
    <link href="/resources/vendors/animate-css/animate.min.css" rel="stylesheet">
    <link href="/resources/vendors/sweet-alert/sweet-alert.min.css" rel="stylesheet">
    <link href="/resources/vendors/material-icons/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="/resources/vendors/socicon/socicon.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="/resources/css/app.min.1.css" rel="stylesheet">
    <link href="/resources/css/app.min.2.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.css">
    <style>
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }
    </style>
    <!-- CSS -->
</head>

<body ng-controller="loginController" ng-cloak layout="column">

<div class="login-content">
    <div class="top-part">
        <div layout="row">
            <div flex-order-lg>
                <video autoplay loop>
                    <source src="/resources/video/baby.mp4" type="video/mp4">
                </video>
            </div>
        </div>
    </div>

    <div layout="row">
        <div flex>
            <div class="bottom-part">
                <div class="forms-container">
                    <!-- Login -->
                    <div class="lc-block toggled" id="l-login">
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-person"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                        </div>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-accessibility"></i></span>
                            <div class="fg-line">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">
                                <i class="input-helper"></i>
                                Keep me signed in
                            </label>
                        </div>

                        <a href="#" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>

                        <ul class="login-navigation">
                            <li data-block="#l-register" class="bgm-red">Register</li>
                            <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
                        </ul>
                    </div>

                    <!-- Register -->
                    <div class="lc-block" id="l-register">
                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-person"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                        </div>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-mail"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="Email Address">
                            </div>
                        </div>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-accessibility"></i></span>
                            <div class="fg-line">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">
                                <i class="input-helper"></i>
                                Accept the license agreement
                            </label>
                        </div>

                        <a href="#" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>

                        <ul class="login-navigation">
                            <li data-block="#l-login" class="bgm-green">Login</li>
                            <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
                        </ul>
                    </div>

                    <!-- Forgot Password -->
                    <div class="lc-block" id="l-forget-password">
                        <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>

                        <div class="input-group m-b-20">
                            <span class="input-group-addon"><i class="md md-email"></i></span>
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="Email Address">
                            </div>
                        </div>

                        <a href="#" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>

                        <ul class="login-navigation">
                            <li data-block="#l-login" class="bgm-green">Login</li>
                            <li data-block="#l-register" class="bgm-red">Register</li>
                        </ul>
                    </div>
                </div>
             </div>
    </div>
</div>

<%@include file="widgets/old-browser.jsp" %>

<!-- Javascript Libraries -->
<script src="/resources/js/jquery-2.1.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/vendors/waves/waves.min.js"></script>

<!--script-- src="/resources/js/functions.js"></--script-->
<!-- Angular Material Dependencies -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.js"></script>

<%@include file="widgets/angular-includes.jsp" %>

</body>

</html>