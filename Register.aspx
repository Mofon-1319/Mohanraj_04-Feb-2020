<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BusBookingSystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 212px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style1 {
            width: 212px;
        }
        </style>
</head>
<body>
    <div align="center">
        <h1 style="background-color: deeppink">Buz-e</h1>
        <h3><font color="deeppink">Registration Form </font></h3>
    </div>
    <form id="form1" runat="server">
        <table align="center" style="height: 86px; width: 574px">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">&nbsp;
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="requiredName" ControlToValidate="nameID" ErrorMessage="Name Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone</td>
                <td class="auto-style3">&nbsp;
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="requiredPhone" ControlToValidate="phone" ErrorMessage="Number Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date of Birth</td>
                <td class="auto-style3">&nbsp;
                    <asp:TextBox ID="dob" runat="server" Type="Date"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">UserId</td>
                <td class="auto-style3">&nbsp;
                    <asp:TextBox ID="userId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td>&nbsp;
                    <asp:TextBox ID="password" runat="server" Type="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div align="center">
            <asp:Button ID="submitButton" runat="server" align="center" Height="35px" Text="Submit" Width="114px" OnClick="submitButton_Click" />
        </div>
    </form>
</body>
</html>
