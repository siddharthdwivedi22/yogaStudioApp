<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TheWhiteLotus.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p style="font-size: large">
        <span class="auto-style11">Register</span><br />
        <table style="width: 100%; height: 158px;">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Height="30px" style="font-size: medium" Text="UserName:" Width="133px"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="UserNTextBox" runat="server" Width="231px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNTextBox" ErrorMessage="User name cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Height="30px" style="font-size: medium" Text="Password:" Width="133px"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="PassTextBox" runat="server" Width="231px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Password cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label2" runat="server" Height="30px" style="font-size: medium; font-weight: 700;" Text="Dae Of Birth:" Width="133px"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="DobTextBox" runat="server" Width="231px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label9" runat="server" style="font-size: small" Text="dd-mm-yyyy"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DobTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Height="30px" style="font-size: medium; font-weight: 700;" Text="Yoga Experience:" Width="133px"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="YogaExpList" runat="server" Height="41px" Width="210px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Height="30px" style="font-size: medium; font-weight: 700;" Text="Health Issues(Specify if any):" Width="229px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="HealTextBox" runat="server" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="HealTextBox" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Height="30px" style="font-size: medium; font-weight: 700;" Text="Telephone No.:" Width="229px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TelTextBox" runat="server" Width="236px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TelTextBox" ErrorMessage="Enter Valid Mobile Number/Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Height="30px" style="font-size: medium; font-weight: 700;" Text="Email id:" Width="229px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="236px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter Valid Email/Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="RegisterB" runat="server" OnClick="RegisterB_Click" Text="Register" Width="239px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="114px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p style="height: 39px">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style6 {
            width: 143px;
        }
        .auto-style7 {
            width: 143px;
            height: 57px;
        }
        .auto-style8 {
            height: 57px;
        }
        .auto-style9 {
            width: 143px;
            height: 55px;
        }
        .auto-style10 {
            height: 55px;
        }
        .auto-style11 {
            font-weight: 700;
            height: 25px;
        }
    </style>
</asp:Content>
