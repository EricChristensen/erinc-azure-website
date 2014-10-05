<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlackJack.aspx.cs" Inherits="FirstWebApp.BlackJack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <h1 style="background-color:darkred;font-size:60px; color:white; text-align:center; font-family:Arial">Black Jack Simulator</h1>
    <style type="text/css">
        .Card {
            height:83.3px;
            width:60px;
            border-style:solid;
            border-color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="BasicStratedgey" runat="server" Text="Basic Strategey" />
    
    </div>
    <div>
        <asp:Label runat="server" Text="Dealer"></asp:Label>
        <asp:Image ID="DCard1" runat="server" CssClass="Card" ImageAlign="Middle" ImageUrl="~/Content/R.png"/>
        <asp:Image ID="DCard2" runat="server" CssClass="Card" ImageAlign="Middle" Visible="false"/>
        <asp:Image ID="DCard3" runat="server" CssClass="Card" ImageAlign="Middle" Visible="False" />
        <asp:Image ID="DCard4" runat="server" CssClass="Card" ImageAlign="Middle" Visible="False" />
        <asp:Image ID="DCard5" runat="server" CssClass="Card" ImageAlign="Middle" Visible="False" />
        <asp:Image ID="DCard6" runat="server" CssClass="Card" ImageAlign="Middle" Visible="False" />
    </div>
    <div>
        <asp:Label runat="server" Text="Player"></asp:Label>
        <asp:Image ID="PCard1" runat="server" CssClass="Card" ImageAlign="Middle" ImageUrl="~/Content/R.png"/>
        <asp:Image ID="PCard2" runat="server" CssClass="Card" ImageAlign="Middle" ImageUrl="~/Content/R.png"/>
        <asp:Image ID="PCard3" runat="server" CssClass="Card" ImageAlign="Middle" Visible="false"/>
        <asp:Image ID="PCard4" runat="server" CssClass="Card" ImageAlign="Middle" Visible="false"/>
        <asp:Image ID="PCard5" runat="server" CssClass="Card" ImageAlign="Middle" Visible="false"/>
        <asp:Image ID="PCard6" runat="server" CssClass="Card" ImageAlign="Middle" Visible="false"/>
        <asp:Label ID="GameLabel" runat="server" Text="Anything"></asp:Label>
    </div>
    <asp:ScriptManager ID="SM" runat="server" />
    <asp:UpdatePanel runat="server" ID="UP">
        <ContentTemplate>
            <div>
                <asp:Button ID="Hit" runat="server" Text="Hit" OnClick="Hit_Click" />
                <asp:Button ID="Stand" runat="server" Text="Stand" OnClick="Stand_Click" />
                <asp:Button ID="Deal" runat="server" Text="Deal" OnClick="Deal_Click" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
