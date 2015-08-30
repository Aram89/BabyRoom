app.directive('timeLineItem', [function () {
    return {
        controller: {},
        restrict: "E",
        scope: {},
        templateUrl: "",
        link: function (scope, elem, attr) {
        }
    }
}])

app.directive('post', ['fileUploadService', 'userServices', function (fileUploadService, userServices) {
    var ctrl = function ($scope) {
        var uploadsList = [];
        $scope.events = [
            "event1",
            "event2",
            "event3",
            "event4"
        ];
        $scope.post={
            status:'lkshdfk',
            postType:'',
            fileIds:uploadsList,
            event:''
        };
        $scope.removeItemFromQueue = function(item){
            item.remove();
            var index= uploadsList.indexOf(item.uID);
            if(index>-1){
                uploadsList.splice(index,1)
            }
        };
        //console.log($scope);
        function uploadFile() {
            /*var uploader = $scope.uploader=new FileUploader({
             url: 'http://localhost:8080/upload-file'
             });*/
            var uploader = $scope.uploader = fileUploadService.uploader();
            //console.log(uploader);
            uploader.filters.push({
                name: 'imageFilter',
                onWhenFailed: function () {
                    alert("Please select |jpg|png|jpeg|bmp|gif|mp4|")
                },
                fn: function (item /*{File|FileLikeObject}*/, options) {
                    var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                    return '|jpg|png|jpeg|bmp|gif|mp4|'.indexOf(type) !== -1;
                }
            });
            //Callbacks
            uploader.onWhenAddingFileFailed = function (item /*{File|FileLikeObject}*/, filter, options) {
                filter.onWhenFailed();
            };
            uploader.onCompleteItem = function (fileItem, response, status, headers) {
                //console.info('onCompleteItem', response, status);
                fileItem.uID = response;
                uploadsList.push(response);
            };
            uploader.onAfterAddingAll = function (addedFileItems) {
                uploader.uploadAll();
            };
            uploader.onCancelItem  = function (s, e, o) {
                console.info(s);
            }
        }
        uploadFile();
        $scope.doPost = function(){
            userServices.createPost($scope.post)
                .success(function(s){
                    console.log(s);
                });
            console.log($scope.post);
        }
    };
    return {
        controller: ctrl,
        restrict: 'E',
        //remove: true,
        templateUrl: '../resources/views/templates/post.tpl.html',
        link: function (scope, elm, attr, ctrl) {

        }
    }
}])