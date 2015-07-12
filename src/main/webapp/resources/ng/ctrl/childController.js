/**
 * Created by pr on 07/11/2015.
 */
app.controller('childController',['$scope','userServices','$filter',function($scope,userServices,$filter){
    var today = new Date();
    $scope.calendar = {
        opened: false,
        minDate: new Date(today.getFullYear()-5,today.getMonth(),today.getDate()),
        maxDate: new Date(today.getFullYear(),today.getMonth()+9,today.getDate())
    };
    ///--functions--///
    $scope.calendar.open =function($event){
        $event.preventDefault();
        $event.stopPropagation();
        $scope.calendar.opened = true;
    };
    ///--end functions--///
    $scope.childDataBlock={
        showWarnings:false
    };
    $scope.childData={
        firstName:'',
        lastName:'',
        gender:'male',
        birthday: new Date()
    };

    $scope.saveChildData = function(){
        if(!$scope.childDataBlock.showWarnings){
            $scope.childDataBlock.showWarnings=true;
        }
        if(!$scope.childDataForm.$invalid){
            var data=angular.copy($scope.childData);
            data.birthday = $filter('date')(data.birthday,'yyyy-MM-dd')
            userServices.childrenCreate(data);
            console.log($scope.calendar.minDate)
            console.log($scope.calendar.maxDate)
        }
    }
}])