﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstWebApp
{
    public class PreFlop
    {
        public Card card1;
        public Card card2;
        public bool canChange1 = true;
        public bool canChange2 = true;

        public PreFlop(Card card1, Card card2)
        {
            this.card1 = card1;
            this.card2 = card2;
        }
        public PreFlop()
        {

        }

        public void setCard1(Card card1)
        {
            this.card1 = card1;
        }

        public void setCard2(Card card2)
        {
            this.card2 = card2;
        }

        public bool isEmpty()
        {
            return this.card1 == null && this.card2 == null;
        }

        public override String ToString()
        {
            return this.card1.ToString() + this.card2.ToString();
        }
    }
}