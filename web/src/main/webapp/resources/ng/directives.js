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
        var uploader;
        $scope.events = [
            "",
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
            uploader = $scope.uploader = fileUploadService.uploader();
            //console.log(uploader);
            uploader.filters.push({
                name: 'fileFilter',
                onWhenFailed: function () {
                    alert("Please select |jpg|png|jpeg|bmp|gif|mp4|")
                },
                fn: function (item /*{File|FileLikeObject}*/, options) {
                    var ext = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                    var type = item.type.slice(0,item.type.lastIndexOf('/'));
                    return '|jpg|png|jpeg|bmp|gif|mp4|'.indexOf(ext) !== -1;
                }
            });
            uploader.filters.push(
                {
                    name: 'a',
                    onWhenFailed:function(){
                        alert("Please upload only video or image")
                    },
                    fn:function(item){
                        var type = item.type.slice(0,item.type.lastIndexOf('/'));
                        var uploadType=type;
                        if(uploader.queue.length!=0 && $scope.post.event==''){
                            uploadType=$scope.post.postType;
                        }
                        return (type===uploadType);
                    }
                }
            );
            //Callbacks
            uploader.onWhenAddingFileFailed = function (item /*{File|FileLikeObject}*/, filter, options) {
                filter.onWhenFailed();
            };
            uploader.onCompleteItem = function (fileItem, response, status, headers) {
                fileItem.uID = response;
                uploadsList.push(response);
            };
            uploader.onAfterAddingFile = function(fileItem) {
                if($scope.post.event==''  && uploader.queue.length==1){
                    $scope.post.postType = fileItem.file.type.slice(0,fileItem.file.type.lastIndexOf('/'));
                    console.log($scope.post.postType)
                }
            };
            uploader.onAfterAddingAll = function (addedFileItems) {
                uploader.uploadAll();
            };
            uploader.onCancelItem  = function (s, e, o) {
                console.info(s);
            }
        }
        uploadFile();
        $scope.selectEvent=function(e){
            if(e==''){
                ///uploader.clearQueue();
                while(uploader.queue.length){
                    $scope.removeItemFromQueue(uploader.queue[0])
                }
            }else{
                $scope.post.postType = 'event';
            }
        };
        $scope.doPost = function(){
            if($scope.post.event=='' && $scope.post.fileIds.length==0){
                $scope.post.postType = 'status'
            }
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