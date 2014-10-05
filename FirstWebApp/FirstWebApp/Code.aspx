<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Code.aspx.cs" Inherits="FirstWebApp.Code" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Code Page</title>
    <link rel="stylesheet" type="text/css" href="GeneralStyle.css" />
    <h1 style="background-color:darkblue;">Code</h1>
</head>
<body>
    <form id="form1" runat="server">
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
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div style="align-content:center; margin-left:100px; width:200px;">
                <ul id="pokerList" style="list-style:none;">
                    <li class="ali"><asp:Button ID="Card" runat="server" Text="Card.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                    <li class="ali"><asp:Button ID="Deck" runat="server" Text="Deck.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                    <li class="ali"><asp:Button ID="Hand" runat="server" Text="Hand.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                    <li class="ali"><asp:Button ID="PlayersHand" runat="server" Text="PlayersHand.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                    <li class="ali"><asp:Button ID="PreFlop" runat="server" Text="PreFlop.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                    <li class="ali"><asp:Button ID="PokerSimulator" runat="server" Text="PokerSimulator.cs" Width="120px" Height="30px" OnClick="Code_Click"/></li>
                </ul>
            </div>
            <div style="float:right; margin-right:200px; position:absolute; top:160px; left:400px;">
                <iframe id="iSource" width="800px" height="500px" runat="server" src="~/Content/Card.txt"></iframe>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div style="position:absolute; top:800px;">
        <p style="align-content:center;">Copyright Eric Christensen 2014</p>
    </div>
    </form>
</body>
</html>
