<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Baby Room</title>

    <!-- Vendor CSS -->
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

                    <md-input-container class="md-icon-float" >
                        <!-- Use floating label instead of placeholder -->
                        <label>Email</label>
                        <md-icon md-svg-src="img/icons/ic_person_24px.svg" class="name"></md-icon>
                        <input ng-model="user.email" type="text">
                    </md-input-container>

                    <md-input-container class="md-icon-float" >
                        <label>Password</label>
                        <md-icon md-svg-src="img/icons/ic_person_24px.svg" class="name"></md-icon>
                        <input ng-model="user.password" type="password">
                    </md-input-container>

                    <md-input-container class="md-icon-float" >
                        <label>Conform Password</label>
                        <md-icon md-svg-src="img/icons/ic_person_24px.svg" class="name"></md-icon>
                        <input ng-model="user.password" type="password">
                    </md-input-container>

                    <md-button class="md-raised md-primary"
                               ng-disabled="register.showWarnings && registerForm.$invalid">
                        Submit
                    </md-button>
                <div>
                    <md-button class="md-raised" ng-click="changeForm('login')">Login</md-button>
                    <md-button class="md-raised" ng-click="changeForm('forgot')">Forgot</md-button>
                </div>
            </div>
        </div>

        <div layout layout-align="center center">
            <!-- Login -->
            <div ng-show="shownForm=='login'" class="login-form">
                <md-button ng-click="changeForm('register')" class="btn-login">Register</md-button>
                <md-button ng-click="changeForm('forgot')" class="btn-login">Forgot</md-button>
            </div>
            <!-- Forgot Password -->
            <div ng-show="shownForm=='forgot'" class="forgot-form">
                <md-button ng-click="changeForm('login')" class="btn-login">Login</md-button>
                <md-button ng-click="changeForm('register')" class="btn-login">Register</md-button>
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