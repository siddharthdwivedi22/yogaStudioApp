<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CancelClass.aspx.cs" Inherits="TheWhiteLotus.CancelClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
            width: 163px;
        }
        .auto-style6 {
            width: 163px;
        }
        .auto-style7 {
            height: 21px;
            width: 212px;
        }
        .auto-style8 {
            width: 119px;
        }
        .auto-style9 {
            height: 21px;
            width: 119px;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style10 {
            height: 25px;
            width: 97px;
        }
        .auto-style11 {
            width: 97px;
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large; font-weight: 700; font-style: italic">
        Cancel Class<br />
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Select Class:" style="font-size: medium"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="YogaClassList" runat="server" Height="48px" Width="153px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label2" runat="server" Text="Select Cancel:" style="font-size: medium"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="AvailList" runat="server" Height="48px" Width="153px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel Class" Width="152px" />
                </td>
                <td>
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" Width="152px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
