using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class BlackJack : System.Web.UI.Page
    {
        static Deck deck = new Deck();
        List<Card> playersCards = new List<Card>();
        List<Card> dealersCards = new List<Card>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                deck.Shuffle();
        }

        protected void Hit_Click(object sender, EventArgs e)
        {

        }

        protected void Stand_Click(object sender, EventArgs e)
        {

        }

        protected void Deal_Click(object sender, EventArgs e)
        {
            GameLabel.Text = " ";
            if (deck.Cards.Count > 4)
            {
                Card firstCard = deck.removeTopCard();
                Card secondCard = deck.removeTopCard();
                Card thirdCard = deck.removeTopCard();
                Card fourthCard = deck.removeTopCard();
                playersCards.Add(firstCard);
                playersCards.Add(secondCard);
                dealersCards.Add(thirdCard);
                dealersCards.Add(fourthCard);
                (FindControl(PCard1.ID) as System.Web.UI.WebControls.Image).ImageUrl = "~/Content/" + firstCard.ToString() + ".png";
                (FindControl(PCard2.ID) as System.Web.UI.WebControls.Image).ImageUrl = "~/Content/" + secondCard.ToString() + ".png";
                (FindControl(DCard1.ID) as System.Web.UI.WebControls.Image).ImageUrl = "~/Content/" + thirdCard.ToString() + ".png";
                (FindControl(DCard2.ID) as System.Web.UI.WebControls.Image).ImageUrl = "~/Content/R.png";// +fourthCard.ToString() + ".png";
            }
            else
            {
                GameLabel.Text = "GAME OVER!";
            }
        }

        private int valueOf(Card aCard)
        {
            if (aCard.getValue() == 10 || aCard.getValue() == 11 || aCard.getValue() == 12 || aCard.getValue() == 13)
                return 10;
            else if (aCard.getValue() == 14)
                return 11;
            else
                return aCard.getValue();
        }
    }
}