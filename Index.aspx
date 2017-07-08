<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Armstrong_ARER_V2.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome To Armstrong </h1>
            <h3>Find Links below for ARER...</h3><hr />
            <a href="Config/frmConfigAmountTransferBy.aspx">Configurator of Amount</a><br /><br />
            <a href="Config/frmConfigDA.aspx">Configurator of DA Limit</a><br /><br />
            <a href="Config/frmFileUpload.aspx">File Upload</a><br /><br />
         
            <br />
            Count: <asp:label runat="server" ID="Lbl_reccnt"></asp:label>
        </div>
    </form>
</body>
</html>
