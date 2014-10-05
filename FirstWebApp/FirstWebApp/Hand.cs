using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FirstWebApp
{
    /**
     *  A set a 5 cards that have a value. you should be able to compare this value to other hands
     */
    public class Hand
    {
        List<Card> cards;// = new List<Card>(5);
        string value;// = "other";
        int intValue;
        int extraIntValue;

        public Hand(List<Card> cards)
        {
            this.cards = new List<Card>(cards);
            calculateValue();
        }
        public Hand(Card card1, Card card2, Card card3, Card card4, Card card5)
        {
            this.cards = new List<Card>(5);
            this.cards.Add(card1);
            this.cards.Add(card2);
            this.cards.Add(card3);
            this.cards.Add(card4);
            this.cards.Add(card5);
            calculateValue();
        }

        public Boolean Equals(Hand otherHand)
        {
            Boolean truth = true;
            foreach (Card card in this.cards)
            {
                if (!otherHand.getCardList().Contains(card))
                    truth = false;
            }
            return truth;
        }

        public List<Card> getCardList() { return this.cards; }

        /**
         * The algorithm for finding the value of a five card hand
         */
        private void calculateValue()
        {
            List<int> ints = new List<int>(15);
            bool lowStraight = false;
            for (int i = 0; i < 15; i++)
            {
                ints.Add(0);
                foreach (Card card in cards)
                {
                    if (card.getValue() == i)
                        ints[i] += 1;
                }
            }
            if (ints.Contains(2))
            {
                if (ints.Contains(3))
                    fullHouse = true;
                else if (ints.IndexOf(2) != ints.LastIndexOf(2))
                    twoPair = true;
                else
                    pair = true;
                int k = 0;
            }
            else if (ints.Contains(3))
            {
                trips = true;
            }
            else if (ints.Contains(4))
            {
                fours = true;
            }
            else
            {
                char suit = cards[0].getSuit();
                if (suit == cards[1].getSuit() && suit == cards[2].getSuit() && suit == cards[3].getSuit() && suit == cards[4].getSuit())
                    flush = true;
                int inARow = 1;
                Boolean prev = false;
                foreach (int i in ints)
                {
                    if (inARow < 5)
                    {
                        if (prev == true && i > 0)
                            inARow += 1;
                        else
                            inARow = 1;
                        prev = i > 0;
                    }
                }
                
                if (inARow == 5)
                {
                    straight = true;
                }
                else if(ints[14] == 1 && ints[2] == 1 && ints[3] == 1 && ints[4] == 1)
                {
                    straight = true;
                    lowStraight = true;
                }

                if (straight == true && flush == true)
                {
                    straightFlush = true;
                    straight = false;
                    flush = false;
                }
                if (!straight && !flush && !straightFlush)
                    highCard = true;
            }

            if (pair)
            {
                value = "pair";
                intValue = 2;
                extraIntValue = (ints.IndexOf(2) * 10000) + (ints.LastIndexOf(1) * 1000);
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 100;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 10;
            }
            else if (twoPair)
            {
                value = "two pair";
                intValue = 3;
                extraIntValue = (ints.LastIndexOf(2) * 10000 + ints.IndexOf(2) * 1000 + ints.LastIndexOf(1) * 100);
            }
            else if (trips)
            {
                value = "trips";
                intValue = 4;
                extraIntValue = (ints.IndexOf(3) * 10000 + ints.LastIndexOf(1) * 1000 + ints.IndexOf(1) * 100);
            }
            else if (fullHouse)
            {
                value = "full house";
                intValue = 7;
                extraIntValue = ints.IndexOf(3) * 10000 + ints.IndexOf(2) * 1000;
            }
            else if (fours)
            {
                value = "four of a kind";
                intValue = 8;
                extraIntValue = ints.IndexOf(4) * 10000 + ints.IndexOf(1) * 1000;
            }
            else if (straight)
            {
                value = "straight";
                intValue = 5;
                if (lowStraight)            // The case for if the stright is A2345
                    extraIntValue = 5;      // Aces are low so this straight's high card will always be 5
                else
                    extraIntValue = ints.LastIndexOf(1);
            }
            else if (flush)
            {
                value = "flush";
                intValue = 6;
                extraIntValue = ints.LastIndexOf(1) * 100000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 10000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 1000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 100;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 10;
                ints[ints.LastIndexOf(1)] = 0;
            }
            else if (straightFlush)
            {
                value = "straightFlush";
                intValue = 9;
                extraIntValue = ints.LastIndexOf(1);
            }
            else
            {
                value = "High Card";
                intValue = 1;
                extraIntValue = ints.LastIndexOf(1) * 100000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 10000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 1000;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 100;
                ints[ints.LastIndexOf(1)] = 0;
                extraIntValue += ints.LastIndexOf(1) * 10;
                ints[ints.LastIndexOf(1)] = 0;
            }
            //extraIntValue = intValue;
        }

        public Hand betterHand(Hand otherHand)
        {
            if (this.intValue > otherHand.intValue)
                return this;
            else if (this.intValue < otherHand.intValue)
                return otherHand;
            else
            {
                if (this.extraIntValue >= otherHand.extraIntValue)
                    return this;
                else
                    return otherHand;
            }
        }

        public Boolean EqualsValue(Hand otherHand)
        {
            return (this.extraIntValue == otherHand.extraIntValue && this.intValue == otherHand.intValue);
        }

        public string getValue() { return value; }

        Boolean pair;
        Boolean twoPair;
        Boolean trips;
        Boolean fullHouse;
        Boolean fours;
        Boolean highCard;
        Boolean straight;
        Boolean flush;
        Boolean straightFlush;
    }
}
