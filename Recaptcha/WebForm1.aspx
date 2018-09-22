<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Recaptcha.WebForm1" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha"
    Assembly="Recaptcha" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">
            <h3>User Registration</h3>
            <table style="border: 1px solid black">
                <tr>
                    <td>
                        <b>Name </b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="230px">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email </b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="230px">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Password </b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="230px"
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                       <%-- <recaptcha:RecaptchaControl ID="recaptcha" runat="server"
                            publickey="6LePhHEUAAAAAFLEaiB5XbqaCLwX71-lek3S9kbf"
                            privatekey="6LePhHEUAAAAAN43vkapmZCeeCotAuf-_1bhEFRG" />--%>

                        <div class="g-recaptcha" data-sitekey="6LePhHEUAAAAAFLEaiB5XbqaCLwX71-lek3S9kbf"></div>

                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Text="*" ForeColor="Red"
                            OnServerValidate="RecaptchaValidator_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Register"
                            OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
