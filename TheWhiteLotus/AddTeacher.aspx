<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="TheWhiteLotus.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 183px;
        }
        .auto-style6 {
            width: 281px;
        }
        .auto-style8 {
            width: 183px;
            height: 85px;
        }
        .auto-style9 {
            width: 147px;
            height: 85px;
        }
        .auto-style10 {
            height: 85px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large; font-weight: 700; font-style: italic;">
        Add Yoga Teacher<br />
    </p>
    <p style="height: 53px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table style="width: 100%;">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Teacher Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                    <br />
                    <asp:Label ID="LabelOutput" runat="server" style="font-size: small"></asp:Label>
                &nbsp;
                </td>
                <td class="auto-style10">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field cannot be blank" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Teacher" Width="220px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
