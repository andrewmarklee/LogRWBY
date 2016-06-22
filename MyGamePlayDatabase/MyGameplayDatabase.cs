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

//using LogValues;

namespace MyGamePlayDatabase
{
    public class MyGameplayDatabase : GameplayDatabase
    {
        void ModifyAbilities()
        {
            AbilityData ad = this.AbilityDataDatabase.Find("Rubyb30c");
            ad.ResetComboCounter = false;
            ad.CooldownSeconds = 0.3f;
            ad.WaitForComboInputSeconds = 0.3f;

            // ult id Ruby66c7
            // LLLH id Rubya133

            AbilityData adUlt = this.AbilityDataDatabase.Find("Ruby66c7");
            AbilityData adLLLH = this.AbilityDataDatabase.Find("Rubya133");
            adUlt.ID = "Rubya133";
            adLLLH.ID = "Ruby66c7";
        }
    }
}
