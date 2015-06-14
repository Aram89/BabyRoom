app.service('userServices', ['serverConnector', function(serverConnector) {
    'use strict';


    this.signIn = function(data) {
        return serverConnector.send({
            url : 'user/sign-in',
            data: data
        });
    };

    this.register = function(data) {
        return serverConnector.send({
            url : 'user/create',
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