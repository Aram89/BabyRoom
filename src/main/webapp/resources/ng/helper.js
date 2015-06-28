app.directive('ngRemoteCheck',['$http', function($http) {
    return {
        restrict: "A",
        require: "ngModel",
        link: function (scope, elem, attr, ctrl) {
                var checkUrl = attr['ngRemoteCheck'],
                    propName = 'name', params = {}, timeoutID;
                if (attr['id']) propName = attr['id'];
                if (attr['name']) propName = attr['name'];
                function validate() {
                    ctrl.$setValidity('remote', true);
                    if (timeoutID) clearTimeout(timeoutID);
                    timeoutID = setTimeout(function () {
                        params[propName] = ctrl.$modelValue;
                        $http({
                            method: "GET",
                            url: checkUrl,
                            params: params
                        }).success(function (data) {
                            ctrl.$setValidity('remote', true);
                        })
                            .error(function (data) {
                                ctrl.$setValidity('remote', false);
                            })
                    }, 300)
                }
                scope.$watch(attr.ngModel, function () {
                    validate();
                })
            }
        }
}]);

app.directive('compareTo',function(){
    return {
        require: 'ngModel',
        scope: {
            compareTo: "=compareTo"
        },
        link: function (scope, elem, attr, c) {
            c.$validators.compareTo= function (modelVal) {
                return modelVal == scope.compareTo
            };
            scope.$watch("compareTo",function(){
                c.$validate();
            })
        }
    }
});
/*
app.directive('ngRemoteCheck', ['$http', function ($http) {
    return {
        restrict : 'A',
        require  : 'ngModel',
        link     : function (scope, elem, attrs, ctrl) {
            if (!ctrl) return;
            if (!attrs['ngRemoteCheck']) return;

            var checkUrl = attrs['ngRemoteCheck'],
                checkDuration = 333, oldVal = '', propName = 'name',
                timeoutId , isValid = false, params={};
            if(attrs['id']) propName = attrs['id'];
            if(attrs['name']) propName = attrs['name'];
            var validator = function (value) {
                ctrl.$$rawModelValue = value;
                ctrl.$validate();
                if(ctrl.$error) {
                    var k = 0, key;
                    for(key in ctrl.$error) {
                        if(key != 'remote') ++k;
                    }
                    if(k) {
                        ctrl.$setValidity('remote', true);
                        return value;
                    }
                }

                isValid = oldVal == value;
                if(!value) isValid = true;
                if(!isValid) {
                    if(timeoutId) clearTimeout(timeoutId);
                    timeoutId = setTimeout(function(){
                        params[propName] = value;
                        $http({
                            method:"GET",
                            url: checkUrl,
                            params: params
                        }).success(function(data, status, headers, config) {
                            isValid = data.result;
                            ctrl.$setValidity('remote', isValid);
                            if(isValid) oldVal = value;
                        })
                        .error(function(data, status, headers, config) {
                            isValid = false;
                            ctrl.$setValidity('remote', isValid);
                        });
                    }, checkDuration);
                }
                ctrl.$setValidity('remote', isValid);
                return value;
            };

            ctrl.$parsers.unshift(validator);
            ctrl.$formatters.push(validator);
            attrs.$observe('ngRemoteCheck', function () {
                validator(ctrl.$viewValue);
            });

        }
    };
}]);*/