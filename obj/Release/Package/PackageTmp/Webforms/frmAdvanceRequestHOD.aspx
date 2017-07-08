<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmAdvanceRequestHOD.aspx.cs" Inherits="Armstrong_ARER_V2.Webforms.frmAdvanceRequestHOD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../AngularJS/JS/angular.min.js"></script>
    <script src="../AngularJS/Script/AdvanceRequesHOD.js"></script>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "25%";
            document.getElementById("main").style.marginLeft = "23%";
            document.getElementById("Span1").style.display = "none";
            document.getElementById("divPanel").style.marginLeft = "2%";
            document.getElementById("divContent").style.marginTop = "1%";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
            document.getElementById("Span1").style.display = "inline";
            document.getElementById("divPanel").style.marginLeft = "0%";
            document.getElementById("divContent").style.marginTop = "1.5%";
        }

        function expandMe() {
            $("#divWaiting").removeClass("panel panel-bordered panel-warning is-fullscreen");
            $("#divWaiting").addClass("panel panel-bordered panel-warning is-fullscreen_DS");
            var divSum = document.getElementById('divWaiting1');
            divSum.style.display = 'block';
            var divSum = document.getElementById('divFirst');
            divSum.style.display = 'none';
            var divSum = document.getElementById('divHeading');
            divSum.style.display = 'block';
            var x = document.getElementById('divAdvanceSummary');
            x.style.display = 'block';           
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header page" style="margin-left: -3%;">
        <div class="row" style="margin-right: -4%;">
            <div class="col-sm-1  text-right" style="padding-left: 0px; padding-right: 0px; max-width: 4.333333%;">
                <span class="avatar avatar-online">
                    <img src="../assets/images/Indian.png" alt="..." style="height: 35px; width: 35px" />
                </span>
            </div>
            <div class="col-sm-7 text-left" style="padding-right: 0px;">
                <h1 class="page-title">&nbsp;Advance Request for Approval </h1>
            </div>
            <div class="col-xl-4 text-right" style="margin-left: 3.5%;">
                <div class="page-header-actions">
                    <button type="button" class="btn btn-sm btn-icon btn-dark btn-round animation-scale " data-toggle="tooltip" data-original-title="Upload">
                        <i class="icon fa-upload" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-sm btn-icon btn-dark btn-round waves-effect waves-light waves-round animation-scale" data-toggle="tooltip" data-original-title="Download">
                        <i class="icon fa-download" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-sm btn-icon btn-dark btn-round waves-effect waves-light waves-round animation-scale" data-toggle="tooltip" data-original-title="Export PDF">
                        <i class="icon md-collection-pdf" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-sm btn-icon btn-dark btn-round waves-effect waves-light waves-round animation-scale" data-toggle="tooltip" data-original-title="Back">
                        <i class="icon md-chevron-left" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="main" class="page animsition" style="animation-duration: 800ms; opacity: 1;" ng-app="myApp" ng-controller="myController">
        <div id="mySidenav" class="sidenav" style="margin-top: 10%; z-index: 0">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="margin-top: -20px;">&times;</a>
            <div class="col-xl-12" style="padding: .2em .25em .15em; border: solid .08em #e4eaec; border-radius: 0.4em; background-color: white;">
                <div class="form-material" style="padding: 10px 10px;">                  
                    <div class="row">
                        <div class="col-sm-12">
                            <input class="form-control input-sm" name="txtTNNo" placeholder="Enter Transaction No" type="text" />
                        </div>
                    </div>                   
                    <div class="row" style="padding-top:2%;">
                        <div class="col-sm-12">
                            <input class="form-control input-sm" name="txtUserName" placeholder="Enter User Name" type="text" />
                        </div>
                    </div>
                    <div class="row" style="padding-top: 2%;">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-8 text-right">
                            <button type="button" class="btn btn-animate btn-md btn-animate-vertical btn-success waves-effect waves-classic" />
                            <span><i class="icon md-search" aria-hidden="true"></i>Search</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12" style="overflow-y:scroll;">
                    <div id="divWaiting" class="panel panel-bordered panel-warning" style="animation-fill-mode: backwards; animation-duration: 250ms; animation-delay: 0ms;">
                        <div class="panel-heading" id="divFirst">
                            <h3 class="panel-title" style="font-size: small;">Harshal Deshmukh - TN3</h3>
                            <div class="panel-actions" style="font-size: small; right: 5px;">
                                <a class="panel-action icon md-fullscreen" onclick="expandMe()" data-toggle="panel-fullscreen" aria-hidden="true"></a>
                            </div>
                        </div>
                    </div>
                     <div id="divWaiting2" class="panel panel-bordered panel-warning" style="animation-fill-mode: backwards; animation-duration: 250ms; animation-delay: 0ms;">
                        <div class="panel-heading" id="divSecond">
                            <h3 class="panel-title" style="font-size: small;">Dnyaneshwar Sable - TN4</h3>
                            <div class="panel-actions" style="font-size: small; right: 5px;">
                                <a class="panel-action icon md-fullscreen" data-toggle="panel-fullscreen" aria-hidden="true"></a>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>

        <div style="margin-top: -3.3%; margin-left: 2%;">
            <div class="row" id="divContent" style="margin-left: -6%; margin-right: -3%; margin-top: 1.5%;">
                <div class="col-sm-12">
                    <!-- Example Panel Fullscreen -->
                    <div class="panel" id="divPanel">
                        <div id="divWaiting1" class="panel panel-bordered panel-warning " style="animation-fill-mode: backwards; animation-duration: 250ms; animation-delay: 0ms;">
                            <div class="panel-heading" id="divHeading">
                                <div class="row">
                                    <div class="row col-sm-12 ">
                                        <div class="col-sm-4">
                                            <h3 class="panel-title"><span id="Span1" style="font-size: 20px; cursor: pointer; display: inline" onclick="openNav()">&#9776; &nbsp;</span></h3>
                                        </div>
                                        <div class="col-sm-8">
                                            <h3 class="panel-title" style="font-size: medium;">Harshal Deshmukh - TN3</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-actions" style="font-size: medium;">
                                    <a class="panel-action icon md-fullscreen" onclick="expandMe()" data-toggle="panel-fullscreen" aria-hidden="true"></a>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body" style="padding-top: 0px;">
                            <div id="divAdvanceSummary">
                                <div class="row form-group form-material" style="margin-left: 0px;">
                                    <div class="col-md-12">
                                        <textarea class="maxlength-textarea form-control" id="txtPurpose" data-plugin="maxlength" data-placement="bottom-right-inside" rows="2" placeholder="purpose of Advance">I need a advance for A646 project. want to go on site for installation purpose. please approve it ASAP.</textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="row" style="margin-top:-20px;">
                                        <div class="col-xl-8">
                                            <div class="example table-responsive">
                                                <table class="table table-bordered table-hover table-striped dataTable no-footer">
                                                    <thead>
                                                        <tr style="font-weight: bold;">
                                                            <th style="width: 7%;">Sr No</th>
                                                            <th style="width: 50%;">Reason</th>
                                                            <th style="width: 13%;">No of People</th>
                                                            <th style="width: 11%;">No of Days</th>
                                                            <th style="width: 13%; text-align: right;">Amount(in &#8377)</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="gradeA odd">
                                                            <td style="text-align: center; vertical-align: middle;">1</td>
                                                            <td style="vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;" name="txtTNNo" value="Travelling" type="text" /></td>
                                                         <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                             <td style="text-align: right; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:right;" name="txtAutoAmount" value="&#8377 1000" type="text" /></td>                                                         
                                                        </tr>
                                                        <tr class="gradeA even">
                                                            <td style="text-align: center; vertical-align: middle;">2</td>
                                                            <td style="vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;" name="txtDA" value="Daily Allowance" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                              <td style="text-align: right; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:right;" name="txtAutoAmount" value="&#8377 5000" type="text" /></td>
                                                        </tr>
                                                        <tr class="gradeA odd">
                                                            <td style="text-align: center; vertical-align: middle;">3</td>
                                                            <td style="vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;" name="txtAccomodation" value="Accomodation" type="text" /></td>
                                                           <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                              <td style="text-align: right; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:right;" name="txtAutoAmount" value="&#8377 4000" type="text" /></td>
                                                        </tr>
                                                        <tr class="gradeA even">
                                                            <td style="text-align: center; vertical-align: middle;">4</td>
                                                            <td style="vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;" name="txtAutoFair" value="Auto Fair" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                            <td style="text-align: center; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:center;" name="txtAutoAmount" value="3" type="text" /></td>
                                                            <td style="text-align: right; vertical-align: middle;"><input class="form-control input-sm" style="border-color:white;text-align:right;" name="txtAutoAmount" value="&#8377 500" type="text" /></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-md-12" style="padding-bottom: 10px;">
                                                <div class="row">
                                                    <div class="col-xl-3">
                                                    </div>
                                                    <div class="col-xl-3">
                                                        <button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width: 90%;">
                                                            <span><i class="icon md-thumb-up" aria-hidden="true"></i>Approve</span>
                                                        </button>
                                                    </div>
                                                    <div class="col-xl-3">
                                                        <button type="button" class="btn btn-animate btn-md btn-animate-vertical btn-danger waves-effect waves-classic" style="width: 90%;" />
                                                        <span><i class="icon md-thumb-down" aria-hidden="true"></i>Reject</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4" style="padding-top: 20px;">
                                            <div class="col-md-12">
                                                <div class="panel panel-bordered panel-warning" style="border: solid .08em #e4eaec" data-plugin="appear" data-animate="slide-top">
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Example Panel Fullscreen -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
