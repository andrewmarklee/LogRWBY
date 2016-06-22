
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
// MVID: {82438BAB-CF52-4724-ACBD-F7C72E7EEB44}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x01990000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit LogValues.MySpace
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          LogHitInfo(string s,
                     class ['Assembly-CSharp']HitInfo hit,
                     string name) cil managed
  {
    // Code size       819 (0x333)
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
    IL_001f:  br         IL_0331

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
    IL_0038:  ldstr      "\t\tID: "
    IL_003d:  ldarg.1
    IL_003e:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    IL_0043:  ldstr      "\n"
    IL_0048:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_004d:  starg.s    s
    IL_004f:  ldarg.0
    IL_0050:  ldstr      "\t\t[BasicParamters]\n"
    IL_0055:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_005a:  starg.s    s
    IL_005c:  ldarg.0
    IL_005d:  ldstr      "\t\tisSmash: {0}\n"
    IL_0062:  ldarg.1
    IL_0063:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    IL_0068:  box        [mscorlib]System.Boolean
    IL_006d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0072:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0077:  starg.s    s
    IL_0079:  ldarg.0
    IL_007a:  ldstr      "\t\tonlyHitGround: {0}\n"
    IL_007f:  ldarg.1
    IL_0080:  ldfld      bool ['Assembly-CSharp']HitInfo::onlyHitGround
    IL_0085:  box        [mscorlib]System.Boolean
    IL_008a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_008f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0094:  starg.s    s
    IL_0096:  ldarg.0
    IL_0097:  ldstr      "\t\tcountTowardsHitchain: {0}\n"
    IL_009c:  ldarg.1
    IL_009d:  ldfld      bool ['Assembly-CSharp']HitInfo::countTowardsHitchain
    IL_00a2:  box        [mscorlib]System.Boolean
    IL_00a7:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00ac:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00b1:  starg.s    s
    IL_00b3:  ldarg.0
    IL_00b4:  ldstr      "\t\thitchainAmount: {0}\n"
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      int32 ['Assembly-CSharp']HitInfo::hitchainAmount
    IL_00bf:  box        [mscorlib]System.Int32
    IL_00c4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00ce:  starg.s    s
    IL_00d0:  ldarg.0
    IL_00d1:  ldstr      "\t\tprogressTowardsSpecial: {0}\n"
    IL_00d6:  ldarg.1
    IL_00d7:  ldfld      valuetype ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType ['Assembly-CSharp']HitInfo::progressTowardsSpecial
    IL_00dc:  box        ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType
    IL_00e1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00e6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00eb:  starg.s    s
    IL_00ed:  ldarg.0
    IL_00ee:  ldstr      "\t\tbaseDamage: {0}\n"
    IL_00f3:  ldarg.1
    IL_00f4:  ldfld      float32 ['Assembly-CSharp']HitInfo::baseDamage
    IL_00f9:  box        [mscorlib]System.Single
    IL_00fe:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0103:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0108:  starg.s    s
    IL_010a:  ldarg.0
    IL_010b:  ldstr      "\t\tFullShieldHealthDamage: {0}\n"
    IL_0110:  ldarg.1
    IL_0111:  ldfld      int32 ['Assembly-CSharp']HitInfo::FullShieldHealthDamage
    IL_0116:  box        [mscorlib]System.Int32
    IL_011b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0120:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0125:  starg.s    s
    IL_0127:  ldarg.0
    IL_0128:  ldstr      "\t\tPartialShieldHealthDamage: {0}\n"
    IL_012d:  ldarg.1
    IL_012e:  ldfld      int32 ['Assembly-CSharp']HitInfo::PartialShieldHealthDamage
    IL_0133:  box        [mscorlib]System.Int32
    IL_0138:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_013d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0142:  starg.s    s
    IL_0144:  ldarg.0
    IL_0145:  ldstr      "\t\tNoShieldHealthDamage: {0}\n"
    IL_014a:  ldarg.1
    IL_014b:  ldfld      int32 ['Assembly-CSharp']HitInfo::NoShieldHealthDamage
    IL_0150:  box        [mscorlib]System.Int32
    IL_0155:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_015a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_015f:  starg.s    s
    IL_0161:  ldarg.0
    IL_0162:  ldstr      "\t\tGuardDamage: {0}\n"
    IL_0167:  ldarg.1
    IL_0168:  ldfld      int32 ['Assembly-CSharp']HitInfo::GuardDamage
    IL_016d:  box        [mscorlib]System.Int32
    IL_0172:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0177:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_017c:  starg.s    s
    IL_017e:  ldarg.0
    IL_017f:  ldstr      "\t\tknockBack: {0}\n"
    IL_0184:  ldarg.1
    IL_0185:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockBack
    IL_018a:  box        [mscorlib]System.Single
    IL_018f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0194:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0199:  starg.s    s
    IL_019b:  ldarg.0
    IL_019c:  ldstr      "\t\tknockUp: {0}\n"
    IL_01a1:  ldarg.1
    IL_01a2:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockUp
    IL_01a7:  box        [mscorlib]System.Single
    IL_01ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01b6:  starg.s    s
    IL_01b8:  ldarg.0
    IL_01b9:  ldstr      "\t\tslowMultiplier: {0}\n"
    IL_01be:  ldarg.1
    IL_01bf:  ldfld      float32 ['Assembly-CSharp']HitInfo::slowMultiplier
    IL_01c4:  box        [mscorlib]System.Single
    IL_01c9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01ce:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01d3:  starg.s    s
    IL_01d5:  ldarg.0
    IL_01d6:  ldstr      "\t\thitTime: {0}\n"
    IL_01db:  ldarg.1
    IL_01dc:  ldfld      float32 ['Assembly-CSharp']HitInfo::hitTime
    IL_01e1:  box        [mscorlib]System.Single
    IL_01e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01f0:  starg.s    s
    IL_01f2:  ldarg.0
    IL_01f3:  ldstr      "\t\t[StaticEffect]\n"
    IL_01f8:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01fd:  starg.s    s
    IL_01ff:  ldarg.0
    IL_0200:  ldstr      "\t\tStatusEffect: {0}\n"
    IL_0205:  ldarg.1
    IL_0206:  ldfld      valuetype ['Assembly-CSharp']HitInfo/StatusEffectState ['Assembly-CSharp']HitInfo::StatusEffect
    IL_020b:  box        ['Assembly-CSharp']HitInfo/StatusEffectState
    IL_0210:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0215:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_021a:  starg.s    s
    IL_021c:  ldarg.0
    IL_021d:  ldstr      "\t\tStatusEffectTime: {0}\n"
    IL_0222:  ldarg.1
    IL_0223:  ldfld      float32 ['Assembly-CSharp']HitInfo::StatusEffectTime
    IL_0228:  box        [mscorlib]System.Single
    IL_022d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0232:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0237:  starg.s    s
    IL_0239:  ldarg.0
    IL_023a:  ldstr      "\t\t[Chaining]\n"
    IL_023f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0244:  starg.s    s
    IL_0246:  ldarg.0
    IL_0247:  ldstr      "\t\tChainAttack:"
    IL_024c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0251:  starg.s    s
    IL_0253:  ldarg.1
    IL_0254:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_0259:  ldnull
    IL_025a:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_025f:  stloc.2
    IL_0260:  ldloc.2
    IL_0261:  brfalse.s  IL_0274

    IL_0263:  nop
    IL_0264:  ldarg.0
    IL_0265:  ldstr      " null\n"
    IL_026a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_026f:  starg.s    s
    IL_0271:  nop
    IL_0272:  br.s       IL_02f3

    IL_0274:  nop
    IL_0275:  ldarg.0
    IL_0276:  ldstr      "\n"
    IL_027b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0280:  starg.s    s
    IL_0282:  ldarg.1
    IL_0283:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_0288:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    IL_028d:  ldnull
    IL_028e:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    IL_0293:  stloc.3
    IL_0294:  ldloc.3
    IL_0295:  brfalse.s  IL_02b9

    IL_0297:  ldarg.0
    IL_0298:  ldstr      "\t\t\tHitInfo.ID: {0}\n"
    IL_029d:  ldarg.1
    IL_029e:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_02a3:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    IL_02a8:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    IL_02ad:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02b2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02b7:  starg.s    s
    IL_02b9:  ldarg.1
    IL_02ba:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_02bf:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    IL_02c4:  ldnull
    IL_02c5:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    IL_02ca:  stloc.s    V_4
    IL_02cc:  ldloc.s    V_4
    IL_02ce:  brfalse.s  IL_02f2

    IL_02d0:  ldarg.0
    IL_02d1:  ldstr      "\t\t\tCriticalHitInfo.ID: {0}\n"
    IL_02d6:  ldarg.1
    IL_02d7:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    IL_02dc:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    IL_02e1:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    IL_02e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02f0:  starg.s    s
    IL_02f2:  nop
    IL_02f3:  ldarg.0
    IL_02f4:  ldstr      "\t\tChainDistance: {0}\n"
    IL_02f9:  ldarg.1
    IL_02fa:  ldfld      float32 ['Assembly-CSharp']HitInfo::ChainDistance
    IL_02ff:  box        [mscorlib]System.Single
    IL_0304:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0309:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_030e:  starg.s    s
    IL_0310:  ldarg.0
    IL_0311:  ldstr      "\t\tChainCount: {0}\n"
    IL_0316:  ldarg.1
    IL_0317:  ldfld      int32 ['Assembly-CSharp']HitInfo::ChainCount
    IL_031c:  box        [mscorlib]System.Int32
    IL_0321:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0326:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_032b:  starg.s    s
    IL_032d:  ldarg.0
    IL_032e:  stloc.1
    IL_032f:  br.s       IL_0331

    IL_0331:  ldloc.1
    IL_0332:  ret
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
    IL_002b:  ldstr      "\tTeamAttackProbability {0}\n"
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
    // Code size       888 (0x378)
    .maxstack  4
    .locals init ([0] string s,
             [1] bool V_1,
             [2] bool V_2)
    IL_0000:  nop
    IL_0001:  ldstr      ""
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldstr      "ID: "
    IL_000d:  ldarg.0
    IL_000e:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    IL_0013:  ldstr      "\n"
    IL_0018:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  ldstr      "ReactionInfo:\n"
    IL_0024:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0029:  stloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0030:  ldnull
    IL_0031:  cgt.un
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    IL_0035:  brfalse    IL_00e1

    IL_003a:  nop
    IL_003b:  ldloc.0
    IL_003c:  ldstr      "\tLightAttack: {0}\n"
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0047:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::LightAttack
    IL_004c:  box        [mscorlib]System.Boolean
    IL_0051:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0056:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_005b:  stloc.0
    IL_005c:  ldloc.0
    IL_005d:  ldstr      "\tHeavyAttack: {0}\n"
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0068:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::HeavyAttack
    IL_006d:  box        [mscorlib]System.Boolean
    IL_0072:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0077:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_007c:  stloc.0
    IL_007d:  ldloc.0
    IL_007e:  ldstr      "\tDodgeAttack: {0}\n"
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_0089:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Dodge
    IL_008e:  box        [mscorlib]System.Boolean
    IL_0093:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0098:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_009d:  stloc.0
    IL_009e:  ldloc.0
    IL_009f:  ldstr      "\tCounterAttack: {0}\n"
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_00aa:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Counter
    IL_00af:  box        [mscorlib]System.Boolean
    IL_00b4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00b9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00be:  stloc.0
    IL_00bf:  ldloc.0
    IL_00c0:  ldstr      "\tIndex: {0}\n"
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    IL_00cb:  ldfld      int32 ['Assembly-CSharp']AbilityData/ReactionData::Index
    IL_00d0:  box        [mscorlib]System.Int32
    IL_00d5:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00da:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00df:  stloc.0
    IL_00e0:  nop
    IL_00e1:  ldloc.0
    IL_00e2:  ldstr      "Ability Name: "
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      string ['Assembly-CSharp']AbilityData::AbilityName
    IL_00ed:  ldstr      "\n"
    IL_00f2:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_00f7:  stloc.0
    IL_00f8:  ldloc.0
    IL_00f9:  ldstr      "Coroutine Name: "
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      string ['Assembly-CSharp']AbilityData::CoroutineName
    IL_0104:  ldstr      "\n"
    IL_0109:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_010e:  stloc.0
    IL_010f:  ldloc.0
    IL_0110:  ldstr      "Special Cost: {0}\n"
    IL_0115:  ldarg.0
    IL_0116:  ldfld      int32 ['Assembly-CSharp']AbilityData::SpecialCost
    IL_011b:  box        [mscorlib]System.Int32
    IL_0120:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0125:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_012a:  stloc.0
    IL_012b:  ldloc.0
    IL_012c:  ldstr      "ComboType: {0}\n"
    IL_0131:  ldarg.0
    IL_0132:  ldfld      valuetype ['Assembly-CSharp']PlayerCharacter/ComboType ['Assembly-CSharp']AbilityData::ComboType
    IL_0137:  box        ['Assembly-CSharp']PlayerCharacter/ComboType
    IL_013c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0141:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0146:  stloc.0
    IL_0147:  ldloc.0
    IL_0148:  ldstr      "IncreaseComboCounter: {0}\n"
    IL_014d:  ldarg.0
    IL_014e:  ldfld      bool ['Assembly-CSharp']AbilityData::IncreaseComboCounter
    IL_0153:  box        [mscorlib]System.Boolean
    IL_0158:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_015d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0162:  stloc.0
    IL_0163:  ldloc.0
    IL_0164:  ldstr      "ResetComboCounter: {0}\n"
    IL_0169:  ldarg.0
    IL_016a:  ldfld      bool ['Assembly-CSharp']AbilityData::ResetComboCounter
    IL_016f:  box        [mscorlib]System.Boolean
    IL_0174:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0179:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_017e:  stloc.0
    IL_017f:  ldloc.0
    IL_0180:  ldstr      "CooldownSeconds: {0}\n"
    IL_0185:  ldarg.0
    IL_0186:  ldfld      float32 ['Assembly-CSharp']AbilityData::CooldownSeconds
    IL_018b:  box        [mscorlib]System.Single
    IL_0190:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0195:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_019a:  stloc.0
    IL_019b:  ldloc.0
    IL_019c:  ldstr      "WaitForComboInputSeconds: {0}\n"
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      float32 ['Assembly-CSharp']AbilityData::WaitForComboInputSeconds
    IL_01a7:  box        [mscorlib]System.Single
    IL_01ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01b6:  stloc.0
    IL_01b7:  ldloc.0
    IL_01b8:  ldstr      "TargetingFilters:\n"
    IL_01bd:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01c2:  stloc.0
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_01c9:  ldnull
    IL_01ca:  cgt.un
    IL_01cc:  stloc.2
    IL_01cd:  ldloc.2
    IL_01ce:  brfalse    IL_027a

    IL_01d3:  nop
    IL_01d4:  ldloc.0
    IL_01d5:  ldstr      "\tMinRange: {0}\n"
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_01e0:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MinRange
    IL_01e5:  box        [mscorlib]System.Single
    IL_01ea:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_01ef:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01f4:  stloc.0
    IL_01f5:  ldloc.0
    IL_01f6:  ldstr      "\tMaxRange: {0}\n"
    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_0201:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MaxRange
    IL_0206:  box        [mscorlib]System.Single
    IL_020b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0210:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0215:  stloc.0
    IL_0216:  ldloc.0
    IL_0217:  ldstr      "\tWindupOnly: {0}\n"
    IL_021c:  ldarg.0
    IL_021d:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_0222:  ldfld      bool ['Assembly-CSharp']TargetingFilters::WindupOnly
    IL_0227:  box        [mscorlib]System.Boolean
    IL_022c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0231:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0236:  stloc.0
    IL_0237:  ldloc.0
    IL_0238:  ldstr      "\tTeamAttackOnly: {0}\n"
    IL_023d:  ldarg.0
    IL_023e:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_0243:  ldfld      bool ['Assembly-CSharp']TargetingFilters::TeamAttackOnly
    IL_0248:  box        [mscorlib]System.Boolean
    IL_024d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0252:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0257:  stloc.0
    IL_0258:  ldloc.0
    IL_0259:  ldstr      "\tIgnoreProps: {0}\n"
    IL_025e:  ldarg.0
    IL_025f:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    IL_0264:  ldfld      bool ['Assembly-CSharp']TargetingFilters::IgnoreProps
    IL_0269:  box        [mscorlib]System.Boolean
    IL_026e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0273:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0278:  stloc.0
    IL_0279:  nop
    IL_027a:  ldloc.0
    IL_027b:  ldstr      "FollowLockTarget: {0}\n"
    IL_0280:  ldarg.0
    IL_0281:  ldfld      bool ['Assembly-CSharp']AbilityData::FollowLockTarget
    IL_0286:  box        [mscorlib]System.Boolean
    IL_028b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0290:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0295:  stloc.0
    IL_0296:  ldloc.0
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::PrimaryAttack
    IL_029d:  ldstr      "PrimaryAttack"
    IL_02a2:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_02a7:  stloc.0
    IL_02a8:  ldloc.0
    IL_02a9:  ldarg.0
    IL_02aa:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::SecondaryAttack
    IL_02af:  ldstr      "SecondaryAttack"
    IL_02b4:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_02b9:  stloc.0
    IL_02ba:  ldloc.0
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::TertiaryAttack
    IL_02c1:  ldstr      "TertiaryAttack"
    IL_02c6:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    IL_02cb:  stloc.0
    IL_02cc:  ldloc.0
    IL_02cd:  ldstr      "[Charging]\n"
    IL_02d2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02d7:  stloc.0
    IL_02d8:  ldloc.0
    IL_02d9:  ldstr      "ChargeType: {0}\n"
    IL_02de:  ldarg.0
    IL_02df:  ldfld      valuetype ['Assembly-CSharp']AbilityData/ChargeTypeEnum ['Assembly-CSharp']AbilityData::ChargeType
    IL_02e4:  box        ['Assembly-CSharp']AbilityData/ChargeTypeEnum
    IL_02e9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_02ee:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_02f3:  stloc.0
    IL_02f4:  ldloc.0
    IL_02f5:  ldstr      "FullChargeTimeSeconds: {0}\n"
    IL_02fa:  ldarg.0
    IL_02fb:  ldfld      float32 ['Assembly-CSharp']AbilityData::FullChargeTimeSeconds
    IL_0300:  box        [mscorlib]System.Single
    IL_0305:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_030a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_030f:  stloc.0
    IL_0310:  ldloc.0
    IL_0311:  ldstr      "MaxChargeTimeSeconds: {0}\n"
    IL_0316:  ldarg.0
    IL_0317:  ldfld      float32 ['Assembly-CSharp']AbilityData::MaxChargeTimeSeconds
    IL_031c:  box        [mscorlib]System.Single
    IL_0321:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0326:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_032b:  stloc.0
    IL_032c:  ldloc.0
    IL_032d:  ldstr      "[Other]\n"
    IL_0332:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0337:  stloc.0
    IL_0338:  ldloc.0
    IL_0339:  ldstr      "IsUninterruptible: {0}\n"
    IL_033e:  ldarg.0
    IL_033f:  ldfld      bool ['Assembly-CSharp']AbilityData::IsUninterruptible
    IL_0344:  box        [mscorlib]System.Boolean
    IL_0349:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_034e:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0353:  stloc.0
    IL_0354:  ldloc.0
    IL_0355:  ldstr      "IsTeamAttack: {0}\n"
    IL_035a:  ldarg.0
    IL_035b:  ldfld      bool ['Assembly-CSharp']AbilityData::IsTeamAttack
    IL_0360:  box        [mscorlib]System.Boolean
    IL_0365:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_036a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_036f:  stloc.0
    IL_0370:  ldloc.0
    IL_0371:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    IL_0376:  nop
    IL_0377:  ret
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
