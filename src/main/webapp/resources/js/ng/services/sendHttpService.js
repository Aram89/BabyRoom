app.factory('sendRequest',['$resource','$http',function($resource,$http){
    var factory={};
    factory.register= function(obj){
        $http({method:"POST",url:'user/create',params: obj})
            .success(function(data,status){console.log(data);console.log(status)})
            .error(function(){console.log("error")});

        /*var res=$resource('user/create',{},
            {send:{method:'post',params:obj}
        });
        res.send()*/
    };
    factory.login=function(obj){
        $http({
            method:"POST",url:"user/login",params:obj
        })
    };
    return factory;
}]);