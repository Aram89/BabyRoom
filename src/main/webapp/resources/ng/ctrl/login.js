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
        userServices.register($scope.regUser).success(function(){
            window.location.reload();
        }).error(function(){
        });
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
        userServices.signIn($scope.user).success(function(){
            window.location.reload();
        }).error(function(){
            console.error(arguments);
        });
    };



    $scope.forgetPassword = function() {
        userServices.forgetPassword($scope.user).success(function(){
            window.location.reload();
        }).error(function(){
            console.error(arguments);
        });
    }



}]);