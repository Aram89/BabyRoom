app.controller('loginController',['$scope','sendRequest',function($scope,sendRequest){
    $scope.submit = function(){
        sendRequest.login($scope.data);
    }
}])