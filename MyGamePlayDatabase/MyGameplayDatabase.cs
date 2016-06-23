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

        public void Call() { AdjustAbilities(); }

        public void AdjustAbilities()
        {
            AbilityData L = this.AbilityDataDatabase.Find("Rubybaae");
            L.PrimaryAttack.HitInfo.baseDamage = 60;
            L.PrimaryAttack.CriticalHitInfo.baseDamage = 100;

            AbilityData LH = this.AbilityDataDatabase.Find("Ruby62e0");

            AbilityData LL = this.AbilityDataDatabase.Find("Ruby7bed");
            LL.PrimaryAttack.HitInfo.baseDamage = 60;
            LL.PrimaryAttack.CriticalHitInfo.baseDamage = 100;

            AbilityData LLL = this.AbilityDataDatabase.Find("Rubyc916");
            LLL.PrimaryAttack.HitInfo.baseDamage = 30;
            LLL.PrimaryAttack.CriticalHitInfo.baseDamage = 50;
            LLL.TelegraphAnimation = LH.TelegraphAnimation;
            LLL.WindupAnimation = LH.WindupAnimation;
            LLL.PrimaryAnimation = LH.PrimaryAnimation;
            LLL.SecondaryAnimation = LH.SecondaryAnimation;


            AbilityData LLLL = this.AbilityDataDatabase.Find("Ruby7ce5");

            LH.CoroutineName = "LightCombo_02";
            LH.CooldownSeconds = 0.15f;
            LH.WaitForComboInputSeconds = 0.2f;
            LH.PrimaryAttack.TeamAttackProbability = 0.25f;
            LH.PrimaryAttack.HitInfo.GuardDamage = 99999;
            LH.PrimaryAttack.HitInfo.knockBack = 13;
            LH.PrimaryAttack.HitInfo.hitTime = 0.15f;
            LH.PrimaryAttack.CriticalHitInfo.GuardDamage = 99999;
            LH.PrimaryAttack.CriticalHitInfo.knockBack = 13;
            LH.PrimaryAttack.CriticalHitInfo.hitTime = 0.15f;
            LH.PrimaryAnimation = L.PrimaryAnimation;

            AbilityData LLH = this.AbilityDataDatabase.Find("Rubyb30c");
            LLH.ResetComboCounter = false;
            LLH.CooldownSeconds = 0.4f;
            LLH.WaitForComboInputSeconds = 0f;
            LLH.PrimaryAttack.HitInfo.baseDamage = 200;
            LLH.PrimaryAttack.CriticalHitInfo.baseDamage = 300;

            AbilityData LLLH = this.AbilityDataDatabase.Find("Rubya133");
            LLLH.ResetComboCounter = true;
            LLLH.CooldownSeconds = 0.6f;
            LLLH.WaitForComboInputSeconds = 0;
            LLLH.PrimaryAttack.TeamAttackProbability = 0f;
            LLLH.PrimaryAttack.HitInfo.baseDamage = 300f;
            LLLH.PrimaryAttack.HitInfo.GuardDamage = 750;
            LLLH.PrimaryAttack.HitInfo.knockBack = 10;
            LLLH.SecondaryAttack.TeamAttackProbability = 0.1f;
            LLLH.SecondaryAttack.HitInfo.baseDamage = 300;
            LLLH.SecondaryAttack.HitInfo.GuardDamage = 99999;
            LLLH.SecondaryAttack.HitInfo.knockBack = 35;
            LLLH.SecondaryAttack.CriticalHitInfo.baseDamage = 500;
            LLLH.SecondaryAttack.CriticalHitInfo.GuardDamage = 99999;
            LLLH.SecondaryAttack.CriticalHitInfo.knockBack = 35;
            LLLH.IsUninterruptible = true;

            AbilityData U = this.AbilityDataDatabase.Find("Ruby66c7");
            U.CooldownSeconds = 0f;
            U.WaitForComboInputSeconds = 1.0f;
            U.PrimaryAttack.HitInfo.baseDamage = 100;
            U.PrimaryAttack.HitInfo.hitTime = 0.25f;
            U.PrimaryAttack.HitInfo.knockBack = 10;
            U.IsUninterruptible = false;

            //AbilityDataDatabase.Find("Rubyc916").PrimaryAnimation = AbilityDataDatabase.Find("Ruby62e0").PrimaryAnimation;
        }
    }
}
