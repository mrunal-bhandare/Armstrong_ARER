/// <reference path="../JS/angular.min.js" />

var myApp = angular.module("myApp", []);
myApp.controller("myController",function ($scope) {     
    $scope.toggle = true;
    $scope.showHideTable = true;
    $scope.Expenses = [];

    $scope.addRow = function () {
        $scope.Expenses.push({ 'txtReason': $scope.txtReason, 'txtAmount': $scope.txtAmount, 'txtNoofPeople': $scope.txtNoofPeople, 'txtNoofDays': $scope.txtNoofDays });
            $scope.txtReason = '';
            $scope.txtAmount = '';
            $scope.txtNoofPeople = '';
            $scope.txtNoofDays = '';
    };

    $scope.removeRow = function (txtReason) {
        var index = -1;
        var comArr = eval($scope.Expenses);
        for (var i = 0; i < comArr.length; i++) {
            if (comArr[i].txtReason === txtReason) {
                index = i;
                break;
            }
        }
        if (index === -1) {
            alert("Something gone wrong");
        }
        $scope.Expenses.splice(index, 1);
    };

    $scope.bindData = function (txtReason, txtAmount, txtNoofPeople, txtNoofDays) {
        $scope.txtReason = txtReason;
        $scope.txtAmount = txtAmount;
        $scope.txtNoofPeople = txtNoofPeople;
        $scope.txtNoofDays = txtNoofDays;
    };

    $scope.bindIconText = function (Text) {
        $scope.txtReason = Text + ' ';
    };

    $scope.editContact = function (contact) {
        $scope.model.selected = angular.copy(contact);
    };
});