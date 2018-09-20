<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PassingDataFromContentPageToMasterPage.WebForm1" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <br />
 
    <b>Type the text in the textbox that you want to display 
    in Master Page TextBox and click Set Text Button</b>

    <br />

    <asp:TextBox ID="TextBox1" runat="server">
    </asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Set Text"
        OnClick="Button1_Click" />
   
    
</asp:Content>
