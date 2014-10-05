using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class PokerSimulator : System.Web.UI.Page
    {
        Deck deck = new Deck();
        static List<Card> potCards = new List<Card>();
        static List<Label> playerLabels = new List<Label>();
        static List<PreFlop> preFlops;
        List<PreFlop> selectedCards;
        List<PlayersHand> playerHands = new List<PlayersHand>();
        List<int> winnerCount;
        static ImageButton cardSend;
        static ImageButton playerCard;
        static List<System.Web.UI.WebControls.Image> RealHands = new List<System.Web.UI.WebControls.Image>();
        static List<System.Web.UI.WebControls.Image> RealPotCards = new List<System.Web.UI.WebControls.Image>();
        static bool senderClicked = false;
        static bool recieverClicked = false;
        static List<ImageButton> ImageButtons = new List<ImageButton>();
        static List<ImageButton> PlayerImages = new List<ImageButton>();
        static List<ImageButton> PotImages = new List<ImageButton>();
        static List<string> cardsToNotAdd = new List<string>();
        static string dummy;
        static string controlClicked;
        //static double viewCount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // viewCount++;
                CR.Text = "Copyright Eric Christensen 2014";
                addImageButtons();
                selectedCards = new List<PreFlop>();
                preFlops = new List<PreFlop>();
                for (int i = 0; i < 9; i++)
                {
                    preFlops.Add(new PreFlop());
                }
                for (int i = 1; i <= 5; i++)
                {
                    potCards.Add(new Card());
                }
                int b = 0;
                cardsToNotAdd = new List<string>();
                playerCount.SelectedIndex = 8;
            }
            foreach (PreFlop preFlop in preFlops)
            {
                if (preFlop.card1 != null && !preFlop.canChange1)
                    deck.Remove(preFlop.card1);
                if (preFlop.card2 != null && !preFlop.canChange2)
                    deck.Remove(preFlop.card2);
            }
            deck.Shuffle();
        }

        private void addImageButtons()
        {
            ImageButtons = new List<ImageButton>();
            ImageButtons.Add(TwoClub);
            ImageButtons.Add(ThreeClub);
            ImageButtons.Add(FourClub);
            ImageButtons.Add(FiveClub);
            ImageButtons.Add(SixClub);
            ImageButtons.Add(SevenClub);
            ImageButtons.Add(EightClub);
            ImageButtons.Add(NineClub);
            ImageButtons.Add(TenClub);
            ImageButtons.Add(JackClub);
            ImageButtons.Add(QueenClub);
            ImageButtons.Add(KingClub);
            ImageButtons.Add(AceClub);

            ImageButtons.Add(TwoHearts);
            ImageButtons.Add(ThreeHearts);
            ImageButtons.Add(FourHearts);
            ImageButtons.Add(FiveHearts);
            ImageButtons.Add(SixHearts);
            ImageButtons.Add(SevenHearts);
            ImageButtons.Add(EightHearts);
            ImageButtons.Add(NineHearts);
            ImageButtons.Add(TenHearts);
            ImageButtons.Add(JackHearts);
            ImageButtons.Add(QueenHearts);
            ImageButtons.Add(KingHearts);
            ImageButtons.Add(AceHearts);

            ImageButtons.Add(TwoDiamonds);
            ImageButtons.Add(ThreeDiamonds);
            ImageButtons.Add(FourDiamonds);
            ImageButtons.Add(FiveDiamonds);
            ImageButtons.Add(SixDiamonds);
            ImageButtons.Add(SevenDiamonds);
            ImageButtons.Add(EightDiamonds);
            ImageButtons.Add(NineDiamonds);
            ImageButtons.Add(TenDiamonds);
            ImageButtons.Add(JackDiamonds);
            ImageButtons.Add(QueenDiamonds);
            ImageButtons.Add(KingDiamonds);
            ImageButtons.Add(AceDiamonds);

            ImageButtons.Add(TwoSpades);
            ImageButtons.Add(ThreeSpades);
            ImageButtons.Add(FourSpades);
            ImageButtons.Add(FiveSpades);
            ImageButtons.Add(SixSpades);
            ImageButtons.Add(SevenSpades);
            ImageButtons.Add(EightSpades);
            ImageButtons.Add(NineSpades);
            ImageButtons.Add(TenSpades);
            ImageButtons.Add(JackSpades);
            ImageButtons.Add(QueenSpades);
            ImageButtons.Add(KingSpades);
            ImageButtons.Add(AceSpades);
            ImageButtons.Add(Random0);
            ImageButtons.Add(Random1);
            ImageButtons.Add(Random2);
            ImageButtons.Add(Random3);
            PlayerImages = new List<ImageButton>();
            PlayerImages.Add(P1C1);
            PlayerImages.Add(P1C2);
            PlayerImages.Add(P2C1);
            PlayerImages.Add(P2C2);
            PlayerImages.Add(P3C1);
            PlayerImages.Add(P3C2);
            PlayerImages.Add(P4C1);
            PlayerImages.Add(P4C2);
            PlayerImages.Add(P5C1);
            PlayerImages.Add(P5C2);
            PlayerImages.Add(P6C1);
            PlayerImages.Add(P6C2);
            PlayerImages.Add(P7C1);
            PlayerImages.Add(P7C2);
            PlayerImages.Add(P8C1);
            PlayerImages.Add(P8C2);
            PlayerImages.Add(P9C1);
            PlayerImages.Add(P9C2);
            PotImages = new List<ImageButton>();
            PotImages.Add(PotCard1);
            PotImages.Add(PotCard2);
            PotImages.Add(PotCard3);
            PotImages.Add(PotCard4);
            PotImages.Add(PotCard5);
            playerLabels = new List<Label>();
            playerLabels.Add(winner1);
            playerLabels.Add(winner2);
            playerLabels.Add(winner3);
            playerLabels.Add(winner4);
            playerLabels.Add(winner5);
            playerLabels.Add(winner6);
            playerLabels.Add(winner7);
            playerLabels.Add(winner8);
            playerLabels.Add(winner9);

            RealHands = new List<System.Web.UI.WebControls.Image>();
            RealHands.Add(RP1C1);
            RealHands.Add(RP1C2);
            RealHands.Add(RP2C1);
            RealHands.Add(RP2C2);
            RealHands.Add(RP3C1);
            RealHands.Add(RP3C2);
            RealHands.Add(RP4C1);
            RealHands.Add(RP4C2);
            RealHands.Add(RP5C1);
            RealHands.Add(RP5C2);
            RealHands.Add(RP6C1);
            RealHands.Add(RP6C2);
            RealHands.Add(RP7C1);
            RealHands.Add(RP7C2);
            RealHands.Add(RP8C1);
            RealHands.Add(RP8C2);
            RealHands.Add(RP9C1);
            RealHands.Add(RP9C2);

            RealPotCards = new List<System.Web.UI.WebControls.Image>();
            RealPotCards.Add(RPotCard1);
            RealPotCards.Add(RPotCard2);
            RealPotCards.Add(RPotCard3);
            RealPotCards.Add(RPotCard4);
            RealPotCards.Add(RPotCard5);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            winnerCount = new List<int>();
            for (int i = 0; i < int.Parse(playerCount.SelectedValue); i++)
            {
                winnerCount.Add(0);
            }
            long aDate = DateTime.Now.Ticks;
            for (int i = 0; i < int.Parse(NumberOfHands.SelectedValue); i++)
            {
                deck = new Deck();
                for (int k = 0; k < 5; k++)
                {
                    if (!potCards[k].isNull())
                        deck.Remove(potCards[k]);
                }
                for (int j = 0; j < int.Parse(playerCount.SelectedValue); j++)
                {
                    PreFlop preFlop = preFlops[j];
                    if (preFlops[j].card1 != null && !preFlops[j].canChange1)
                        deck.Remove(preFlops[j].card1);
                    if (preFlops[j].card2 != null && !preFlops[j].canChange2)
                        deck.Remove(preFlops[j].card2);
                    int t = 0;
                }
                deck.Shuffle();
                giveCardsToPlayers();
                dealPotCards();
                calcPlayerHands();
                calcBestHand();

            }
            long totalTime = DateTime.Now.Ticks - aDate;
            TimeLabel.Text = (totalTime / 1000).ToString();
            declareWinner();
        }

        private void giveCardsToPlayers()
        {
            for (int i = 0; i < int.Parse(playerCount.SelectedValue); i++)
            {
                Card card1 = deck.removeTopCard();
                Card card2 = deck.removeTopCard();
                if (preFlops[i].card1 == null || preFlops[i].canChange1 == true)
                    preFlops[i].card1 = card1;
                if (preFlops[i].card2 == null || preFlops[i].canChange2 == true)
                    preFlops[i].card2 = card2;
            }
        }

        private void dealPotCards()
        {
            for (int i = 0; i < 5; i++)
            {
                if (potCards[i].canChange == true)
                {
                    Card aCard = deck.removeTopCard();
                    potCards[i] = aCard;
                }
            }
        }

        private void calcPlayerHands()
        {
            playerHands = new List<PlayersHand>();
            for (int i = 0; i < int.Parse(playerCount.SelectedValue); i++)
            {
                playerHands.Add(new PlayersHand(preFlops[i].card1, preFlops[i].card2,
                    potCards[0], potCards[1], potCards[2], potCards[3], potCards[4]));
            }
        }

        private void calcBestHand()
        {
            Hand bestHand = playerHands[0].getBestHand();
            Hand newHand;
            int k = 0;
            for (int i = 0; i < int.Parse(playerCount.SelectedValue); i++)
            {
                newHand = bestHand.betterHand(playerHands[i].getBestHand());
                if (!newHand.Equals(bestHand)) // if there the "bestHand" is no longer the best hand
                {
                    k = i;
                }
                bestHand = newHand;
            }
            playerHands[k].winner = true;
            int j = 0;
            foreach (PlayersHand hand in playerHands)
            {
                if (playerHands[j].getBestHand().EqualsValue(playerHands[k].getBestHand()))
                {
                    playerHands[j].winner = true;
                    winnerCount[j] += 1;
                }
                j++;
            }

        }

        private void declareWinner()
        {
            int i = 0;
            foreach (Label player in playerLabels)
            {
                if (i < int.Parse(playerCount.SelectedValue))
                    (FindControl(player.ID) as Label).Text = "Win %: " + ((double)winnerCount[i] * (100.0 / double.Parse(NumberOfHands.SelectedValue))).ToString();
                else
                    (FindControl(player.ID) as Label).Text = "";
                i++;
            }
            if (int.Parse(NumberOfHands.SelectedValue) == 1)
            {
                int j = 0;
                int n = 0;
                foreach (System.Web.UI.WebControls.Image image in RealHands)
                {
                    String imString = "~/Content/R.png";
                    if (j % 2 == 0)
                    {
                        if (preFlops[n].card1 != null)
                            imString = "~/Content/" + preFlops[n].card1.ToString() + ".png";
                    }
                    else
                    {
                        if (preFlops[n].card2 != null)
                            imString = "~/Content/" + preFlops[n].card2.ToString() + ".png";
                    }
                    (FindControl(image.ID) as System.Web.UI.WebControls.Image).Visible = true;
                    if (int.Parse(image.ID[2].ToString()) <= int.Parse(playerCount.SelectedValue))
                        (FindControl(image.ID) as System.Web.UI.WebControls.Image).ImageUrl = imString;
                    else
                        (FindControl(image.ID) as System.Web.UI.WebControls.Image).Visible = false;
                    j++;
                    if (j % 2 == 0)
                    {
                        n++;
                    }
                }
                int k = 0;
                foreach (System.Web.UI.WebControls.Image image in RealPotCards)
                {
                    (FindControl(image.ID) as System.Web.UI.WebControls.Image).Visible = true;
                    (FindControl(image.ID) as System.Web.UI.WebControls.Image).ImageUrl = "~/Content/" + potCards[k].ToString() + ".png";
                    k++;
                }
            }
            else
            {
                foreach (System.Web.UI.WebControls.Image image in RealHands)
                {
                    (FindControl(image.ID) as System.Web.UI.WebControls.Image).Visible = false;
                }
                foreach (System.Web.UI.WebControls.Image image in RealPotCards)
                {
                    (FindControl(image.ID) as System.Web.UI.WebControls.Image).Visible = false;
                }
            }
        }

        protected void playerCount_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = 1;
            foreach (ImageButton ib in PlayerImages)
            {

                ImageButton player = FindControl(ib.ID) as ImageButton;
                String aString = "winner" + ib.ID[1];
                if (int.Parse(player.ID.Substring(1, 1)) > int.Parse(playerCount.SelectedValue))
                {
                    player.Visible = false;
                    alterImageButton(player, (FindControl("Random1") as ImageButton));
                    (FindControl(aString) as Label).Text = "";

                }
                else
                {
                    player.Visible = true;
                }
                i++;
            }
        }


        protected void CardChoice_Click(object sender, ImageClickEventArgs e)
        {
            if (!recieverClicked)
            {
                senderClicked = true;
                cardSend = sender as ImageButton;
                controlClicked = cardSend.ID;
                if (!cardsToNotAdd.Contains(cardSend.ID))
                {
                    cardSend.BorderColor = Color.Yellow;
                    foreach (ImageButton ib in ImageButtons)
                    {
                        if (ib.ID != cardSend.ID && !cardsToNotAdd.Contains(ib.ID))
                            (FindControl(ib.ID) as ImageButton).BorderColor = Color.Black;
                    }
                }
                else
                    senderClicked = false;
            }
            else
            {
                cardSend = sender as ImageButton;
                controlClicked = cardSend.ID;
                if (!cardsToNotAdd.Contains(cardSend.ID))
                    cardSend.BorderColor = Color.Red;
                alterImageButton(FindControl(dummy) as ImageButton, cardSend);
                recieverClicked = false;
            }
        }

        private void alterImageButton(ImageButton ib, ImageButton cardSend)
        {
            foreach (ImageButton imbut in ImageButtons)
            {
                string url = imbut.ImageUrl;
                if (url == ib.ImageUrl && !cardsToNotAdd.Contains(cardSend.ID))
                {
                    cardsToNotAdd.Remove(imbut.ID);
                    (FindControl(imbut.ID) as ImageButton).BorderColor = Color.Black;
                }
            }
            bool potcard = false;
            if (ib.ID.StartsWith("Po"))
                potcard = true;

            if (!cardSend.ID.StartsWith("R"))
            {
                if (!cardsToNotAdd.Contains(cardSend.ID))
                {
                    ib.ImageUrl = cardSend.ImageUrl;
                    cardsToNotAdd.Add(cardSend.ID);
                    int whichCard = 0;
                    int preflopIndex = 0;
                    if (!potcard)
                    {
                        preflopIndex = (int.Parse(ib.ID.Substring(1, 1)) - 1);
                        whichCard = (int.Parse(ib.ID.Substring(3, 1)));
                    }
                    else
                    {

                    }
                    char cVal = cardSend.ImageUrl.ToCharArray()[10];
                    int val;
                    if (cVal == 'T')
                        val = 10;
                    else if (cVal == 'J')
                        val = 11;
                    else if (cVal == 'Q')
                        val = 12;
                    else if (cVal == 'K')
                        val = 13;
                    else if (cVal == 'A')
                        val = 14;
                    else
                    {
                        string aString = ib.ImageUrl.Substring(10, 1);
                        val = int.Parse(aString);
                    }
                    cVal = ib.ImageUrl.ToCharArray()[11];
                    if (!potcard)
                    {
                        if (whichCard == 1)
                        {
                            preFlops[preflopIndex].card1 = new Card(val, cVal);
                            preFlops[preflopIndex].canChange1 = false;
                        }
                        else if (whichCard == 2)
                        {
                            preFlops[preflopIndex].card2 = new Card(val, cVal);
                            preFlops[preflopIndex].canChange2 = false;
                        }
                    }
                    else
                    {
                        int whichPC = int.Parse(ib.ID[7].ToString()) - 1;
                        potCards[whichPC] = new Card(val, cVal);
                        potCards[whichPC].canChange = false;
                    }
                }
            }
            else
            {
                if (!potcard)
                {
                    int whichCard = (int.Parse(ib.ID.Substring(3, 1)));
                    int preflopIndex = (int.Parse(ib.ID.Substring(1, 1)) - 1);
                    if (whichCard == 1)
                        preFlops[preflopIndex].canChange1 = true;
                    else if (whichCard == 2)
                        preFlops[preflopIndex].canChange2 = true;
                }
                else
                {
                    int whichPC = int.Parse(ib.ID[7].ToString()) - 1;
                    potCards[whichPC] = new Card();
                    potCards[whichPC].canChange = true;
                }
                ib.ImageUrl = cardSend.ImageUrl;
            }
            ib.BorderColor = Color.Black;
        }

        protected void PlayerCard_Click(object sender, ImageClickEventArgs e)
        {
            if ((sender as ImageButton).Visible == true)
            {
                if (senderClicked)
                {
                    playerCard = sender as ImageButton;
                    if (cardSend != null)
                    {
                        alterImageButton(playerCard, cardSend);
                        foreach (ImageButton ib in ImageButtons)
                        {
                            if (cardsToNotAdd.Contains(ib.ID))
                                (FindControl(ib.ID) as ImageButton).BorderColor = Color.Red;
                            else
                                (FindControl(ib.ID) as ImageButton).BorderColor = Color.Black;
                        }
                    }
                    senderClicked = false;
                }
                else
                {
                    dummy = (sender as ImageButton).ID;
                    ImageButton cardToChange = sender as ImageButton;
                    cardToChange.BorderColor = Color.Yellow;
                    foreach (ImageButton ib in PlayerImages)
                    {
                        if (ib.ID != cardToChange.ID)
                        {
                            (FindControl(ib.ID) as ImageButton).BorderColor = Color.Black;
                        }
                    }
                    recieverClicked = true;
                }
            }
        }
    }
}