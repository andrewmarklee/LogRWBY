
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern 'Assembly-CSharp'
{
  .ver 0:0:0:0
}
.assembly extern UnityEngine
{
  .ver 0:0:0:0
}
.assembly LogValues
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 09 4C 6F 67 56 61 6C 75 65 73 00 00 )       // ...LogValues..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 09 4C 6F 67 56 61 6C 75 65 73 00 00 )       // ...LogValues..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 36 00 00 )                            //  2016..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 65 37 64 64 37 31 39 62 2D 38 61 30 66   // ..$e7dd719b-8a0f
                                                                                                  2D 34 66 31 34 2D 39 34 66 30 2D 65 65 30 39 33   // -4f14-94f0-ee093
                                                                                                  31 62 30 32 35 31 33 00 00 )                      // 1b02513..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 2E 32 01   // ,Version=v4.5.2.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 35 2E 32 )          // amework 4.5.2
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module LogValues.dll
// MVID: {518397B7-1757-4B54-B785-E294E6C7069D}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00D50000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit LogValues.MySpace
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          LogHitInfo(string s,
                     class ['Assembly-CSharp']HitInfo hit,
                     string name) cil managed
  {
    // Code size       785 (0x311)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] string V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_0024

    IL_000c:  nop
    IL_000d:  ldarg.0
    IL_000e:  ldstr      "\t"
    IL_0013:  ldarg.2
    IL_0014:  ldstr      ": null\n"
    IL_0019:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_001e:  stloc.1
    IL_001f:  br         IL_030f

    IL_0024:  ldarg.0
    IL_0025:  ldstr      "\t"
    IL_002a:  ldarg.2
    IL_002b:  ldstr      ":\n"
    IL_0030:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_0035:  starg.s    s
    IL_0037:  ldarg.0
    IL_0038:  ldstr      "\t\t[BasicParamters]\n"
    IL_003d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0042:  starg.s    s
    IL_0044:  ldarg.0
    IL_0045:  ldstr      "\t\tisSmash: {0}\n"
    IL_004a:  ldarg.1
    IL_004b:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    IL_0050:  box        [mscorlib]System.Boolean
    IL_0055:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_005a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_005f:  starg.s    s
    IL_0061:  ldarg.0
    IL_0062:  ldstr      "\t\tonlyHitGround: {0}\n"
    IL_0067:  ldarg.1
    IL_0068:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    IL_006d:  box        [mscorlib]System.Boolean
    IL_0072:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0077:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_007c:  starg.s    s
    IL_007e:  ldarg.0
    IL_007f:  ldstr      "\t\tcountTowardsHitchain: {0}\n"
    IL_0084:  ldarg.1
    IL_0085:  ldfld      bool ['Assembly-CSharp']HitInfo::countTowardsHitchain
    IL_008a:  box        [mscorlib]System.Boolean
    IL_008f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0094:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0099:  starg.s    s
    IL_009b:  ldarg.0
    IL_009c:  ldstr      "\t\thitchainAmount: {0}\n"
    IL_00a1:  ldarg.1
    IL_00a2:  ldfld      int32 ['Assembly-CSharp']HitInfo::hitchainAmount
    IL_00a7:  box        [mscorlib]System.Int32
    IL_00ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00b6:  starg.s    s
    IL_00b8:  ldarg.0
    IL_00b9:  ldstr      "\t\tprogressTowardsSpecial: {0}\n"
    IL_00be:  ldarg.1
    IL_00bf:  ldfld      valuetype ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType ['Assembly-CSharp']HitInfo::progressTowardsSpecial
    IL_00c4:  box        ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType
    IL_00c9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00ce:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00d3:  starg.s    s
    IL_00d5:  ldarg.0
    IL_00d6:  ldstr      "\t\tbaseDamage: {0}\n"
    IL_00db:  ldarg.1
    IL_00dc:  ldfld      float32 ['Assembly-CSharp']HitInfo::baseDamage
    IL_00e1:  box        [mscorlib]System.Single
    IL_00e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00f0:  starg.s    s
    IL_00f2:  ldarg.0
    IL_00f3:  ldstr      "\t\tFullShieldHealthDamage: {0}\n"
    IL_00f8:  ldarg.1
    IL_00f9:  ldfld      int32 ['Assembly-CSharp']HitInfo::FullShieldHealthDamage
    IL_00fe:  box        [mscorlib]System.Int32
    IL_0103:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0108:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_010d:  starg.s    s
    IL_010f:  ldarg.0
    IL_0110:  ldstr      "\t\tPartialShieldHealthDamage: {0}\n"
    IL_0115:  ldarg.1
    IL_0116:  ldfld      int32 ['Assembly-CSharp']HitInfo::PartialShieldHealthDamage
    IL_011b:  box        [mscorlib]System.Int32
    IL_0120:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0125:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_012a:  starg.s    s
    IL_012c:  ldarg.0
    IL_012d:  ldstr      "\t\tNoShieldHealthDamage: { 0}\n"
    IL_0132:  ldarg.1
    IL_0133:  ldfld      int32 ['Assembly-CSharp']HitInfo::NoShieldHealthDamage
    IL_0138:  box        [mscorlib]System.Int32
    IL_013d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0142:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0147:  starg.s    s
    IL_0149:  ldarg.0
    IL_014a:  ldstr      "\t\tGuardDamage: { 0}\n"
    IL_014f:  ldarg.1
    IL_0150:  ldfld      int32 ['Assembly-CSharp']HitInfo::GuardDamage
    IL_0155:  box        [mscorlib]System.Int32
    IL_015a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_015f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0164:  starg.s    s
    IL_0166:  ldarg.0
    IL_0167:  ldstr      "\t\tknockBack: { 0}\n"
    IL_016c:  ldarg.1
    IL_016d:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockBack
    IL_0172:  box        [mscorlib]System.Single
    IL_0177:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_017c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0181:  starg.s    s
    IL_0183:  ldarg.0
    IL_0184:  ldstr      "\t\tknockUp: { 0}\n"
    IL_0189:  ldarg.1
    IL_018a:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockUp
    IL_018f:  box        [mscorlib]System.Single
    IL_0194:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0199:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_019e:  starg.s    s
    IL_01a0:  ldarg.0
    IL_01a1:  ldstr      "\t\tslowMultiplier: { 0}\n"
    IL_01a6:  ldarg.1
    IL_01a7:  ldfld      float32 ['Assembly-CSharp']HitInfo::slowMultiplier
    IL_01ac:  box        [mscorlib]System.Single
    IL_01b1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01b6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01bb:  starg.s    s
    IL_01bd:  ldarg.0
    IL_01be:  ldstr      "\t\thitTime: { 0}\n"
    IL_01c3:  ldarg.1
    IL_01c4:  ldfld      float32 ['Assembly-CSharp']HitInfo::hitTime
    IL_01c9:  box        [mscorlib]System.Single
    IL_01ce:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01d3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01d8:  starg.s    s
    IL_01da:  ldarg.0
    IL_01db:  ldstr      "\t\t[StaticEffect]\n"
    IL_01e0:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01e5:  starg.s    s
    IL_01e7:  ldarg.0
    IL_01e8:  ldstr      "\t\tStatusEffect: { 0}\n"
    IL_01ed:  ldarg.1
    IL_01ee:  ldfld      valuetype ['Assembly-CSharp']HitInfo/StatusEffectState ['Assembly-CSharp']HitInfo::StatusEffect
    IL_01f3:  box        ['Assembly-CSharp']HitInfo/StatusEffectState
    IL_01f8:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01fd:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0202:  starg.s    s
    IL_0204:  ldarg.0
    IL_0205:  ldstr      "\t\tStatusEffectTime: { 0}\n"
    IL_020a:  ldarg.1
    IL_020b:  ldfld      float32 ['Assembly-CSharp']HitInfo::StatusEffectTime
    IL_0210:  box        [mscorlib]System.Single
    IL_0215:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_021a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_021f:  starg.s    s
    IL_0221:  ldarg.0
    IL_0222:  ldstr      "\t\t[Chaining]\n"
    IL_0227:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_022c:  starg.s    s
    IL_022e:  ldarg.0
    IL_022f:  ldstr      "\t\tChainAttack:"
    IL_0234:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0239:  starg.s    s
    IL_023b:  ldarg.1
    IL_023c:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_0241:  ldnull
    IL_0242:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0247:  stloc.2
    IL_0248:  ldloc.2
    IL_0249:  brfalse.s  IL_025c

    IL_024b:  nop
    IL_024c:  ldarg.0
    IL_024d:  ldstr      " null\n"
    IL_0252:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0257:  starg.s    s
    IL_0259:  nop
    IL_025a:  br.s       IL_02d1

    IL_025c:  nop
    IL_025d:  ldarg.0
    IL_025e:  ldstr      "\n"
    IL_0263:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0268:  starg.s    s
    IL_026a:  ldarg.1
    IL_026b:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_0270:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    IL_0275:  ldnull
    IL_0276:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    IL_027b:  stloc.3
    IL_027c:  ldloc.3
    IL_027d:  brfalse.s  IL_029c

    IL_027f:  ldarg.0
    IL_0280:  ldstr      "\t\t\tHitInfo.ID: {0}\n"
    IL_0285:  ldarg.1
    IL_0286:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_028b:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    IL_0290:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0295:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_029a:  starg.s    s
    IL_029c:  ldarg.1
    IL_029d:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_02a2:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    IL_02a7:  ldnull
    IL_02a8:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    IL_02ad:  stloc.s    V_4
    IL_02af:  ldloc.s    V_4
    IL_02b1:  brfalse.s  IL_02d0

    IL_02b3:  ldarg.0
    IL_02b4:  ldstr      "\t\t\tCriticalHitInfo.ID: {0}\n"
    IL_02b9:  ldarg.1
    IL_02ba:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_02bf:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    IL_02c4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02ce:  starg.s    s
    IL_02d0:  nop
    IL_02d1:  ldarg.0
    IL_02d2:  ldstr      "\t\tChainDistance: { 0}\n"
    IL_02d7:  ldarg.1
    IL_02d8:  ldfld      float32 ['Assembly-CSharp']HitInfo::ChainDistance
    IL_02dd:  box        [mscorlib]System.Single
    IL_02e2:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02e7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02ec:  starg.s    s
    IL_02ee:  ldarg.0
    IL_02ef:  ldstr      "\t\tChainCount: { 0}\n"
    IL_02f4:  ldarg.1
    IL_02f5:  ldfld      int32 ['Assembly-CSharp']HitInfo::ChainCount
    IL_02fa:  box        [mscorlib]System.Int32
    IL_02ff:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0304:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0309:  starg.s    s
    IL_030b:  ldarg.0
    IL_030c:  stloc.1
    IL_030d:  br.s       IL_030f

    IL_030f:  ldloc.1
    IL_0310:  ret
  } // end of method MySpace::LogHitInfo

  .method public hidebysig static string 
          LogAttack(string s,
                    class ['Assembly-CSharp']Attack atk,
                    string name) cil managed
  {
    // Code size       115 (0x73)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_001c

    IL_000c:  nop
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  ldstr      ": null\n"
    IL_0014:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_0071

    IL_001c:  ldarg.0
    IL_001d:  ldarg.2
    IL_001e:  ldstr      ":\n"
    IL_0023:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0028:  starg.s    s
    IL_002a:  ldarg.0
    IL_002b:  ldstr      "\tTeamAttackProbability {0}"
    IL_0030:  ldarg.1
    IL_0031:  ldfld      float32 ['Assembly-CSharp']Attack::TeamAttackProbability
    IL_0036:  box        [mscorlib]System.Single
    IL_003b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0040:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0045:  starg.s    s
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    IL_004e:  ldstr      "HitInfo"
    IL_0053:  call       string LogValues.MySpace::LogHitInfo(string,
                                                              class ['Assembly-CSharp']HitInfo,
                                                              string)
    IL_0058:  starg.s    s
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    IL_0061:  ldstr      "CriticalHitInfo"
    IL_0066:  call       string LogValues.MySpace::LogHitInfo(string,
                                                              class ['Assembly-CSharp']HitInfo,
                                                              string)
    IL_006b:  starg.s    s
    IL_006d:  ldarg.0
    IL_006e:  stloc.1
    IL_006f:  br.s       IL_0071

    IL_0071:  ldloc.1
    IL_0072:  ret
  } // end of method MySpace::LogAttack

  .method public hidebysig static void  LogAbilityData(class ['Assembly-CSharp']AbilityData ad) cil managed
  {
    // Code size       829 (0x33d)
    .maxstack  4
    .locals init ([0] string s)
    IL_0000:  nop
    IL_0001:  ldstr      ""
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldstr      "ReactionInfo:\n"
    IL_000d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldstr      "\tLightAttack: {0}\n"
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_001f:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::LightAttack
    IL_0024:  box        [mscorlib]System.Boolean
    IL_0029:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_002e:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0033:  stloc.0
    IL_0034:  ldloc.0
    IL_0035:  ldstr      "\tHeavyAttack: {0}\n"
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0040:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::HeavyAttack
    IL_0045:  box        [mscorlib]System.Boolean
    IL_004a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_004f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0054:  stloc.0
    IL_0055:  ldloc.0
    IL_0056:  ldstr      "\tDodgeAttack: {0}\n"
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0061:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Dodge
    IL_0066:  box        [mscorlib]System.Boolean
    IL_006b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0070:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0075:  stloc.0
    IL_0076:  ldloc.0
    IL_0077:  ldstr      "\tCounterAttack: {0}\n"
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0082:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Counter
    IL_0087:  box        [mscorlib]System.Boolean
    IL_008c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0091:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0096:  stloc.0
    IL_0097:  ldloc.0
    IL_0098:  ldstr      "\tIndex: {0}\n"
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_00a3:  ldfld      int32 ['Assembly-CSharp']AbilityData/ReactionData::Index
    IL_00a8:  box        [mscorlib]System.Int32
    IL_00ad:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00b2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00b7:  stloc.0
    IL_00b8:  ldloc.0
    IL_00b9:  ldstr      "Ability Name: "
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      string ['Assembly-CSharp']AbilityData::AbilityName
    IL_00c4:  ldstr      "\n"
    IL_00c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_00ce:  stloc.0
    IL_00cf:  ldloc.0
    IL_00d0:  ldstr      "Coroutine Name: "
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      string ['Assembly-CSharp']AbilityData::CoroutineName
    IL_00db:  ldstr      "\n"
    IL_00e0:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_00e5:  stloc.0
    IL_00e6:  ldloc.0
    IL_00e7:  ldstr      "Special Cost: {0}\n"
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      int32 ['Assembly-CSharp']AbilityData::SpecialCost
    IL_00f2:  box        [mscorlib]System.Int32
    IL_00f7:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00fc:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0101:  stloc.0
    IL_0102:  ldloc.0
    IL_0103:  ldstr      "ComboType: {0}\n"
    IL_0108:  ldarg.0
    IL_0109:  ldfld      valuetype ['Assembly-CSharp']PlayerCharacter/ComboType ['Assembly-CSharp']AbilityData::ComboType
    IL_010e:  box        ['Assembly-CSharp']PlayerCharacter/ComboType
    IL_0113:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0118:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_011d:  stloc.0
    IL_011e:  ldloc.0
    IL_011f:  ldstr      "IncreaseComboCounter: {0}\n"
    IL_0124:  ldarg.0
    IL_0125:  ldfld      bool ['Assembly-CSharp']AbilityData::IncreaseComboCounter
    IL_012a:  box        [mscorlib]System.Boolean
    IL_012f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0134:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0139:  stloc.0
    IL_013a:  ldloc.0
    IL_013b:  ldstr      "ResetComboCounter: {0}\n"
    IL_0140:  ldarg.0
    IL_0141:  ldfld      bool ['Assembly-CSharp']AbilityData::ResetComboCounter
    IL_0146:  box        [mscorlib]System.Boolean
    IL_014b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0150:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0155:  stloc.0
    IL_0156:  ldloc.0
    IL_0157:  ldstr      "CooldownSeconds: {0}\n"
    IL_015c:  ldarg.0
    IL_015d:  ldfld      float32 ['Assembly-CSharp']AbilityData::CooldownSeconds
    IL_0162:  box        [mscorlib]System.Single
    IL_0167:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_016c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0171:  stloc.0
    IL_0172:  ldloc.0
    IL_0173:  ldstr      "WaitForComboInputSeconds: {0}\n"
    IL_0178:  ldarg.0
    IL_0179:  ldfld      float32 ['Assembly-CSharp']AbilityData::WaitForComboInputSeconds
    IL_017e:  box        [mscorlib]System.Single
    IL_0183:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0188:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_018d:  stloc.0
    IL_018e:  ldloc.0
    IL_018f:  ldstr      "TargetingFilters:\n"
    IL_0194:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0199:  stloc.0
    IL_019a:  ldloc.0
    IL_019b:  ldstr      "\tMinRange: {0}\n"
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_01a6:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MinRange
    IL_01ab:  box        [mscorlib]System.Single
    IL_01b0:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01b5:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01ba:  stloc.0
    IL_01bb:  ldloc.0
    IL_01bc:  ldstr      "\tMaxRange: {0}\n"
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_01c7:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MaxRange
    IL_01cc:  box        [mscorlib]System.Single
    IL_01d1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01d6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01db:  stloc.0
    IL_01dc:  ldloc.0
    IL_01dd:  ldstr      "\tWindupOnly: {0}\n"
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_01e8:  ldfld      bool ['Assembly-CSharp']TargetingFilters::WindupOnly
    IL_01ed:  box        [mscorlib]System.Boolean
    IL_01f2:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01f7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01fc:  stloc.0
    IL_01fd:  ldloc.0
    IL_01fe:  ldstr      "\tTeamAttackOnly: {0}\n"
    IL_0203:  ldarg.0
    IL_0204:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_0209:  ldfld      bool ['Assembly-CSharp']TargetingFilters::TeamAttackOnly
    IL_020e:  box        [mscorlib]System.Boolean
    IL_0213:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0218:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_021d:  stloc.0
    IL_021e:  ldloc.0
    IL_021f:  ldstr      "\tIgnoreProps: {0}\n"
    IL_0224:  ldarg.0
    IL_0225:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_022a:  ldfld      bool ['Assembly-CSharp']TargetingFilters::IgnoreProps
    IL_022f:  box        [mscorlib]System.Boolean
    IL_0234:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0239:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_023e:  stloc.0
    IL_023f:  ldloc.0
    IL_0240:  ldstr      "FollowLockTarget: {0}\n"
    IL_0245:  ldarg.0
    IL_0246:  ldfld      bool ['Assembly-CSharp']AbilityData::FollowLockTarget
    IL_024b:  box        [mscorlib]System.Boolean
    IL_0250:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0255:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_025a:  stloc.0
    IL_025b:  ldloc.0
    IL_025c:  ldarg.0
    IL_025d:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::PrimaryAttack
    IL_0262:  ldstr      "PrimaryAttack"
    IL_0267:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_026c:  stloc.0
    IL_026d:  ldloc.0
    IL_026e:  ldarg.0
    IL_026f:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::SecondaryAttack
    IL_0274:  ldstr      "SecondaryAttack"
    IL_0279:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_027e:  stloc.0
    IL_027f:  ldloc.0
    IL_0280:  ldarg.0
    IL_0281:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::TertiaryAttack
    IL_0286:  ldstr      "TertiaryAttack"
    IL_028b:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_0290:  stloc.0
    IL_0291:  ldloc.0
    IL_0292:  ldstr      "[Charging]\n"
    IL_0297:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_029c:  stloc.0
    IL_029d:  ldloc.0
    IL_029e:  ldstr      "ChargeType: { 0}\n"
    IL_02a3:  ldarg.0
    IL_02a4:  ldfld      valuetype ['Assembly-CSharp']AbilityData/ChargeTypeEnum ['Assembly-CSharp']AbilityData::ChargeType
    IL_02a9:  box        ['Assembly-CSharp']AbilityData/ChargeTypeEnum
    IL_02ae:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02b3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02b8:  stloc.0
    IL_02b9:  ldloc.0
    IL_02ba:  ldstr      "FullChargeTimeSeconds: {0}\n"
    IL_02bf:  ldarg.0
    IL_02c0:  ldfld      float32 ['Assembly-CSharp']AbilityData::FullChargeTimeSeconds
    IL_02c5:  box        [mscorlib]System.Single
    IL_02ca:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02cf:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02d4:  stloc.0
    IL_02d5:  ldloc.0
    IL_02d6:  ldstr      "MaxChargeTimeSeconds: {0}\n"
    IL_02db:  ldarg.0
    IL_02dc:  ldfld      float32 ['Assembly-CSharp']AbilityData::MaxChargeTimeSeconds
    IL_02e1:  box        [mscorlib]System.Single
    IL_02e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02f0:  stloc.0
    IL_02f1:  ldloc.0
    IL_02f2:  ldstr      "[Other]\n"
    IL_02f7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02fc:  stloc.0
    IL_02fd:  ldloc.0
    IL_02fe:  ldstr      "IsUninterruptible: {0}\n"
    IL_0303:  ldarg.0
    IL_0304:  ldfld      bool ['Assembly-CSharp']AbilityData::IsUninterruptible
    IL_0309:  box        [mscorlib]System.Boolean
    IL_030e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0313:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0318:  stloc.0
    IL_0319:  ldloc.0
    IL_031a:  ldstr      "IsTeamAttack: {0}\n"
    IL_031f:  ldarg.0
    IL_0320:  ldfld      bool ['Assembly-CSharp']AbilityData::IsTeamAttack
    IL_0325:  box        [mscorlib]System.Boolean
    IL_032a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_032f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0334:  stloc.0
    IL_0335:  ldloc.0
    IL_0336:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    IL_033b:  nop
    IL_033c:  ret
  } // end of method MySpace::LogAbilityData

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MySpace::.ctor

} // end of class LogValues.MySpace


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file LogValuesDisassembled.res
