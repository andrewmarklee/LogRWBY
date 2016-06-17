
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
    svil_0000:  nop
    svil_0001:  ldarg.1
    svil_0002:  ldnull
    svil_0003:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    svil_0008:  stloc.0
    svil_0009:  ldloc.0
    svil_000a:  brfalse.s  svil_0024

    svil_000c:  nop
    svil_000d:  ldarg.0
    svil_000e:  ldstr      "\t"
    svil_0013:  ldarg.2
    svil_0014:  ldstr      ": null\n"
    svil_0019:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_001e:  stloc.1
    svil_001f:  br         svil_030f

    svil_0024:  ldarg.0
    svil_0025:  ldstr      "\t"
    svil_002a:  ldarg.2
    svil_002b:  ldstr      ":\n"
    svil_0030:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_0035:  starg.s    s
    svil_0037:  ldarg.0
    svil_0038:  ldstr      "\t\t[BasicParamters]\n"
    svil_003d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0042:  starg.s    s
    svil_0044:  ldarg.0
    svil_0045:  ldstr      "\t\tisSmash: {0}\n"
    svil_004a:  ldarg.1
    svil_004b:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    svil_0050:  box        [mscorlib]System.Boolean
    svil_0055:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_005a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_005f:  starg.s    s
    svil_0061:  ldarg.0
    svil_0062:  ldstr      "\t\tonlyHitGround: {0}\n"
    svil_0067:  ldarg.1
    svil_0068:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    svil_006d:  box        [mscorlib]System.Boolean
    svil_0072:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0077:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_007c:  starg.s    s
    svil_007e:  ldarg.0
    svil_007f:  ldstr      "\t\tcountTowardsHitchain: {0}\n"
    svil_0084:  ldarg.1
    svil_0085:  ldfld      bool ['Assembly-CSharp']HitInfo::countTowardsHitchain
    svil_008a:  box        [mscorlib]System.Boolean
    svil_008f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0094:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0099:  starg.s    s
    svil_009b:  ldarg.0
    svil_009c:  ldstr      "\t\thitchainAmount: {0}\n"
    svil_00a1:  ldarg.1
    svil_00a2:  ldfld      int32 ['Assembly-CSharp']HitInfo::hitchainAmount
    svil_00a7:  box        [mscorlib]System.Int32
    svil_00ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00b6:  starg.s    s
    svil_00b8:  ldarg.0
    svil_00b9:  ldstr      "\t\tprogressTowardsSpecial: {0}\n"
    svil_00be:  ldarg.1
    svil_00bf:  ldfld      valuetype ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType ['Assembly-CSharp']HitInfo::progressTowardsSpecial
    svil_00c4:  box        ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType
    svil_00c9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00ce:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00d3:  starg.s    s
    svil_00d5:  ldarg.0
    svil_00d6:  ldstr      "\t\tbaseDamage: {0}\n"
    svil_00db:  ldarg.1
    svil_00dc:  ldfld      float32 ['Assembly-CSharp']HitInfo::baseDamage
    svil_00e1:  box        [mscorlib]System.Single
    svil_00e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00f0:  starg.s    s
    svil_00f2:  ldarg.0
    svil_00f3:  ldstr      "\t\tFullShieldHealthDamage: {0}\n"
    svil_00f8:  ldarg.1
    svil_00f9:  ldfld      int32 ['Assembly-CSharp']HitInfo::FullShieldHealthDamage
    svil_00fe:  box        [mscorlib]System.Int32
    svil_0103:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0108:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_010d:  starg.s    s
    svil_010f:  ldarg.0
    svil_0110:  ldstr      "\t\tPartialShieldHealthDamage: {0}\n"
    svil_0115:  ldarg.1
    svil_0116:  ldfld      int32 ['Assembly-CSharp']HitInfo::PartialShieldHealthDamage
    svil_011b:  box        [mscorlib]System.Int32
    svil_0120:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0125:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_012a:  starg.s    s
    svil_012c:  ldarg.0
    svil_012d:  ldstr      "\t\tNoShieldHealthDamage: { 0}\n"
    svil_0132:  ldarg.1
    svil_0133:  ldfld      int32 ['Assembly-CSharp']HitInfo::NoShieldHealthDamage
    svil_0138:  box        [mscorlib]System.Int32
    svil_013d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0142:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0147:  starg.s    s
    svil_0149:  ldarg.0
    svil_014a:  ldstr      "\t\tGuardDamage: { 0}\n"
    svil_014f:  ldarg.1
    svil_0150:  ldfld      int32 ['Assembly-CSharp']HitInfo::GuardDamage
    svil_0155:  box        [mscorlib]System.Int32
    svil_015a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_015f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0164:  starg.s    s
    svil_0166:  ldarg.0
    svil_0167:  ldstr      "\t\tknockBack: { 0}\n"
    svil_016c:  ldarg.1
    svil_016d:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockBack
    svil_0172:  box        [mscorlib]System.Single
    svil_0177:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_017c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0181:  starg.s    s
    svil_0183:  ldarg.0
    svil_0184:  ldstr      "\t\tknockUp: { 0}\n"
    svil_0189:  ldarg.1
    svil_018a:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockUp
    svil_018f:  box        [mscorlib]System.Single
    svil_0194:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0199:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_019e:  starg.s    s
    svil_01a0:  ldarg.0
    svil_01a1:  ldstr      "\t\tslowMultiplier: { 0}\n"
    svil_01a6:  ldarg.1
    svil_01a7:  ldfld      float32 ['Assembly-CSharp']HitInfo::slowMultiplier
    svil_01ac:  box        [mscorlib]System.Single
    svil_01b1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01b6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01bb:  starg.s    s
    svil_01bd:  ldarg.0
    svil_01be:  ldstr      "\t\thitTime: { 0}\n"
    svil_01c3:  ldarg.1
    svil_01c4:  ldfld      float32 ['Assembly-CSharp']HitInfo::hitTime
    svil_01c9:  box        [mscorlib]System.Single
    svil_01ce:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01d3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01d8:  starg.s    s
    svil_01da:  ldarg.0
    svil_01db:  ldstr      "\t\t[StaticEffect]\n"
    svil_01e0:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01e5:  starg.s    s
    svil_01e7:  ldarg.0
    svil_01e8:  ldstr      "\t\tStatusEffect: { 0}\n"
    svil_01ed:  ldarg.1
    svil_01ee:  ldfld      valuetype ['Assembly-CSharp']HitInfo/StatusEffectState ['Assembly-CSharp']HitInfo::StatusEffect
    svil_01f3:  box        ['Assembly-CSharp']HitInfo/StatusEffectState
    svil_01f8:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01fd:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0202:  starg.s    s
    svil_0204:  ldarg.0
    svil_0205:  ldstr      "\t\tStatusEffectTime: { 0}\n"
    svil_020a:  ldarg.1
    svil_020b:  ldfld      float32 ['Assembly-CSharp']HitInfo::StatusEffectTime
    svil_0210:  box        [mscorlib]System.Single
    svil_0215:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_021a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_021f:  starg.s    s
    svil_0221:  ldarg.0
    svil_0222:  ldstr      "\t\t[Chaining]\n"
    svil_0227:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_022c:  starg.s    s
    svil_022e:  ldarg.0
    svil_022f:  ldstr      "\t\tChainAttack:"
    svil_0234:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0239:  starg.s    s
    svil_023b:  ldarg.1
    svil_023c:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_0241:  ldnull
    svil_0242:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    svil_0247:  stloc.2
    svil_0248:  ldloc.2
    svil_0249:  brfalse.s  svil_025c

    svil_024b:  nop
    svil_024c:  ldarg.0
    svil_024d:  ldstr      " null\n"
    svil_0252:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0257:  starg.s    s
    svil_0259:  nop
    svil_025a:  br.s       svil_02d1

    svil_025c:  nop
    svil_025d:  ldarg.0
    svil_025e:  ldstr      "\n"
    svil_0263:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0268:  starg.s    s
    svil_026a:  ldarg.1
    svil_026b:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_0270:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    svil_0275:  ldnull
    svil_0276:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    svil_027b:  stloc.3
    svil_027c:  ldloc.3
    svil_027d:  brfalse.s  svil_029c

    svil_027f:  ldarg.0
    svil_0280:  ldstr      "\t\t\tHitInfo.ID: {0}\n"
    svil_0285:  ldarg.1
    svil_0286:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_028b:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    svil_0290:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0295:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_029a:  starg.s    s
    svil_029c:  ldarg.1
    svil_029d:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_02a2:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    svil_02a7:  ldnull
    svil_02a8:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    svil_02ad:  stloc.s    V_4
    svil_02af:  ldloc.s    V_4
    svil_02b1:  brfalse.s  svil_02d0

    svil_02b3:  ldarg.0
    svil_02b4:  ldstr      "\t\t\tCriticalHitInfo.ID: {0}\n"
    svil_02b9:  ldarg.1
    svil_02ba:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_02bf:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    svil_02c4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02ce:  starg.s    s
    svil_02d0:  nop
    svil_02d1:  ldarg.0
    svil_02d2:  ldstr      "\t\tChainDistance: { 0}\n"
    svil_02d7:  ldarg.1
    svil_02d8:  ldfld      float32 ['Assembly-CSharp']HitInfo::ChainDistance
    svil_02dd:  box        [mscorlib]System.Single
    svil_02e2:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02e7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02ec:  starg.s    s
    svil_02ee:  ldarg.0
    svil_02ef:  ldstr      "\t\tChainCount: { 0}\n"
    svil_02f4:  ldarg.1
    svil_02f5:  ldfld      int32 ['Assembly-CSharp']HitInfo::ChainCount
    svil_02fa:  box        [mscorlib]System.Int32
    svil_02ff:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0304:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0309:  starg.s    s
    svil_030b:  ldarg.0
    svil_030c:  stloc.1
    svil_030d:  br.s       svil_030f

    svil_030f:  ldloc.1
    svil_0310:  ret
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
    svil_0000:  nop
    svil_0001:  ldarg.1
    svil_0002:  ldnull
    svil_0003:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    svil_0008:  stloc.0
    svil_0009:  ldloc.0
    svil_000a:  brfalse.s  svil_001c

    svil_000c:  nop
    svil_000d:  ldarg.0
    svil_000e:  ldarg.2
    svil_000f:  ldstr      ": null\n"
    svil_0014:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    svil_0019:  stloc.1
    svil_001a:  br.s       svil_0071

    svil_001c:  ldarg.0
    svil_001d:  ldarg.2
    svil_001e:  ldstr      ":\n"
    svil_0023:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    svil_0028:  starg.s    s
    svil_002a:  ldarg.0
    svil_002b:  ldstr      "\tTeamAttackProbability {0}"
    svil_0030:  ldarg.1
    svil_0031:  ldfld      float32 ['Assembly-CSharp']Attack::TeamAttackProbability
    svil_0036:  box        [mscorlib]System.Single
    svil_003b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0040:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0045:  starg.s    s
    svil_0047:  ldarg.0
    svil_0048:  ldarg.1
    svil_0049:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    svil_004e:  ldstr      "HitInfo"
    svil_0053:  call       string LogValues.MySpace::LogHitInfo(string,
                                                              class ['Assembly-CSharp']HitInfo,
                                                              string)
    svil_0058:  starg.s    s
    svil_005a:  ldarg.0
    svil_005b:  ldarg.1
    svil_005c:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    svil_0061:  ldstr      "CriticalHitInfo"
    svil_0066:  call       string LogValues.MySpace::LogHitInfo(string,
                                                              class ['Assembly-CSharp']HitInfo,
                                                              string)
    svil_006b:  starg.s    s
    svil_006d:  ldarg.0
    svil_006e:  stloc.1
    svil_006f:  br.s       svil_0071

    svil_0071:  ldloc.1
    svil_0072:  ret
  } // end of method MySpace::LogAttack

  .method public hidebysig static void  LogAbilityData(class ['Assembly-CSharp']AbilityData ad) cil managed
  {
    // Code size       829 (0x33d)
    .maxstack  4
    .locals init ([0] string s)
    svil_0000:  nop
    svil_0001:  ldstr      ""
    svil_0006:  stloc.0
    svil_0007:  ldloc.0
    svil_0008:  ldstr      "ReactionInfo:\n"
    svil_000d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0012:  stloc.0
    svil_0013:  ldloc.0
    svil_0014:  ldstr      "\tLightAttack: {0}\n"
    svil_0019:  ldarg.0
    svil_001a:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_001f:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::LightAttack
    svil_0024:  box        [mscorlib]System.Boolean
    svil_0029:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_002e:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0033:  stloc.0
    svil_0034:  ldloc.0
    svil_0035:  ldstr      "\tHeavyAttack: {0}\n"
    svil_003a:  ldarg.0
    svil_003b:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0040:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::HeavyAttack
    svil_0045:  box        [mscorlib]System.Boolean
    svil_004a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_004f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0054:  stloc.0
    svil_0055:  ldloc.0
    svil_0056:  ldstr      "\tDodgeAttack: {0}\n"
    svil_005b:  ldarg.0
    svil_005c:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0061:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Dodge
    svil_0066:  box        [mscorlib]System.Boolean
    svil_006b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0070:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0075:  stloc.0
    svil_0076:  ldloc.0
    svil_0077:  ldstr      "\tCounterAttack: {0}\n"
    svil_007c:  ldarg.0
    svil_007d:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0082:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Counter
    svil_0087:  box        [mscorlib]System.Boolean
    svil_008c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0091:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0096:  stloc.0
    svil_0097:  ldloc.0
    svil_0098:  ldstr      "\tIndex: {0}\n"
    svil_009d:  ldarg.0
    svil_009e:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_00a3:  ldfld      int32 ['Assembly-CSharp']AbilityData/ReactionData::Index
    svil_00a8:  box        [mscorlib]System.Int32
    svil_00ad:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00b2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00b7:  stloc.0
    svil_00b8:  ldloc.0
    svil_00b9:  ldstr      "Ability Name: "
    svil_00be:  ldarg.0
    svil_00bf:  ldfld      string ['Assembly-CSharp']AbilityData::AbilityName
    svil_00c4:  ldstr      "\n"
    svil_00c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_00ce:  stloc.0
    svil_00cf:  ldloc.0
    svil_00d0:  ldstr      "Coroutine Name: "
    svil_00d5:  ldarg.0
    svil_00d6:  ldfld      string ['Assembly-CSharp']AbilityData::CoroutineName
    svil_00db:  ldstr      "\n"
    svil_00e0:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_00e5:  stloc.0
    svil_00e6:  ldloc.0
    svil_00e7:  ldstr      "Special Cost: {0}\n"
    svil_00ec:  ldarg.0
    svil_00ed:  ldfld      int32 ['Assembly-CSharp']AbilityData::SpecialCost
    svil_00f2:  box        [mscorlib]System.Int32
    svil_00f7:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00fc:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0101:  stloc.0
    svil_0102:  ldloc.0
    svil_0103:  ldstr      "ComboType: {0}\n"
    svil_0108:  ldarg.0
    svil_0109:  ldfld      valuetype ['Assembly-CSharp']PlayerCharacter/ComboType ['Assembly-CSharp']AbilityData::ComboType
    svil_010e:  box        ['Assembly-CSharp']PlayerCharacter/ComboType
    svil_0113:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0118:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_011d:  stloc.0
    svil_011e:  ldloc.0
    svil_011f:  ldstr      "IncreaseComboCounter: {0}\n"
    svil_0124:  ldarg.0
    svil_0125:  ldfld      bool ['Assembly-CSharp']AbilityData::IncreaseComboCounter
    svil_012a:  box        [mscorlib]System.Boolean
    svil_012f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0134:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0139:  stloc.0
    svil_013a:  ldloc.0
    svil_013b:  ldstr      "ResetComboCounter: {0}\n"
    svil_0140:  ldarg.0
    svil_0141:  ldfld      bool ['Assembly-CSharp']AbilityData::ResetComboCounter
    svil_0146:  box        [mscorlib]System.Boolean
    svil_014b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0150:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0155:  stloc.0
    svil_0156:  ldloc.0
    svil_0157:  ldstr      "CooldownSeconds: {0}\n"
    svil_015c:  ldarg.0
    svil_015d:  ldfld      float32 ['Assembly-CSharp']AbilityData::CooldownSeconds
    svil_0162:  box        [mscorlib]System.Single
    svil_0167:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_016c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0171:  stloc.0
    svil_0172:  ldloc.0
    svil_0173:  ldstr      "WaitForComboInputSeconds: {0}\n"
    svil_0178:  ldarg.0
    svil_0179:  ldfld      float32 ['Assembly-CSharp']AbilityData::WaitForComboInputSeconds
    svil_017e:  box        [mscorlib]System.Single
    svil_0183:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0188:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_018d:  stloc.0
    svil_018e:  ldloc.0
    svil_018f:  ldstr      "TargetingFilters:\n"
    svil_0194:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0199:  stloc.0
    svil_019a:  ldloc.0
    svil_019b:  ldstr      "\tMinRange: {0}\n"
    svil_01a0:  ldarg.0
    svil_01a1:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_01a6:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MinRange
    svil_01ab:  box        [mscorlib]System.Single
    svil_01b0:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01b5:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01ba:  stloc.0
    svil_01bb:  ldloc.0
    svil_01bc:  ldstr      "\tMaxRange: {0}\n"
    svil_01c1:  ldarg.0
    svil_01c2:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_01c7:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MaxRange
    svil_01cc:  box        [mscorlib]System.Single
    svil_01d1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01d6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01db:  stloc.0
    svil_01dc:  ldloc.0
    svil_01dd:  ldstr      "\tWindupOnly: {0}\n"
    svil_01e2:  ldarg.0
    svil_01e3:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_01e8:  ldfld      bool ['Assembly-CSharp']TargetingFilters::WindupOnly
    svil_01ed:  box        [mscorlib]System.Boolean
    svil_01f2:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01f7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01fc:  stloc.0
    svil_01fd:  ldloc.0
    svil_01fe:  ldstr      "\tTeamAttackOnly: {0}\n"
    svil_0203:  ldarg.0
    svil_0204:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_0209:  ldfld      bool ['Assembly-CSharp']TargetingFilters::TeamAttackOnly
    svil_020e:  box        [mscorlib]System.Boolean
    svil_0213:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0218:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_021d:  stloc.0
    svil_021e:  ldloc.0
    svil_021f:  ldstr      "\tIgnoreProps: {0}\n"
    svil_0224:  ldarg.0
    svil_0225:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_022a:  ldfld      bool ['Assembly-CSharp']TargetingFilters::IgnoreProps
    svil_022f:  box        [mscorlib]System.Boolean
    svil_0234:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0239:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_023e:  stloc.0
    svil_023f:  ldloc.0
    svil_0240:  ldstr      "FollowLockTarget: {0}\n"
    svil_0245:  ldarg.0
    svil_0246:  ldfld      bool ['Assembly-CSharp']AbilityData::FollowLockTarget
    svil_024b:  box        [mscorlib]System.Boolean
    svil_0250:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0255:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_025a:  stloc.0
    svil_025b:  ldloc.0
    svil_025c:  ldarg.0
    svil_025d:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::PrimaryAttack
    svil_0262:  ldstr      "PrimaryAttack"
    svil_0267:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_026c:  stloc.0
    svil_026d:  ldloc.0
    svil_026e:  ldarg.0
    svil_026f:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::SecondaryAttack
    svil_0274:  ldstr      "SecondaryAttack"
    svil_0279:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_027e:  stloc.0
    svil_027f:  ldloc.0
    svil_0280:  ldarg.0
    svil_0281:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::TertiaryAttack
    svil_0286:  ldstr      "TertiaryAttack"
    svil_028b:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_0290:  stloc.0
    svil_0291:  ldloc.0
    svil_0292:  ldstr      "[Charging]\n"
    svil_0297:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_029c:  stloc.0
    svil_029d:  ldloc.0
    svil_029e:  ldstr      "ChargeType: { 0}\n"
    svil_02a3:  ldarg.0
    svil_02a4:  ldfld      valuetype ['Assembly-CSharp']AbilityData/ChargeTypeEnum ['Assembly-CSharp']AbilityData::ChargeType
    svil_02a9:  box        ['Assembly-CSharp']AbilityData/ChargeTypeEnum
    svil_02ae:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02b3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02b8:  stloc.0
    svil_02b9:  ldloc.0
    svil_02ba:  ldstr      "FullChargeTimeSeconds: {0}\n"
    svil_02bf:  ldarg.0
    svil_02c0:  ldfld      float32 ['Assembly-CSharp']AbilityData::FullChargeTimeSeconds
    svil_02c5:  box        [mscorlib]System.Single
    svil_02ca:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02cf:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02d4:  stloc.0
    svil_02d5:  ldloc.0
    svil_02d6:  ldstr      "MaxChargeTimeSeconds: {0}\n"
    svil_02db:  ldarg.0
    svil_02dc:  ldfld      float32 ['Assembly-CSharp']AbilityData::MaxChargeTimeSeconds
    svil_02e1:  box        [mscorlib]System.Single
    svil_02e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02f0:  stloc.0
    svil_02f1:  ldloc.0
    svil_02f2:  ldstr      "[Other]\n"
    svil_02f7:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02fc:  stloc.0
    svil_02fd:  ldloc.0
    svil_02fe:  ldstr      "IsUninterruptible: {0}\n"
    svil_0303:  ldarg.0
    svil_0304:  ldfld      bool ['Assembly-CSharp']AbilityData::IsUninterruptible
    svil_0309:  box        [mscorlib]System.Boolean
    svil_030e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0313:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0318:  stloc.0
    svil_0319:  ldloc.0
    svil_031a:  ldstr      "IsTeamAttack: {0}\n"
    svil_031f:  ldarg.0
    svil_0320:  ldfld      bool ['Assembly-CSharp']AbilityData::IsTeamAttack
    svil_0325:  box        [mscorlib]System.Boolean
    svil_032a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_032f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0334:  stloc.0
    svil_0335:  ldloc.0
    svil_0336:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    svil_033b:  nop
    svil_033c:  ret
  } // end of method MySpace::LogAbilityData

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    svil_0000:  ldarg.0
    svil_0001:  call       instance void [mscorlib]System.Object::.ctor()
    svil_0006:  nop
    svil_0007:  ret
  } // end of method MySpace::.ctor

} // end of class LogValues.MySpace


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file LogValuesDisassembled.res
