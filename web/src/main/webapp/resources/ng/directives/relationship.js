/**
 * Created by pr on 09/10/2015.
 */
app.directive('relationship',['userServices',function(userServices){
    return{
        restrict:"AE",
        templateUrl:"../resources/views/templates/relationshipButton.tpl.html",
        link:function(scope,elem,attr) {

        }
    }
}]);