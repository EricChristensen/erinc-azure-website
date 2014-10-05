<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="FirstWebApp.Games" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Games</title>
    <link rel="stylesheet" type="text/css" href="GeneralStyle.css" />
    <h1 style="background-color:goldenrod;">Games</h1>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="TopMenu2" runat="server" CssClass="menu" ForeColor="Black" Orientation="Horizontal">
            <DynamicHoverStyle CssClass="hoverStyle"></DynamicHoverStyle>
                <Items>
                    <asp:MenuItem Text="   Home   " NavigateUrl="~/"></asp:MenuItem>
                    <asp:MenuItem Text="   Holdem Simulator   " NavigateUrl="~/PokerSimulator.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   Games   " NavigateUrl="~/Games.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   Code   " NavigateUrl="~/Code.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="   About   " NavigateUrl="~/AboutPage.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#99FF99" />
        </asp:Menu>
    <div style="margin-left:400px;">
        <div style="vertical-align:middle; align-content:center;">
            <asp:Button runat="server" ID="BeeGame" Text="Download Bumble Rumble" OnClick="Game1_Click" />
        </div>
        <asp:Image runat="server" ImageUrl="~/Content/BeeGameDemo.png" Width="300px" Height="200px" />
    </div>
    <div style="margin-left:400px; margin-top:60px;">
        <div style="vertical-align:middle; align-content:center;">
            <asp:Button ID="SquareJumper" runat="server" Text="Download Square Jumper" OnClick="SquareJumper_Click" />
        </div>
        <asp:Image runat="server" ImageUrl="~/Content/SJDemo.png" Width="300px" Height="200px" />
    </div>
    <div>
        <p style="align-content:center;">Copyright Eric Christensen 2014</p>
    </div>
    </form>
</body>
</html>
