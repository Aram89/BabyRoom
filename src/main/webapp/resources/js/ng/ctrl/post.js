app.controller('newPostController', ['$scope', function($scope) {
    'use strict';

    var postContent,
        defaultPostObject = {
        content : ''
    };

    $scope.opened = false;
    $scope.post = {};
    $scope.init = function() {
        postContent = document.getElementById('post_content');
        $scope.post = angular.merge({}, defaultPostObject);
    };


    $scope.open = function() {
        $scope.opened = true;
        setTimeout(function(){ postContent.focus(); }, 0);
    };

    $scope.dismiss = function() {
        $scope.opened = false;
        $scope.post = angular.merge({}, defaultPostObject);
    };

    $scope.save = function() {
        $scope.opened = false;
    };

    $scope.focus = function() {
        //console.log('focus');
    };

    $scope.blur = function() {
        $scope.opened = ($scope.post.content);
    };


}]);