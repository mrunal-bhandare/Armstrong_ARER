/// <reference path="../JS/angular.min.js" />
var myApp = angular.module("myApp", []);
myApp.controller("myController", function ($scope, $http) {

    $scope.BindUserLevel = function () {
        var httpreq = {
            method: "POST",
            url: "frmConfigDA.aspx/getUserLevel",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: {}
        }
        $http(httpreq).success(function (response) {
            $scope.LevelList = response.d;          
        })
    }

    $scope.RestrictL1 = function (Level) {
        return Level.UserLevel != "L1";
    }
    $scope.BindUserLevel();

    $scope.valuesA = [];
    $scope.valuesB = [];
    $scope.valuesC = [];
    $scope.valuesD = [];

    $scope.saveAllValues = function () {
        var valuesA = $scope.valuesA.toString().replace(/,/g, "*");
        var valuesB = $scope.valuesB.toString().replace(/,/g, "*");
        var valuesC = $scope.valuesC.toString().replace(/,/g, "*");
        var valuesD = $scope.valuesD.toString().replace(/,/g, "*");
        var httpreq = {
            method: "POST",
            url: "frmConfigDA.aspx/saveDA",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: { valuesA: valuesA, valuesB: valuesB, valuesC: valuesC, valuesD: valuesD }
        }
        $http(httpreq).success(function (response) {
            toastr.success('Record Saved Successfully..!!', 'Notification', { timeOut: 2500 ,closeButton:true});
            $scope.valuesA = '';
            $scope.valuesB = '';
            $scope.valuesC = '';
            $scope.valuesD = '';
        })
    }

    $scope.GetDAAmount = function () {
        var httpreq = {
            method: "POST",
            url: "frmConfigDA.aspx/getDAAmount",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: {}
        }
        $http(httpreq).success(function (response) {
            $scope.AmountList = response.d;
        })
    }

    $scope.GetDAAmount();
});