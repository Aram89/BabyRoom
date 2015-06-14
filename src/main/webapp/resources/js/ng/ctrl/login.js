app.controller('loginController', ['$scope', 'userServices', function($scope, userServices) {
    'use strict';

    $scope.user = {};
    $scope.regUser = {};

    $scope.login = function() {
        userServices.signIn($scope.user).success(function(){
            window.location.reload();
        }).error(function(){
            console.error(arguments);
        });
    };

    $scope.register = function() {
        userServices.register($scope.regUser).success(function(){
            window.location.reload();
        }).error(function(){
            console.error(arguments);
        });
    };



}]);