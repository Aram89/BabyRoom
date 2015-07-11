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
    }

}]);