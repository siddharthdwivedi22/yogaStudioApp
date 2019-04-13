<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageSessions.aspx.cs" Inherits="TheWhiteLotus.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

    .auto-style8 {
        width: 478px;
        height: 18px;
    }
    .auto-style6 {
        width: 318px;
        height: 167px;
    }
    .auto-style7 {
        width: 478px;
    }
    .auto-style9 {
        font-size: large;
    }
        .auto-style10 {
            width: 375px;
            height: 249px;
        }
        .auto-style11 {
            width: 478px;
            font-size: x-large;
            font-weight: bold;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p class="auto-style9">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Manage The Yoga Sessions</p>
    <table style="width: 100%; height: 159px;">
    <tr>
        <td class="auto-style8">
            <asp:Button ID="Button1" runat="server" Text="Add Yoga Teacher" Width="200px" OnClick="Button1_Click" />
        </td>
        <td rowspan="8">
            <img alt="" class="auto-style10" src="Images/Yoga.jpg" /></td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Button ID="Button2" runat="server" Text="Add Yoga Class" Width="200px" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button3" runat="server" Text="Add Yoga Workshop" Width="200px" OnClick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button4" runat="server" Text="View Classes" Width="200px" OnClick="Button4_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button5" runat="server" Text="View Workshops" Width="200px" OnClick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button6" runat="server" Text="Remove Class" Width="200px" OnClick="Button6_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button7" runat="server" Text="Remove Workshop" Width="200px" OnClick="Button7_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button8" runat="server" Text="Cancel Class" Width="200px" OnClick="Button8_Click" />
        </td>
    </tr>
</table>
</asp:Content>
