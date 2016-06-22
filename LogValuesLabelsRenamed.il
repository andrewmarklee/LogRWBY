
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
    svil_001f:  br         svil_0331

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
    svil_0038:  ldstr      "\t\tID: "
    svil_003d:  ldarg.1
    svil_003e:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    svil_0043:  ldstr      "\n"
    svil_0048:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_004d:  starg.s    s
    svil_004f:  ldarg.0
    svil_0050:  ldstr      "\t\t[BasicParamters]\n"
    svil_0055:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_005a:  starg.s    s
    svil_005c:  ldarg.0
    svil_005d:  ldstr      "\t\tisSmash: {0}\n"
    svil_0062:  ldarg.1
    svil_0063:  ldfld      bool ['Assembly-CSharp']HitInfo::isSmash
    svil_0068:  box        [mscorlib]System.Boolean
    svil_006d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0072:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0077:  starg.s    s
    svil_0079:  ldarg.0
    svil_007a:  ldstr      "\t\tonlyHitGround: {0}\n"
    svil_007f:  ldarg.1
    svil_0080:  ldfld      bool ['Assembly-CSharp']HitInfo::onlyHitGround
    svil_0085:  box        [mscorlib]System.Boolean
    svil_008a:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_008f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0094:  starg.s    s
    svil_0096:  ldarg.0
    svil_0097:  ldstr      "\t\tcountTowardsHitchain: {0}\n"
    svil_009c:  ldarg.1
    svil_009d:  ldfld      bool ['Assembly-CSharp']HitInfo::countTowardsHitchain
    svil_00a2:  box        [mscorlib]System.Boolean
    svil_00a7:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00ac:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00b1:  starg.s    s
    svil_00b3:  ldarg.0
    svil_00b4:  ldstr      "\t\thitchainAmount: {0}\n"
    svil_00b9:  ldarg.1
    svil_00ba:  ldfld      int32 ['Assembly-CSharp']HitInfo::hitchainAmount
    svil_00bf:  box        [mscorlib]System.Int32
    svil_00c4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00c9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00ce:  starg.s    s
    svil_00d0:  ldarg.0
    svil_00d1:  ldstr      "\t\tprogressTowardsSpecial: {0}\n"
    svil_00d6:  ldarg.1
    svil_00d7:  ldfld      valuetype ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType ['Assembly-CSharp']HitInfo::progressTowardsSpecial
    svil_00dc:  box        ['Assembly-CSharp']HitInfo/ProgressTowardsSpecialType
    svil_00e1:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00e6:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00eb:  starg.s    s
    svil_00ed:  ldarg.0
    svil_00ee:  ldstr      "\t\tbaseDamage: {0}\n"
    svil_00f3:  ldarg.1
    svil_00f4:  ldfld      float32 ['Assembly-CSharp']HitInfo::baseDamage
    svil_00f9:  box        [mscorlib]System.Single
    svil_00fe:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0103:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0108:  starg.s    s
    svil_010a:  ldarg.0
    svil_010b:  ldstr      "\t\tFullShieldHealthDamage: {0}\n"
    svil_0110:  ldarg.1
    svil_0111:  ldfld      int32 ['Assembly-CSharp']HitInfo::FullShieldHealthDamage
    svil_0116:  box        [mscorlib]System.Int32
    svil_011b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0120:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0125:  starg.s    s
    svil_0127:  ldarg.0
    svil_0128:  ldstr      "\t\tPartialShieldHealthDamage: {0}\n"
    svil_012d:  ldarg.1
    svil_012e:  ldfld      int32 ['Assembly-CSharp']HitInfo::PartialShieldHealthDamage
    svil_0133:  box        [mscorlib]System.Int32
    svil_0138:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_013d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0142:  starg.s    s
    svil_0144:  ldarg.0
    svil_0145:  ldstr      "\t\tNoShieldHealthDamage: {0}\n"
    svil_014a:  ldarg.1
    svil_014b:  ldfld      int32 ['Assembly-CSharp']HitInfo::NoShieldHealthDamage
    svil_0150:  box        [mscorlib]System.Int32
    svil_0155:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_015a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_015f:  starg.s    s
    svil_0161:  ldarg.0
    svil_0162:  ldstr      "\t\tGuardDamage: {0}\n"
    svil_0167:  ldarg.1
    svil_0168:  ldfld      int32 ['Assembly-CSharp']HitInfo::GuardDamage
    svil_016d:  box        [mscorlib]System.Int32
    svil_0172:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0177:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_017c:  starg.s    s
    svil_017e:  ldarg.0
    svil_017f:  ldstr      "\t\tknockBack: {0}\n"
    svil_0184:  ldarg.1
    svil_0185:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockBack
    svil_018a:  box        [mscorlib]System.Single
    svil_018f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0194:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0199:  starg.s    s
    svil_019b:  ldarg.0
    svil_019c:  ldstr      "\t\tknockUp: {0}\n"
    svil_01a1:  ldarg.1
    svil_01a2:  ldfld      float32 ['Assembly-CSharp']HitInfo::knockUp
    svil_01a7:  box        [mscorlib]System.Single
    svil_01ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01b6:  starg.s    s
    svil_01b8:  ldarg.0
    svil_01b9:  ldstr      "\t\tslowMultiplier: {0}\n"
    svil_01be:  ldarg.1
    svil_01bf:  ldfld      float32 ['Assembly-CSharp']HitInfo::slowMultiplier
    svil_01c4:  box        [mscorlib]System.Single
    svil_01c9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01ce:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01d3:  starg.s    s
    svil_01d5:  ldarg.0
    svil_01d6:  ldstr      "\t\thitTime: {0}\n"
    svil_01db:  ldarg.1
    svil_01dc:  ldfld      float32 ['Assembly-CSharp']HitInfo::hitTime
    svil_01e1:  box        [mscorlib]System.Single
    svil_01e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01f0:  starg.s    s
    svil_01f2:  ldarg.0
    svil_01f3:  ldstr      "\t\t[StaticEffect]\n"
    svil_01f8:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01fd:  starg.s    s
    svil_01ff:  ldarg.0
    svil_0200:  ldstr      "\t\tStatusEffect: {0}\n"
    svil_0205:  ldarg.1
    svil_0206:  ldfld      valuetype ['Assembly-CSharp']HitInfo/StatusEffectState ['Assembly-CSharp']HitInfo::StatusEffect
    svil_020b:  box        ['Assembly-CSharp']HitInfo/StatusEffectState
    svil_0210:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0215:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_021a:  starg.s    s
    svil_021c:  ldarg.0
    svil_021d:  ldstr      "\t\tStatusEffectTime: {0}\n"
    svil_0222:  ldarg.1
    svil_0223:  ldfld      float32 ['Assembly-CSharp']HitInfo::StatusEffectTime
    svil_0228:  box        [mscorlib]System.Single
    svil_022d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0232:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0237:  starg.s    s
    svil_0239:  ldarg.0
    svil_023a:  ldstr      "\t\t[Chaining]\n"
    svil_023f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0244:  starg.s    s
    svil_0246:  ldarg.0
    svil_0247:  ldstr      "\t\tChainAttack:"
    svil_024c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0251:  starg.s    s
    svil_0253:  ldarg.1
    svil_0254:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_0259:  ldnull
    svil_025a:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    svil_025f:  stloc.2
    svil_0260:  ldloc.2
    svil_0261:  brfalse.s  svil_0274

    svil_0263:  nop
    svil_0264:  ldarg.0
    svil_0265:  ldstr      " null\n"
    svil_026a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_026f:  starg.s    s
    svil_0271:  nop
    svil_0272:  br.s       svil_02f3

    svil_0274:  nop
    svil_0275:  ldarg.0
    svil_0276:  ldstr      "\n"
    svil_027b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0280:  starg.s    s
    svil_0282:  ldarg.1
    svil_0283:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_0288:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    svil_028d:  ldnull
    svil_028e:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    svil_0293:  stloc.3
    svil_0294:  ldloc.3
    svil_0295:  brfalse.s  svil_02b9

    svil_0297:  ldarg.0
    svil_0298:  ldstr      "\t\t\tHitInfo.ID: {0}\n"
    svil_029d:  ldarg.1
    svil_029e:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_02a3:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::HitInfo
    svil_02a8:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    svil_02ad:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02b2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02b7:  starg.s    s
    svil_02b9:  ldarg.1
    svil_02ba:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_02bf:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    svil_02c4:  ldnull
    svil_02c5:  call       bool [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object,
                                                                             class [UnityEngine]UnityEngine.Object)
    svil_02ca:  stloc.s    V_4
    svil_02cc:  ldloc.s    V_4
    svil_02ce:  brfalse.s  svil_02f2

    svil_02d0:  ldarg.0
    svil_02d1:  ldstr      "\t\t\tCriticalHitInfo.ID: {0}\n"
    svil_02d6:  ldarg.1
    svil_02d7:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']HitInfo::ChainAttack
    svil_02dc:  ldfld      class ['Assembly-CSharp']HitInfo ['Assembly-CSharp']Attack::CriticalHitInfo
    svil_02e1:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    svil_02e6:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02eb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02f0:  starg.s    s
    svil_02f2:  nop
    svil_02f3:  ldarg.0
    svil_02f4:  ldstr      "\t\tChainDistance: {0}\n"
    svil_02f9:  ldarg.1
    svil_02fa:  ldfld      float32 ['Assembly-CSharp']HitInfo::ChainDistance
    svil_02ff:  box        [mscorlib]System.Single
    svil_0304:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0309:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_030e:  starg.s    s
    svil_0310:  ldarg.0
    svil_0311:  ldstr      "\t\tChainCount: {0}\n"
    svil_0316:  ldarg.1
    svil_0317:  ldfld      int32 ['Assembly-CSharp']HitInfo::ChainCount
    svil_031c:  box        [mscorlib]System.Int32
    svil_0321:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0326:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_032b:  starg.s    s
    svil_032d:  ldarg.0
    svil_032e:  stloc.1
    svil_032f:  br.s       svil_0331

    svil_0331:  ldloc.1
    svil_0332:  ret
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
    svil_002b:  ldstr      "\tTeamAttackProbability {0}\n"
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
    // Code size       888 (0x378)
    .maxstack  4
    .locals init ([0] string s,
             [1] bool V_1,
             [2] bool V_2)
    svil_0000:  nop
    svil_0001:  ldstr      ""
    svil_0006:  stloc.0
    svil_0007:  ldloc.0
    svil_0008:  ldstr      "ID: "
    svil_000d:  ldarg.0
    svil_000e:  ldfld      string ['Assembly-CSharp']Roost.DatabaseScriptableObject::ID
    svil_0013:  ldstr      "\n"
    svil_0018:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_001d:  stloc.0
    svil_001e:  ldloc.0
    svil_001f:  ldstr      "ReactionInfo:\n"
    svil_0024:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0029:  stloc.0
    svil_002a:  ldarg.0
    svil_002b:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0030:  ldnull
    svil_0031:  cgt.un
    svil_0033:  stloc.1
    svil_0034:  ldloc.1
    svil_0035:  brfalse    svil_00e1

    svil_003a:  nop
    svil_003b:  ldloc.0
    svil_003c:  ldstr      "\tLightAttack: {0}\n"
    svil_0041:  ldarg.0
    svil_0042:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0047:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::LightAttack
    svil_004c:  box        [mscorlib]System.Boolean
    svil_0051:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0056:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_005b:  stloc.0
    svil_005c:  ldloc.0
    svil_005d:  ldstr      "\tHeavyAttack: {0}\n"
    svil_0062:  ldarg.0
    svil_0063:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0068:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::HeavyAttack
    svil_006d:  box        [mscorlib]System.Boolean
    svil_0072:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0077:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_007c:  stloc.0
    svil_007d:  ldloc.0
    svil_007e:  ldstr      "\tDodgeAttack: {0}\n"
    svil_0083:  ldarg.0
    svil_0084:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_0089:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Dodge
    svil_008e:  box        [mscorlib]System.Boolean
    svil_0093:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0098:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_009d:  stloc.0
    svil_009e:  ldloc.0
    svil_009f:  ldstr      "\tCounterAttack: {0}\n"
    svil_00a4:  ldarg.0
    svil_00a5:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_00aa:  ldfld      bool ['Assembly-CSharp']AbilityData/ReactionData::Counter
    svil_00af:  box        [mscorlib]System.Boolean
    svil_00b4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00b9:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00be:  stloc.0
    svil_00bf:  ldloc.0
    svil_00c0:  ldstr      "\tIndex: {0}\n"
    svil_00c5:  ldarg.0
    svil_00c6:  ldfld      class ['Assembly-CSharp']AbilityData/ReactionData ['Assembly-CSharp']AbilityData::ReactionInfo
    svil_00cb:  ldfld      int32 ['Assembly-CSharp']AbilityData/ReactionData::Index
    svil_00d0:  box        [mscorlib]System.Int32
    svil_00d5:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_00da:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_00df:  stloc.0
    svil_00e0:  nop
    svil_00e1:  ldloc.0
    svil_00e2:  ldstr      "Ability Name: "
    svil_00e7:  ldarg.0
    svil_00e8:  ldfld      string ['Assembly-CSharp']AbilityData::AbilityName
    svil_00ed:  ldstr      "\n"
    svil_00f2:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_00f7:  stloc.0
    svil_00f8:  ldloc.0
    svil_00f9:  ldstr      "Coroutine Name: "
    svil_00fe:  ldarg.0
    svil_00ff:  ldfld      string ['Assembly-CSharp']AbilityData::CoroutineName
    svil_0104:  ldstr      "\n"
    svil_0109:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    svil_010e:  stloc.0
    svil_010f:  ldloc.0
    svil_0110:  ldstr      "Special Cost: {0}\n"
    svil_0115:  ldarg.0
    svil_0116:  ldfld      int32 ['Assembly-CSharp']AbilityData::SpecialCost
    svil_011b:  box        [mscorlib]System.Int32
    svil_0120:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0125:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_012a:  stloc.0
    svil_012b:  ldloc.0
    svil_012c:  ldstr      "ComboType: {0}\n"
    svil_0131:  ldarg.0
    svil_0132:  ldfld      valuetype ['Assembly-CSharp']PlayerCharacter/ComboType ['Assembly-CSharp']AbilityData::ComboType
    svil_0137:  box        ['Assembly-CSharp']PlayerCharacter/ComboType
    svil_013c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0141:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0146:  stloc.0
    svil_0147:  ldloc.0
    svil_0148:  ldstr      "IncreaseComboCounter: {0}\n"
    svil_014d:  ldarg.0
    svil_014e:  ldfld      bool ['Assembly-CSharp']AbilityData::IncreaseComboCounter
    svil_0153:  box        [mscorlib]System.Boolean
    svil_0158:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_015d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0162:  stloc.0
    svil_0163:  ldloc.0
    svil_0164:  ldstr      "ResetComboCounter: {0}\n"
    svil_0169:  ldarg.0
    svil_016a:  ldfld      bool ['Assembly-CSharp']AbilityData::ResetComboCounter
    svil_016f:  box        [mscorlib]System.Boolean
    svil_0174:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0179:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_017e:  stloc.0
    svil_017f:  ldloc.0
    svil_0180:  ldstr      "CooldownSeconds: {0}\n"
    svil_0185:  ldarg.0
    svil_0186:  ldfld      float32 ['Assembly-CSharp']AbilityData::CooldownSeconds
    svil_018b:  box        [mscorlib]System.Single
    svil_0190:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0195:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_019a:  stloc.0
    svil_019b:  ldloc.0
    svil_019c:  ldstr      "WaitForComboInputSeconds: {0}\n"
    svil_01a1:  ldarg.0
    svil_01a2:  ldfld      float32 ['Assembly-CSharp']AbilityData::WaitForComboInputSeconds
    svil_01a7:  box        [mscorlib]System.Single
    svil_01ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01b1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01b6:  stloc.0
    svil_01b7:  ldloc.0
    svil_01b8:  ldstr      "TargetingFilters:\n"
    svil_01bd:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01c2:  stloc.0
    svil_01c3:  ldarg.0
    svil_01c4:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_01c9:  ldnull
    svil_01ca:  cgt.un
    svil_01cc:  stloc.2
    svil_01cd:  ldloc.2
    svil_01ce:  brfalse    svil_027a

    svil_01d3:  nop
    svil_01d4:  ldloc.0
    svil_01d5:  ldstr      "\tMinRange: {0}\n"
    svil_01da:  ldarg.0
    svil_01db:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_01e0:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MinRange
    svil_01e5:  box        [mscorlib]System.Single
    svil_01ea:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_01ef:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_01f4:  stloc.0
    svil_01f5:  ldloc.0
    svil_01f6:  ldstr      "\tMaxRange: {0}\n"
    svil_01fb:  ldarg.0
    svil_01fc:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_0201:  ldfld      float32 ['Assembly-CSharp']TargetingFilters::MaxRange
    svil_0206:  box        [mscorlib]System.Single
    svil_020b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0210:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0215:  stloc.0
    svil_0216:  ldloc.0
    svil_0217:  ldstr      "\tWindupOnly: {0}\n"
    svil_021c:  ldarg.0
    svil_021d:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_0222:  ldfld      bool ['Assembly-CSharp']TargetingFilters::WindupOnly
    svil_0227:  box        [mscorlib]System.Boolean
    svil_022c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0231:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0236:  stloc.0
    svil_0237:  ldloc.0
    svil_0238:  ldstr      "\tTeamAttackOnly: {0}\n"
    svil_023d:  ldarg.0
    svil_023e:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_0243:  ldfld      bool ['Assembly-CSharp']TargetingFilters::TeamAttackOnly
    svil_0248:  box        [mscorlib]System.Boolean
    svil_024d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0252:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0257:  stloc.0
    svil_0258:  ldloc.0
    svil_0259:  ldstr      "\tIgnoreProps: {0}\n"
    svil_025e:  ldarg.0
    svil_025f:  ldfld      class ['Assembly-CSharp']TargetingFilters ['Assembly-CSharp']AbilityData::TargetingFilters
    svil_0264:  ldfld      bool ['Assembly-CSharp']TargetingFilters::IgnoreProps
    svil_0269:  box        [mscorlib]System.Boolean
    svil_026e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0273:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0278:  stloc.0
    svil_0279:  nop
    svil_027a:  ldloc.0
    svil_027b:  ldstr      "FollowLockTarget: {0}\n"
    svil_0280:  ldarg.0
    svil_0281:  ldfld      bool ['Assembly-CSharp']AbilityData::FollowLockTarget
    svil_0286:  box        [mscorlib]System.Boolean
    svil_028b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0290:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0295:  stloc.0
    svil_0296:  ldloc.0
    svil_0297:  ldarg.0
    svil_0298:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::PrimaryAttack
    svil_029d:  ldstr      "PrimaryAttack"
    svil_02a2:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_02a7:  stloc.0
    svil_02a8:  ldloc.0
    svil_02a9:  ldarg.0
    svil_02aa:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::SecondaryAttack
    svil_02af:  ldstr      "SecondaryAttack"
    svil_02b4:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_02b9:  stloc.0
    svil_02ba:  ldloc.0
    svil_02bb:  ldarg.0
    svil_02bc:  ldfld      class ['Assembly-CSharp']Attack ['Assembly-CSharp']AbilityData::TertiaryAttack
    svil_02c1:  ldstr      "TertiaryAttack"
    svil_02c6:  call       string LogValues.MySpace::LogAttack(string,
                                                             class ['Assembly-CSharp']Attack,
                                                             string)
    svil_02cb:  stloc.0
    svil_02cc:  ldloc.0
    svil_02cd:  ldstr      "[Charging]\n"
    svil_02d2:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02d7:  stloc.0
    svil_02d8:  ldloc.0
    svil_02d9:  ldstr      "ChargeType: {0}\n"
    svil_02de:  ldarg.0
    svil_02df:  ldfld      valuetype ['Assembly-CSharp']AbilityData/ChargeTypeEnum ['Assembly-CSharp']AbilityData::ChargeType
    svil_02e4:  box        ['Assembly-CSharp']AbilityData/ChargeTypeEnum
    svil_02e9:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_02ee:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_02f3:  stloc.0
    svil_02f4:  ldloc.0
    svil_02f5:  ldstr      "FullChargeTimeSeconds: {0}\n"
    svil_02fa:  ldarg.0
    svil_02fb:  ldfld      float32 ['Assembly-CSharp']AbilityData::FullChargeTimeSeconds
    svil_0300:  box        [mscorlib]System.Single
    svil_0305:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_030a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_030f:  stloc.0
    svil_0310:  ldloc.0
    svil_0311:  ldstr      "MaxChargeTimeSeconds: {0}\n"
    svil_0316:  ldarg.0
    svil_0317:  ldfld      float32 ['Assembly-CSharp']AbilityData::MaxChargeTimeSeconds
    svil_031c:  box        [mscorlib]System.Single
    svil_0321:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_0326:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_032b:  stloc.0
    svil_032c:  ldloc.0
    svil_032d:  ldstr      "[Other]\n"
    svil_0332:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0337:  stloc.0
    svil_0338:  ldloc.0
    svil_0339:  ldstr      "IsUninterruptible: {0}\n"
    svil_033e:  ldarg.0
    svil_033f:  ldfld      bool ['Assembly-CSharp']AbilityData::IsUninterruptible
    svil_0344:  box        [mscorlib]System.Boolean
    svil_0349:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_034e:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_0353:  stloc.0
    svil_0354:  ldloc.0
    svil_0355:  ldstr      "IsTeamAttack: {0}\n"
    svil_035a:  ldarg.0
    svil_035b:  ldfld      bool ['Assembly-CSharp']AbilityData::IsTeamAttack
    svil_0360:  box        [mscorlib]System.Boolean
    svil_0365:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    svil_036a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    svil_036f:  stloc.0
    svil_0370:  ldloc.0
    svil_0371:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    svil_0376:  nop
    svil_0377:  ret
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
