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
            MyBaseCharacter.LogAbilityData(ad);

            GameplayDatabase g = new GameplayDatabase();
            //MySpace.LogAbilityData(g.AbilityDataDatabase.Find("Rubyc916"));
            //MySpace.LogAbilityData(g.AbilityDataDatabase.Find("Rubyc916"));
            g.AbilityDataDatabase.Find("Rubyc916").PrimaryAnimation = g.AbilityDataDatabase.Find("Ruby62e0").PrimaryAnimation;

            ad = g.AbilityDataDatabase.Find("Ruby62e0");
            ad.ResetComboCounter = false;
            ad.CooldownSeconds = 0.3f;
            ad.WaitForComboInputSeconds = 1f;

            ad = g.AbilityDataDatabase.Find("Rubyb30c");
            ad.ResetComboCounter = false;
            ad.CooldownSeconds = 0.3f;
            ad.WaitForComboInputSeconds = 1f;

            // ult id Ruby66c7
            // LLLH id Rubya133

            AbilityData adUlt = g.AbilityDataDatabase.Find("Ruby66c7");
            AbilityData adLLLH = g.AbilityDataDatabase.Find("Rubya133");
            adUlt.ID = "Rubya133";
            adLLLH.ID = "Ruby66c7";
            
            return;
        }
    }
}
