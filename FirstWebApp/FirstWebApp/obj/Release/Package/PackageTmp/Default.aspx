<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FirstWebApp._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>erinc Home</title>
    <link rel="stylesheet" type="text/css" href="GeneralStyle.css" />
    <h1>Home Page of erinc</h1>
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
        <div style="width: 900px; margin-left:250px; border-left:solid; border-right:solid;">
            <h2>Home</h2>
            <p>Hi I'm Eric Christensen. On this website you'll find a variety of projects that
                I'm working on or have finished.
            </p>
            <h2>Poker Simulator</h2>
            <p>
                The Texas Hold'em Simulator was my first personal web application project.
            </p>
            <h2>Games</h2>
            <p>In this section you'll find a few games that I've made.</p>
            <h2>Code</h2>
            <p>
                In the code section I've included the source code for the projects that I post here.
            </p>
            <h2>About</h2>
            <p>
                The About section has some contact information if you wish to reach me.
            </p>
        </div>
        <p style="align-content:center;">Copyright Eric Christensen 2014</p>
    </form>
</body>
</html>
