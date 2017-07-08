<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmConfigLodging.aspx.cs" Inherits="Armstrong_ARER_II.Config.frmConfigLodging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;">
        <div class="page-header">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Setting.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">&nbsp;Configuration of Lodging Limits</h1>
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
                                <table style="width: 100%">
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>USER LEVEL</b></label></td>
                                        <td style="text-align: center;">
                                            <label class="control-label"><b>LODGING LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L2</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL2A" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L3</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL3A" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L4</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL4A" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L5</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL5A" placeholder="&#8377" /></td>
                                    </tr>
                                </table>
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
                                            <label class="control-label"><b>LODGING LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L2</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL2B" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L3</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL3B" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L4</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL4B" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L5</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL5B" placeholder="&#8377" /></td>
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
                                            <label class="control-label"><b>LODGING LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L2</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL2C" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L3</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL3C" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L4</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL4C" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L5</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL5C" placeholder="&#8377" /></td>
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
                                            <label class="control-label"><b>LODGING LIMIT (in &#8377)</b></label></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L2</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL2D" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L3</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL3D" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L4</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL4D" placeholder="&#8377" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <label class="control-label">L5</label></td>
                                        <td>
                                            <input type="text" class="form-control" id="txtL5D" placeholder="&#8377" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-xl-4"></div>
                        <div class="col-xl-2"><button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width:200px;"  />
                            <span><i class="icon md-card" aria-hidden="true"></i>Save</span>
                        </div>
                        <div class="col-xl-2"> <button type="button" class="btn btn-animate btn-animate-vertical btn-success waves-effect waves-classic" style="width:200px;background-color:#526069;border-color:#526069;"  />
                            <span><i class="icon md-close" aria-hidden="true"></i>Cancel</span>
                        </div>
                        <div class="col-xl-4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>