<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokerSimulator.aspx.cs" Inherits="FirstWebApp.PokerSimulator"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hold'em Simulator</title>
    <link rel="stylesheet" type="html/sandboxed" href="GeneralStyle.css" />
    <h1 style="background-color:forestgreen;">Texas Hold'em Simulator</h1>
    <style type="text/css">
        .standard {
            height: 200px;
            width: 220px;
            border: solid;
            border-color: navy;
        }
        .standard2 {
            height: 200px;
            width: 220px;
            border: solid;
            border-color: navy;
        }
        .Card2 {
            height:70px;
            width:45px;
            border-style:solid;
            border-color:black;
            position:absolute;
        }
        .Card1 {
            height: 35px;
            width: 22.5px;
            border-style:solid;
            
            border-color: black;
            float:none;
            padding-right: 8px;
            padding-bottom: 12px;
        }
        .Card0 {
             height: 23.3px;
            width: 15px;
            
            border-style:solid;
            border-color: black;
            float:none;
            padding-right: 4px;
            padding-bottom: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
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
        <div style="width:300px; height:990px; float:left;">
            
        </div>
        <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <ContentTemplate>    
                <div style="width: 867px; margin-top:30px;">       
                <asp:ImageButton runat="server" ID="TwoClub" ImageUrl="~/Content/2C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="ThreeClub" ImageUrl="~/Content/3C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FourClub" ImageUrl="~/Content/4C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FiveClub" ImageUrl="~/Content/5C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SixClub" ImageUrl="~/Content/6C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SevenClub" ImageUrl="~/Content/7C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="EightClub" ImageUrl="~/Content/8C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="NineClub" ImageUrl="~/Content/9C.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TenClub" ImageUrl="~/Content/TC.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="JackClub" ImageUrl="~/Content/JC.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="QueenClub" ImageUrl="~/Content/QC.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="KingClub" ImageUrl="~/Content/KC.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="AceClub" ImageUrl="~/Content/AC.png" CssClass="Card1" OnClick="CardChoice_Click"/>

                <asp:ImageButton runat="server" ID="Random1" ImageUrl="~/Content/R.png" CssClass="Card0" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TwoDiamonds" ImageUrl="~/Content/2D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="ThreeDiamonds" ImageUrl="~/Content/3D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FourDiamonds" ImageUrl="~/Content/4D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FiveDiamonds" ImageUrl="~/Content/5D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SixDiamonds" ImageUrl="~/Content/6D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SevenDiamonds" ImageUrl="~/Content/7D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="EightDiamonds" ImageUrl="~/Content/8D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="NineDiamonds" ImageUrl="~/Content/9D.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TenDiamonds" ImageUrl="~/Content/TD.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="JackDiamonds" ImageUrl="~/Content/JD.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="QueenDiamonds" ImageUrl="~/Content/QD.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="KingDiamonds" ImageUrl="~/Content/KD.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="AceDiamonds" ImageUrl="~/Content/AD.png" CssClass="Card1" OnClick="CardChoice_Click"/>

                <asp:ImageButton runat="server" ID="Random2" ImageUrl="~/Content/R.png" CssClass="Card0" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TwoHearts" ImageUrl="~/Content/2H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="ThreeHearts" ImageUrl="~/Content/3H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FourHearts" ImageUrl="~/Content/4H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FiveHearts" ImageUrl="~/Content/5H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SixHearts" ImageUrl="~/Content/6H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SevenHearts" ImageUrl="~/Content/7H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="EightHearts" ImageUrl="~/Content/8H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="NineHearts" ImageUrl="~/Content/9H.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TenHearts" ImageUrl="~/Content/TH.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="JackHearts" ImageUrl="~/Content/JH.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="QueenHearts" ImageUrl="~/Content/QH.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="KingHearts" ImageUrl="~/Content/KH.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="AceHearts" ImageUrl="~/Content/AH.png" CssClass="Card1" OnClick="CardChoice_Click"/>

                <asp:ImageButton runat="server" ID="Random3" ImageUrl="~/Content/R.png" CssClass="Card0" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TwoSpades" ImageUrl="~/Content/2S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="ThreeSpades" ImageUrl="~/Content/3S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FourSpades" ImageUrl="~/Content/4S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="FiveSpades" ImageUrl="~/Content/5S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SixSpades" ImageUrl="~/Content/6S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="SevenSpades" ImageUrl="~/Content/7S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="EightSpades" ImageUrl="~/Content/8S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="NineSpades" ImageUrl="~/Content/9S.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="TenSpades" ImageUrl="~/Content/TS.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="JackSpades" ImageUrl="~/Content/JS.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="QueenSpades" ImageUrl="~/Content/QS.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="KingSpades" ImageUrl="~/Content/KS.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="AceSpades" ImageUrl="~/Content/AS.png" CssClass="Card1" OnClick="CardChoice_Click"/>
                <asp:ImageButton runat="server" ID="Random0" ImageUrl="~/Content/R.png" CssClass="Card0" OnClick="CardChoice_Click"/>
                </div>
                <div style="position:absolute; top:460px; left:455px">
                    <asp:ImageButton runat="server" ID="P1C1" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:460px; left:510px">
                    <asp:ImageButton runat="server" ID="P1C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:470px; left:380px">
                    <asp:Image runat="server" ID="RP1C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:470px; left:410px">
                    <asp:Image runat="server" ID="RP1C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 540px; left: 480px;">
                    <asp:Label runat="server" ID="winner1"></asp:Label>
                </div>
                <div style="position:absolute; top:460px; left:650px">
                    <asp:ImageButton runat="server" ID="P2C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:460px; left:705px">
                    <asp:ImageButton runat="server" ID="P2C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:470px; left:615px">
                    <asp:Image runat="server" ID="RP2C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:470px; left:585px">
                    <asp:Image runat="server" ID="RP2C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 540px; left: 660px;">
                    <asp:Label runat="server" ID="winner2"></asp:Label>
                </div>
                <div style="position:absolute; top:460px; left:855px">
                    <asp:ImageButton runat="server" ID="P3C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:460px; left:910px">
                    <asp:ImageButton runat="server" ID="P3C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:470px; left:815px">
                    <asp:Image runat="server" ID="RP3C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:470px; left:785px">
                    <asp:Image runat="server" ID="RP3C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 540px; left: 860px;">
                    <asp:Label runat="server" ID="winner3"></asp:Label>
                </div>
                <div style="position:absolute; top:550px; left:350px">
                    <asp:ImageButton runat="server" ID="P4C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:550px; left:405px">
                    <asp:ImageButton runat="server" ID="P4C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:560px; left:305px">
                    <asp:Image runat="server" ID="RP4C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:560px; left:275px">
                    <asp:Image runat="server" ID="RP4C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 630px; left: 360px;">
                    <asp:Label runat="server" ID="winner4"></asp:Label>
                </div>
                <div style="position:absolute; top:550px; left:1005px">
                    <asp:ImageButton runat="server" ID="P5C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:550px; left:1060px">
                    <asp:ImageButton runat="server" ID="P5C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:560px; left:960px">
                    <asp:Image runat="server" ID="RP5C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:560px; left:930px">
                    <asp:Image runat="server" ID="RP5C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 630px; left: 1015px;">
                    <asp:Label runat="server" ID="winner5"></asp:Label>
                </div>
                <div style="position:absolute; top:650px; left:350px">
                    <asp:ImageButton runat="server" ID="P6C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:650px; left:405px">
                    <asp:ImageButton runat="server" ID="P6C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:660px; left:305px">
                    <asp:Image runat="server" ID="RP6C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:660px; left:275px">
                    <asp:Image runat="server" ID="RP6C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 730px; left: 360px;">
                    <asp:Label runat="server" ID="winner6"></asp:Label>
                </div>
                <div style="position:absolute; top:650px; left:1005px">
                    <asp:ImageButton runat="server" ID="P7C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:650px; left:1060px">
                    <asp:ImageButton runat="server" ID="P7C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:650px; left:960px">
                    <asp:Image runat="server" ID="RP7C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:650px; left:930px">
                    <asp:Image runat="server" ID="RP7C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 730px; left: 1015px;">
                    <asp:Label runat="server" ID="winner7"></asp:Label>
                </div>
                <div style="position:absolute; top:730px; left:510px">
                    <asp:ImageButton runat="server" ID="P8C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:730px; left:565px">
                    <asp:ImageButton runat="server" ID="P8C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:740px; left:465px">
                    <asp:Image runat="server" ID="RP8C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:740px; left:435px">
                    <asp:Image runat="server" ID="RP8C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 810px; left: 520px;">
                    <asp:Label runat="server" ID="winner8"></asp:Label>
                </div>
                <div style="position:absolute; top:730px; left:805px">
                    <asp:ImageButton runat="server" ID="P9C1" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:730px; left:860px">
                    <asp:ImageButton runat="server" ID="P9C2" CssClass="Card2"  OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:740px; left:760px">
                    <asp:Image runat="server" ID="RP9C2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:740px; left:730px">
                    <asp:Image runat="server" ID="RP9C1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top: 810px; left: 815px;">
                    <asp:Label runat="server" ID="winner9"></asp:Label>
                </div>
                <div style="position:absolute; top:1100px;">
                   <asp:Label runat="server" ID="CR" Text="Copyright Eric Christensen 2014    You are viewer #: "></asp:Label>
                </div>
                   
                <div style="position:absolute; top:600px; left:550px">
                    <asp:ImageButton runat="server" ID="PotCard1" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:600px; left:605px">
                    <asp:ImageButton runat="server" ID="PotCard2" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:600px; left:660px">
                    <asp:ImageButton runat="server" ID="PotCard3" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:600px; left:715px">
                    <asp:ImageButton runat="server" ID="PotCard4" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:600px; left:770px">
                    <asp:ImageButton runat="server" ID="PotCard5" CssClass="Card2" OnClick="PlayerCard_Click" ImageUrl="~/Content/R.png"/>
                </div>
                <div style="position:absolute; top:680px; left:610px">
                    <asp:Image runat="server" ID="RPotCard1" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:680px; left:645px">
                    <asp:Image runat="server" ID="RPotCard2" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:680px; left:680px">
                    <asp:Image runat="server" ID="RPotCard3" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:680px; left:715px">
                    <asp:Image runat="server" ID="RPotCard4" CssClass="Card0" Visible="false"/>
                </div>
                <div style="position:absolute; top:680px; left:750px">
                    <asp:Image runat="server" ID="RPotCard5" CssClass="Card0" Visible="false"/>
                </div>
                
            
        
        
                <%--<div style="float:none;">
                <asp:Table ID="PokerTable" runat ="server" HorizontalAlign="Center" CellSpacing="0">
                    <asp:TableRow ID="Row1" runat ="server">
                        <asp:TableCell CssClass="standard" ID="p1" Text="P1"></asp:TableCell>
                        <asp:TableCell CssClass="standard" ID="p2" Text="P2"></asp:TableCell>
                        <asp:TableCell CssClass="standard" ID="p3" Text="P3"></asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow ID="TableRow2" runat ="server">
                        <asp:TableCell CssClass="standard" ID="p4" Text="P4"></asp:TableCell>
                        <asp:TableCell CssClass="standard" ID="pot" VerticalAlign="Bottom" Text="pot"></asp:TableCell>
                        <asp:TableCell CssClass="standard" ID="p5" Text="P5"></asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow ID="TableRow3" runat ="server">
                        <asp:TableCell CssClass="standard2" ID="p6" Text="P6" VerticalAlign="Bottom"></asp:TableCell>
                        <asp:TableCell CssClass="standard2" ID="p7" Text="P7"></asp:TableCell>
                        <asp:TableCell CssClass="standard2" ID="p8" Text="P8"></asp:TableCell>
                         <asp:TableCell CssClass="standard2" ID="p9" Text="P9"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                </div>
                <div style="float:left;">
                    Card1
                    <asp:DropDownList ID="Card1Choice" runat="server" OnSelectedIndexChanged="Card1Choice_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div style="float:left;">
                    Card2
                    <asp:DropDownList ID="Card2Choice" runat="server" OnSelectedIndexChanged="Card2Choice_SelectedIndexChanged"> </asp:DropDownList>
                </div>
                <div style="float:left;">
                    Card Choices
                    <asp:DropDownList ID="CardChoices" runat="server" OnSelectedIndexChanged="CardChoices_SelectedIndexChanged"> </asp:DropDownList>
                </div>
                <div style="float:left;">--%>
                Number of Players
                <asp:DropDownList ID="playerCount" runat="server" OnSelectedIndexChanged="playerCount_SelectedIndexChanged" >
                    <asp:ListItem Text="1" Value="1" ></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                </asp:DropDownList>
                
        
                <div style="float:left;">
            
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Deal" />
                
                    <asp:Label ID="Label1" runat="server" Text=" X "></asp:Label>
                    <asp:DropDownList ID="NumberOfHands" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>10000</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
                <asp:Label ID="TimeLabel" runat="server" Text="Time"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <p style="position:absolute; top:950px; left:350px; float:none;">
        This a Texas Hold'em odds calculator. With this application, you pick and choose which preflop cards go against each other, <br />
        and then run up to 10,000 simulations. You can also choose which pot cards you want the simulator to run with. Unlike most <br />
        hold'em odds calculators you'll find online, this one allows you to choose random cards. 10,000 simulations gives accurate <br />
        odds with only a 1% margin of error.
    </p>
    
</body>
</html>
