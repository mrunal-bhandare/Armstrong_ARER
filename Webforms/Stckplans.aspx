<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Stckplans.aspx.cs" Inherits="ASRS.Models.Stckplans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "400px";
            document.getElementById("main").style.marginLeft = "370px";
            document.getElementById("spnSearch").style.display = "none";
            document.getElementById("divPanel").style.marginLeft = "2%";
            //document.getElementById("divPanel").style.marginRight = "0%";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
            document.getElementById("spnSearch").style.display = "inline";
            document.getElementById("divPanel").style.marginLeft = "0%";
            //document.getElementById("divPanel").style.marginRight = "2%";
        }

        
    </script>
    <%--<style>
        .sidenav {
    height: 100%;
    width: 500px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-header page" style="margin-left: -3%;">
            <div class="row" style="margin-right: -4%;" >
                <%--<div class="col-xl-0.3">
                    <span id="spnSearch" style="font-size: 20px; cursor: pointer" onclick="openNav()" data-toggle="tooltip" data-original-title="Search Request">&#9776;</span>
                </div>--%>
               <div class="col-sm-1  text-right" style="  padding-left: 0px;padding-right: 0px;max-width: 4.333333%;">
                    <span class="avatar avatar-online">
                        <img src="../assets/images/Indian.png" alt="..." style="height: 35px; width: 35px" />
                    </span>
                </div>
              <div class="col-sm-7 text-left" style=" padding-right: 0px;">
                    <h1 class="page-title">&nbsp;Stocking Plan </h1>
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
    <div id="mySidenav" class="sidenav" style="margin-top:10%;z-index:0">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="margin-top: -20px;">&times;</a>     
           <div class="row col-sm-12 " style="margin-top: -5%;">
                    <div class="col-sm-4  text-right" style="padding-top: 3%;"><h4 class="example-title ">GRN No.:</h4></div>
                    <div class="col-sm-6 ">
                        <div class="example">
                  <div class="btn-group bootstrap-select ">
                      <div class="dropdown-menu open" style="max-height: 169.8px; overflow: hidden; min-height: 119px;"><ul class="dropdown-menu inner" role="menu" style="max-height: 157.8px; overflow-y: auto; min-height: 107px;"><li class="dropdown-header " data-optgroup="1"><span class="text">Picnic</span></li><li data-original-index="1" data-optgroup="1" class="selected"><a tabindex="0" class="opt  " style="" data-tokens="null"><span class="text">Mustard</span><span class="icon md-check check-mark"></span></a></li><li data-original-index="2" data-optgroup="1"><a tabindex="0" class="opt  " style="" data-tokens="null"><span class="text">Ketchup</span><span class="icon md-check check-mark"></span></a></li><li data-original-index="3" data-optgroup="1"><a tabindex="0" class="opt  " style="" data-tokens="null"><span class="text">Relish</span><span class="icon md-check check-mark"></span></a></li><li class="divider" data-optgroup="2div"></li><li class="dropdown-header " data-optgroup="2"><span class="text">Camping</span></li><li data-original-index="4" data-optgroup="2"><a tabindex="0" class="opt  " style="" data-tokens="null"><span class="text">Tent</span><span class="icon md-check check-mark"></span></a></li><li data-original-index="5" data-optgroup="2" class="disabled"><a tabindex="-1" class="opt  " style="" data-tokens="null" href="#"><span class="text">Flashlight</span><span class="icon md-check check-mark"></span></a></li><li data-original-index="6" data-optgroup="2"><a tabindex="0" class="opt  " style="" data-tokens="null"><span class="text">Toilet Paper</span><span class="icon md-check check-mark"></span></a></li></ul></div><select data-plugin="selectpicker" title="Choose one of the following..." class="" tabindex="-98"><option class="bs-title-option" value="">Select  GRN</option>
                    <optgroup label="25/5/2017">
                      <option>GRN1</option>
                      <option>GRN2</option>
                      <option>GRN3</option>
                    </optgroup>
                    <optgroup label="26/5/1017">
                      <option>GRN4</option>
                      <option disabled="">GRN5</option>
                      <option>GRN6</option>
                    </optgroup>
                  </select></div>
                </div>
                        </div>
                    <div class="col-sm-2" style="padding-top: 3%;">
                     <button type="button"  class="btn btn-icon btn-sm btn-primary waves-effect waves-light"><i class="icon wb-arrow-right" aria-hidden="true"></i></button>


                    </div>
                  
                </div>
                <div class="row col-sm-12" >
                    <table class="table table-condensed small">
                    <thead>
                      <tr>
                        <th>Invoice</th>
                        <th>Username</th>
                        <th>Amount</th>
                        <th>Date</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Order #53451</td>
                        <td>Mary Adams</td>
                        <td>$24.98</td>
                        <td>2015/7/26</td>
                      </tr>
                      <tr>
                        <td>Order #53452</td>
                        <td>Caleb Richards</td>
                        <td>$564.00</td>
                        <td>2015/7/15</td>
                      </tr>
                      <tr>
                        <td>Order #53453</td>
                        <td>June Lane</td>
                        <td>$58.87</td>
                        <td>2015/7/01</td>
                      </tr>
                      <tr>
                        <td>Order #53454</td>
                        <td>Crystal Bates</td>
                        <td>$97.50</td>
                        <td>2015/6/26</td>
                      </tr>
                      <tr>
                        <td>Order #53455</td>
                        <td>Heather Harper</td>
                        <td>$249.99</td>
                        <td>2015/6/09</td>
                      </tr>
                      <tr>
                        <td>Order #53456</td>
                        <td>Willard Wood</td>
                        <td>$24.98</td>
                        <td>2015/6/01</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
    </div>
   
     <div style="margin-top: -3%;margin-left: 2%;">
         <div class="row"  style="margin-left: -6%;margin-right: -3%;margin-top: 1%;">
             <div class="col-sm-12"  >
                
                 
              <!-- Example Panel Fullscreen -->
          <div class="panel" id="divPanel" >
            <div class="panel-heading">
                <div class="row" style="margin-bottom: -1%;">
                     <div class="row col-sm-12 ">
               <div class="col-sm-4">
                                        <h3 class="panel-title"> <span id="spnSearch" style="font-size: 20px; cursor: pointer;display:inline" onclick="openNav()">&#9776; &nbsp;</span></h3>

               </div>
                    <div class="col-sm-2" style="max-width: 11.666667%;"><h4 class="example-title" style="padding-top: 3%;">Stocking Plan.:</h4></div>
                    <div class="col-sm-4" style="margin-top: -1.5%;">
                        <div class="form-group form-material">
                        <div class="example">
                            <select class="form-control" id="select">
                    <option>New Stocking Plan</option>
                    <option>SP1</option>
                    <option>SP2</option>
                    <option>SP3</option>
                   
                  </select>
                  
                </div></div>
                        </div>
                         
                    
                </div>
                 </div>
                
             
                
                 
                    
              <div class="panel-actions">
                <a class="panel-action icon md-fullscreen" data-toggle="panel-fullscreen" aria-hidden="true"></a>
              </div>
            </div>
            <div class="panel-body">
                 
            <div class="example table-responsive small">
                  <table class="table table-condensed">
                    <thead>
                      <tr>
                        <th>Invoice</th>
                        <th>Username</th>
                        <th>Amount</th>
                        <th>Date</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Order #53451</td>
                        <td>Mary Adams</td>
                        <td>$24.98</td>
                        <td>2015/7/26</td>
                      </tr>
                      <tr>
                        <td>Order #53452</td>
                        <td>Caleb Richards</td>
                        <td>$564.00</td>
                        <td>2015/7/15</td>
                      </tr>
                      <tr>
                        <td>Order #53453</td>
                        <td>June Lane</td>
                        <td>$58.87</td>
                        <td>2015/7/01</td>
                      </tr>
                      <tr>
                        <td>Order #53454</td>
                        <td>Crystal Bates</td>
                        <td>$97.50</td>
                        <td>2015/6/26</td>
                      </tr>
                      <tr>
                        <td>Order #53455</td>
                        <td>Heather Harper</td>
                        <td>$249.99</td>
                        <td>2015/6/09</td>
                      </tr>
                      <tr>
                        <td>Order #53456</td>
                        <td>Willard Wood</td>
                        <td>$24.98</td>
                        <td>2015/6/01</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
            </div>
          </div>
          <!-- End Example Panel Fullscreen -->
                 </div>
        </div>         
    </div>
         </div>



       
</asp:Content>
