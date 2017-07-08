<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmAdvanceRequest.aspx.cs" Inherits="Armstrong_ARER_V2.Webforms.frmAdvanceRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../AngularJS/JS/angular.min.js"></script>
    <script src="../AngularJS/Script/AdvanceRequest.js"></script>
    <script src="../assets/js/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            function hideShowMe() {
                $('#divExpenseReasons').slideToggle("fast");
            }

            $("#btnAdd").click(function () {
                $("#divReasons").show();
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;" ng-app="myApp" ng-controller="myController">
        <div class="page-header">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Indian.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">&nbsp;Requisition for Advance</h1>
        </div>
        <div class="page-content">
            <div class="panel">
                <div class="panel-body container-fluid">
                    <div class="form-group form-material">
                        <div class="row">
                            <div class="col-xl-9" style="padding: .2em .25em .15em; border: solid .08em #e4eaec; border-radius: 0.4em;">
                                <div class="col-xl-12" style="padding-top: 15px;">
                                    <textarea class="maxlength-textarea form-control" id="txtPurpose" data-plugin="maxlength" data-placement="bottom-right-inside" rows="2" placeholder="Specify purpose of Advance"></textarea>
                                </div>
                                <div class="col-md-12" style="padding-top: 10px;">
                                    <%--<div class="row">
                                        <div class="col-xl-12" style="padding-top: 25px; padding-bottom: 10px;">
                                            <span class="avatar avatar-online" style="float: left;">
                                                <img src="../assets/images/loan.png" alt="..." style="height: 35px; width: 35px" />
                                            </span>
                                            <h4>Reasons for Advance</h4>
                                        </div>
                                    </div>--%>
                                    <div class="row">
                                        <div class="col-xl-1">
                                            <i class="icon fa-bus" ng-style="myBus" ng-click="bindIconText('Travel by Bus');myBus={color:'#4caf50'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Bus"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <img src="../assets/images/auto.ico" ng-style="myRikshaw" ng-click="bindIconText('Travel by Rikshaw');" height="40" width="35" style="padding-top: 7px; cursor: pointer" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Rikshaw" />
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-taxi" ng-style="myTaxi" ng-click="bindIconText('Travel by Taxi');myBus={color:'dimgray'};myTaxi={color:'#4caf50'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Taxi"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-train" ng-style="myTrain" ng-click="bindIconText('Travel by Train');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'#4caf50'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Train"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-plane" ng-style="myPlane" ng-click="bindIconText('Travel by Plane');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'#4caf50'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Plane"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-mobile" ng-style="myPhone" ng-click="bindIconText('Phone Expenses');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'#4caf50'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 33px; color: dimgray; padding-top: 5px; cursor: pointer;" data-toggle="tooltip" data-toolbar-animation="flyin" data-placement="top" data-original-title="Mobile Expenses"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-hotel" ng-style="myAccomodation" ng-click="bindIconText('Accomodation');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'#4caf50'};myDA={color:'dimgray'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Lodge(Accomodation)"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-cutlery" ng-style="myDA" ng-click="bindIconText('DA');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'#4caf50'};myOthers={color:'dimgray'};" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="DA(Food)"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-plus" ng-style="myOthers" ng-click="bindIconText('Other Expenses');myBus={color:'dimgray'};myTaxi={color:'dimgray'};myTrain={color:'dimgray'};myPlane={color:'dimgray'};myPhone={color:'dimgray'};myAccomodation={color:'dimgray'};myDA={color:'dimgray'};myOthers={color:'#4caf50'};" id="IOtherExpenses" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Other Expenses"></i>
                                        </div>
                                    </div>
                                    <div class="row" style="padding-top: 10px;">
                                        <%--ng-hide="toggle"--%>
                                        <div class="col-xl-4">
                                            <input type="text" class="form-control" name="txtReason" ng-model="txtReason" placeholder="Enter Reason" />
                                        </div>
                                        <div class="col-xl-2">
                                            <input type="text" class="form-control" name="txtNoofPeople" ng-model="txtNoofPeople" placeholder="No of People" />
                                        </div>
                                        <div class="col-xl-2">
                                            <input type="text" class="form-control" name="txtNoofDays" ng-model="txtNoofDays" placeholder="No of Days" />
                                        </div>
                                        <div class="col-xl-2">
                                            <input type="text" class="form-control" name="txtAmount" ng-model="txtAmount" placeholder="&#8377 Amount" style="text-align: right;" />
                                        </div>
                                        <div class="col-xl-2">
                                            <button type="button" ng-click="addRow();" id="btnAdd" class="btn btn-animate btn-animate-vertical btn-primary waves-effect waves-classic" style="width: 90%;" />
                                            <span><i class="icon md-plus" aria-hidden="true"></i>Add</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="example table-responsive" id="divReasons" style="display: none;">
                                    <table class="table table-bordered table-hover table-striped dataTable no-footer">
                                        <thead>
                                            <tr style="font-weight: bold;">
                                                <th style="width: 6%;">Sr No</th>
                                                <th style="width: 50%;">Reason</th>
                                                <th style="width: 12%;">No of People</th>
                                                <th style="width: 10%;">No of Days</th>
                                                <th style="width: 13%; text-align: right;">Amount(in &#8377)</th>
                                                <th style="width: 5%; text-align: center;">Edit</th>
                                                <th style="width: 5%; text-align: center;">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="Expense in Expenses">
                                                <td style="text-align: center; vertical-align: middle;">{{$index +1}}</td>
                                                <td style="vertical-align: middle;">{{Expense.txtReason}}
                                                </td>
                                                <td style="text-align: center; vertical-align: middle;">{{Expense.txtNoofPeople}}
                                                </td>
                                                <td style="text-align: center; vertical-align: middle;">{{Expense.txtNoofDays}}
                                                </td>
                                                <td style="text-align: right; vertical-align: middle;">&#8377 {{Expense.txtAmount}}
                                                </td>
                                                <td class="actions" style="text-align: center;">
                                                    <a href="#" ng-click="bindData(Expense.txtReason,Expense.txtAmount,Expense.txtNoofPeople,Expense.txtNoofDays)" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Save"><i class="icon md-edit" aria-hidden="true"></i></a>
                                                </td>
                                                <td style="text-align: center;"><a href="#" ng-click="removeRow(Expense.txtReason)" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Save"><i class="icon md-close" aria-hidden="true"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-xl-3">
                                <div class="col-md-12">
                                    <div class="panel panel-bordered panel-primary" style="border: solid .08em #e4eaec" data-plugin="appear" data-animate="slide-top">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Summary</h3>
                                        </div>
                                        <div class="panel-body" style="padding-top: 15px;">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h6 class="control-label"><b>Total Advance Requested</b></h6>
                                                </div>
                                            </div>
                                            <div class="row" style="border-bottom: 1px solid #e4eaec">
                                                <div class="col-md-12">
                                                    <h6 class="control-label"><b>&#8377 10000</b></h6>
                                                </div>
                                            </div>
                                            <div class="row" style="border-bottom: 1px solid #e4eaec; padding-top: 10px;">
                                                <div class="col-md-12">
                                                    <h6 class="control-label"><b>Refund from last transaction (TN03) : &#8377 2000</b></h6>
                                                </div>
                                            </div>
                                            <div class="row" style="padding-top: 10px;">
                                                <div class="col-md-12">
                                                    <h6 class="control-label"><b>Net Advance Requested</b></h6>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h6 class="control-label"><b>&#8377 8000 (&#8377 10000 - &#8377 2000)</b></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 10px;">
                                <div class="row">
                                    <div class="col-xl-4">
                                        <%-- <a class="btn btn-primary waves-effect waves-classic" id="exampleCloseButton" data-plugin="toastr" data-message="Lorem ipsum dolor sit amet, consectetur adipiscing elit." data-container-id="toast-bottom-right" data-title="Messages" data-close-button="true" data-tap-to-dismiss="false" data-icon-class="toast-just-text toast-success" href="javascript:void(0)" role="button">Generate</a>--%>
                                    </div>
                                    <div class="col-xl-3">
                                        <button type="button" class="btn btn-animate btn-animate-vertical btn-primary  waves-effect waves-classic" style="width: 200px;" />
                                        <span><i class="icon fa-send-o" aria-hidden="true" style="font-size: 20px; padding-bottom: 2px;"></i>Request for Advance</span>
                                    </div>
                                    <div class="col-xl-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
