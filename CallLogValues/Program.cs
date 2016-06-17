using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InControl;
using Photon;
using Roost;
using System.Collections;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.CompilerServices;
using UnityEngine;
using LogValues;

namespace CallLogValues
{
    class Program
    {
        static void Main(string[] args)
        {
            AbilityData ad = new AbilityData();
            MySpace.LogAbilityData(ad);
            return;
        }
    }
}
