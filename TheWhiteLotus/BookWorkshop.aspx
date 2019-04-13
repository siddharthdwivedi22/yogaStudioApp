<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookWorkshop.aspx.cs" Inherits="TheWhiteLotus.BookWorkshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 56px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style9 {
            font-size: x-large;
            font-weight: normal;
            font-style: italic;
        }
        .auto-style10 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style9">
        <strong><span class="auto-style10">Book Workshop</span></strong></p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Table ID="Table1" runat="server" ForeColor="Black" GridLines="Both" Height="48px" HorizontalAlign="Center" Width="747px">
             <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell ID="TableCell1" runat="server" BackColor="#FF9933" ForeColor="Black">Workshop Name</asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server" BackColor="#FF9933" ForeColor="Black">Teacher Name</asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server" BackColor="#FF9933" ForeColor="Black">Workshop Date</asp:TableCell>
            <asp:TableCell ID="TableCell4" runat="server" BackColor="#FF9933" ForeColor="Black">Workshop Duration</asp:TableCell>
            <asp:TableCell ID="TableCell5" runat="server" BackColor="#FF9933" ForeColor="Black">Available</asp:TableCell>

                 </asp:TableRow>
        </asp:Table>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="WorkshopList" runat="server" Height="35px" Width="166px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Book Workshop" Width="162px" OnClick="Button1_Click" />
                    <br />
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </p>
</asp:Content>
