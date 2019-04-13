<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheWhiteLotus._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <p style="font-size: large; font-weight: 700">
        Welcome To White Lotus (The Yoga Studio Transforming People)</p>
<p style="font-size: medium">
        The White Lotus Yoga Studio provides the best teachers in the city to teach the art of Yoga and help you to remain healthy.
        <br />
        Our Classes are very flexible and you can book a yoga class and experience the spiritual transformation.
        <br />
        If you think yoga is difficult and have no experience with it &quot;DON&#39;T WORRY&quot;. We have workshops for the beginners where<br />
&nbsp;you can learn the basics of Yoga by our highly qualified teachers and the atmosphere in the studio will bring you back here again.</p>
<p style="font-size: medium; font-weight: 700; color: #CC3300">
        &nbsp;New Clients -&nbsp; Please Register to Book a Yoga Class or a Yoga Workshop<br />
        Registered Clients - Please Login to Book a Yoga Class or a Yoga Workshop<br />
</p>
    </asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
    </asp:Timer>
            <br />
            <br />
            <br />
    <asp:Image ID="Image1" Height="290px" Width="632px" runat="server" style="margin-left: 3px" />
        </ContentTemplate>
    </asp:UpdatePanel>
    
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .yogaaa {
        background-image: url('Images/om.jpg');
    }
    .yoga {
        background-image: url('Images/om.jpg');
    }
        .yogastyle {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            color: #000000;
            background-color: #FF6600;
        }
        </style>
</asp:Content>

