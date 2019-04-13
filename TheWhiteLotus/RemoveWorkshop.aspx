<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemoveWorkshop.aspx.cs" Inherits="TheWhiteLotus.RemoveWorkshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 184px;
        }
        .auto-style6 {
            width: 261px;
        }
        .auto-style7 {
            width: 432px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            width: 184px;
            height: 13px;
        }
        .auto-style10 {
            width: 147px;
            height: 13px;
        }
        .auto-style11 {
            width: 432px;
            font-size: x-large;
            font-weight: bold;
            height: 13px;
        }
        .auto-style12 {
            width: 184px;
            height: 43px;
        }
        .auto-style13 {
            width: 147px;
            height: 43px;
        }
        .auto-style14 {
            width: 432px;
            font-size: x-large;
            font-weight: bold;
            height: 43px;
        }
        .auto-style15 {
            width: 184px;
            height: 52px;
        }
        .auto-style16 {
            width: 147px;
            height: 52px;
        }
        .auto-style17 {
            width: 432px;
            font-size: x-large;
            font-weight: bold;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        &nbsp;<span class="auto-style8">Delete Yoga Workshop</span></p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Select Workshop"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:DropDownList ID="YogaWorkList" runat="server" Height="26px" Width="191px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove Workshop" Width="169px" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" Width="102px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
