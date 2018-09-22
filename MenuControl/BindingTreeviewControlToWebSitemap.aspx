<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BindingTreeviewControlToWebSitemap.aspx.cs" Inherits="MenuControl.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1"  DataSourceID="SiteMapDataSource1" runat="server">
                <HoverNodeStyle  BackColor="Yellow"/>
                <LeafNodeStyle BackColor ="Green" />
                <RootNodeStyle BackColor ="WhiteSmoke" />
            </asp:TreeView>

            
            <asp:SiteMapDataSource ID="SiteMapDataSource1"  ShowStartingNode="false" runat="server" />

        </div>
    </form>
</body>
</html>
