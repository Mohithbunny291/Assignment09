<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Assignment.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 831px;
        }
        .auto-style3 {
            height: 194px;
        }
    </style>
</head>
<body style="height: 195px">
    <form id="form1" runat="server" class="auto-style3">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Customer Name</td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CtmValidator" runat="server" ControlToValidate="TxtName" ErrorMessage="*Name must be atleast 6 Characters" ForeColor="Red" OnServerValidate="CtmValidator_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Mobile Number</td>
                    <td>
                        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMobile" ErrorMessage="*Mobile Number Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtMobile" ErrorMessage="*Must be 10 Digits" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*Email Is Not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*Password Mismatch" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtmSubmit" runat="server" OnClick="BtmSubmit_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="LblDetails" runat="server" Text="Details"></asp:Label>
    </form>
</body>
</html>
