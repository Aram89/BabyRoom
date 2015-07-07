<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Baby Room</title>

    <!-- Vendor CSS -->
    <%@include file="widgets/style-includes.jsp" %>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.css">
    <!-- CSS -->

</head>

<body ng-controller="loginController" ng-cloak>
<div class="login-content">
    <div class="top-part">
        <video width="100%" height="auto"  autoplay loop>
            <source src="/resources/video/baby.mp4" type="video/mp4">
        </video>
    </div>

    <div class="bottom-part">
        <div layout layout-align="center center">
            <div class="forms-container">





                <!-- Register -->
                <div ng-show="shownForm=='register'">
                    <form name="registerForm" ng-submit="register()" novalidate>
                        <md-input-container>
                            <label>Email</label>
                            <ng-md-icon icon="email"></ng-md-icon>
                            <input required ng-remote-check="user/check-email" name="email" type="email"
                                   ng-model="regUser.email"/>
                            <div ng-messages="registerBlock.showWarnings && registerForm.email.$error">
                                <div ng-message="required">Email is required</div>
                                <div ng-message="email">Not valid email</div>
                                <div ng-message="remote">Email is exists</div>
                            </div>
                        </md-input-container>
                        <md-input-container>
                            <label>Password</label>
                            <input required name="password" type="password" ng-model="regUser.password"/>

                            <div ng-messages="registerBlock.showWarnings && registerForm.password.$error">
                                <div ng-message="required">Password Required</div>
                            </div>
                        </md-input-container>
                        <md-input-container>
                            <label>Confirm Password</label>
                            <input required compare-to="regUser.password" name="confirmPassword" type="password"
                                   ng-model="regUser.confirmPassword"/>

                            <div ng-messages="registerBlock.showWarnings && registerForm.confirmPassword.$error">
                                <div ng-message="required">Confirm Password required</div>
                                <div ng-message="compareTo">Passwords don't match</div>
                            </div>
                        </md-input-container>
                        <md-button class="md-raised md-primary"
                                   ng-disabled="registerBlock.showWarnings && registerForm.$invalid">
                            Submit
                        </md-button>
                    </form>
                    <div>
                        <md-button class="md-raised" ng-click="changeForm('login')">Login</md-button>
                        <md-button class="md-raised" ng-click="changeForm('forgot')">Forgot</md-button>
                    </div>
                </div>
                <!-- Login -->
                <div ng-show="shownForm=='login'" class="login-form">
                    <form class="login-title"  name="loginForm" ng-submit="login()" novalidate>
                        <md-input-container>
                            <ng-md-icon icon="email"></ng-md-icon>
                            <label>Email</label>
                            <input required type="email" name="email" ng-model="user.email"/>
                            <div ng-messages="loginBlock.showWarnings && loginForm.email.$error">
                                <div ng-message="required">Email Required</div>
                                <div ng-message="email">Not valid email</div>
                            </div>
                        </md-input-container>
                        <md-input-container>
                            <label>Password</label>
                            <input required type="password" name="password" ng-model="user.password"/>
                            <div ng-messages="loginBlock.showWarnings && loginForm.password.$error">
                                <div ng-message="required">Password Required</div>
                            </div>
                        </md-input-container>
                        <md-button class="md-raised md-primary" ng-disabled="loginBlock.showWarnings && loginForm.$invalid">
                            Login
                        </md-button>
                    </form>
                    <md-button ng-click="changeForm('register')" class="btn-login">Register</md-button>
                    <md-button ng-click="changeForm('forgot')" class="btn-login">Forgot</md-button>
                </div>
                <!-- Forgot Password -->
                <div ng-show="shownForm=='forgot'" class="forgot-form">
                    <form class="login-title" novalidate name="forgotForm"  ng-submit="forgetPassword()">
                        <md-input-container>
                            <label>Email</label>
                            <ng-md-icon  icon="email"></ng-md-icon>
                            <input required type="email" name="email"  ng-model="forgotUser.email"/>
                            <div ng-messages="forgotBlock.showWarnings && forgotForm.email.$error">
                                <div ng-message="required">Email is required</div>
                                <div ng-message="email">Not valid email</div>
                            </div>
                        </md-input-container>
                        <md-button class="md-raised md-primary" ng-disabled="forgotBlock.showWarnings && forgotForm.$invalid">
                            Send
                        </md-button>
                    </form>
                    <md-button ng-click="changeForm('login')" class="btn-login">Login</md-button>
                    <md-button ng-click="changeForm('register')" class="btn-login">Register</md-button>
                </div>







            </div>
        </div>

    </div>
</div>

<%@include file="widgets/old-browser.jsp" %>

<!-- Javascript Libraries -->
<script src="/resources/bower_components/jquery/src/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<!--script src="/resources/js/functions.js"></script-->

<%@include file="widgets/angular-includes.jsp" %>

</body>

</html>