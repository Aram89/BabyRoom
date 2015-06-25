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
</head>

<body class="login-content" ng-controller="loginController">
<!-- Login -->
<div class="lc-block toggled" id="l-login">
  <form name="loginForm" ng-submit="login()" novalidate>
    <div class="input-group m-b-20" ng-class="{ 'has-error' : loginForm.login.$invalid && !loginForm.login.$pristine }">
      <span class="input-group-addon"><i class="md md-person"></i></span>
      <div class="fg-line">
        <input type="text" ng-model="user.login" class="form-control" placeholder="Username"
               name="login" required>
      </div>
      <small class="help-block" ng-show="loginForm.login.$error.required && !loginForm.login.$pristine">Login Required</small>
    </div>

    <div class="input-group m-b-20" ng-class="{ 'has-error' : loginForm.password.$invalid && !loginForm.password.$pristine }">
      <span class="input-group-addon"><i class="md md-accessibility"></i></span>

      <div class="fg-line">
        <input type="password" ng-model="user.password" class="form-control" placeholder="Password"
            name="password" required>
      </div>
      <small class="help-block" ng-show="loginForm.password.$error.required && !loginForm.password.$pristine">Password Required</small>
    </div>

    <div class="clearfix"></div>
    <div class="checkbox">
      <label>
        <input type="checkbox" ng-model="user.signed">
        <i class="input-helper"></i>
        Keep me signed in
      </label>
    </div>

    <button type="submit" class="btn btn-login btn-danger btn-float" ng-disabled="loginForm.$invalid"><i class="md md-arrow-forward"></i></button>
  <ul class="login-navigation">
    <li data-block="#l-register" class="bgm-red">Register</li>
    <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
  </ul>
  </form>
</div>

<!-- Register -->
<div class="lc-block" id="l-register">
  <form name="regForm" ng-submit="register()" novalidate>
    <div class="input-group m-b-20" ng-class="{ 'has-error' : regForm.email.$invalid && !regForm.email.$pristine }">
      <span class="input-group-addon"><i class="md md-person"></i></span>

      <div class="fg-line">
        <input type="email" class="form-control" ng-remote-check="user/check-email" ng-model="regUser.email" placeholder="Email Address"
               name="email" required />
      </div>
      <small class="help-block" ng-show="regForm.email.$error.required && !regForm.email.$pristine">Email Required</small>
      <small class="help-block"    ng-show="regForm.email.$error.email && !regForm.email.$pristine">No valid email</small>
      <small class="help-block"   ng-show="regForm.email.$error.remote && !regForm.email.$pristine && !regForm.email.$error.email">This email already exist</small>
    </div>

    <div class="input-group m-b-20" ng-class="{ 'has-error' : regForm.password.$invalid && !regForm.password.$pristine }">
      <span class="input-group-addon"><i class="md md-mail"></i></span>

      <div class="fg-line">
        <input type="password" id="password" class="form-control" ng-model="regUser.password" placeholder="Password"
               name="password" required>
      </div>
      <small class="help-block" ng-show="regForm.password.$error.required && !regForm.password.$pristine">Password Required</small>
    </div>

    <div class="input-group m-b-20" ng-class="{ 'has-error' : regForm.confirmPassword.$invalid && !regForm.confirmPassword.$pristine }">
      <span class="input-group-addon"><i class="md md-accessibility"></i></span>

      <div class="fg-line">
        <input type="password" id="confirmPassword" ng-model="regUser.confirmPassword" class="form-control" placeholder="Confirm Password"
               name="confirmPassword" required>
      </div>
      <small class="help-block" ng-show="regForm.confirmPassword.$error.required && !regForm.confirmPassword.$pristine">Confirm Password Required</small>
    </div>

    <div class="input-group m-b-20" ng-class="{'has-error' : regForm.gender.$invalid && !regForm.gender.$pristine}">
      <span class="input-group-addon"><i class="md md-accessibility"></i></span>

      <div class="fg-line">
        <select id="gender" name="gender" ng-model="regUser.gender" class="selectpicker" required>
          <option value="">Select your gender</option>
          <option value="MALE">Male</option>
          <option value="FEMALE">Female</option>
        </select>
      </div>
      <small class="help-block" ng-show="regForm.gender.$error.required && !regForm.gender.$pristine">Select your gender</small>
    </div>


    <div class="clearfix"></div>

    <div ng-class="{'has-error' : regForm.accepted.$invalid && !regForm.accepted.$pristine}">
      <div class="checkbox">
        <label>
          <input id="accepted" type="checkbox" ng-model="regUser.accepted"
                 name="accepted" required>
          <i class="input-helper"></i>
          Accept the license agreement
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-login btn-danger btn-float" ng-disabled="regForm.$invalid"><i class="md md-arrow-forward"></i></button>
    <ul class="login-navigation">
      <li data-block="#l-login" class="bgm-green">Login</li>
      <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
    </ul>
  </form>
</div>

<!-- Forgot Password -->
<div class="lc-block" id="l-forget-password">
  <form name="forgetForm" ng-submit="forgetPassword()" novalidate>
  <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem
    fringilla enim feugiat commodo sed ac lacus.</p>

  <div class="input-group m-b-20" ng-class="{ 'has-error' : forgetForm.email.$invalid && !forgetForm.email.$pristine }">
    <span class="input-group-addon"><i class="md md-email"></i></span>

    <div class="fg-line">
      <input type="email" ng-model="user.email" ng-remote-check="email"  class="form-control" placeholder="Email Address"
          name="email" required>
    </div>
    <small class="help-block" ng-show="forgetForm.email.$error.required && !forgetForm.email.$pristine">Email Required</small>
    <small class="help-block"    ng-show="forgetForm.email.$error.email && !forgetForm.email.$pristine">No valid email</small>
  </div>

  <button type="submit" class="btn btn-login btn-danger btn-float" ng-disabled="forgetForm.$invalid"><i class="md md-arrow-forward"></i></button>

  <ul class="login-navigation">
    <li data-block="#l-login" class="bgm-green">Login</li>
    <li data-block="#l-register" class="bgm-red">Register</li>
  </ul>
  </form>
</div>

<%@include file="widgets/old-browser.jsp" %>

<!-- Javascript Libraries -->
<script src="/resources/js/jquery-2.1.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<script src="/resources/vendors/waves/waves.min.js"></script>

<script src="/resources/js/functions.js"></script>

<%@include file="widgets/angular-includes.jsp"%>


</body>

</html>