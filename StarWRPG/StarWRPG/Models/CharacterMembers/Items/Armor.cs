﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Armor : Gear
    {
        public uint RangedDefense { get; set; }
        public uint MeleeDefense { get; set; }
        public uint Soak { get; set; }
    }
}
