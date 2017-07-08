<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmConfigAmountTransferBy.aspx.cs" Inherits="Armstrong_ARER_II.Config.frmConfigAmountTransferBy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script>
        
       var initialList = JSON.parse('<%=accountList%>');
        //alert(initialList);

       
</script>
       <script src="../AngularJS/JS/angular.min.js"></script>
    <script src="../AngularJS/Script/AmountTransferBy.js"></script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;" ng-app="myApp" ng-controller="myController">
        <div class="page-header">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Setting.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">&nbsp;Configuration of Amount Transfer</h1>
        </div>
        <div class="page-content">
            <div class="panel">
                <div class="panel-body container-fluid">
                    <div class="form-group form-material">
                        <div class="row">
                            <div class="col-xl-3">
                                <input type="text" ng-model="MinValue" class="form-control" id="txtMinValue" placeholder="Min Value (in &#8377)" />
                            </div>
                            <div class="col-xl-3">
                                <input type="text" ng-model="MaxValue" class="form-control" id="txtMaxValue" placeholder="Max Value (in &#8377)" />
                            </div>
                            <div class="col-xl-3">
                                <select class="form-control empty" id="test" ng-model="TransferBy">
                                    <option value="">-- Transfer By --</option>
                                    <option data-ng-repeat="account in AccountList" value="{{account.UserId}}">{{account.UserName}}</option>                         
                                </select>
                            </div>
                            <div class="col-xl-3">
                                <button type="button" ng-click="Save()" class="btn btn-animate btn-animate-vertical btn-primary waves-effect waves-classic" style="width: 90%;" />
                                 <span><i class="icon md-plus" aria-hidden="true"></i>{{btnAdd}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="example table-responsive">
                        <table class="table table-bordered table-hover table-striped dataTable no-footer">
                            <thead>
                                <tr>
                                    <th style="text-align:center;">Sr No</th>
                                    <th>Transfer By</th>
                                    <th style="text-align:right;">Min Value</th>
                                    <th style="text-align:right;">Max Value</th>
                                    <th style="text-align:center;">Edit</th>
                                    <th style="text-align:center;">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="obj in AccountDetails">
                                    <td style="text-align:center;">{{$index +1}}</td>
                                    <td style="display:none;"><label ng-model="obj.Id">{{obj.Id}}</label></td>
                                    <td>{{obj.UserName}}</td>
                                    <td style="text-align:right;">&#8377 {{obj.MinValue}}</td>
                                    <td style="text-align:right;">&#8377 {{obj.MaxValue}}</td>
                                    <td style="display:none;">{{obj.UserId}}</td>
                                    <td class="actions" style="text-align:center;">
                                        <a href="#" ng-click="bindData(obj.MinValue,obj.MaxValue,obj.UserId,obj.Id);" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Edit"><i class="icon md-edit" aria-hidden="true"></i></a>
                                    </td>
                                     <td class="actions" style="text-align:center;">
                                         <a href="#" ng-click="DeleteRow(obj.Id);" class="btn btn-sm btn-icon btn-pure btn-default on-editing save-row waves-effect waves-classic" data-toggle="tooltip" data-original-title="Delete"><i class="icon md-close" aria-hidden="true"></i></a>
                                    </td>
                                </tr>                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
