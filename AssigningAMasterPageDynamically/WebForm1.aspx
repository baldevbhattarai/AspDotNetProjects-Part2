<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AssigningAMasterPageDynamically.WebForm1" %>
<%@ MasterType TypeName="AssigningAMasterPageDynamically.BaseMaterPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
