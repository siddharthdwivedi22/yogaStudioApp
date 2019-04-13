<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookSession.aspx.cs" Inherits="TheWhiteLotus.BookSession1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            width: 272px;
        }
        .auto-style10 {
            width: 571px;
            height: 279px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        <span class="auto-style8">Book Yoga Sessions</span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 88%; height: 87px;">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Book Yoga Class" Width="190px" OnClick="Button1_Click" />
                </td>
                <td rowspan="3">
                    <img alt="" class="auto-style10" src="Images/yoga-class.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Text="Book Yoga Workshop" Width="190px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
