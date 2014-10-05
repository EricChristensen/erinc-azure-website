using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FirstWebApp
{
    public class Card
    {
        private char suit;
        private int value;
        public bool canChange = true;
        public char getSuit() { return suit; }
        public int getValue() { return value; }
        public void setSuit(char suit) { this.suit = suit; }
        public void setValue(int value) { this.value = value; }

        public Card(int value, char suit)
        {
            this.value = value;
            this.suit = suit;
        }

        public Card(int value, int suit)
        {
            this.value = value;
            if (suit == 0)
                this.suit = 'C';
            else if (suit == 1)
                this.suit = 'D';
            else if (suit == 2)
                this.suit = 'H';
            else if (suit == 3)
                this.suit = 'S';
        }
        public Card()
        {

        }
        public bool isNull()
        {
            return value == null;
        }

        public bool GreaterThan(Card otherCard)
        {
            return (this.value > otherCard.value);
        }

        public override bool Equals(Object obj)
        {
            if (obj == null)
                return false;
            Card otherCard = obj as Card;
            if ((Object)otherCard == null)
                return false;

            return (this.value == otherCard.value && this.suit == otherCard.suit);
        }

        public override string ToString()
        {
            string theString;
            if (value == 11)
                theString = "J";
            else if (value == 12)
                theString = "Q";
            else if (value == 13)
                theString = "K";
            else if (value == 14)
                theString = "A";
            else if (value == 10)
                theString = "T";
            else
                theString = value.ToString();
            return theString + suit;
        }
    }
}
