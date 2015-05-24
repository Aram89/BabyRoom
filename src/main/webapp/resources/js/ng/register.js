app.controller('registerController',['sendHttp',function($scope,sendHttp){
    $scope.submit=function(){
        sendHttp.register($scope.data)
    }
}])