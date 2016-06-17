using InControl;
using Photon;
using Roost;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using UnityEngine;

public abstract class PlayerCharacter : BaseCharacter
{
	private const float kTargetStickTimeSeconds = 0.75f;

	private const float kSpecialButtonTimingThresholdSeconds = 0.1f;

	private const float AbilityChargeTime = 0.6f;

	[Header("Player Character")]
	[SerializeField]
	protected PlayerScript m_baseCharacterController;

	[SerializeField]
	protected PlayerCharacter.PlayerEffects m_playerEffects;

	[SerializeField]
	protected PlayerCharacter.PlayerAnimations m_playerAnimations;

	[SerializeField]
	protected PlayerCharacter.PlayerAbilities m_playerAbilities = new PlayerCharacter.PlayerAbilities();

	[SerializeField]
	private POITarget m_deadPOI;

	[SerializeField]
	private POITarget m_playerPOI;

	[SerializeField]
	private POITarget m_personalPayloadFuelPOI;

	[SerializeField]
	private POITarget m_payloadFuelPOI;

	[SerializeField]
	private POITarget m_personalKeyPOI;

	[SerializeField]
	private POITarget m_keyPOI;

	[SerializeField]
	private MinimapBlipTarget m_playerBlipTarget;

	[SerializeField]
	private MinimapBlipTarget m_teammateBlipTarget;

	[Header("Sprinting")]
	[SerializeField]
	private float m_sprintAnimationSpeed = 1.25f;

	[SerializeField]
	private float m_sprintSpeedMultiplier = 2f;

	private bool m_isSprinting;

	private bool m_canPerformCombo;

	private PlayerCharacter.ActionType m_queuedCombo;

	private int m_queuedindex;

	private bool m_failedCounter;

	private bool m_uninterruptibleAbility;

	private bool m_canDodge = true;

	private CoroutineKeeper m_clearDodgeCoroutineKeeper;

	protected Dictionary<PlayerCharacter.ComboType, int> m_comboCounters = new Dictionary<PlayerCharacter.ComboType, int>();

	protected int m_shootModifier;

	protected bool m_isChargingAbility;

	protected bool m_abilityFullyCharged;

	private WorldWidget m_reviveIndicator;

	private WorldWidget m_playerNameplate;

	private HashSet<CharacterUpgrade> m_appliedCharacterUpgrades = new HashSet<CharacterUpgrade>();

	private PlayerData m_playerData;

	private bool m_canAttackInAir = true;

	private bool m_canDodgeInAir = true;

	private Timer m_specialLeftButtonTimer;

	private Timer m_specialRightButtonTimer;

	protected int m_teamAttackSetupPlayerPhotonViewID = -1;

	private BaseCharacter m_CounterTarget;

	private BaseCharacter m_TeamAttackTarget;

	private float m_lastTimeHitEnemy;

	private PlayerCharacter.NotEnoughAuraDelegate event_OnNotEnoughAura;

	private PlayerCharacter.AbilityChangeDelegate event_OnAbilityChange;

	public bool CanCreateSelfTeamAttacks
	{
		get
		{
			return (PhotonNetwork.offlineMode ? true : (int)PhotonNetwork.playerList.Length == 1);
		}
	}

	public PlayerData Data
	{
		get
		{
			if (this.m_playerData == null)
			{
				this.m_playerData = Singleton_MonoBehaviour<GameManager>.Instance.GameData.GetPlayerData(this);
			}
			return this.m_playerData;
		}
	}

	public POITarget DeadPOI
	{
		get
		{
			return this.m_deadPOI;
		}
	}

	public BaseCharacter.Hardpoints HardPoints
	{
		get
		{
			return this.m_hardpoints;
		}
	}

	public override bool IsControlledLocally
	{
		get
		{
			return Singleton_MonoBehaviour<GameManager>.Instance.LocalPlayer == this;
		}
	}

	public bool IsSprinting
	{
		get
		{
			return this.m_isSprinting;
		}
	}

	public bool IsTeamAttacking
	{
		get;
		protected set;
	}

	public float LastTimeHitEnemy
	{
		get
		{
			return this.m_lastTimeHitEnemy;
		}
	}

	public PlayableCharacterDefinition PlayableCharacterDefinition
	{
		get
		{
			return base.Definition as PlayableCharacterDefinition;
		}
	}

	public int PlayerIndex
	{
		get
		{
			if (this.Data == null)
			{
				return -1;
			}
			return this.Data.PlayerIndex;
		}
	}

	public WorldWidget PlayerNameplate
	{
		get
		{
			return this.m_playerNameplate;
		}
	}

	public WorldWidget ReviveIndicator
	{
		get
		{
			return this.m_reviveIndicator;
		}
	}

	public float ReviveProgress
	{
		get;
		set;
	}

	public int ReviveTargetPhotonViewID
	{
		get;
		set;
	}

	public Transform RootBone
	{
		get
		{
			return this.m_hardpoints.rootBone;
		}
	}

	protected PlayerCharacter()
	{
	}

	public bool AcquirePickup(PickupData pickupData, ActivatableObject[] activatableObjects)
	{
		Roost.Debug.Assert(pickupData != null);
		Roost.Debug.Assert(Singleton_MonoBehaviour<ConnectionManager>.Instance.IsServer);
		if (pickupData.IsKey)
		{
			if (!string.IsNullOrEmpty(this.m_playerData.KeyPickupDataID))
			{
				return false;
			}
			this.m_playerData.ClearKeyData();
			this.m_playerData.KeyPickupDataID = pickupData.ID;
			if (activatableObjects != null)
			{
				int num = 0;
				for (int i = 0; i < 4; i++)
				{
					while (num < (int)activatableObjects.Length)
					{
						if (activatableObjects[num] == null)
						{
							num++;
						}
						else
						{
							this.m_playerData.ActivatableObjectViewIDs[i] = activatableObjects[num].photonView.viewID;
							num++;
							break;
						}
					}
				}
			}
		}
		if (pickupData.Award != null)
		{
			Singleton_MonoBehaviour<GameManager>.Instance.ApplyAward(this.Data, pickupData.Award, true);
		}
		base.photonView.RPC("AcquirePickup_RPC", base.photonView.owner, new object[] { pickupData.ID });
		return true;
	}

	[PunRPC]
	public void AcquirePickup_RPC(string pickupDataID)
	{
		Roost.Debug.Assert(this.IsControlledLocally);
		PickupData pickupDatum = Singleton_MonoBehaviour<GameManager>.Instance.GameplayDatabase.PickupDataDatabase.FindOrGetDefault(pickupDataID);
		if (pickupDatum != null)
		{
			this.m_statsScript.AddHealth(pickupDatum.Health);
		}
	}

	protected void AirHover()
	{
		if (!base.IsGrounded)
		{
			this.m_gravity = 15f;
			this.m_gravitySpeed = 0.1f;
		}
	}

	public virtual void ApplyCharacterUpgrade(CharacterUpgrade characterUpgrade)
	{
		Roost.Debug.Assert(characterUpgrade != null);
		Roost.Debug.Assert(!this.HasAppliedCharacterUpgrade(characterUpgrade));
		base.Stats.AddMaxHealth(characterUpgrade.ExtraHealth);
		base.Stats.AddMaxSpecial(characterUpgrade.ExtraSpecial);
		if (characterUpgrade.IsShieldRechargeUpgrade)
		{
			base.Stats.m_stats.ShieldDepletedTimeSeconds = characterUpgrade.ShieldDepletedTimeSeconds;
			base.Stats.m_stats.ShieldRechargeTimeSeconds = characterUpgrade.ShieldRechargeTimeSeconds;
		}
		if (characterUpgrade.IsMaxShieldUpgrade)
		{
			base.Stats.SetMaxShield(characterUpgrade.MaxShield);
			base.Stats.m_stats.ShieldBarWidth = characterUpgrade.ShieldBarWidth;
		}
		if (characterUpgrade.IsHitsPerSpecialUpgrade)
		{
			base.Stats.m_stats.hitsPerSpecialAward = characterUpgrade.HitsPerSpecial;
		}
		if (characterUpgrade.IsSpecialProgressForHitStreakUpgrade)
		{
			base.Stats.m_stats.specialProgressForHitStreak = characterUpgrade.SpecialProgressForHitStreak;
		}
		if (characterUpgrade.IsHitchainResilianceUpgrade)
		{
			base.Stats.m_stats.hitchainResilaince = characterUpgrade.HitchainResiliance;
			base.Stats.m_stats.hitchainResetSeconds = characterUpgrade.HitchainResetSeconds;
		}
		if (characterUpgrade.IsSecondWindUpgrade)
		{
			base.Stats.m_stats.hasSecondWind = true;
			base.Stats.m_stats.secondWindSpecialPercentage = characterUpgrade.SecondWindSpecialPercentage;
			base.Stats.m_stats.secondWindCooldownSeconds = characterUpgrade.SecondWindCooldownSeconds;
		}
		if (characterUpgrade.IsReviveTimeUpgrade)
		{
			base.Stats.m_stats.TotalReviveTimeSeconds = characterUpgrade.TotalReviveTimeSeconds;
		}
		FieldInfo[] array = (
			from field in characterUpgrade.UpgradedPlayerAbilities.GetType().GetFields(BindingFlags.Instance | BindingFlags.Public)
			where field.GetValue(characterUpgrade.UpgradedPlayerAbilities) != null
			select field).ToArray<FieldInfo>();
		FieldInfo[] fieldInfoArray = array;
		for (int i = 0; i < (int)fieldInfoArray.Length; i++)
		{
			FieldInfo fieldInfo = fieldInfoArray[i];
			if (!fieldInfo.FieldType.IsArray)
			{
				fieldInfo.SetValue(this.m_playerAbilities, fieldInfo.GetValue(characterUpgrade.UpgradedPlayerAbilities));
			}
			else
			{
				AbilityData[] value = fieldInfo.GetValue(this.m_playerAbilities) as AbilityData[];
				AbilityData[] abilityDataArray = fieldInfo.GetValue(characterUpgrade.UpgradedPlayerAbilities) as AbilityData[];
				if ((int)abilityDataArray.Length != 0)
				{
					if (value != null && abilityDataArray != null)
					{
						AbilityData[] abilityDataArray1 = new AbilityData[Mathf.Max((int)value.Length, (int)abilityDataArray.Length)];
						for (int j = 0; j < (int)abilityDataArray1.Length; j++)
						{
							if (j >= (int)abilityDataArray.Length || !(abilityDataArray[j] != null))
							{
								abilityDataArray1[j] = value[j];
							}
							else
							{
								abilityDataArray1[j] = abilityDataArray[j];
							}
						}
						fieldInfo.SetValue(this.m_playerAbilities, abilityDataArray1);
					}
				}
			}
		}
		if (this.event_OnAbilityChange != null)
		{
			this.event_OnAbilityChange();
		}
		this.m_appliedCharacterUpgrades.Add(characterUpgrade);
	}

	protected override void Awake()
	{
		base.Awake();
		this.m_playerNameplate = Util.InstantiatePrefabAsChild<WorldWidget>(Singleton_MonoBehaviour<WorldUI>.Instance.PlayerNameplate, Singleton_MonoBehaviour<WorldUI>.Instance.EnemyBarTransform);
		Roost.Debug.Assert(this.m_playerNameplate != null);
		this.m_playerNameplate.Initialize(this.m_hardpoints.UITopPoint);
		this.m_playerNameplate.gameObject.SetActive(false);
		this.m_reviveIndicator = Util.InstantiatePrefabAsChild<WorldWidget>(Singleton_MonoBehaviour<WorldUI>.Instance.ReviveIndicatorPrefab, Singleton_MonoBehaviour<WorldUI>.Instance.EnemyBarTransform);
		Roost.Debug.Assert(this.m_reviveIndicator != null);
		this.m_reviveIndicator.Initialize(this.m_hardpoints.UITopPoint);
		this.m_reviveIndicator.gameObject.SetActive(false);
		this.ReviveTargetPhotonViewID = -1;
		this.ReviveProgress = 0f;
		this.m_comboCounters.Add(PlayerCharacter.ComboType.Melee, 0);
		this.m_comboCounters.Add(PlayerCharacter.ComboType.Ranged, 0);
		base.event_OnHit += new BaseEntity.DamageEventDelegate((BaseEntity victim, BaseEntity attacker, HitInfo hitInfo) => {
			if (attacker == this && victim != attacker)
			{
				this.m_lastTimeHitEnemy = Time.time;
			}
		});
		Roost.Debug.Assert(this.m_playerAnimations.KOIdle != null);
		this.m_animation[this.m_playerAnimations.KOIdle.name].layer = 1;
		this.m_clearDodgeCoroutineKeeper = CoroutineKeeper.Create();
	}

	public override void Cancel()
	{
		base.Cancel();
		this.ResetComboCounter();
		this.m_isChargingAbility = false;
		this.m_abilityFullyCharged = false;
		this.m_failedCounter = false;
		this.m_uninterruptibleAbility = false;
		this.IsTeamAttacking = false;
		this.m_canAttackInAir = base.IsGrounded;
		this.ResetComboFlags();
	}

	private void ClearDodge()
	{
		base.RevertToDefaultHitState();
		this.m_canDodge = true;
	}

	public bool CouldCounterTarget(BaseEntity target)
	{
		return (this.m_uninterruptibleAbility || !(target != null) ? false : target == this.m_CounterTarget);
	}

	protected void DustSmash(Vector3 spawnPosition)
	{
		Vector3 vector3 = FXManager.Instance.CreateLandEffect(spawnPosition, 0f, 6f, Quaternion.Euler(-90f, 0f, 0f)).transform.position;
		FXManager.Instance.CreateEffect(vector3, Quaternion.Euler(-90f, 0f, 0f), 0f, 9f);
	}

	protected void FireBullet(BaseEntity target, Attack attack)
	{
		RaycastHit raycastHit;
		Roost.Debug.Assert(attack != null);
		Roost.Debug.Assert(attack.HitInfo != null);
		Roost.Debug.Assert(this.m_hardpoints.MuzzlePrimary != null);
		Vector3 vector3 = base.transform.forward;
		if (target != null)
		{
			vector3 = target.Center() - this.m_hardpoints.MuzzlePrimary.position;
		}
		if (Physics.Raycast(this.m_hardpoints.MuzzlePrimary.position, vector3, out raycastHit, Single.PositiveInfinity, attack.RangedLayerMask))
		{
			BaseCharacter component = raycastHit.transform.GetComponent<BaseCharacter>();
			if (!(component != null) || !this.IsHostileTowards(component) || !component.CanBeDamaged())
			{
				Prop prop = raycastHit.transform.GetComponent<Prop>();
				if (prop != null)
				{
					prop.Damage(this, attack);
				}
				FXManager.Instance.CreateEffect(raycastHit.point, base.transform.rotation, 3f, 4f);
			}
			else
			{
				component.Damage(this, attack);
			}
		}
	}

	public Sprite GetCharacterPortraitSprite()
	{
		PlayableCharacterDefinition definition = base.Definition as PlayableCharacterDefinition;
		if (definition == null)
		{
			return null;
		}
		return definition.CharacterPortrait;
	}

	protected override Vector3 GetDesiredDirection()
	{
		Roost.Debug.Assert(this.m_baseCharacterController != null);
		return this.m_baseCharacterController.GetDesiredDirection();
	}

	public override float GetTeamAttackProbabilityMultiplier(Attack attack)
	{
		float heavyTeamAttackProbabilityUpgrade = (!PhotonNetwork.offlineMode ? 1f : 0.5f);
		if (attack != null)
		{
			if (this.m_appliedCharacterUpgrades.Any<CharacterUpgrade>((CharacterUpgrade upgrade) => upgrade.IsHeavyTeamAttackProbabilityUpgrade) && (attack.HitInfo != null && attack.HitInfo.KillStats.Contains<Stat>(Stat.Database.Stat_Heavy_Kills_Total) || attack.CriticalHitInfo != null && attack.CriticalHitInfo.KillStats.Contains<Stat>(Stat.Database.Stat_Heavy_Kills_Total)))
			{
				heavyTeamAttackProbabilityUpgrade = heavyTeamAttackProbabilityUpgrade * GlobalSettings.HeavyTeamAttackProbabilityUpgrade;
			}
		}
		return heavyTeamAttackProbabilityUpgrade;
	}

	public bool HasAppliedCharacterUpgrade(CharacterUpgrade characterUpgrade)
	{
		return this.m_appliedCharacterUpgrades.Contains(characterUpgrade);
	}

	public override bool IsHostileTowards(BaseEntity baseEntity)
	{
		if (!baseEntity.IsDead)
		{
			if (baseEntity is GrimmCharacter)
			{
				return true;
			}
			Prop prop = baseEntity as Prop;
			if (prop != null && prop.PropType == Prop.PropTypeEnum.Breakable)
			{
				return true;
			}
		}
		return false;
	}

	public bool IsTeamAttackTarget(BaseEntity target)
	{
		return (this.m_uninterruptibleAbility || !(target != null) ? false : target == this.m_TeamAttackTarget);
	}

	public bool IsWithinTeamAttackRange(BaseEntity target)
	{
		return (target == null ? false : Vector3.Distance(target.transform.position, base.transform.position) < this.m_playerAbilities.TeamAttack.TargetingFilters.MaxRange);
	}

	public void LevelUp()
	{
		base.photonView.RPC("LevelUp_RPC", PhotonTargets.All, new object[0]);
	}

	[PunRPC]
	public void LevelUp_RPC()
	{
		if (this.m_playerEffects.LevelUp != null)
		{
			Util.InstantiatePrefab<Transform>(Singleton_MonoBehaviour<GameManager>.Instance.GameplayDatabase.FXDatabase.LevelUp, this.m_hardpoints.rootBone.position, this.m_hardpoints.rootBone.rotation, base.transform);
		}
	}

	protected override void OnAbilityComplete()
	{
		if (Singleton_MonoBehaviour<ConnectionManager>.Instance.IsServer && this.m_teamAttackSetupPlayerPhotonViewID >= 0 && this.Data.CharacterPhotonViewID != this.m_teamAttackSetupPlayerPhotonViewID)
		{
			PlayerData playerDataFromCharacterPhotonViewID = Singleton_MonoBehaviour<GameManager>.Instance.GameData.GetPlayerDataFromCharacterPhotonViewID(this.m_teamAttackSetupPlayerPhotonViewID);
			if (playerDataFromCharacterPhotonViewID != null)
			{
				Singleton_MonoBehaviour<GameManager>.Instance.ApplyAward(playerDataFromCharacterPhotonViewID, Singleton_MonoBehaviour<GameManager>.Instance.GameplayDatabase.AwardDefinitionDatabase.TeamAttackAward, true);
			}
			Singleton_MonoBehaviour<GameManager>.Instance.ApplyAward(this.Data, Singleton_MonoBehaviour<GameManager>.Instance.GameplayDatabase.AwardDefinitionDatabase.TeamAttackAward, true);
		}
	}

	protected override void OnDestroy()
	{
		this.m_clearDodgeCoroutineKeeper.Release();
		base.OnDestroy();
	}

	protected void OnFailedCounter()
	{
		this.m_failedCounter = true;
		if (this.IsControlledLocally)
		{
			IEnumerator<BaseEntity> enumerator = (
				from entity in Singleton_MonoBehaviour<GameManager>.Instance.Entities
				orderby Vector3.Distance(entity.transform.position, base.transform.position)
				select entity).GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					RWBYAI component = enumerator.Current.GetComponent<RWBYAI>();
					if (!(component != null) || !component.AttemptFailedCounterReaction())
					{
						continue;
					}
					break;
				}
			}
			finally
			{
				if (enumerator == null)
				{
				}
				enumerator.Dispose();
			}
		}
	}

	public override void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
	{
		base.OnPhotonSerializeView(stream, info);
		if (!stream.isWriting)
		{
			this.ReviveTargetPhotonViewID = (int)stream.ReceiveNext();
			this.ReviveProgress = (float)stream.ReceiveNext();
		}
		else
		{
			stream.SendNext(this.ReviveTargetPhotonViewID);
			stream.SendNext(this.ReviveProgress);
		}
	}

	protected Quaternion ReorientPlayer(AbilityData abilityData, ref BaseEntity target)
	{
		if (!this.IsControlledLocally)
		{
			return base.transform.rotation;
		}
		Vector3 desiredDirection = base.transform.forward;
		target = this.SelectTarget(abilityData);
		if (target != null)
		{
			desiredDirection = target.transform.position - base.transform.position;
		}
		else if (this.m_baseCharacterController.IsDirectionIndicated())
		{
			desiredDirection = this.m_baseCharacterController.GetDesiredDirection();
		}
		return Quaternion.LookRotation(Vector3.ProjectOnPlane(desiredDirection.normalized, Vector3.up));
	}

	protected void ResetComboCounter()
	{
		PlayerCharacter.ComboType[] array = this.m_comboCounters.Keys.ToArray<PlayerCharacter.ComboType>();
		for (int i = 0; i < (int)array.Length; i++)
		{
			this.m_comboCounters[array[i]] = 0;
		}
	}

	protected void ResetComboFlags()
	{
		this.m_canPerformCombo = false;
		this.m_queuedCombo = PlayerCharacter.ActionType.None;
		this.m_queuedindex = 0;
	}

	public void Respawn(Transform spawnPoint)
	{
		base.photonView.RPC("Respawn_RPC", PhotonTargets.All, new object[] { spawnPoint.position, spawnPoint.rotation });
	}

	[PunRPC]
	public void Respawn_RPC(Vector3 position, Quaternion rotation)
	{
		if (Singleton_MonoBehaviour<ConnectionManager>.Instance.IsServer)
		{
			this.Data.FuelCount = 0;
		}
		this.m_isDead = false;
		base.Stats.SetRespawnStats();
		base.transform.position = position;
		base.transform.rotation = rotation;
		this.m_animation.Stop(this.m_playerAnimations.KOIdle.name);
		this.m_inAction = false;
		base.RevertToDefaultHitState();
	}

	public void SecondWind()
	{
		base.photonView.RPC("SecondWind_RPC", PhotonTargets.All, new object[0]);
	}

	[PunRPC]
	public void SecondWind_RPC()
	{
		if (this.m_playerEffects.SecondWind != null)
		{
			Util.InstantiatePrefab<Transform>(this.m_playerEffects.SecondWind, this.m_hardpoints.rootBone.position, this.m_hardpoints.rootBone.rotation, base.transform);
		}
	}

	private void SelectAttack(PlayerCharacter.ActionType attackType)
	{
		PlayerCharacter.ActionType actionType;
		base.NotifyCamera();
		if (!this.m_inLightAction || !base.IsGrounded)
		{
			actionType = attackType;
			switch (actionType)
			{
				case PlayerCharacter.ActionType.LightAttack:
				{
					if (base.IsGrounded)
					{
						this.UseAutotargetAbility(this.m_playerAbilities.LightCombo[this.m_comboCounters[PlayerCharacter.ComboType.Melee]]);
					}
					else if (this.m_canAttackInAir)
					{
						this.UseAutotargetAbility(this.m_playerAbilities.LightComboAir[this.m_comboCounters[PlayerCharacter.ComboType.Melee]]);
					}
					break;
				}
				case PlayerCharacter.ActionType.HeavyAttack:
				{
					if (base.IsGrounded)
					{
						if (this.m_comboCounters[PlayerCharacter.ComboType.Melee] != 0)
						{
							this.UseAutotargetAbility(this.m_playerAbilities.HeavyCombo[this.m_comboCounters[PlayerCharacter.ComboType.Melee] - 1]);
						}
						else
						{
							this.UseAutotargetAbility(this.m_playerAbilities.HeavyBasic);
						}
					}
					else if (this.m_canAttackInAir)
					{
						this.UseAutotargetAbility(this.m_playerAbilities.HeavyComboAir);
					}
					break;
				}
				case PlayerCharacter.ActionType.RangedAttack:
				{
					if (this.m_canAttackInAir)
					{
						this.UseAutotargetAbility(this.m_playerAbilities.RangedCombo[this.m_comboCounters[PlayerCharacter.ComboType.Ranged]]);
					}
					break;
				}
			}
		}
		else
		{
			actionType = attackType;
			if (actionType == PlayerCharacter.ActionType.LightAttack)
			{
				this.UseAutotargetAbility(this.m_playerAbilities.LightDodgeAttack);
				this.m_inLightAction = false;
			}
			else if (actionType == PlayerCharacter.ActionType.HeavyAttack)
			{
				this.UseAutotargetAbility((this.m_comboCounters[PlayerCharacter.ComboType.Melee] <= 0 ? this.m_playerAbilities.HeavyCombo.FirstOrDefault<AbilityData>() : this.m_playerAbilities.HeavyCombo[this.m_comboCounters[PlayerCharacter.ComboType.Melee] - 1]));
				this.m_inLightAction = false;
			}
		}
	}

	private BaseEntity SelectTarget(AbilityData abilityData)
	{
		Roost.Debug.Assert(abilityData != null);
		BaseEntity baseEntity = null;
		if (abilityData.AutotargetData != null)
		{
			bool flag = this.m_baseCharacterController.IsDirectionIndicated();
			Vector3 desiredDirection = this.m_baseCharacterController.GetDesiredDirection();
			Vector3 vector3 = (!flag ? Singleton_MonoBehaviour<GameManager>.Instance.PlayerCamera.transform.forward : desiredDirection);
			vector3.y = 0f;
			vector3.Normalize();
			BaseEntity mPreviousTarget = null;
			if (this.m_previousTarget != null && Time.time - this.m_previousTargetTime < 0.75f && TargetingFilters.DoesTargetPassFilter(this, this.m_previousTarget, abilityData.TargetingFilters))
			{
				mPreviousTarget = this.m_previousTarget;
			}
			IEnumerable<BaseEntity> filteredTargets = TargetingFilters.GetFilteredTargets(this, abilityData.TargetingFilters);
			baseEntity = AutotargetData.SelectTarget(abilityData.AutotargetData, filteredTargets, mPreviousTarget, this, flag, desiredDirection);
		}
		return baseEntity;
	}

	[PunRPC]
	protected void SetAbilityChargeState_RPC(bool isFullyCharged)
	{
		this.m_abilityFullyCharged = isFullyCharged;
		this.m_isChargingAbility = false;
	}

	protected override void SetAttack(AbilityData abilityData, BaseEntity target)
	{
		Roost.Debug.Assert(abilityData != null);
		base.SetAttack(abilityData, target);
		this.ResetComboFlags();
		if (abilityData.ResetComboCounter)
		{
			this.ResetComboCounter();
		}
		if (abilityData.IncreaseComboCounter)
		{
			Dictionary<PlayerCharacter.ComboType, int> mComboCounters = this.m_comboCounters;
			Dictionary<PlayerCharacter.ComboType, int> comboTypes = mComboCounters;
			PlayerCharacter.ComboType comboType = abilityData.ComboType;
			mComboCounters[comboType] = comboTypes[comboType] + 1;
		}
		if (abilityData.IsUninterruptible)
		{
			this.m_uninterruptibleAbility = true;
		}
		if (Singleton_MonoBehaviour<ConnectionManager>.Instance.IsServer)
		{
			this.m_teamAttackSetupPlayerPhotonViewID = -1;
		}
		if (!this.m_canDodge)
		{
			this.m_clearDodgeCoroutineKeeper.StopAllCoroutines();
			this.ClearDodge();
		}
	}

	protected void SetDodge(float dodgeForTime)
	{
		this.m_canDodge = false;
		this.m_inLightAction = true;
		this.m_inAction = false;
		base.SetCurrentHitState(BaseEntity.HitState.Invincible);
		FXManager.Instance.LandDust(base.transform);
		Color.white.a = 0.25f;
		this.m_clearDodgeCoroutineKeeper.StartCoroutine(Util.WaitForSecondsThenPerformAction(dodgeForTime, new Action(this.ClearDodge)));
	}

	protected void ShootFX(Transform muzzleTransform)
	{
		Roost.Debug.Assert(this.m_playerEffects.MuzzleFlash != null);
		Roost.Debug.Assert(muzzleTransform != null);
		Util.InstantiatePrefabAsChild<Transform>(this.m_playerEffects.MuzzleFlash, muzzleTransform);
		this.m_characterFX.EjectShell(muzzleTransform.position);
	}

	private void StartAbility(AbilityData currentAbility)
	{
		base.NotifyCamera();
		if (currentAbility != null)
		{
			this.UseAutotargetAbility(currentAbility);
		}
	}

	protected override void Update()
	{
		base.Update();
		this.UpdateCharacterUpgrades();
		this.m_playerPOI.Show = (this.IsControlledLocally ? false : !base.IsDead);
		bool flag = (this.Data == null ? false : this.Data.FuelCount > 0);
		this.m_personalPayloadFuelPOI.Show = (!flag ? false : this.IsControlledLocally);
		this.m_payloadFuelPOI.Show = (!flag ? false : !this.IsControlledLocally);
		PickupData pickupDatum = null;
		if (this.Data != null)
		{
			pickupDatum = Singleton_MonoBehaviour<GameManager>.Instance.GameplayDatabase.PickupDataDatabase.FindOrGetDefault(this.Data.KeyPickupDataID);
		}
		if (pickupDatum != null)
		{
			this.m_personalKeyPOI.SetOverridePOISprite(pickupDatum.KeyPOISprite);
			this.m_keyPOI.SetOverridePOISprite(pickupDatum.KeyPOISprite);
		}
		this.m_personalKeyPOI.Show = (pickupDatum == null ? false : this.IsControlledLocally);
		this.m_keyPOI.Show = (pickupDatum == null ? false : !this.IsControlledLocally);
		Roost.Debug.Assert(this.m_playerBlipTarget != null);
		this.m_playerBlipTarget.enabled = this.IsControlledLocally;
		Roost.Debug.Assert(this.m_teammateBlipTarget != null);
		this.m_teammateBlipTarget.enabled = !this.IsControlledLocally;
		PlayerCharacter mCanDodgeInAir = this;
		mCanDodgeInAir.m_canDodgeInAir = mCanDodgeInAir.m_canDodgeInAir | base.IsGrounded;
		PlayerCharacter mCanAttackInAir = this;
		mCanAttackInAir.m_canAttackInAir = mCanAttackInAir.m_canAttackInAir | base.IsGrounded;
		if (base.IsDead)
		{
			this.m_inAction = true;
			base.SetCurrentHitState(BaseEntity.HitState.Invincible);
			this.m_animation.CrossFade(this.m_playerAnimations.KOIdle.name, 0.1f);
		}
		if (this.IsControlledLocally && Singleton_MonoBehaviour<GameManager>.Instance.AllowPlayerControl && !Singleton_MonoBehaviour<GameManager>.Instance.State.ForcePlayerWalking())
		{
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.CameraCenter.WasPressed)
			{
				Singleton_MonoBehaviour<GameManager>.Instance.PlayerCamera.CenterCamera();
			}
			if (this.m_CounterTarget != null && !TargetingFilters.DoesTargetPassFilter(this, this.m_CounterTarget, this.m_playerAbilities.Counter.TargetingFilters))
			{
				this.m_CounterTarget = null;
			}
			if (this.m_CounterTarget == null)
			{
				float lastCounterTime = Single.MaxValue;
				IEnumerator<BaseCharacter> enumerator = TargetingFilters.GetFilteredTargets(this, this.m_playerAbilities.Counter.TargetingFilters).OfType<BaseCharacter>().GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						BaseCharacter current = enumerator.Current;
						if (current.LastCounterTime >= lastCounterTime)
						{
							continue;
						}
						lastCounterTime = current.LastCounterTime;
						this.m_CounterTarget = current;
					}
				}
				finally
				{
					if (enumerator == null)
					{
					}
					enumerator.Dispose();
				}
			}
			this.m_TeamAttackTarget = (
				from target in TargetingFilters.GetFilteredTargets(this, this.m_playerAbilities.TeamAttack.TargetingFilters).OfType<BaseCharacter>()
				orderby Vector3.Distance(base.transform.position, target.transform.position)
				select target).FirstOrDefault<BaseCharacter>();
			PlayerCharacter.ActionType mQueuedCombo = this.m_queuedCombo;
			int mQueuedindex = this.m_queuedindex;
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Dodge.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.Dodge;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Counter.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.Counter;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Attack.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.LightAttack;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Heavy.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.HeavyAttack;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Shoot.WasPressed || Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Shoot.WasRepeated)
			{
				mQueuedCombo = PlayerCharacter.ActionType.RangedAttack;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Taunt.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.Taunt;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Interact.WasReleased)
			{
				mQueuedCombo = PlayerCharacter.ActionType.TeamAttack;
			}
			if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Special_Keyboard.WasPressed)
			{
				mQueuedCombo = PlayerCharacter.ActionType.SpecialAttack;
			}
			if (base.Stats.CurrentSpecial > 0)
			{
				if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Special_Controller_LB.WasPressed)
				{
					if (this.m_specialRightButtonTimer == null || this.m_specialRightButtonTimer.HasElapsed)
					{
						this.m_specialLeftButtonTimer = new Timer(0.1f);
					}
					else
					{
						mQueuedCombo = PlayerCharacter.ActionType.SpecialAttack;
					}
				}
				if (Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Special_Controller_RB.WasPressed)
				{
					if (this.m_specialLeftButtonTimer == null || this.m_specialLeftButtonTimer.HasElapsed)
					{
						this.m_specialRightButtonTimer = new Timer(0.1f);
					}
					else
					{
						mQueuedCombo = PlayerCharacter.ActionType.SpecialAttack;
					}
				}
			}
			if (!this.m_uninterruptibleAbility)
			{
				this.m_queuedCombo = mQueuedCombo;
				this.m_queuedindex = mQueuedindex;
			}
			if (!base.IsDead && !base.IsHit && !this.m_failedCounter && !this.m_uninterruptibleAbility)
			{
				Action action = () => {
					this.m_queuedCombo = PlayerCharacter.ActionType.None;
					this.m_queuedindex = 0;
				};
				if (this.m_queuedCombo == PlayerCharacter.ActionType.Counter)
				{
					Roost.Debug.Assert(this.m_playerAbilities.Counter != null);
					Roost.Debug.Assert(this.m_playerAbilities.FailedCounter != null);
					if (base.InAction)
					{
						this.Cancel();
					}
					if (this.m_CounterTarget != null)
					{
						base.UseAbility(this.m_playerAbilities.Counter, this.m_CounterTarget);
					}
					else if (base.IsGrounded)
					{
						base.UseAbility(this.m_playerAbilities.FailedCounter, null);
					}
					action();
				}
				if (this.m_queuedCombo == PlayerCharacter.ActionType.TeamAttack && this.m_playerAbilities.TeamAttack != null && this.m_TeamAttackTarget != null)
				{
					if (base.InAction)
					{
						this.Cancel();
					}
					base.UseAbility(this.m_playerAbilities.TeamAttack, this.m_TeamAttackTarget);
					action();
				}
				if (!base.InAction || this.m_canPerformCombo)
				{
					switch (this.m_queuedCombo)
					{
						case PlayerCharacter.ActionType.Dodge:
						{
							if (this.m_canDodge && this.m_canDodgeInAir && Singleton_MonoBehaviour<GameManager>.Instance.PlayerCamera.LockOnTarget == null)
							{
								base.NotifyCamera();
								this.m_canDodgeInAir = false;
								base.UseAbility((!base.IsGrounded ? this.m_playerAbilities.DodgeAir : this.m_playerAbilities.DodgeLand), null);
							}
							goto case PlayerCharacter.ActionType.TeamAttack;
						}
						case PlayerCharacter.ActionType.Counter:
						case PlayerCharacter.ActionType.LightAttack:
						case PlayerCharacter.ActionType.HeavyAttack:
						case PlayerCharacter.ActionType.RangedAttack:
						{
							this.SelectAttack(this.m_queuedCombo);
							goto case PlayerCharacter.ActionType.TeamAttack;
						}
						case PlayerCharacter.ActionType.SpecialAttack:
						{
							if (this.m_playerAbilities.SpecialAttack != null)
							{
								if (base.Stats.CurrentSpecial >= this.m_playerAbilities.SpecialAttack.SpecialCost)
								{
									this.m_statsScript.AddSpecial(-this.m_playerAbilities.SpecialAttack.SpecialCost);
									base.UseAbility(this.m_playerAbilities.SpecialAttack, null);
								}
								else if (this.event_OnNotEnoughAura != null)
								{
									this.event_OnNotEnoughAura();
								}
							}
							goto case PlayerCharacter.ActionType.TeamAttack;
						}
						case PlayerCharacter.ActionType.TeamAttack:
						{
							action();
							break;
						}
						case PlayerCharacter.ActionType.Taunt:
						{
							base.UseAbility(this.m_playerAbilities.Taunt, null);
							goto case PlayerCharacter.ActionType.TeamAttack;
						}
						default:
						{
							goto case PlayerCharacter.ActionType.TeamAttack;
						}
					}
				}
			}
			this.m_isSprinting = Singleton_MonoBehaviour<ApplicationManager>.Instance.PlayerInput.Dodge.IsPressed;
			this.m_animation[this.m_baseAnimations.Run.name].speed = Mathf.Lerp(this.m_animation[this.m_baseAnimations.Run.name].speed, (!this.m_isSprinting ? 1f : this.m_sprintAnimationSpeed), 5f * Time.deltaTime);
			base.MovementSpeedModifier = Mathf.Lerp(base.MovementSpeedModifier, (!this.m_isSprinting ? 1f : this.m_sprintSpeedMultiplier), 1f * Time.deltaTime);
		}
	}

	private void UpdateCharacterUpgrades()
	{
		if (this.Data != null && this.m_appliedCharacterUpgrades.Count < this.Data.Transient.PurchasedCharacterUpgradeCount)
		{
			IEnumerator<CharacterUpgrade> enumerator = this.Data.Transient.GetCharacterUpgrades().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					CharacterUpgrade current = enumerator.Current;
					Roost.Debug.Assert(current != null);
					if (this.HasAppliedCharacterUpgrade(current))
					{
						continue;
					}
					this.ApplyCharacterUpgrade(current);
				}
			}
			finally
			{
				if (enumerator == null)
				{
				}
				enumerator.Dispose();
			}
			Roost.Debug.Assert(this.m_appliedCharacterUpgrades.Count == this.Data.Transient.PurchasedCharacterUpgradeCount);
		}
	}

	private void UseAutotargetAbility(AbilityData abilityData)
	{
		Roost.Debug.Assert(abilityData != null);
		Roost.Debug.Assert(this.m_baseCharacterController != null);
		base.UseAbility(abilityData, this.SelectTarget(abilityData));
	}

	public event PlayerCharacter.AbilityChangeDelegate event_OnAbilityChange
	{
		add
		{
			this.event_OnAbilityChange += value;
		}
		remove
		{
			this.event_OnAbilityChange -= value;
		}
	}

	public event PlayerCharacter.NotEnoughAuraDelegate event_OnNotEnoughAura
	{
		add
		{
			this.event_OnNotEnoughAura += value;
		}
		remove
		{
			this.event_OnNotEnoughAura -= value;
		}
	}

	public delegate void AbilityChangeDelegate();

	public enum ActionType
	{
		None,
		Dodge,
		Counter,
		LightAttack,
		HeavyAttack,
		RangedAttack,
		SpecialAttack,
		TeamAttack,
		Taunt
	}

	public enum ComboType
	{
		Melee,
		Ranged
	}

	public delegate void NotEnoughAuraDelegate();

	[Serializable]
	public class PlayerAbilities
	{
		[Header("Utility")]
		public AbilityData WarpToTarget;

		[Header("Light Attacks")]
		public AbilityData[] LightCombo;

		public AbilityData[] LightComboAir;

		public AbilityData LightDodgeAttack;

		[Header("Ranged Attacks")]
		public AbilityData[] RangedCombo;

		[Header("Heavy Attacks")]
		public AbilityData HeavyBasic;

		public AbilityData[] HeavyCombo;

		public AbilityData HeavyComboAir;

		[Header("Dodge")]
		public AbilityData DodgeLand;

		public AbilityData DodgeAir;

		[Header("Counter")]
		public AbilityData Counter;

		public AbilityData FailedCounter;

		[Header("Special Attack")]
		public AbilityData SpecialAttack;

		[Header("Team Attack")]
		public AbilityData TeamAttack;

		[Header("Taunt")]
		public AbilityData Taunt;

		public PlayerAbilities()
		{
		}
	}

	[Serializable]
	public class PlayerAnimations
	{
		[Header("KO")]
		public AnimationClip KOFall;

		public AnimationClip KOIdle;

		public AnimationClip KORecover;

		[Header("Dodge")]
		public AnimationClip DodgeLand;

		public AnimationClip DodgeAir;

		[Header("Heavy Attacks")]
		public AnimationClip HeavyBasic_Windup;

		public AnimationClip HeavyBasic;

		public AnimationClip HeavyCombo;

		public AnimationClip HeavyFinalCombo;

		public AnimationClip HeavyAir;

		[Header("Blast")]
		public AnimationClip Blast;

		public AnimationClip BlastAir;

		public PlayerAnimations()
		{
		}
	}

	[Serializable]
	public class PlayerEffects
	{
		public Transform ShadowLines;

		public Transform MuzzleFlash;

		public Transform LevelUp;

		public Transform SecondWind;

		public PlayerEffects()
		{
		}
	}
}