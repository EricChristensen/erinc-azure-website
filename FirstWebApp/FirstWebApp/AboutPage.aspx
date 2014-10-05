<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="FirstWebApp.AboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About erinc</title>
    <link rel="stylesheet" type="text/css" href="GeneralStyle.css" />
    <h1 style="background-color:indigo;">About Eric</h1>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="TopMenu2" runat ="server" BorderColor="Black" BorderStyle="Solid" DynamicHoverStyle-BackColor="LightGreen" ForeColor="Black" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="LightGreen" BorderColor="Black" BorderStyle="Solid"></DynamicHoverStyle>
                <Items>
                    <asp:MenuItem Text="   Home   " NavigateUrl="~/"></asp:MenuItem>
                    <asp:MenuItem Text="   Holdem Simulator   " NavigateUrl="~/PokerSimulator.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   Games   " NavigateUrl="~/Games.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   Code   " NavigateUrl="~/Code.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   About   " NavigateUrl="~/AboutPage.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#99FF99" />
        </asp:Menu>
        <p>
            This website and application was made by Eric Christensen. To contact Eric visit his LinkedIn page or send an email to christensen.t.eric@gmail.com
        </p>
        <asp:Menu ID="Menu1" runat ="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Eric's LinkedIn Page"  NavigateUrl="https://www.linkedin.com/pub/eric-christensen/80/a/360/"></asp:MenuItem>
                </Items>
        </asp:Menu>
    </div>
    </form>
</body>
</html>
