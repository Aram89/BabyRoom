'use strict';

app.controller('newPostController', ['$scope', function($scope){

    $scope.opened = false;

    $scope.open = function() {
        $scope.opened = true;
    };

    $scope.dismiss = function() {
        $scope.opened = false;
    };

    $scope.save = function() {
        $scope.opened = false;
    };



}]);