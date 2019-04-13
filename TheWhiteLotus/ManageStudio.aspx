<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageStudio.aspx.cs" Inherits="TheWhiteLotus.ManageSessions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
        font-weight: 700;
        font-style: italic;
    }
    .auto-style7 {
        height: 43px;
        width: 185px;
    }
    .auto-style9 {
        height: 43px;
    }
    .auto-style10 {
        width: 185px;
        height: 42px;
    }
    .auto-style11 {
        height: 42px;
    }
    .auto-style12 {
        height: 45px;
        width: 185px;
    }
    .auto-style13 {
        height: 45px;
    }
        .auto-style14 {
            font-size: large;
            font-weight: 700;
            font-style: italic;
            height: 25px;
        }
        .auto-style15 {
            height: 43px;
            width: 436px;
        }
        .auto-style16 {
            height: 45px;
            width: 436px;
        }
        .auto-style17 {
            height: 42px;
            width: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p class="auto-style14">
    &nbsp;&nbsp; </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Admin Login</p>
    <p>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Admin Name:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="AdminNameTxt" runat="server" Height="17px" Width="183px"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AdminNameTxt" ErrorMessage="Admin name cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" style="font-size: medium; font-weight: 700;" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="AdminPassTxt" runat="server" Height="17px" Width="183px"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AdminPassTxt" ErrorMessage="Password cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style17">
                <asp:Button ID="Button2" runat="server" OnClick="Button1_Click1" Text="Login" Width="191px" />
            &nbsp;
                <br />
                <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
            </td>
            <td class="auto-style11"></td>
        </tr>
    </table>
    <br />
</p>
</asp:Content>
