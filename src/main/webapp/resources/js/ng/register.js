app.controller('registerController',['$scope','sendRequest',function($scope,sendRequest){
    $scope.submit=function(){
        sendRequest.register($scope.data)
    }
}])