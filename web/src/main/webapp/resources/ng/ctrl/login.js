app.controller('loginController', ['$scope', 'userServices','$window', function($scope, userServices,$window) {
    'use strict';
    ///---Functions---///
    $scope.shownForm = 'login';
    $scope.changeForm = function(form){
        if(form=='forgot'){
            $scope.shownForm='forgot'
        }else if(form=='login'){
            $scope.shownForm = 'login'
        }else {
            $scope.shownForm = 'register'
        }
    };
    ///---End Functions---///

    ///----Register---///
    $scope.regUser = {};
    $scope.registerBlock = {
        showWarnings:false
    };
    $scope.register = function() {
        if(!$scope.registerBlock.showWarnings){
            $scope.registerBlock.showWarnings =true;
        }
        if(!$scope.registerForm.$invalid) {
            userServices.register($scope.regUser).success(function () {
                window.location.reload();
            }).error(function () {
            });
        }
    };
    ///----End Register----///
    ///---Login---///
    $scope.user = {};
    $scope.loginBlock = {
        showWarnings:false
    };
    $scope.login = function() {
        if(!$scope.loginBlock.showWarnings){
            $scope.loginBlock.showWarnings = true;
        }
        if(!$scope.loginForm.$invalid) {
            userServices.signIn($scope.user).success(function (s, d) {
                window.location.reload();
                console.log(s, d);
            }).error(function (s, d) {
                console.log(s, d);
                console.error(arguments);
            });
        }
    };


    ///---End Login---///
    ///---Forgot---///
    $scope.forgotUser={};
    $scope.forgotBlock={
        showWarnings:false
    };
    $scope.forgetPassword = function() {
        if(!$scope.forgotBlock.showWarnings){
            $scope.forgotBlock.showWarnings = true;
        }
        if(!$scope.forgotForm.$invalid) {
            userServices.forgetPassword($scope.forgotUser).success(function () {
                window.location.reload();
            }).error(function () {
                console.error(arguments);
            });
        }
    }
}]);