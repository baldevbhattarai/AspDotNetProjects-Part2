<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BindingTreeViewWithDataBase.aspx.cs" Inherits="MenuControl.BindingTreeViewWithDataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:TreeView ID="TreeView1"   runat="server">
              <%--  <HoverNodeStyle  BackColor="#ff9933"/>
                <LeafNodeStyle BackColor ="#ff9999" />
                <RootNodeStyle BackColor ="#6699ff" />--%>
            </asp:TreeView>

        </div>
    </form>
</body>
</html>
