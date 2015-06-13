app.directive('checkUnique',['$http',function($http){
    return{
        restrict:"A",
        require:"ngModel",
        link:function(scope,elem,attr,ctrl){
            scope.$watch(attr.ngModel,function(){
                $http({
                    method:"GET",
                    url:"user/check-email",
                    params: {email:ctrl.$modelValue}
                }).success(function(data,status){ctrl.$setValidity('unique',data)})
                    .error(function(data,status){ctrl.$setValidity('unique',false)})
            })
        }
    }
}])