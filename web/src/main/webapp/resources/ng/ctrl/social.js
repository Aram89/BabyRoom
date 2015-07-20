/**
 * Created by pr on 07/03/2015.
 */
app.controller('SocialController',function($scope,$http){
    $scope.theme='social-theme';
    $scope.document = {};
    $scope.setTitle = function(fileInput) {

        var file=fileInput.value;
        var filename = file.replace(/^.*[\\\/]/, '');
        var title = filename.substr(0, filename.lastIndexOf('.'));
        $("#title").val(title);
        $("#title").focus();
        $scope.document.title=title;
    };
    $scope.uploadFile=function(){
        var formData=new FormData();
        formData.append("file",file.files[0]);
        $http({
            method: 'POST',
            url: 'http://localhost:8080/upload-file',
            headers: { 'Content-Type': undefined},
            data:  formData,
            transformRequest: function(data, headersGetterFunction) {
                return data;
            }
        })
            .success(function(data, status) {
                alert("Success ... " + status);
            })
            .error(function(data, status) {
                alert("Error ... " + status);
            });
    };



})