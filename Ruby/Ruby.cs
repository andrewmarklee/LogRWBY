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

namespace Ruby
{
    public class MyRuby : PlayerCharacter
    {
        protected bool MyAbilitiesAdjusted = false;

        protected void AdjustAbilities()
        {
            AbilityData L = m_playerAbilities.LightCombo[0];
            L.PrimaryAttack.HitInfo.baseDamage = 60;
            L.PrimaryAttack.CriticalHitInfo.baseDamage = 100;

            AbilityData LH = m_playerAbilities.HeavyCombo[0];

            AbilityData LL = m_playerAbilities.LightCombo[1];
            LL.PrimaryAttack.HitInfo.baseDamage = 60;
            LL.PrimaryAttack.CriticalHitInfo.baseDamage = 100;

            AbilityData LLL = m_playerAbilities.LightCombo[2];
            LLL.PrimaryAttack.HitInfo.baseDamage = 30;
            LLL.PrimaryAttack.CriticalHitInfo.baseDamage = 50;
            //LLL.TelegraphAnimation = LH.TelegraphAnimation;
            //LLL.WindupAnimation = LH.WindupAnimation;
            //LLL.PrimaryAnimation = LH.PrimaryAnimation;
            //LLL.SecondaryAnimation = LH.SecondaryAnimation;


            AbilityData LLLL = m_playerAbilities.LightCombo[3];

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
            //LH.PrimaryAnimation = L.PrimaryAnimation;

            AbilityData LLH = m_playerAbilities.HeavyCombo[1];
            LLH.ResetComboCounter = false;
            LLH.CooldownSeconds = 0.4f;
            LLH.WaitForComboInputSeconds = 0f;
            LLH.PrimaryAttack.HitInfo.baseDamage = 200;
            LLH.PrimaryAttack.CriticalHitInfo.baseDamage = 300;

            AbilityData LLLH = m_playerAbilities.HeavyCombo[2];
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

            AbilityData U = m_playerAbilities.SpecialAttack;
            U.CooldownSeconds = 0f;
            U.WaitForComboInputSeconds = 1.0f;
            U.PrimaryAttack.HitInfo.baseDamage = 100;
            U.PrimaryAttack.HitInfo.hitTime = 0.25f;
            U.PrimaryAttack.HitInfo.knockBack = 10;
            U.IsUninterruptible = false;

            // new LLLH
            m_playerAbilities.HeavyCombo[2] = LLLL;
            //new U
            m_playerAbilities.SpecialAttack = LLLH;
            // new LLLL
            m_playerAbilities.LightCombo[3] = U;
        }

        protected void SelectAttack(PlayerCharacter.ActionType attackType)
        //        protected virtual void SelectAttack(AbilityData abilityData, BaseEntity target)
        {
            if (!MyAbilitiesAdjusted)
            {
                AdjustAbilities();
                MyAbilitiesAdjusted = true;
            }
            //base.SelectAttack(PlayerCharacter.ActionType attackType);
            base.SetAttack(new AbilityData(), new BaseEntity());
        }
    }
}
