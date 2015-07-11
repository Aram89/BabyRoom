/**
 * Created by pr on 07/11/2015.
 */
app.controller('childController',['$scope','userServices',function($scope,userServices){
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
            userServices.childrenCreate($scope.childData)
        }
    }
}])