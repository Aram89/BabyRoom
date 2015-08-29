/**
 * Created by pr on 07/23/2015.
 */
app.service('fileUploadService',['serverConnector','FileUploader',function(serverConnector,FileUploader){
    'use strict';
    this.uploader =function(){
        //var enableTypes=["video/mp4","image/png"];
        var upl= new FileUploader({
            url: 'http://localhost:8080/upload-file'
        });
        /*a.filters.push({

            })*/
        /*a.filters.push({
            name : 'correctFile',
            fn : function(e){
                if(enableTypes.indexOf(e.type)==-1){
                    console.log(e);
                    return true;
                }else{
                    console.log("sd");
                    return false
                }
            }
        });*/
        return upl
    }

}]);