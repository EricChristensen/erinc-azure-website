using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FirstWebApp
{
    public class PlayersHand
    {
        public List<Card> cards = new List<Card>(7);
        List<Hand> possibleHands = new List<Hand>();
        Hand bestHand;
        public bool winner;
        
        public string getWinnerString()
        {
            if (winner)
                return "WINNER";
            else
                return "LOSER";
        }
        public Hand getBestHand() { return bestHand; }

        public PlayersHand(List<Card> cards)
        {
            this.cards = new List<Card>(cards);
        }

        public PlayersHand(Card card1, Card card2, Card card3, Card card4, Card card5, Card card6, Card card7)
        {
            addToHand(card1);
            addToHand(card2);
            addToHand(card3);
            addToHand(card4);
            addToHand(card5);
            addToHand(card6);
            addToHand(card7);
            possibleHandCalc();
            bestHandCalc();
        }

        private void possibleHandCalc()
        {
            List<Card> hand6 = new List<Card>(this.cards);
            List<Card> hand5 = new List<Card>();
            for (int i = 0; i < this.cards.Count; i++)
            {
                Card skipCard1 = this.cards[i];
                hand6.Clear();
                for (int k = 0; k < this.cards.Count; k++)
                {
                    hand6.Add(this.cards[k]);
                }
                hand6.Remove(skipCard1);
                for (int j = i; j < hand6.Count; j++ )
                {
                    Card skipCard2 = hand6[j];
                    hand5.Clear();
                    for (int k = 0; k < hand6.Count; k++)
                    {
                        hand5.Add(hand6[k]);
                    }
                    hand5.Remove(skipCard2);
                    possibleHands.Add(new Hand(hand5));
                }               
            }           
        }

        private void bestHandCalc()
        {
            bestHand = possibleHands[0];
            foreach (Hand hand in possibleHands)
            {
                bestHand = bestHand.betterHand(hand);
            }
        }

        public void addToHand(Card card)
        {
            this.cards.Add(card);
        }

        public string getValue()
        {
            return bestHand.getValue();
        }

        public string preflopToString()
        {
            return cards[0].ToString() + " " + cards[1].ToString();
        }
    }
}
