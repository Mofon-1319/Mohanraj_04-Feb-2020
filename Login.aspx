<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BusBookingSystem</title>
    <style type="text/css">
        .auto-style1 {
            width: 212px;
        }
        .auto-style2 {
            width: 212px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
    <div align="center">
        <h1 style="background-color: deeppink">Buz-e</h1>
        <h3>
            <font color="deeppink">Login Form
            </font>
        </h3>
    </div>


</head>
<body>
    <form id="form1" runat="server">

        <table align="center" style="height: 59px; width: 361px">

            <tr>
                <td class="auto-style2">UserId</td>
                <td class="auto-style3">&nbsp;
                    <asp:TextBox ID="userId" runat="server" Placeholder="Enter UserId" OnTextChanged="userId_TextChanged"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">Password</td>
                <td>&nbsp;
                    <asp:TextBox ID="password" runat="server" Placeholder="Enter Password" OnTextChanged="password_TextChanged"></asp:TextBox>
                </td>
            </tr>

        </table>
        <div align="center">
            <asp:Button ID="loginButton" runat="server" Text="Login" align="center" Height="35px" Width="114px" OnClick="loginButton_Click"/>
            &nbsp;
            <asp:Button ID="RegisterButton" runat="server" Text="Register" align="center" Height="35px" Width="114px" OnClick="RegisterButton_Click"/>
        </div>

    </form>
</body>
</html>
