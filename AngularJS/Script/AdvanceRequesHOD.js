/// <reference path="../JS/angular.min.js" />
var myApp = angular.module("myApp", []);
myApp.controller("myController", function ($scope) {
    $scope.Message = "Welcome";
});