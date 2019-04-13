<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TheWhiteLotus.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        <span class="auto-style8">Login</span></p>
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LoginLabel" runat="server" Height="30px" style="font-size: medium" Text="UserName:" Width="133px" CssClass="username"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="UserTxt" runat="server" Height="26px" Width="186px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UserTxt" ErrorMessage="User name cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" style="font-size: medium" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="PassTxt" runat="server" Height="26px" Width="186px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Login" Width="190px" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">New User</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style5 {
            width: 186px;
        }
        .auto-style6 {
            width: 200px;
        }
        .auto-style8 {
            font-size: large;
        }
    </style>
</asp:Content>
