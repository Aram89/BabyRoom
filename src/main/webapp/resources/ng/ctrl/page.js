/**
 * Created by pr on 07/04/2015.
 */
app.controller('pageController',['$scope','$route',function($scope,$route){
    $scope.route= $route;
    ///$scope.theme = $route.current.scope.theme;
}]);