/// <reference path="../JS/angular.min.js" />


var myApp = angular.module("myApp", []);
myApp.controller("myController", function ($scope, $http) {
    
    $scope.btnAdd = "Add";
    $scope.getAccountList = function () {
        var httpreq = {
            method: "POST",
            url: "frmConfigAmountTransferBy.aspx/getAccountList",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: {}
        }
        $http(httpreq).success(function (response) {
            //alert(response.d);
            $scope.AccountList = response.d;
        })
    };

    $scope.clearControls = function () {
        $scope.MinValue='';
        $scope.MaxValue = '',
        $scope.TransferBy = '';
        $scope.btnAdd = "Add";
    }

    $scope.fillList = function () {
        debugger
        var httpreq = {
            method: "POST",
            url: "frmConfigAmountTransferBy.aspx/bindUserName",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: {}
        }
        $http(httpreq).success(function (response) {
            $scope.AccountDetails = response.d;
        })
    };


    $scope.ShowFirstList = function () {
       // alert(initialList);
        $scope.AccountDetails = initialList;//response.d;
       
    };

   // $scope.ShowFirstList();
    $scope.getAccountList();
    $scope.fillList();

    $scope.Save = function () {
        var functionName;
        if ($scope.btnAdd == "Add") {
            functionName = "SaveData";
            var httpreq = {
                method: "POST",
                url: "frmConfigAmountTransferBy.aspx/" + functionName + "",
                headers: {
                    'Content-Type': 'application/json; charset=utf-8',
                    'dataType': 'json'
                },
                data: { minValue: $scope.MinValue, maxValue: $scope.MaxValue, transferBy: $scope.TransferBy }
            }
        }
        else {
            functionName = "UpdateData";
            var httpreq = {
                method: "POST",
                url: "frmConfigAmountTransferBy.aspx/" + functionName + "",
                headers: {
                    'Content-Type': 'application/json; charset=utf-8',
                    'dataType': 'json'
                },
                data: { minValue: $scope.MinValue, maxValue: $scope.MaxValue, transferBy: $scope.TransferBy, transferId: $scope.Id }
            }
        }

        $http(httpreq).success(function (response) {
            toastr.success('Record Saved Successfully..!!', 'Notification', { timeOut: 2500, closeButton: true });
            $scope.fillList();
            $scope.clearControls();
        })
    };

    $scope.DeleteRow = function (Id) {
        var httpreq = {
            method: "POST",
            url: "frmConfigAmountTransferBy.aspx/DeleteData",
            headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'dataType': 'json'
            },
            data: {Id:Id}
        }
             
        $http(httpreq).success(function (response) {
            toastr.success('Record Deleted Successfully..!!', 'Notification', { timeOut: 2500, closeButton: true });
            $scope.fillList();
            $scope.clearControls();
        })
    };

    $scope.bindData = function (MinValue, MaxValue, UserId,Id) {
        $scope.MinValue = MinValue;
        $scope.MaxValue = MaxValue;
        document.getElementById("test").value = UserId;
        $scope.btnAdd = "Update";
        $scope.Id = Id;
    }
});