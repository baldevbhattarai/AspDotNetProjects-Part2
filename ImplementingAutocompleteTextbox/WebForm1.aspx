<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ImplementingAutocompleteTextbox.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Implementing Autocomplete</title>
    <script src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui.min.js"></script>
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $('#<%= txtStudentName.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "StudentServices.asmx/GetStudentNames",
                        data: "{ 'searchTerm': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div style="font-family:Arial">
        <asp:TextBox ID="txtStudentName" runat="server">
        </asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button"
            onclick="Button1_Click" />
        <br />
        <asp:GridView ID="gvStudents" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>