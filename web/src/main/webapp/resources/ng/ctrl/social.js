/**
 * Created by pr on 07/03/2015.
 */
app.controller('SocialController',function($scope,FileUploader,$http){
    $scope.theme='social-theme';

    var uploader = $scope.uploader = new FileUploader({
        url: 'http://localhost:8080/upload-file'
    });

    uploader.filters.push({
        name: 'customFilter',
        fn: function(item /*{File|FileLikeObject}*/, options) {
            return this.queue.length < 10;
        }
    });

////----Callbacks----//
    //uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/, filter, options) {
    //    console.info('onWhenAddingFileFailed', item, filter, options);
    //};
    /*uploader.onAfterAddingFile = function(fileItem) {
        console.info('onAfterAddingFile', fileItem);
    };*/
    /*uploader.onAfterAddingAll = function(addedFileItems) {
        console.info('onAfterAddingAll', addedFileItems);
    };*
    /*uploader.onBeforeUploadItem = function(item) {
        console.info('onBeforeUploadItem', item);
    };*/
    /*uploader.onProgressItem = function(fileItem, progress) {
        console.info('onProgressItem', fileItem, progress);
    };*/
    /*uploader.onProgressAll = function(progress) {
        console.info('onProgressAll', progress);
    };*/
/*    uploader.onSuccessItem = function(fileItem, response, status, headers) {
        console.info('onSuccessItem', fileItem, response, status, headers);
    };*/
    uploader.onErrorItem = function(fileItem, response, status, headers) {
        console.info('onErrorItem', fileItem, response, status, headers);
    };
    uploader.onCancelItem = function(fileItem, response, status, headers) {
        console.info('onCancelItem', fileItem, response, status, headers);
    };
    uploader.onCompleteItem = function(fileItem, response, status, headers) {
        console.info('onCompleteItem', response, status);
    };
    uploader.onCompleteAll = function(fileItem, response, status, headers) {
        console.info('onCompleteItem', response, status);
    };

    //end callbacks---//



/*    $scope.document = {};
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

*/

})