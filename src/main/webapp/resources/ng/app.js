'use strict';

var app = angular.module('app',['ngResource','ngMaterial','ui.bootstrap','ngMdIcons','ngMessages','ngAnimate','ngRoute']);

app.config(function($routeProvider){
    $routeProvider
        .when('/social',{
            templateUrl:'../resources/views/social.html',
            controller:'SocialController'
        })
        .when('/market',{
            templateUrl:'../resources/views/market.html',
            controller:'MarketController'
        })
        .otherwise({
            redirectTo:'/social'
        })
});