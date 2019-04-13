<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemoveClass.aspx.cs" Inherits="TheWhiteLotus.RemoveClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 340px;
        }
        .auto-style8 {
            height: 25px;
            width: 117px;
        }
        .auto-style9 {
            width: 214px;
        }
        .auto-style10 {
            font-weight: normal;
        }
        .auto-style11 {
            height: 38px;
            width: 117px;
        }
        .auto-style12 {
            width: 214px;
            height: 38px;
        }
        .auto-style13 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p class="auto-style10">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Delete Yoga Class<br />
    <table style="width:99%; height: 142px;">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Select Class:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="YogaClassList" runat="server" Height="74px" Width="198px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove Class" Width="194px" />
            </td>
            <td>
                <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" Width="85px" />
            </td>
            <td class="auto-style13"></td>
        </tr>
    </table>
</asp:Content>
