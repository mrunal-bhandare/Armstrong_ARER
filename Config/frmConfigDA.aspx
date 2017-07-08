<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmConfigDA.aspx.cs" Inherits="Armstrong_ARER_II.Config.frmConfigDA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../AngularJS/JS/angular.min.js"></script>
    <script src="../AngularJS/Script/DAConfig.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;" ng-app="myApp" ng-controller="myController">
        <div class="page-header">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Setting.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">&nbsp;Configuration of DA Limits</h1>
        </div>
        <div class="page-content container-fluid">
            <div class="row">
                <%--  City Class A --%>
                <div class="col-md-6">
                    <div class="panel panel-bordered panel-primary animation-scale-up" data-plugin="appear" data-animate="slide-top">
                        <div class="panel-heading">
                            <h3 class="panel-title">City Class : A
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action icon md-minus" data-toggle="panel-collapse" aria-expanded="true" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body container-fluid">
                            <div class="form-group form-material">
                                <div class="row">
                                    <div class="col-md-8">
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="text-align: center;">
                                                    <label class="control-label"><b>USER LEVEL</b></label></td>
                                                <td style="text-align: center;">
                                                    <label class="control-label"><b>DA LIMIT (in &#8377)</b></label></td>
                                            </tr>
                                            <tbody>
                                                <tr ng-repeat="Level in LevelList|filter:RestrictL1;">
                                                    <td style="text-align: center;">
                                                        <label class="control-label" style="display: none;">{{Level.Id}}</label>
                                                        <label class="control-label">{{Level.UserLevel}}</label></td>
                                                    <td>
                                                        <input type="text" ng-model="valuesA[$index]" value="650" class="form-control" placeholder="&#8377" />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-4">
                                        <table>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <label class="control-label"><b>CURRENT LIMIT (in &#8377)</b></label></td>
                                            </tr>
                                            <tr ng-repeat="Amount in AmountList">
                                                <td style="text-align: right;">
                                                      <label class="control-label" style="margin-top:10px;">&#8377 {{Amount.Amount}}</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--  City Class B --%>
                <div class="col-md-6">
                    <div class="panel panel-bordered panel-primary animation-scale-up" data-plugin="appear" data-animate="slide-top">
                        <div class="panel-heading">
                            <h3 class="panel-title">City Class : B
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action icon md-minus" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body container-fluid">
                            <div class="form-group form-material">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>USER LEVEL</b></label></td>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>DA LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr ng-repeat="Level in LevelList|filter:RestrictL1">
                                        <td style="text-align: center;">
                                            <label class="control-label" style="display: none;">{{Level.Id}}</label>
                                            <label class="control-label">{{Level.UserLevel}}</label></td>
                                        <td>
                                            <input type="text" ng-model="valuesB[$index]" class="form-control" placeholder="&#8377" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <%--  City Class C --%>
                <div class="col-md-6">
                    <div class="panel panel-bordered panel-primary animation-scale-up" data-plugin="appear" data-animate="slide-bottom">
                        <div class="panel-heading">
                            <h3 class="panel-title">City Class : C
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action icon md-minus" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body container-fluid">
                            <div class="form-group form-material">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>USER LEVEL</b></label></td>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>DA LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr ng-repeat="Level in LevelList|filter:RestrictL1">
                                        <td style="text-align: center;">
                                            <label class="control-label" style="display: none;">{{Level.Id}}</label>
                                            <label class="control-label">{{Level.UserLevel}}</label></td>
                                        <td>
                                            <input type="text" ng-model="valuesC[$index]" class="form-control" placeholder="&#8377" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <%--  City Class D --%>
                <div class="col-md-6">
                    <div class="panel panel-bordered panel-primary animation-scale-up" data-plugin="appear" data-animate="slide-bottom">
                        <div class="panel-heading">
                            <h3 class="panel-title">City Class : D
                            </h3>
                            <div class="panel-actions">
                                <a class="panel-action icon md-minus" data-toggle="panel-collapse" aria-hidden="true"></a>
                            </div>
                        </div>
                        <div class="panel-body container-fluid">
                            <div class="form-group form-material">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>USER LEVEL</b></label></td>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>DA LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr ng-repeat="Level in LevelList|filter:RestrictL1">
                                        <td style="text-align: center;">
                                            <label class="control-label" style="display: none;">{{Level.Id}}</label>
                                            <label class="control-label">{{Level.UserLevel}}</label></td>
                                        <td>
                                            <input type="text" ng-model="valuesD[$index]" class="form-control" placeholder="&#8377" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="padding-bottom: 10px;">
                    <div class="row">
                        <div class="col-xl-4"></div>
                        <div class="col-xl-2">
                            <button type="button" ng-click="saveAllValues()" class="btn btn-animate btn-animate-vertical btn-primary waves-effect waves-classic" style="width: 200px;" />
                            <span><i class="icon md-floppy" aria-hidden="true"></i>Save</span>
                        </div>
                        <div class="col-xl-2">
                            <button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width: 200px; background-color: #526069; border-color: #526069;" />
                            <span><i class="icon md-close" aria-hidden="true"></i>Cancel</span>
                        </div>
                        <div class="col-xl-4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
