﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AddImageSlideShowUsingSlideShowAndCSharp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
            <br />
            <asp:Image ID="Image1" Hight="200px" Width="200px" runat="server" />
            <br />
           Name: <asp:Label ID="lblImageName" runat="server"></asp:Label> 
            <br />
           Order: <asp:Label ID="lblImageOrder" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Stop SlideShow" OnClick="Button1_Click" />
        </ContentTemplate>

    </asp:UpdatePanel>


</asp:Content>
