<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GalleryPage.aspx.cs" Inherits="ImageGallery.GallaryPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
            <asp:Panel ID="Panel1" runat="server" Width="440px"
                BorderStyle="Dashed" BorderColor="#000066">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
