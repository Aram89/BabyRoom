app.service('userServices', ['serverConnector', function(serverConnector) {
    'use strict';


    this.signIn = function(data) {
        return serverConnector.send({
            url : 'user/login-parent',
            data: data
        });
    };

    this.register = function(data) {
        return serverConnector.send({
            url : 'user/create-parent',
            data: data
        });
    };

    this.forgetPassword = function(data) {
        return serverConnector.send({
            url : 'user/forget-password',
            data: data
        });
    };

    this.childrenCreate = function(data){
        return serverConnector.send({
            url: 'user/create-children',
            data: data
        })
    };

    this.createPost = function(data){
        return serverConnector.send({
            url:'http://localhost:8080/create-post',
            data:data
        })
    }

}]);