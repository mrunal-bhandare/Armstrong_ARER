<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmExpenseRequest.aspx.cs" Inherits="Armstrong_ARER_V2.Webforms.frmExpenseRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../AngularJS/JS/angular.min.js"></script>
    <script src="../AngularJS/Script/AdvanceRequest.js"></script>
    <script src="../assets/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#imgTravel").click(function () {
                $("#divLodging").hide();
                $("#divFuel").hide();
                $("#divTravelExpenses").slideToggle("fast");
            });

            $("#imgLodge").click(function () {
                $("#divTravelExpenses").hide();
                $("#divFuel").hide();
                $("#divLodging").slideToggle("fast");
            });

            $("#imgFuel").click(function () {
                $("#divTravelExpenses").hide();
                $("#divLodging").hide();
                $("#divFuel").slideToggle("fast");
            });

            $("#imgDA").click(function () {
                $("#divTravelExpenses").hide("fast");
                $("#divLodging").hide("fast");
                $("#divFuel").hide("fast");
            });

            $("#imgPhone").click(function () {
                $("#divTravelExpenses").hide("fast");
                $("#divLodging").hide("fast");
                $("#divFuel").hide("fast");
            });

            $("#imgOther").click(function () {
                $("#divTravelExpenses").hide("fast");
                $("#divLodging").hide("fast");
                $("#divFuel").hide("fast");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;" ng-app="myApp" ng-controller="myController">
        <div class="page-header" style="padding-bottom: 15px;">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Indian.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">&nbsp;Book Expenses</h1>
        </div>
        <div class="page-content">
            <div class="panel">
                <div class="panel-body container-fluid">
                    <div class="form-group form-material">
                        <div class="row">
                            <div class="col-xl-9" style="padding: .2em .25em .15em; border: solid .08em #e4eaec; border-radius: 0.4em;">
                                <div class="col-xl-12" style="padding-top: 15px;">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="icon md-calendar" aria-hidden="true"></i>
                                                </span>
                                                <input type="text" class="form-control" id="start" placeholder="From date" data-plugin="datepicker" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="input-group bootstrap-touchspin">
                                                <input type="text" class="form-control" placeholder="No of days" name="touchSpinVertical" data-plugin="TouchSpin" data-verticalbuttons="false" style="text-align: center;" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="icon md-calendar" aria-hidden="true"></i>
                                                </span>
                                                <input type="text" class="form-control" id="end" placeholder="To date" data-plugin="datepicker" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12" style="padding-top: 15px;">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <select class="form-control empty">
                                                <option>-- Select Project Code --</option>
                                                <option>Office</option>
                                                <option>A646</option>
                                                <option>A658</option>
                                                <option>A636</option>
                                                <option>A639</option>
                                                <option>A647</option>
                                                <option>A655</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <select class="form-control empty">
                                                <option>-- Select City --</option>
                                                <option>Nashik</option>
                                                <option>Satana</option>
                                                <option>Mumbai</option>
                                                <option>Pune</option>
                                                <option>Delhi</option>
                                                <option>Noida</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                </div>
                                <div class="col-md-12" style="padding-top: 10px;">
                                    <div class="row">
                                        <div class="col-xl-1">
                                            <img src="../assets/images/Travel.ico" id="imgTravel" height="40" width="35" style="padding-top: 7px; cursor: pointer" data-toggle="tooltip" data-placement="top" data-original-title="Travel Expenses" />
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-cutlery" id="imgDA" ng-click="bindIconText('DA')" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="DA(Food)"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-hotel" ng-click="bindIconText('Accomodation')" id="imgLodge" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Lodge(Accomodation)"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <img src="../assets/images/Fuel.ico" id="imgFuel" ng-click="bindIconText('Fuel Expenses')" height="40" width="35" style="padding-top: 7px; cursor: pointer" data-toggle="tooltip" data-placement="top" data-original-title="Fuel Expenses" />
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-mobile" id="imgPhone" ng-click="bindIconText('Phone Expenses')" aria-hidden="true" style="font-size: 33px; color: dimgray; padding-top: 5px; cursor: pointer;" data-toggle="tooltip" data-toolbar-animation="flyin" data-placement="top" data-original-title="Mobile Expenses"></i>
                                        </div>
                                        <div class="col-xl-1">
                                            <i class="icon fa-plus" id="imgOther" ng-click="bindIconText('Other Expenses')" id="IOtherExpenses" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Other Expenses"></i>
                                        </div>
                                    </div>
                                    <div id="divTravelExpenses" style="display: none; border-top: 0.5px solid #e4eaec; padding-top: 10px;">
                                        <div class="row" style="padding-top: 5px;">
                                            <div class="col-xl-5">
                                                <input type="text" class="form-control" name="txtfromCity" ng-model="txtfromCity" placeholder="From City" />
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-building" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="From City"></i>
                                            </div>
                                            <div class="col-xl-5">
                                                <input type="text" class="form-control" name="txttoCity" ng-model="txttoCity" placeholder="To City" />
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-building" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="To City"></i>
                                            </div>
                                        </div>
                                        <div class="row" style="padding-top: 10px;">
                                            <div class="col-xl-2" style="padding-top: 15px;">
                                                <h5>Travel by - </h5>
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-bus" ng-click="bindIconText('Travel by Bus')" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Bus"></i>
                                            </div>
                                            <div class="col-xl-1">
                                                <img src="../assets/images/auto.ico" ng-click="bindIconText('Travel by Rikshaw')" height="40" width="35" style="padding-top: 7px; cursor: pointer" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Rikshaw" />
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-taxi" ng-click="bindIconText('Travel by Taxi')" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Taxi"></i>
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-train" ng-click="bindIconText('Travel by Train')" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Train"></i>
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-plane" <%--ng-click="toggle = !toggle"--%> ng-click="bindIconText('Travel by Plane')" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="Travel by Plane"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divLodging" style="display: none; border-top: 0.5px solid #e4eaec; padding-top: 10px;">
                                        <div class="row" style="padding-top: 5px;">
                                            <div class="col-xl-8">
                                                <select class="form-control empty">
                                                    <option>-- Select Lodge Name --</option>
                                                    <option>Panchavati Lodge</option>
                                                    <option>Sai Sarthak Lodge</option>
                                                    <option>Banjara Lodge</option>
                                                    <option>Make My Trip</option>
                                                    <option>Go Ibibo</option>
                                                    <option>Red Bus</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-4">
                                                <select class="form-control empty">
                                                    <option>-- Select Lodge Type --</option>
                                                    <option>Hotel</option>
                                                    <option>Apartment</option>
                                                    <option>Private Room</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row"  style="padding-top: 5px;">
                                            <div class="col-xl-8">
                                                <select class="form-control empty">
                                                    <option>-- Select Name of Persons --</option>
                                                    <option>Priya Santani</option>
                                                    <option>Minal Kothawade</option>
                                                    <option>Dnyaneshwar Sable</option>
                                                    <option>Nikhil Sontakke</option>
                                                    <option>Kedar Chandel</option>
                                                    <option>Akshay Dhongade</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-4">
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divFuel" style="display: none; border-top: 0.5px solid #e4eaec; padding-top: 10px;">
                                        <div class="row" style="padding-top: 5px;">
                                            <div class="col-xl-5">
                                                <input type="text" class="form-control" name="txtfromCityFuel" ng-model="txtfromCityFuel" placeholder="From City" />
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-building" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="From City"></i>
                                            </div>
                                            <div class="col-xl-5">
                                                <input type="text" class="form-control" name="txttoCityFuel" ng-model="txttoCityFuel" placeholder="To City" />
                                            </div>
                                            <div class="col-xl-1">
                                                <i class="icon fa-building" aria-hidden="true" style="font-size: 23px; padding-top: 10px; color: dimgray; cursor: pointer;" data-toggle="tooltip" data-placement="top" data-original-title="To City"></i>
                                            </div>
                                        </div>
                                         <div class="row" style="padding-top: 5px;">
                                            <div class="col-xl-8">
                                                <input type="text" class="form-control" name="txttoCityFuel" ng-model="txttoCityFuel" placeholder="Distance(km)" />
                                            </div>
                                            <div class="col-xl-4" style="border:1px solid grey">
                                                Graphs goes here
                                            </div>
                                        </div>
                                        <div class="row" style="padding-top: 5px;">
                                            <div class="col-xl-8">
                                                <select class="form-control empty">
                                                    <option>-- Select Occupants Name --</option>
                                                    <option>Priya Santani</option>
                                                    <option>Minal Kothawade</option>
                                                    <option>Dnyaneshwar Sable</option>
                                                    <option>Nikhil Sontakke</option>
                                                    <option>Kedar Chandel</option>
                                                    <option>Akshay Dhongade</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-4">
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="padding-top: 10px;" <%--ng-hide="toggle"--%>>
                                        <div class="col-xl-5">
                                            <input type="text" class="form-control" name="txtReason" ng-model="txtReason" placeholder="Expense Type" />
                                        </div>
                                        <div class="col-xl-3">
                                            <input type="text" class="form-control" name="txtAmount" ng-model="txtAmount" placeholder="Expense Amount (in &#8377)" style="text-align: right;" />
                                        </div>
                                        <div class="col-xl-2">
                                            <input type="text" class="form-control" name="txtBillNo" ng-model="txtBillNo" placeholder="Bill No(if any)" />
                                        </div>
                                        <div class="col-xl-2">
                                            <button type="button" ng-click="addRow()" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width: 90%;" />
                                            <span><i class="icon md-plus" aria-hidden="true"></i>Add</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="example table-responsive">
                                    <table class="table table-bordered table-hover table-striped dataTable no-footer">
                                        <thead>
                                            <tr style="font-weight: bold;">
                                                <th style="width: 55px;">Sr No</th>
                                                <th>Expense Type</th>
                                                <th style="width: 200px; text-align: right;">Expense Amount(in &#8377)</th>
                                                <th style="width: 60px;">Edit</th>
                                                <th style="width: 60px;">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="Expense in Expenses">
                                                <td style="text-align: center; vertical-align: middle;">{{$index +1}}</td>
                                                <td style="vertical-align: middle;">{{Expense.txtReason}}
                                                </td>
                                                <td style="text-align: right; vertical-align: middle;">&#8377 {{Expense.txtAmount}}
                                                </td>
                                                <td class="actions">
                                                    <a href="#" ng-click="bindData(Expense.txtReason,Expense.txtAmount)" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Save"><i class="icon md-edit" aria-hidden="true"></i></a>
                                                </td>
                                                <td><a href="#" ng-click="removeRow(Expense.txtReason)" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Save"><i class="icon md-close" aria-hidden="true"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-xl-5"></div>
                                        <div class="col-xl-0"></div>
                                        <div class="col-xl-5"><b>Total &#8377 5550</b></div>
                                        <div class="col-xl-0"></div>
                                    </div>
                                </div>
                                <div class="col-md-12" style="padding-top: 10px;">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-3">
                                            <button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width: 200px;" />
                                            <span><i class="icon md-card" aria-hidden="true"></i>Send for Approval</span>
                                        </div>
                                        <div class="col-xl-2">
                                            <button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width: 200px; background-color: #526069; border-color: #526069;" />
                                            <span><i class="icon md-close" aria-hidden="true"></i>Cancel</span>
                                        </div>
                                        <div class="col-xl-4"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3">
                                <div class="col-md-12">
                                    <div class="panel panel-bordered panel-primary" style="border: solid .08em #e4eaec" data-plugin="appear" data-animate="slide-top">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Summary</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="example">
                                                <div class="pie-progress" data-plugin="pieProgress" data-barcolor="#2196f3" data-size="100" data-barsize="4" data-goal="75" aria-valuenow="75" role="progressbar">
                                                    <div class="pie-progress-number">75%</div>
                                                    <div class="pie-progress-label">Expenses Booked</div>
                                                    <div class="pie-progress-svg">
                                                        <svg version="1.1" preserveAspectRatio="xMinYMin meet" viewBox="0 0 100 100">
                                                            <ellipse rx="48" ry="48" cx="50" cy="50" stroke="#f2f2f2" fill="none" stroke-width="4"></ellipse><path fill="none" stroke-width="4" stroke="#2196f3" d="M50,2 A48,48 0 1 1 2,50.00000000000001" style="stroke-dasharray: 226.226, 226.226; stroke-dashoffset: 0;"></path></svg>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <h5>Advance Approved :&#8377 10000</h5>
                                            </div>
                                            <div class="row">
                                                <h5>Last Refund :&#8377 4000</h5>
                                            </div>
                                            <div class="row">
                                                <h5>Amount Transfered :&#8377 6000</h5>
                                            </div>
                                            <div class="row">
                                                <h5>Book Expenses for :&#8377 10000</h5>
                                            </div>
                                            <div class="row">
                                                <h5>Currently booked for :&#8377 10000</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
