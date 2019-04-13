<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddYogaWorkshop.aspx.cs" Inherits="TheWhiteLotus.AddYogaWorkshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 236px;
        }
        .auto-style6 {
            width: 458px;
        }
        .auto-style7 {
            width: 236px;
            height: 29px;
        }
        .auto-style8 {
            width: 303px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            width: 233px;
            height: 25px;
        }
        .auto-style12 {
            width: 233px;
            height: 29px;
        }
        .auto-style13 {
            width: 303px;
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        <span class="auto-style10">Add Yoga Workshop</span></p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Workshop Name:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="WorkshopBox" runat="server" Height="17px" Width="260px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="WorkshopBox" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Teacher Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="WorkshopList" runat="server" Height="24px" Width="158px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label2" runat="server" style="font-size: medium" Text="Workshop Date:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Calendar ID="Calendar1" runat="server" style="font-size: medium"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Workshop Start Time:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="WorkStartBox" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="WorkStartBox" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label6" runat="server" style="font-size: medium" Text="Workshop End Time:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="WorkEndBox" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="WorkEndBox" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Workshop Duration:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="WorkDurBox" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="WorkDurBox" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="WorkshopButton" runat="server" OnClick="WorkshopButton_Click" Text="Add Yoga Workshop" Width="201px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style13">
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="MenuButton" runat="server" OnClick="MenuButton_Click" Text="Menu" Width="68px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
