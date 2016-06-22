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

namespace SetupMoves
{
    public class MyPlayChar : PlayerCharacter
    {
        protected bool MyAbilitiesAdjusted = false;

        public void LogPlayAbilitiesLen()
        {
            PlayerCharacter.PlayerAbilities pa = m_playerAbilities;
            UnityEngine.Debug.Log(
                String.Format("LightCombo: {0}; LightComboAir: {0}; RangedCombo: {0}; HeavyCombo: {0}",
                pa.LightCombo.Length, pa.LightComboAir.Length, pa.RangedCombo.Length, pa.HeavyCombo.Length)
                );
        }

        public void CheckLightAir()
        {
            UnityEngine.Debug.Log("sevenvolts:");
            UnityEngine.Debug.Log(this.m_comboCounters[PlayerCharacter.ComboType.Melee]);
            UnityEngine.Debug.Log(this.m_playerAbilities.LightComboAir.Length);
            MyBaseCharacter.LogAbilityData(
                this.m_playerAbilities.LightComboAir[
                    this.m_comboCounters[PlayerCharacter.ComboType.Melee]
                                                    ]
                                          );
        }

        public void FlipAbilities()
        {
            AbilityData ad = this.m_playerAbilities.LightCombo[0];
            this.m_playerAbilities.LightCombo[0] = this.m_playerAbilities.HeavyCombo[2];
            this.m_playerAbilities.HeavyCombo[2] = ad;
        }
    }

    public class MyGameMode : GameMode
    {
        void LogPlayCharAbilityLen()
        {
            MyPlayChar pc = null;
            pc.LogPlayAbilitiesLen();
        }
    }
}
