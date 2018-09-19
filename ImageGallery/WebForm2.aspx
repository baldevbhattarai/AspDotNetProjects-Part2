<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ImageGallery.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" Text="Back to Gallery" runat="server" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Image ID="Image1" Width="800px" Height="550px" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" Text="Back to Gallery" runat="server" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
