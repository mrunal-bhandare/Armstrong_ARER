<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="frmFileUpload.aspx.cs" Inherits="Armstrong_ARER_V2.Config.frmFileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../assets/js/jquery.min.js"></script>
<script>
  
    //$(document).ready(function () {
    //    $("#btnUpload").click(function () {

    //        var data = new FormData();
    //        var files = $("#fileUpload").get(0).files;

    //        // Add the uploaded image content to the form data collection
    //        if (files.length > 0) {
    //            data.append("UploadedImage", files[0]);
    //        }

    //        // Make Ajax request with the contentType = false, and procesDate = false
    //        var ajaxRequest = $.ajax({
    //            type: "POST",
    //            url: "/api/fileupload/uploadfile",
    //            contentType: false,
    //            processData: false,
    //            data: data
    //        });

    //        ajaxRequest.done(function (xhr, textStatus) {
    //            // Do other operation
    //            alert(textStatus);

    //        });

    //    });

    //  });

    $(document).ready(function () {
        $("#btnUpload").click(function () {

            var data = new FormData();
            var files = $("#fileUpload").get(0).files;
            // Add the uploaded image content to the form data collection
            if (files.length > 0) {
                data.append("UploadedImage", files[0]);
                //var hhh = document.getElementById('fileUpload').files[0];
                //alert(document.getElementById('fileUpload').files[0]);
                //alert(document.getElementById("fileUpload").value);
              
                //var fu = document.getElementById('fileUpload');
                //alert(fu.value);

                alert($("#fileUpload").val());
               

    
            }
            // Make Ajax request with the contentType = false, and procesDate = false
            $.ajax({
                type: "POST",
                url: "/api/ImageUpload/AWSUploadFile",
                contentType: false,
                processData: false,
                data: data,
                success: function (response)
                {
                    //if(response.indexOf() )
                    if(response.indexOf("Success >>")==0)
                    {
                        alert(response.replace("Success >>", ""));
                        var filePath = response.replace("Success >>", "");
                        var msg = "File uploaded successfully. Click <a target='_blank' href='"+ filePath  +"'>here</a> to view file."
                        $("#spanUploadPath").html(msg);//= response.replace("Success >>", "");
                    }
                },
                error: function(response)
                {
                    alert("Error >>" + response.responseText);
                },
                failure: function(response)
                {
                    alert("Failure Error >> " + response.responseText);
                }
            });

           

        });

    });

    

  </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
    <div  >
      <input id="fileUpload" name="fileUpload"  type="file" />
        <input type="button" value="Upload" id="btnUpload"  />
        <input type="text" id="fulluploadpath" />
       <span id="spanUploadPath">File</span>
        <input id="File1" type="file" />
    
    </div>
        <div >

                <asp:FileUpload runat="server" ID="file11" />
                <asp:Button runat="server" ID="button11"  OnClick="btn1_Click" Text="upload"/>
        </div>
    <div class="page animsition" style="animation-duration: 800ms; opacity: 1;">
        <div class="page-header">
            <span class="avatar avatar-online" style="float: left;">
                <img src="../assets/images/Setting.png" alt="..." style="height: 35px; width: 35px" />
            </span>
            <h1 class="page-title">Test File Upload</h1>
        </div>
        <div class="page-content">
        </div>
    </div>
        </div>
</asp:Content>
