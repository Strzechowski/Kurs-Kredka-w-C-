﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RafalStrzechowskiLab2
{
    public abstract class Creature
    {
        public string Name { get; set; }
        public int NumberOfLegs { get; set; }

        protected int MaxSpeed { get; set; }

        protected double GetCurrentSpeed()
        {
            Random random = new Random();
            return random.NextDouble()*MaxSpeed;
        }

        public virtual void DoSomething()
        {
            Console.WriteLine("I'm doing something.");
        }
    }
}
