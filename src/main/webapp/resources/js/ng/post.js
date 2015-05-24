
app.controller('newPostController', ['$scope', function($scope){

    console.log('newPostController');

    $scope.isToggled = false;

    $scope.toggle = function() {
        console.info('click');
    };



}]);