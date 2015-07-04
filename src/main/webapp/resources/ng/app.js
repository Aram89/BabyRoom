'use strict';

var app = angular.module('app',['ngResource','ngMaterial','ngMdIcons','ngMessages','ngAnimate','ngRoute']);

app.config(function($routeProvider){
    $routeProvider
        .when('/social',{
            templateUrl:'resources/views/social.html',
            controller:'socialController'
        })
        .when('/market',{
            templateUrl:'resources/views/market.html',
            controller:'marketController'
        })
        .otherwise({
            redirectTo:'/social'
        })
});