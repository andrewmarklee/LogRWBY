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

namespace LogValues
{
    public class MySpace
    {
        public static String LogHitInfo(String s, HitInfo hit, String name)
        {
            if (hit == null)
            {
                return s + "\t" + name + ": null\n";
            }
            s += "\t" + name + ":\n";
            s += "\t\t[BasicParamters]\n";
            s += String.Format("\t\tisSmash: {0}\n", hit.isSmash);
            s += String.Format("\t\tonlyHitGround: {0}\n", hit.isSmash);
            s += String.Format("\t\tcountTowardsHitchain: {0}\n", hit.countTowardsHitchain);
            s += String.Format("\t\thitchainAmount: {0}\n", hit.hitchainAmount);
            s += String.Format("\t\tprogressTowardsSpecial: {0}\n", hit.progressTowardsSpecial);
            s += String.Format("\t\tbaseDamage: {0}\n", hit.baseDamage);
            s += String.Format("\t\tFullShieldHealthDamage: {0}\n", hit.FullShieldHealthDamage);
            s += String.Format("\t\tPartialShieldHealthDamage: {0}\n", hit.PartialShieldHealthDamage);
            s += String.Format("\t\tNoShieldHealthDamage: { 0}\n", hit.NoShieldHealthDamage);
            s += String.Format("\t\tGuardDamage: { 0}\n", hit.GuardDamage);
            s += String.Format("\t\tknockBack: { 0}\n", hit.knockBack);
            s += String.Format("\t\tknockUp: { 0}\n", hit.knockUp);
            s += String.Format("\t\tslowMultiplier: { 0}\n", hit.slowMultiplier);
            s += String.Format("\t\thitTime: { 0}\n", hit.hitTime);
            s += "\t\t[StaticEffect]\n";
            s += String.Format("\t\tStatusEffect: { 0}\n", hit.StatusEffect);
            s += String.Format("\t\tStatusEffectTime: { 0}\n", hit.StatusEffectTime);
            s += "\t\t[Chaining]\n";

            s += "\t\tChainAttack:";
            if (hit.ChainAttack == null)
            {
                s += " null\n";
            }
            else
            {
                s += "\n";
                if (hit.ChainAttack.HitInfo != null)
                    s += String.Format("\t\t\tHitInfo.ID: {0}\n", hit.ChainAttack.HitInfo);
                if (hit.ChainAttack.CriticalHitInfo != null)
                    s += String.Format("\t\t\tCriticalHitInfo.ID: {0}\n", hit.ChainAttack.CriticalHitInfo);
            }
            s += String.Format("\t\tChainDistance: { 0}\n", hit.ChainDistance);
            s += String.Format("\t\tChainCount: { 0}\n", hit.ChainCount);
            return s;
        }

        public static String LogAttack(String s, Attack atk, String name)
        {
            if (atk == null)
            {
                return s + name + ": null\n";
            }
            s += name + ":\n";
            s += String.Format("\tTeamAttackProbability {0}", atk.TeamAttackProbability);
            s = LogHitInfo(s, atk.HitInfo, "HitInfo");
            s = LogHitInfo(s, atk.CriticalHitInfo, "CriticalHitInfo");
            return s;
        }

        public static void LogAbilityData(AbilityData ad)
        {
            String s = "";
            s += "ReactionInfo:\n";
            s += String.Format("\tLightAttack: {0}\n", ad.ReactionInfo.LightAttack);
            s += String.Format("\tHeavyAttack: {0}\n", ad.ReactionInfo.HeavyAttack);
            s += String.Format("\tDodgeAttack: {0}\n", ad.ReactionInfo.Dodge);
            s += String.Format("\tCounterAttack: {0}\n", ad.ReactionInfo.Counter);
            s += String.Format("\tIndex: {0}\n", ad.ReactionInfo.Index);
            s += "Ability Name: " + ad.AbilityName + "\n";
            s += "Coroutine Name: " + ad.CoroutineName + "\n";
            s += String.Format("Special Cost: {0}\n", ad.SpecialCost);
            s += String.Format("ComboType: {0}\n", ad.ComboType);
            s += String.Format("IncreaseComboCounter: {0}\n", ad.IncreaseComboCounter);
            s += String.Format("ResetComboCounter: {0}\n", ad.ResetComboCounter);
            s += String.Format("CooldownSeconds: {0}\n", ad.CooldownSeconds);
            s += String.Format("WaitForComboInputSeconds: {0}\n", ad.WaitForComboInputSeconds);
            s += "TargetingFilters:\n";
            s += String.Format("\tMinRange: {0}\n", ad.TargetingFilters.MinRange);
            s += String.Format("\tMaxRange: {0}\n", ad.TargetingFilters.MaxRange);
            s += String.Format("\tWindupOnly: {0}\n", ad.TargetingFilters.WindupOnly);
            s += String.Format("\tTeamAttackOnly: {0}\n", ad.TargetingFilters.TeamAttackOnly);
            s += String.Format("\tIgnoreProps: {0}\n", ad.TargetingFilters.IgnoreProps);
            s += String.Format("FollowLockTarget: {0}\n", ad.FollowLockTarget);
            s = LogAttack(s, ad.PrimaryAttack, "PrimaryAttack");
            s = LogAttack(s, ad.SecondaryAttack, "SecondaryAttack");
            s = LogAttack(s, ad.TertiaryAttack, "TertiaryAttack");
            s += "[Charging]\n";
            s += String.Format("ChargeType: { 0}\n", ad.ChargeType);
            s += String.Format("FullChargeTimeSeconds: {0}\n", ad.FullChargeTimeSeconds);
            s += String.Format("MaxChargeTimeSeconds: {0}\n", ad.MaxChargeTimeSeconds);
            s += "[Other]\n";
            s += String.Format("IsUninterruptible: {0}\n", ad.IsUninterruptible);
            s += String.Format("IsTeamAttack: {0}\n", ad.IsTeamAttack);

            UnityEngine.Debug.Log(s);
        }
    }
}