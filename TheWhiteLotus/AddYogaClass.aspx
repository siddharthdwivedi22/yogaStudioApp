<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddYogaClass.aspx.cs" Inherits="TheWhiteLotus.AddYogaClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 189px;
        }
        .auto-style6 {
            width: 189px;
            height: 70px;
        }
        .auto-style7 {
            height: 70px;
        }
        .auto-style8 {
            width: 189px;
            height: 47px;
        }
        .auto-style9 {
            height: 47px;
        }
        .auto-style10 {
            height: 70px;
            width: 258px;
        }
        .auto-style11 {
            height: 47px;
            width: 258px;
        }
        .auto-style12 {
            width: 258px;
        }
        .auto-style13 {
            width: 190px;
            height: 70px;
        }
        .auto-style14 {
            width: 190px;
            height: 47px;
        }
        .auto-style15 {
            width: 190px;
        }
        .auto-style16 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large; font-weight: 700; font-style: italic">
        <span class="auto-style16">Add Yoga Class</span><br />
    </p>
    <p>
        <table style="width: 100%; height: 139px;">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Class Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="ClassNameBox" runat="server" Width="243px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ClassNameBox" ErrorMessage="Field Cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Level:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="LevelList" runat="server" Height="40px" Width="164px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Select Teacher:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="TeacherList" runat="server" Height="18px" Width="154px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Select Day:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DaysList" runat="server" Height="46px" Width="173px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" style="font-size: medium" Text="Select TimeSlot:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="TimeSlotList" runat="server" Height="32px" Width="154px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label7" runat="server" style="font-size: medium" Text="Duration:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DurationList" runat="server" Height="36px" Width="154px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" style="font-size: medium" Text="Availaibility:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="AvailList" runat="server" Height="32px" Width="154px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Class" Width="242px" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" Width="104px" />
                </td>
                <td>
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
