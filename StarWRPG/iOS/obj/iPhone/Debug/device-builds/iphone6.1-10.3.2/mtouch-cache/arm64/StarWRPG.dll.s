.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.0.0 (tarball Fri May  5 18:00:38 EDT 2017)"
	.asciz "StarWRPG.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip StarWRPG_App__ctor
StarWRPG_App__ctor:
.file 1 "/Users/frank/Projects/StarWRPG/StarWRPG/App.xaml.cs"
.loc 1 7 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #208]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xf9402bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_1
.word 0xf9402bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 1 8 0
.word 0xf9402bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.loc 1 9 0
.word 0xf9402bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_2
.word 0xf9402bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.loc 1 11 0
.word 0xf9402bb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800140
.word 0xd2800180

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xd2801501
.word 0xd2801501
bl _p_3
.word 0xf9006ba0
.word 0xd2800141
.word 0xd2800182
bl _p_4
.word 0xf9402bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xf90067a0
.word 0xaa1803e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #224]
.word 0xaa1803e0
.word 0xf940031e
bl _p_5
.word 0xf9402bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf90063a0
.word 0xaa1703e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xaa1703e0
.word 0xf94002fe
bl _p_6
.word 0xf9402bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf9005fa0
.word 0xaa1603e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xaa1603e0
.word 0xf94002de
bl _p_7
.word 0xf9402bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf9005ba0
.word 0xaa1503e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xaa1503e0
.word 0xf94002be
bl _p_8
.word 0xf9402bb1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90057a0
.word 0xaa1403e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xaa1403e0
.word 0xf940029e
bl _p_9
.word 0xf9402bb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf90053a0
.word 0xaa1303e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xaa1303e0
.word 0xf940027e
bl _p_10
.word 0xf9402bb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90037a0
.word 0xf94037a0
.word 0xf9004fa0
.word 0xf94037a2
.word 0xd2800020
.word 0xaa0203e0
.word 0xd2800021
.word 0xf940005e
bl _p_11
.word 0xf9402bb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xf9004ba0
.word 0xf9403ba2
.word 0xd2800060
.word 0xaa0203e0
.word 0xd2800061
.word 0xf940005e
bl _p_12
.word 0xf9402bb1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xaa0003f9
.loc 1 23 0
.word 0xf9402bb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xf90047a0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #272]
bl _p_13
.word 0xf94047a1
.word 0xf90043a0
bl _p_14
.word 0xf9402bb1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa1a03e0
bl _p_15
.word 0xf9402bb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.loc 1 24 0
.word 0xf9402bb1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip StarWRPG_App_OnStart
StarWRPG_App_OnStart:
.loc 1 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #280]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 1 29 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip StarWRPG_App_OnSleep
StarWRPG_App_OnSleep:
.loc 1 32 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #288]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 1 34 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip StarWRPG_App_OnResume
StarWRPG_App_OnResume:
.loc 1 37 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #296]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 1 39 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip StarWRPG_App_InitializeComponent
StarWRPG_App_InitializeComponent:
.file 2 "/Users/frank/Projects/StarWRPG/StarWRPG/obj/Debug/StarWRPG.App.xaml.g.cs"
.loc 2 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 2 19 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #312]

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x15, [x16, #320]
bl _p_16
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.loc 2 20 0
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter
StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter:
.file 3 "/Users/frank/Projects/StarWRPG/StarWRPG/FaDCharacterDetailsPage.xaml.cs"
.loc 3 7 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_17
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 3 8 0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 3 9 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_18
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.loc 3 11 0
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90027a0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd2800401
.word 0xd2800401
bl _p_3
.word 0xf94027a1
.word 0xf90023a0
bl _p_19
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1903e0
bl _p_20
.word 0xf94013b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.loc 3 12 0
.word 0xf94013b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterDetailsPage_InitializeComponent
StarWRPG_FaDCharacterDetailsPage_InitializeComponent:
.file 4 "/Users/frank/Projects/StarWRPG/StarWRPG/obj/Debug/StarWRPG.FaDCharacterDetailsPage.xaml.g.cs"
.loc 4 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #344]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 4 19 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #352]

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x15, [x16, #360]
bl _p_21
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.loc 4 20 0
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Name
StarWRPG_FaDCharacter_get_Name:
.file 5 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/FaDCharacter.cs"
.loc 5 11 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Name_string
StarWRPG_FaDCharacter_set_Name_string:
.loc 5 11 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9000801
.word 0x91004000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Background
StarWRPG_FaDCharacter_get_Background:
.loc 5 12 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Background_string
StarWRPG_FaDCharacter_set_Background_string:
.loc 5 12 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9000c01
.word 0x91006000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Description
StarWRPG_FaDCharacter_get_Description:
.loc 5 13 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Description_string
StarWRPG_FaDCharacter_set_Description_string:
.loc 5 13 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9001001
.word 0x91008000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Species
StarWRPG_FaDCharacter_get_Species:
.loc 5 14 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Species_string
StarWRPG_FaDCharacter_set_Species_string:
.loc 5 14 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #424]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9001401
.word 0x9100a000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Career
StarWRPG_FaDCharacter_get_Career:
.loc 5 15 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Career_string
StarWRPG_FaDCharacter_set_Career_string:
.loc 5 15 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #440]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9001801
.word 0x9100c000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_SpecializationTrees
StarWRPG_FaDCharacter_get_SpecializationTrees:
.loc 5 16 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #448]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_SpecializationTrees_string
StarWRPG_FaDCharacter_set_SpecializationTrees_string:
.loc 5 16 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #456]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9001c01
.word 0x9100e000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_ForceRating
StarWRPG_FaDCharacter_get_ForceRating:
.loc 5 17 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #464]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb940a000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_ForceRating_uint
StarWRPG_FaDCharacter_set_ForceRating_uint:
.loc 5 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #472]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb900a001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_SoakValue
StarWRPG_FaDCharacter_get_SoakValue:
.loc 5 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #480]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb940a400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_SoakValue_uint
StarWRPG_FaDCharacter_set_SoakValue_uint:
.loc 5 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #488]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb900a401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Wounds
StarWRPG_FaDCharacter_get_Wounds:
.loc 5 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #496]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold
StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold:
.loc 5 19 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #504]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9002001
.word 0x91010000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Strain
StarWRPG_FaDCharacter_get_Strain:
.loc 5 20 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #512]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold
StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold:
.loc 5 20 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #520]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9002401
.word 0x91012000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Defense
StarWRPG_FaDCharacter_get_Defense:
.loc 5 21 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense
StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense:
.loc 5 21 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #536]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9002801
.word 0x91014000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Agility
StarWRPG_FaDCharacter_get_Agility:
.loc 5 23 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #544]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic
StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic:
.loc 5 23 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #552]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9002c01
.word 0x91016000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Brawn
StarWRPG_FaDCharacter_get_Brawn:
.loc 5 24 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9403000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic
StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic:
.loc 5 24 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #568]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9003001
.word 0x91018000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Cunning
StarWRPG_FaDCharacter_get_Cunning:
.loc 5 25 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9403400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic
StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic:
.loc 5 25 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9003401
.word 0x9101a000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Intellect
StarWRPG_FaDCharacter_get_Intellect:
.loc 5 26 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9403800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic
StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic:
.loc 5 26 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #600]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9003801
.word 0x9101c000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Presence
StarWRPG_FaDCharacter_get_Presence:
.loc 5 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #608]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9403c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic
StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic:
.loc 5 27 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #616]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9003c01
.word 0x9101e000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Willpower
StarWRPG_FaDCharacter_get_Willpower:
.loc 5 28 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #624]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9404000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic
StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic:
.loc 5 28 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #632]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9004001
.word 0x91020000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Astrogation
StarWRPG_FaDCharacter_get_Astrogation:
.loc 5 30 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #640]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9404400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill
StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill:
.loc 5 30 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #648]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9004401
.word 0x91022000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Athletics
StarWRPG_FaDCharacter_get_Athletics:
.loc 5 31 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #656]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9404800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill
StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill:
.loc 5 31 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9004801
.word 0x91024000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_get_Lightsaber
StarWRPG_FaDCharacter_get_Lightsaber:
.loc 5 32 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #672]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9404c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill
StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill:
.loc 5 32 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #680]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9004c01
.word 0x91026000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter__ctor_uint_uint
StarWRPG_FaDCharacter__ctor_uint_uint:
.loc 5 43 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #688]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 5 44 0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 5 45 0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb9401ba0
.word 0xf90033a0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf94033a1
.word 0xf9002fa0
bl _p_23
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa1803e0
bl _p_24
.word 0xf94017b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.loc 5 46 0
.word 0xf94017b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb94023a0
.word 0xf9002ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9402ba1
.word 0xf90027a0
bl _p_23
.word 0xf94017b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa1803e0
bl _p_25
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.loc 5 47 0
.word 0xf94017b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf90023a0
bl _p_26
.word 0xf94017b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1803e0
bl _p_27
.word 0xf94017b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.loc 5 48 0
.word 0xf94017b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0xaa1803e0
.word 0xd2800001
bl _p_11
.word 0xf94017b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.loc 5 49 0
.word 0xf94017b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0xaa1803e0
.word 0xd2800001
bl _p_12
.word 0xf94017b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.loc 5 50 0
.word 0xf94017b1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_28
.word 0xf94017b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 51 0
.word 0xf94017b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_29
.word 0xf94017b1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.loc 5 52 0
.word 0xf94017b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_initializeCharacteristics
StarWRPG_FaDCharacter_initializeCharacteristics:
.loc 5 55 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #712]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 5 56 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9002fa0
bl _p_30
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa1a03e0
bl _p_31
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.loc 5 57 0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9002ba0
bl _p_32
.word 0xf9400fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa1a03e0
bl _p_33
.word 0xf9400fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.loc 5 58 0
.word 0xf9400fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf90027a0
bl _p_34
.word 0xf9400fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa1a03e0
bl _p_35
.word 0xf9400fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.loc 5 59 0
.word 0xf9400fb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #744]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf90023a0
bl _p_36
.word 0xf9400fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1a03e0
bl _p_37
.word 0xf9400fb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.loc 5 60 0
.word 0xf9400fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9001fa0
bl _p_38
.word 0xf9400fb1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa1a03e0
bl _p_39
.word 0xf9400fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.loc 5 61 0
.word 0xf9400fb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #760]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9001ba0
bl _p_40
.word 0xf9400fb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa1a03e0
bl _p_41
.word 0xf9400fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.loc 5 62 0
.word 0xf9400fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacter_initializeSkills
StarWRPG_FaDCharacter_initializeSkills:
.loc 5 65 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #768]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 5 66 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_42
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #776]
.word 0xd2800401
.word 0xd2800401
bl _p_3
.word 0xf9402fa1
.word 0xf9002ba0
bl _p_43
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa1a03e0
bl _p_44
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.loc 5 67 0
.word 0xf9400fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_45
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #784]
.word 0xd2800401
.word 0xd2800401
bl _p_3
.word 0xf94027a1
.word 0xf90023a0
bl _p_46
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1a03e0
bl _p_47
.word 0xf9400fb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 69 0
.word 0xf9400fb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_45
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #792]
.word 0xd2800401
.word 0xd2800401
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_48
.word 0xf9400fb1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa1a03e0
bl _p_49
.word 0xf9400fb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.loc 5 70 0
.word 0xf9400fb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip StarWRPG_Threshold_get_Max
StarWRPG_Threshold_get_Max:
.file 6 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Threshold.cs"
.loc 6 6 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #800]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip StarWRPG_Threshold_set_Max_uint
StarWRPG_Threshold_set_Max_uint:
.loc 6 6 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #808]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb9001001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip StarWRPG_Threshold_get_Current
StarWRPG_Threshold_get_Current:
.loc 6 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #816]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip StarWRPG_Threshold_set_Current_uint
StarWRPG_Threshold_set_Current_uint:
.loc 6 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #824]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb9001401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip StarWRPG_Threshold__ctor_uint
StarWRPG_Threshold__ctor_uint:
.loc 6 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #832]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.loc 6 10 0
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 6 11 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xaa1903e0
.word 0xd2800001
bl _p_50
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.loc 6 12 0
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9401ba1
.word 0xaa1903e0
bl _p_51
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 6 13 0
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip StarWRPG_Defense_get_Ranged
StarWRPG_Defense_get_Ranged:
.file 7 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Defense.cs"
.loc 7 6 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #840]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip StarWRPG_Defense_set_Ranged_uint
StarWRPG_Defense_set_Ranged_uint:
.loc 7 6 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #848]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb9001001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip StarWRPG_Defense_get_Melee
StarWRPG_Defense_get_Melee:
.loc 7 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #856]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip StarWRPG_Defense_set_Melee_uint
StarWRPG_Defense_set_Melee_uint:
.loc 7 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #864]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb9001401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip StarWRPG_Defense__ctor
StarWRPG_Defense__ctor:
.loc 7 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #872]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 10 0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 11 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_52
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 7 12 0
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_53
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 7 13 0
.word 0xf9400fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_fadCharacter
StarWRPG_FaDCharacterViewModel_get_fadCharacter:
.file 8 "/Users/frank/Projects/StarWRPG/StarWRPG/ViewModels/FaDCharacterViewModel.cs"
.loc 8 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #880]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter
StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter:
.loc 8 9 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #888]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9000801
.word 0x91004000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Name
StarWRPG_FaDCharacterViewModel_get_Name:
.loc 8 13 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #896]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_55
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Name_string
StarWRPG_FaDCharacterViewModel_set_Name_string:
.loc 8 16 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #904]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 17 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_5
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 18 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #912]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 19 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Background
StarWRPG_FaDCharacterViewModel_get_Background:
.loc 8 24 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #920]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_57
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Background_string
StarWRPG_FaDCharacterViewModel_set_Background_string:
.loc 8 27 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #928]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 28 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_6
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 29 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #936]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 30 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Description
StarWRPG_FaDCharacterViewModel_get_Description:
.loc 8 35 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #944]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_58
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Description_string
StarWRPG_FaDCharacterViewModel_set_Description_string:
.loc 8 38 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #952]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 39 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_7
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 40 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #960]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 41 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Species
StarWRPG_FaDCharacterViewModel_get_Species:
.loc 8 46 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #968]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_59
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Species_string
StarWRPG_FaDCharacterViewModel_set_Species_string:
.loc 8 49 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #976]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 50 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_8
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 51 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #984]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 52 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Career
StarWRPG_FaDCharacterViewModel_get_Career:
.loc 8 57 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #992]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_60
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_46:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Career_string
StarWRPG_FaDCharacterViewModel_set_Career_string:
.loc 8 60 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1000]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 61 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_9
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 62 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1008]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 63 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_SpecializationTrees
StarWRPG_FaDCharacterViewModel_get_SpecializationTrees:
.loc 8 68 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1016]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_61
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string
StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string:
.loc 8 71 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1024]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 72 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_10
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 73 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1032]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 74 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_ForceRating
StarWRPG_FaDCharacterViewModel_get_ForceRating:
.loc 8 79 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1040]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_62
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_ForceRating_uint
StarWRPG_FaDCharacterViewModel_set_ForceRating_uint:
.loc 8 82 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1048]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 83 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_11
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 84 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1056]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 85 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_SoakValue
StarWRPG_FaDCharacterViewModel_get_SoakValue:
.loc 8 90 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1064]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_63
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_SoakValue_uint
StarWRPG_FaDCharacterViewModel_set_SoakValue_uint:
.loc 8 93 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1072]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 94 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_12
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 95 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1080]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 8 96 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_CurrentWounds
StarWRPG_FaDCharacterViewModel_get_CurrentWounds:
.loc 8 101 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1088]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_64
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_65
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint
StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint:
.loc 8 104 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1096]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 105 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_64
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_50
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 106 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1104]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 107 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_MaxWounds
StarWRPG_FaDCharacterViewModel_get_MaxWounds:
.loc 8 112 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1112]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_64
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_66
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint
StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint:
.loc 8 115 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1120]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 116 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_64
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_51
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 117 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1128]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 118 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_CurrentStrain
StarWRPG_FaDCharacterViewModel_get_CurrentStrain:
.loc 8 123 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1136]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_67
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_65
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint
StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint:
.loc 8 126 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1144]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 127 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_67
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_50
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 128 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1152]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 129 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_53:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_MaxStrain
StarWRPG_FaDCharacterViewModel_get_MaxStrain:
.loc 8 134 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1160]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_67
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_66
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_54:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint
StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint:
.loc 8 137 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1168]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 138 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_67
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_51
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 139 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1176]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 140 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_55:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_RangedDefense
StarWRPG_FaDCharacterViewModel_get_RangedDefense:
.loc 8 145 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1184]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_69
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_56:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint
StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint:
.loc 8 148 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1192]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 149 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_52
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 150 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 151 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_57:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_MeleeDefense
StarWRPG_FaDCharacterViewModel_get_MeleeDefense:
.loc 8 156 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1208]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_70
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_58:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint
StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint:
.loc 8 159 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1216]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 160 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_53
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 161 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1224]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 162 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_59:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Agility
StarWRPG_FaDCharacterViewModel_get_Agility:
.loc 8 167 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1232]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_71
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_5a:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Agility_uint
StarWRPG_FaDCharacterViewModel_set_Agility_uint:
.loc 8 170 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1240]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 171 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_71
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 172 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1248]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 173 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_5b:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Brawn
StarWRPG_FaDCharacterViewModel_get_Brawn:
.loc 8 178 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1256]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_45
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_5c:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Brawn_uint
StarWRPG_FaDCharacterViewModel_set_Brawn_uint:
.loc 8 181 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1264]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 182 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_45
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 183 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1272]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 184 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_5d:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Cunning
StarWRPG_FaDCharacterViewModel_get_Cunning:
.loc 8 189 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1280]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_74
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_5e:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Cunning_uint
StarWRPG_FaDCharacterViewModel_set_Cunning_uint:
.loc 8 192 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1288]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 193 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_74
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 194 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1296]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 195 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_5f:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Intellect
StarWRPG_FaDCharacterViewModel_get_Intellect:
.loc 8 200 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1304]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_42
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_60:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Intellect_uint
StarWRPG_FaDCharacterViewModel_set_Intellect_uint:
.loc 8 203 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1312]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 204 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_42
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 205 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1320]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 206 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_61:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Presence
StarWRPG_FaDCharacterViewModel_get_Presence:
.loc 8 211 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1328]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_75
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_62:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Presence_uint
StarWRPG_FaDCharacterViewModel_set_Presence_uint:
.loc 8 214 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1336]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 215 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_75
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 216 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1344]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 217 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_63:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_get_Willpower
StarWRPG_FaDCharacterViewModel_get_Willpower:
.loc 8 222 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1352]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_54
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_76
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_72
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_64:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_set_Willpower_uint
StarWRPG_FaDCharacterViewModel_set_Willpower_uint:
.loc 8 225 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1360]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 226 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_54
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_76
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xb9401ba1
.word 0xaa0203e0
.word 0xf940005e
bl _p_73
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 8 227 0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1368]
.word 0xaa1903e0
bl _p_56
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 228 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_65:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter
StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter:
.loc 8 231 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1376]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 232 0
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 233 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xaa1903e0
bl _p_77
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 8 234 0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_66:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1384]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_78
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1392]
.word 0xeb01001f
.word 0x10000011
.word 0x540005a1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000480
.word 0x91006320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1400]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
bl _p_22
.word 0xf94023b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff961
.word 0xf94023b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_79
.word 0xd2801be0
.word 0xaa1103e1
bl _p_79

Lme_67:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1408]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_80
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1392]
.word 0xeb01001f
.word 0x10000011
.word 0x540005a1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000480
.word 0x91006320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x1, [x16, #1400]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
bl _p_22
.word 0xf94023b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff961
.word 0xf94023b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_79
.word 0xd2801be0
.word 0xaa1103e1
bl _p_79

Lme_68:
.text
	.align 4
	.no_dead_strip StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string
StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string:
.loc 8 239 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1416]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 240 0
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e1
.word 0xaa0003f7
.word 0xb5000078
.word 0xaa1703e0
.word 0x1400001b
.word 0xaa1703e0
.word 0xaa1903e0
.word 0xf94017a0
.word 0xf9002fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1424]
.word 0xd2800301
.word 0xd2800301
bl _p_3
.word 0xf9402fa1
.word 0xf9002ba0
bl _p_81
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xf9400ef0
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.loc 8 241 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_69:
.text
	.align 4
	.no_dead_strip StarWRPG_Characteristic__ctor
StarWRPG_Characteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1432]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_82
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6b:
.text
	.align 4
	.no_dead_strip StarWRPG_BrawnCharacteristic_get_Name
StarWRPG_BrawnCharacteristic_get_Name:
.file 9 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/BrawnCharacteristic.cs"
.loc 9 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1440]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 10 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1272]
.word 0xaa0003fa
.loc 9 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6c:
.text
	.align 4
	.no_dead_strip StarWRPG_BrawnCharacteristic_get_ShortName
StarWRPG_BrawnCharacteristic_get_ShortName:
.loc 9 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1448]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 18 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xaa0003fa
.loc 9 19 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6d:
.text
	.align 4
	.no_dead_strip StarWRPG_BrawnCharacteristic__ctor
StarWRPG_BrawnCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1464]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6e:
.text
	.align 4
	.no_dead_strip StarWRPG_IntellectCharacteristic_get_Name
StarWRPG_IntellectCharacteristic_get_Name:
.file 10 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/IntellectCharacteristic.cs"
.loc 10 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1472]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 10 11 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1320]
.word 0xaa0003fa
.loc 10 12 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6f:
.text
	.align 4
	.no_dead_strip StarWRPG_IntellectCharacteristic_get_ShortName
StarWRPG_IntellectCharacteristic_get_ShortName:
.loc 10 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1480]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 10 19 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1488]
.word 0xaa0003fa
.loc 10 20 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_70:
.text
	.align 4
	.no_dead_strip StarWRPG_IntellectCharacteristic__ctor
StarWRPG_IntellectCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1496]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_71:
.text
	.align 4
	.no_dead_strip StarWRPG_AgilityCharacteristic_get_Name
StarWRPG_AgilityCharacteristic_get_Name:
.file 11 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/AgilityCharacteristic.cs"
.loc 11 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1504]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 11 11 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1248]
.word 0xaa0003fa
.loc 11 12 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_72:
.text
	.align 4
	.no_dead_strip StarWRPG_AgilityCharacteristic_get_ShortName
StarWRPG_AgilityCharacteristic_get_ShortName:
.loc 11 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1512]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 11 19 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0xaa0003fa
.loc 11 20 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_73:
.text
	.align 4
	.no_dead_strip StarWRPG_AgilityCharacteristic__ctor
StarWRPG_AgilityCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_74:
.text
	.align 4
	.no_dead_strip StarWRPG_CunningCharacteristic_get_Name
StarWRPG_CunningCharacteristic_get_Name:
.file 12 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/CunningCharacteristic.cs"
.loc 12 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1536]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 12 11 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1296]
.word 0xaa0003fa
.loc 12 12 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_75:
.text
	.align 4
	.no_dead_strip StarWRPG_CunningCharacteristic_get_ShortName
StarWRPG_CunningCharacteristic_get_ShortName:
.loc 12 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1544]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 12 19 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1552]
.word 0xaa0003fa
.loc 12 20 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_76:
.text
	.align 4
	.no_dead_strip StarWRPG_CunningCharacteristic__ctor
StarWRPG_CunningCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_77:
.text
	.align 4
	.no_dead_strip StarWRPG_WillpowerCharacteristic_get_Name
StarWRPG_WillpowerCharacteristic_get_Name:
.file 13 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/WillpowerCharacteristic.cs"
.loc 13 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1568]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 13 10 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1368]
.word 0xaa0003fa
.loc 13 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_78:
.text
	.align 4
	.no_dead_strip StarWRPG_WillpowerCharacteristic_get_ShortName
StarWRPG_WillpowerCharacteristic_get_ShortName:
.loc 13 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1576]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 13 18 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1584]
.word 0xaa0003fa
.loc 13 19 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_79:
.text
	.align 4
	.no_dead_strip StarWRPG_WillpowerCharacteristic__ctor
StarWRPG_WillpowerCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7a:
.text
	.align 4
	.no_dead_strip StarWRPG_PresenceCharacteristic_get_Name
StarWRPG_PresenceCharacteristic_get_Name:
.file 14 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Characteristics/PresenceCharacteristic.cs"
.loc 14 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1600]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 14 10 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1344]
.word 0xaa0003fa
.loc 14 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7b:
.text
	.align 4
	.no_dead_strip StarWRPG_PresenceCharacteristic_get_ShortName
StarWRPG_PresenceCharacteristic_get_ShortName:
.loc 14 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1608]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 14 18 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1616]
.word 0xaa0003fa
.loc 14 19 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7c:
.text
	.align 4
	.no_dead_strip StarWRPG_PresenceCharacteristic__ctor
StarWRPG_PresenceCharacteristic__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1624]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_83
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7d:
.text
	.align 4
	.no_dead_strip StarWRPG_Skill_get_Characteristic
StarWRPG_Skill_get_Characteristic:
.file 15 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Skill.cs"
.loc 15 6 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1632]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7e:
.text
	.align 4
	.no_dead_strip StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic
StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic:
.loc 15 6 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1640]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf9000c01
.word 0x91006000
bl _p_22
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_7f:
.text
	.align 4
	.no_dead_strip StarWRPG_Skill_get_CharacteristicName
StarWRPG_Skill_get_CharacteristicName:
.loc 15 11 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1648]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 15 12 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_84
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403430
.word 0xd63f0200
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.loc 15 13 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_80:
.text
	.align 4
	.no_dead_strip StarWRPG_Skill_get_NameAndCharacteristicName
StarWRPG_Skill_get_NameAndCharacteristicName:
.loc 15 19 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1656]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 15 20 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9403030
.word 0xd63f0200
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_85
.word 0xf90033a0
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x3, [x16, #1672]
bl _p_86
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.loc 15 21 0
.word 0xf94013b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_81:
.text
	.align 4
	.no_dead_strip StarWRPG_Skill__ctor_StarWRPG_Characteristic
StarWRPG_Skill__ctor_StarWRPG_Characteristic:
.loc 15 24 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1680]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_82
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 15 25 0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 15 26 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xaa1903e0
bl _p_87
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.loc 15 27 0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_82:
.text
	.align 4
	.no_dead_strip StarWRPG_CharacteristicOrSkill_get_rank
StarWRPG_CharacteristicOrSkill_get_rank:
.file 16 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/CharacteristicOrSkill.cs"
.loc 16 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1688]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_83:
.text
	.align 4
	.no_dead_strip StarWRPG_CharacteristicOrSkill_set_rank_uint
StarWRPG_CharacteristicOrSkill_set_rank_uint:
.loc 16 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1696]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9401ba1
.word 0xb9001401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_84:
.text
	.align 4
	.no_dead_strip StarWRPG_CharacteristicOrSkill_get_Rank
StarWRPG_CharacteristicOrSkill_get_Rank:
.loc 16 12 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1704]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_88
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_86:
.text
	.align 4
	.no_dead_strip StarWRPG_CharacteristicOrSkill_set_Rank_uint
StarWRPG_CharacteristicOrSkill_set_Rank_uint:
.loc 16 15 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1712]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 16 0
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb94023a1
.word 0xaa1903e0
bl _p_89
.word 0xf94017b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 17 0
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_88
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa1903e1
.word 0xb9401321
.word 0x6b01001f
.word 0x9a9f97e0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340001c0
.loc 16 18 0
.word 0xf94017b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xb9401321
.word 0xaa1903e0
bl _p_89
.word 0xf94017b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.loc 16 19 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_87:
.text
	.align 4
	.no_dead_strip StarWRPG_CharacteristicOrSkill__ctor
StarWRPG_CharacteristicOrSkill__ctor:
.loc 16 6 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1720]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd28000a0
.word 0xd28000be
.word 0xb900135e
.loc 16 22 0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 23 0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 24 0
.word 0xf9400fb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_73
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.loc 16 25 0
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_88:
.text
	.align 4
	.no_dead_strip StarWRPG_AstrogationSkill_get_Name
StarWRPG_AstrogationSkill_get_Name:
.file 17 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Skills/AstrogationSkill.cs"
.loc 17 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1728]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 17 10 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1736]
.word 0xaa0003fa
.loc 17 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_89:
.text
	.align 4
	.no_dead_strip StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic
StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic:
.loc 17 14 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1744]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_90
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8a:
.text
	.align 4
	.no_dead_strip StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic
StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic:
.file 18 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Skills/LightsaberSkill.cs"
.loc 18 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1752]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_90
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8b:
.text
	.align 4
	.no_dead_strip StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic
StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic:
.loc 18 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1760]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 18 11 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_87
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 18 12 0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8c:
.text
	.align 4
	.no_dead_strip StarWRPG_LightsaberSkill_get_Name
StarWRPG_LightsaberSkill_get_Name:
.loc 18 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1768]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 18 18 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1776]
.word 0xaa0003fa
.loc 18 19 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8d:
.text
	.align 4
	.no_dead_strip StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic
StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic:
.file 19 "/Users/frank/Projects/StarWRPG/StarWRPG/Models/SWCharacter/Skills/AthleticsSkill.cs"
.loc 19 6 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1784]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_90
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8e:
.text
	.align 4
	.no_dead_strip StarWRPG_AthleticsSkill_get_Name
StarWRPG_AthleticsSkill_get_Name:
.loc 19 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1792]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 19 12 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x0, [x16, #1800]
.word 0xaa0003fa
.loc 19 13 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8f:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl StarWRPG_App__ctor
bl StarWRPG_App_OnStart
bl StarWRPG_App_OnSleep
bl StarWRPG_App_OnResume
bl StarWRPG_App_InitializeComponent
bl StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter
bl StarWRPG_FaDCharacterDetailsPage_InitializeComponent
bl StarWRPG_FaDCharacter_get_Name
bl StarWRPG_FaDCharacter_set_Name_string
bl StarWRPG_FaDCharacter_get_Background
bl StarWRPG_FaDCharacter_set_Background_string
bl StarWRPG_FaDCharacter_get_Description
bl StarWRPG_FaDCharacter_set_Description_string
bl StarWRPG_FaDCharacter_get_Species
bl StarWRPG_FaDCharacter_set_Species_string
bl StarWRPG_FaDCharacter_get_Career
bl StarWRPG_FaDCharacter_set_Career_string
bl StarWRPG_FaDCharacter_get_SpecializationTrees
bl StarWRPG_FaDCharacter_set_SpecializationTrees_string
bl StarWRPG_FaDCharacter_get_ForceRating
bl StarWRPG_FaDCharacter_set_ForceRating_uint
bl StarWRPG_FaDCharacter_get_SoakValue
bl StarWRPG_FaDCharacter_set_SoakValue_uint
bl StarWRPG_FaDCharacter_get_Wounds
bl StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold
bl StarWRPG_FaDCharacter_get_Strain
bl StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold
bl StarWRPG_FaDCharacter_get_Defense
bl StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense
bl StarWRPG_FaDCharacter_get_Agility
bl StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic
bl StarWRPG_FaDCharacter_get_Brawn
bl StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic
bl StarWRPG_FaDCharacter_get_Cunning
bl StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic
bl StarWRPG_FaDCharacter_get_Intellect
bl StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic
bl StarWRPG_FaDCharacter_get_Presence
bl StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic
bl StarWRPG_FaDCharacter_get_Willpower
bl StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic
bl StarWRPG_FaDCharacter_get_Astrogation
bl StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill
bl StarWRPG_FaDCharacter_get_Athletics
bl StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill
bl StarWRPG_FaDCharacter_get_Lightsaber
bl StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill
bl StarWRPG_FaDCharacter__ctor_uint_uint
bl StarWRPG_FaDCharacter_initializeCharacteristics
bl StarWRPG_FaDCharacter_initializeSkills
bl StarWRPG_Threshold_get_Max
bl StarWRPG_Threshold_set_Max_uint
bl StarWRPG_Threshold_get_Current
bl StarWRPG_Threshold_set_Current_uint
bl StarWRPG_Threshold__ctor_uint
bl StarWRPG_Defense_get_Ranged
bl StarWRPG_Defense_set_Ranged_uint
bl StarWRPG_Defense_get_Melee
bl StarWRPG_Defense_set_Melee_uint
bl StarWRPG_Defense__ctor
bl StarWRPG_FaDCharacterViewModel_get_fadCharacter
bl StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter
bl StarWRPG_FaDCharacterViewModel_get_Name
bl StarWRPG_FaDCharacterViewModel_set_Name_string
bl StarWRPG_FaDCharacterViewModel_get_Background
bl StarWRPG_FaDCharacterViewModel_set_Background_string
bl StarWRPG_FaDCharacterViewModel_get_Description
bl StarWRPG_FaDCharacterViewModel_set_Description_string
bl StarWRPG_FaDCharacterViewModel_get_Species
bl StarWRPG_FaDCharacterViewModel_set_Species_string
bl StarWRPG_FaDCharacterViewModel_get_Career
bl StarWRPG_FaDCharacterViewModel_set_Career_string
bl StarWRPG_FaDCharacterViewModel_get_SpecializationTrees
bl StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string
bl StarWRPG_FaDCharacterViewModel_get_ForceRating
bl StarWRPG_FaDCharacterViewModel_set_ForceRating_uint
bl StarWRPG_FaDCharacterViewModel_get_SoakValue
bl StarWRPG_FaDCharacterViewModel_set_SoakValue_uint
bl StarWRPG_FaDCharacterViewModel_get_CurrentWounds
bl StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint
bl StarWRPG_FaDCharacterViewModel_get_MaxWounds
bl StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint
bl StarWRPG_FaDCharacterViewModel_get_CurrentStrain
bl StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint
bl StarWRPG_FaDCharacterViewModel_get_MaxStrain
bl StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint
bl StarWRPG_FaDCharacterViewModel_get_RangedDefense
bl StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint
bl StarWRPG_FaDCharacterViewModel_get_MeleeDefense
bl StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint
bl StarWRPG_FaDCharacterViewModel_get_Agility
bl StarWRPG_FaDCharacterViewModel_set_Agility_uint
bl StarWRPG_FaDCharacterViewModel_get_Brawn
bl StarWRPG_FaDCharacterViewModel_set_Brawn_uint
bl StarWRPG_FaDCharacterViewModel_get_Cunning
bl StarWRPG_FaDCharacterViewModel_set_Cunning_uint
bl StarWRPG_FaDCharacterViewModel_get_Intellect
bl StarWRPG_FaDCharacterViewModel_set_Intellect_uint
bl StarWRPG_FaDCharacterViewModel_get_Presence
bl StarWRPG_FaDCharacterViewModel_set_Presence_uint
bl StarWRPG_FaDCharacterViewModel_get_Willpower
bl StarWRPG_FaDCharacterViewModel_set_Willpower_uint
bl StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter
bl StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
bl StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
bl StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string
bl method_addresses
bl StarWRPG_Characteristic__ctor
bl StarWRPG_BrawnCharacteristic_get_Name
bl StarWRPG_BrawnCharacteristic_get_ShortName
bl StarWRPG_BrawnCharacteristic__ctor
bl StarWRPG_IntellectCharacteristic_get_Name
bl StarWRPG_IntellectCharacteristic_get_ShortName
bl StarWRPG_IntellectCharacteristic__ctor
bl StarWRPG_AgilityCharacteristic_get_Name
bl StarWRPG_AgilityCharacteristic_get_ShortName
bl StarWRPG_AgilityCharacteristic__ctor
bl StarWRPG_CunningCharacteristic_get_Name
bl StarWRPG_CunningCharacteristic_get_ShortName
bl StarWRPG_CunningCharacteristic__ctor
bl StarWRPG_WillpowerCharacteristic_get_Name
bl StarWRPG_WillpowerCharacteristic_get_ShortName
bl StarWRPG_WillpowerCharacteristic__ctor
bl StarWRPG_PresenceCharacteristic_get_Name
bl StarWRPG_PresenceCharacteristic_get_ShortName
bl StarWRPG_PresenceCharacteristic__ctor
bl StarWRPG_Skill_get_Characteristic
bl StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic
bl StarWRPG_Skill_get_CharacteristicName
bl StarWRPG_Skill_get_NameAndCharacteristicName
bl StarWRPG_Skill__ctor_StarWRPG_Characteristic
bl StarWRPG_CharacteristicOrSkill_get_rank
bl StarWRPG_CharacteristicOrSkill_set_rank_uint
bl method_addresses
bl StarWRPG_CharacteristicOrSkill_get_Rank
bl StarWRPG_CharacteristicOrSkill_set_Rank_uint
bl StarWRPG_CharacteristicOrSkill__ctor
bl StarWRPG_AstrogationSkill_get_Name
bl StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic
bl StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic
bl StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic
bl StarWRPG_LightsaberSkill_get_Name
bl StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic
bl StarWRPG_AthleticsSkill_get_Name
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 34,12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,147,26,148,25,68,149,24,150,23,68,151,22,152,21,68,153
	.byte 20,154,19,13,12,31,0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68
	.byte 153,8,13,12,31,0,68,14,80,157,10,158,9,68,13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,16,12
	.byte 31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.byte 16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68
	.byte 154,4,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,28,12,31,0,68,14,112,157,14,158,13,68,13
	.byte 29,68,149,12,150,11,68,151,10,152,9,68,153,8,154,7,21,12,31,0,68,14,96,157,12,158,11,68,13,29,68,151
	.byte 10,152,9,68,153,8,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,18,12,31,0,68,14,112,157,14
	.byte 158,13,68,13,29,68,153,12,154,11,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7

.text
	.align 4
plt:
mono_aot_StarWRPG_plt:
	.no_dead_strip plt_Xamarin_Forms_Application__ctor
plt_Xamarin_Forms_Application__ctor:
_p_1:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 1249
	.no_dead_strip plt_StarWRPG_App_InitializeComponent
plt_StarWRPG_App_InitializeComponent:
_p_2:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 1254
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_3:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 1256
	.no_dead_strip plt_StarWRPG_FaDCharacter__ctor_uint_uint
plt_StarWRPG_FaDCharacter__ctor_uint_uint:
_p_4:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 1264
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Name_string
plt_StarWRPG_FaDCharacter_set_Name_string:
_p_5:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 1266
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Background_string
plt_StarWRPG_FaDCharacter_set_Background_string:
_p_6:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 1268
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Description_string
plt_StarWRPG_FaDCharacter_set_Description_string:
_p_7:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 1270
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Species_string
plt_StarWRPG_FaDCharacter_set_Species_string:
_p_8:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 1272
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Career_string
plt_StarWRPG_FaDCharacter_set_Career_string:
_p_9:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 1274
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_SpecializationTrees_string
plt_StarWRPG_FaDCharacter_set_SpecializationTrees_string:
_p_10:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 1276
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_ForceRating_uint
plt_StarWRPG_FaDCharacter_set_ForceRating_uint:
_p_11:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 1278
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_SoakValue_uint
plt_StarWRPG_FaDCharacter_set_SoakValue_uint:
_p_12:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 1280
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_13:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 1282
	.no_dead_strip plt_StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter
plt_StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter:
_p_14:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 1314
	.no_dead_strip plt_Xamarin_Forms_Application_set_MainPage_Xamarin_Forms_Page
plt_Xamarin_Forms_Application_set_MainPage_Xamarin_Forms_Page:
_p_15:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 1316
	.no_dead_strip plt_Xamarin_Forms_Xaml_Extensions_LoadFromXaml_StarWRPG_App_StarWRPG_App_System_Type
plt_Xamarin_Forms_Xaml_Extensions_LoadFromXaml_StarWRPG_App_StarWRPG_App_System_Type:
_p_16:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 1321
	.no_dead_strip plt_Xamarin_Forms_ContentPage__ctor
plt_Xamarin_Forms_ContentPage__ctor:
_p_17:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 1333
	.no_dead_strip plt_StarWRPG_FaDCharacterDetailsPage_InitializeComponent
plt_StarWRPG_FaDCharacterDetailsPage_InitializeComponent:
_p_18:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 1338
	.no_dead_strip plt_StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter
plt_StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter:
_p_19:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 1340
	.no_dead_strip plt_Xamarin_Forms_BindableObject_set_BindingContext_object
plt_Xamarin_Forms_BindableObject_set_BindingContext_object:
_p_20:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 1342
	.no_dead_strip plt_Xamarin_Forms_Xaml_Extensions_LoadFromXaml_StarWRPG_FaDCharacterDetailsPage_StarWRPG_FaDCharacterDetailsPage_System_Type
plt_Xamarin_Forms_Xaml_Extensions_LoadFromXaml_StarWRPG_FaDCharacterDetailsPage_StarWRPG_FaDCharacterDetailsPage_System_Type:
_p_21:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 1347
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_conc_intptr
plt_wrapper_write_barrier_object_wbarrier_conc_intptr:
_p_22:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 1359
	.no_dead_strip plt_StarWRPG_Threshold__ctor_uint
plt_StarWRPG_Threshold__ctor_uint:
_p_23:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 1366
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold
plt_StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold:
_p_24:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 1368
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold
plt_StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold:
_p_25:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 1370
	.no_dead_strip plt_StarWRPG_Defense__ctor
plt_StarWRPG_Defense__ctor:
_p_26:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 1372
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense
plt_StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense:
_p_27:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 1374
	.no_dead_strip plt_StarWRPG_FaDCharacter_initializeCharacteristics
plt_StarWRPG_FaDCharacter_initializeCharacteristics:
_p_28:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 1376
	.no_dead_strip plt_StarWRPG_FaDCharacter_initializeSkills
plt_StarWRPG_FaDCharacter_initializeSkills:
_p_29:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 1378
	.no_dead_strip plt_StarWRPG_AgilityCharacteristic__ctor
plt_StarWRPG_AgilityCharacteristic__ctor:
_p_30:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 1380
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic
plt_StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic:
_p_31:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 1382
	.no_dead_strip plt_StarWRPG_BrawnCharacteristic__ctor
plt_StarWRPG_BrawnCharacteristic__ctor:
_p_32:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 1384
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic
plt_StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic:
_p_33:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 1386
	.no_dead_strip plt_StarWRPG_CunningCharacteristic__ctor
plt_StarWRPG_CunningCharacteristic__ctor:
_p_34:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 1388
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic
plt_StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic:
_p_35:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 1390
	.no_dead_strip plt_StarWRPG_IntellectCharacteristic__ctor
plt_StarWRPG_IntellectCharacteristic__ctor:
_p_36:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 1392
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic
plt_StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic:
_p_37:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 1394
	.no_dead_strip plt_StarWRPG_PresenceCharacteristic__ctor
plt_StarWRPG_PresenceCharacteristic__ctor:
_p_38:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 1396
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic
plt_StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic:
_p_39:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 1398
	.no_dead_strip plt_StarWRPG_WillpowerCharacteristic__ctor
plt_StarWRPG_WillpowerCharacteristic__ctor:
_p_40:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 1400
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic
plt_StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic:
_p_41:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 1402
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Intellect
plt_StarWRPG_FaDCharacter_get_Intellect:
_p_42:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 1404
	.no_dead_strip plt_StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic
plt_StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic:
_p_43:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 1406
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill
plt_StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill:
_p_44:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 1409
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Brawn
plt_StarWRPG_FaDCharacter_get_Brawn:
_p_45:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 1411
	.no_dead_strip plt_StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic
plt_StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic:
_p_46:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 1413
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill
plt_StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill:
_p_47:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 1416
	.no_dead_strip plt_StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic
plt_StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic:
_p_48:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 1418
	.no_dead_strip plt_StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill
plt_StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill:
_p_49:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 1421
	.no_dead_strip plt_StarWRPG_Threshold_set_Current_uint
plt_StarWRPG_Threshold_set_Current_uint:
_p_50:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 1423
	.no_dead_strip plt_StarWRPG_Threshold_set_Max_uint
plt_StarWRPG_Threshold_set_Max_uint:
_p_51:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 1425
	.no_dead_strip plt_StarWRPG_Defense_set_Ranged_uint
plt_StarWRPG_Defense_set_Ranged_uint:
_p_52:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 1427
	.no_dead_strip plt_StarWRPG_Defense_set_Melee_uint
plt_StarWRPG_Defense_set_Melee_uint:
_p_53:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 1429
	.no_dead_strip plt_StarWRPG_FaDCharacterViewModel_get_fadCharacter
plt_StarWRPG_FaDCharacterViewModel_get_fadCharacter:
_p_54:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 1431
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Name
plt_StarWRPG_FaDCharacter_get_Name:
_p_55:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 1433
	.no_dead_strip plt_StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string
plt_StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string:
_p_56:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 1435
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Background
plt_StarWRPG_FaDCharacter_get_Background:
_p_57:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 1437
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Description
plt_StarWRPG_FaDCharacter_get_Description:
_p_58:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 1439
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Species
plt_StarWRPG_FaDCharacter_get_Species:
_p_59:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 1441
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Career
plt_StarWRPG_FaDCharacter_get_Career:
_p_60:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 1443
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_SpecializationTrees
plt_StarWRPG_FaDCharacter_get_SpecializationTrees:
_p_61:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 1445
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_ForceRating
plt_StarWRPG_FaDCharacter_get_ForceRating:
_p_62:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 1447
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_SoakValue
plt_StarWRPG_FaDCharacter_get_SoakValue:
_p_63:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 1449
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Wounds
plt_StarWRPG_FaDCharacter_get_Wounds:
_p_64:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 1451
	.no_dead_strip plt_StarWRPG_Threshold_get_Current
plt_StarWRPG_Threshold_get_Current:
_p_65:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 1453
	.no_dead_strip plt_StarWRPG_Threshold_get_Max
plt_StarWRPG_Threshold_get_Max:
_p_66:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 1455
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Strain
plt_StarWRPG_FaDCharacter_get_Strain:
_p_67:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 1457
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Defense
plt_StarWRPG_FaDCharacter_get_Defense:
_p_68:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 1459
	.no_dead_strip plt_StarWRPG_Defense_get_Ranged
plt_StarWRPG_Defense_get_Ranged:
_p_69:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 1461
	.no_dead_strip plt_StarWRPG_Defense_get_Melee
plt_StarWRPG_Defense_get_Melee:
_p_70:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 1463
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Agility
plt_StarWRPG_FaDCharacter_get_Agility:
_p_71:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 1465
	.no_dead_strip plt_StarWRPG_CharacteristicOrSkill_get_Rank
plt_StarWRPG_CharacteristicOrSkill_get_Rank:
_p_72:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 1467
	.no_dead_strip plt_StarWRPG_CharacteristicOrSkill_set_Rank_uint
plt_StarWRPG_CharacteristicOrSkill_set_Rank_uint:
_p_73:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 1470
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Cunning
plt_StarWRPG_FaDCharacter_get_Cunning:
_p_74:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 1473
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Presence
plt_StarWRPG_FaDCharacter_get_Presence:
_p_75:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 1475
	.no_dead_strip plt_StarWRPG_FaDCharacter_get_Willpower
plt_StarWRPG_FaDCharacter_get_Willpower:
_p_76:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 1477
	.no_dead_strip plt_StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter
plt_StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter:
_p_77:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 1479
	.no_dead_strip plt_System_Delegate_Combine_System_Delegate_System_Delegate
plt_System_Delegate_Combine_System_Delegate_System_Delegate:
_p_78:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 1481
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_79:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 1486
	.no_dead_strip plt_System_Delegate_Remove_System_Delegate_System_Delegate
plt_System_Delegate_Remove_System_Delegate_System_Delegate:
_p_80:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 1521
	.no_dead_strip plt_System_ComponentModel_PropertyChangedEventArgs__ctor_string
plt_System_ComponentModel_PropertyChangedEventArgs__ctor_string:
_p_81:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 1526
	.no_dead_strip plt_StarWRPG_CharacteristicOrSkill__ctor
plt_StarWRPG_CharacteristicOrSkill__ctor:
_p_82:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 1531
	.no_dead_strip plt_StarWRPG_Characteristic__ctor
plt_StarWRPG_Characteristic__ctor:
_p_83:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 1534
	.no_dead_strip plt_StarWRPG_Skill_get_Characteristic
plt_StarWRPG_Skill_get_Characteristic:
_p_84:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 1536
	.no_dead_strip plt_StarWRPG_Skill_get_CharacteristicName
plt_StarWRPG_Skill_get_CharacteristicName:
_p_85:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 1538
	.no_dead_strip plt_string_Concat_string_string_string_string
plt_string_Concat_string_string_string_string:
_p_86:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2496]
br x16
.word 1541
	.no_dead_strip plt_StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic
plt_StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic:
_p_87:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2504]
br x16
.word 1546
	.no_dead_strip plt_StarWRPG_CharacteristicOrSkill_get_rank
plt_StarWRPG_CharacteristicOrSkill_get_rank:
_p_88:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2512]
br x16
.word 1549
	.no_dead_strip plt_StarWRPG_CharacteristicOrSkill_set_rank_uint
plt_StarWRPG_CharacteristicOrSkill_set_rank_uint:
_p_89:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2520]
br x16
.word 1552
	.no_dead_strip plt_StarWRPG_Skill__ctor_StarWRPG_Characteristic
plt_StarWRPG_Skill__ctor_StarWRPG_Characteristic:
_p_90:
adrp x16, mono_aot_StarWRPG_got@PAGE+0
add x16, x16, mono_aot_StarWRPG_got@PAGEOFF
ldr x16, [x16, #2528]
br x16
.word 1555
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_StarWRPG_got, 2536
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "3DD88D60-0165-4802-8DC9-C1E152212335"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "StarWRPG"
.data
	.align 3
_mono_aot_file_info:

	.long 139,0
	.align 3
	.quad mono_aot_StarWRPG_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 226,2536,91,145,70,391195135,0,12807
	.long 128,8,8,10,0,26,14392,1576
	.long 1160,376,0,880,1112,568,0,368
	.long 224,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 122,91,44,102,0,215,77,93,106,127,15,77,157,21,252,253
	.globl _mono_aot_module_StarWRPG_info
	.align 3
_mono_aot_module_StarWRPG_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_7:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM6=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM7=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_6:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM10=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM11=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM12=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_5:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM15=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM16=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM17=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM18=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM19=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM20=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM21=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM22=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_8:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM23=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM24=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM25=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_14:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM28=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM29=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM30=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM31=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_13:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM32=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM33=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_12:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM36=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM37=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM38=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM39=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_16:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM40=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM41=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM42=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_15:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM45=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM46=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM47=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM48=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM49=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM50=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM51=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_11:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM52=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM53=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM54=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM55=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM56=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM57=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM58=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM59=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM60=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM61=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM62=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM63=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM64=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM65=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM66=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_10:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM67=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM68=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM69=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM70=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM71=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_9:

	.byte 5
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

	.byte 112,16
LDIFF_SYM72=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

LDIFF_SYM73=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_17:

	.byte 5
	.asciz "System_EventHandler"

	.byte 112,16
LDIFF_SYM76=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM77=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM78=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM79=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_18:

	.byte 5
	.asciz "Xamarin_Forms_PropertyChangingEventHandler"

	.byte 112,16
LDIFF_SYM80=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,0,0,7
	.asciz "Xamarin_Forms_PropertyChangingEventHandler"

LDIFF_SYM81=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM82=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM83=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_3:

	.byte 5
	.asciz "Xamarin_Forms_BindableObject"

	.byte 64,16
LDIFF_SYM84=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,0,6
	.asciz "_properties"

LDIFF_SYM85=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,16,6
	.asciz "_applying"

LDIFF_SYM86=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,56,6
	.asciz "_inheritedContext"

LDIFF_SYM87=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,24,6
	.asciz "PropertyChanged"

LDIFF_SYM88=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,32,6
	.asciz "BindingContextChanged"

LDIFF_SYM89=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,40,6
	.asciz "PropertyChanging"

LDIFF_SYM90=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,48,0,7
	.asciz "Xamarin_Forms_BindableObject"

LDIFF_SYM91=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM92=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM93=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_19:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM94=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM95=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM96=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_20:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM97=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM98=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM99=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM100=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM101=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM102=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM103=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM104=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_21:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM105=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM106=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM107=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM109=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM110=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM111=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM112=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_22:

	.byte 17
	.asciz "Xamarin_Forms_IEffectControlProvider"

	.byte 16,7
	.asciz "Xamarin_Forms_IEffectControlProvider"

LDIFF_SYM113=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_26:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM116=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM117=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM118=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_25:

	.byte 5
	.asciz "System_Collections_ObjectModel_Collection`1"

	.byte 32,16
LDIFF_SYM119=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,0,6
	.asciz "items"

LDIFF_SYM120=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,16,6
	.asciz "_syncRoot"

LDIFF_SYM121=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,24,0,7
	.asciz "System_Collections_ObjectModel_Collection`1"

LDIFF_SYM122=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM123=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM124=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_27:

	.byte 5
	.asciz "System_Collections_Specialized_NotifyCollectionChangedEventHandler"

	.byte 112,16
LDIFF_SYM125=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,0,0,7
	.asciz "System_Collections_Specialized_NotifyCollectionChangedEventHandler"

LDIFF_SYM126=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM127=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM128=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_28:

	.byte 5
	.asciz "_SimpleMonitor"

	.byte 20,16
LDIFF_SYM129=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,0,6
	.asciz "_busyCount"

LDIFF_SYM130=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,16,0,7
	.asciz "_SimpleMonitor"

LDIFF_SYM131=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM132=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM133=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_24:

	.byte 5
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

	.byte 56,16
LDIFF_SYM134=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,0,6
	.asciz "CollectionChanged"

LDIFF_SYM135=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,32,6
	.asciz "PropertyChanged"

LDIFF_SYM136=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,40,6
	.asciz "_monitor"

LDIFF_SYM137=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,48,0,7
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

LDIFF_SYM138=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM139=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM140=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_23:

	.byte 5
	.asciz "Xamarin_Forms_TrackableCollection`1"

	.byte 64,16
LDIFF_SYM141=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,0,6
	.asciz "Clearing"

LDIFF_SYM142=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,56,0,7
	.asciz "Xamarin_Forms_TrackableCollection`1"

LDIFF_SYM143=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM144=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM145=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_29:

	.byte 17
	.asciz "Xamarin_Forms_IPlatform"

	.byte 16,7
	.asciz "Xamarin_Forms_IPlatform"

LDIFF_SYM146=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM147=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM148=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_30:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM149=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM150=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_2:

	.byte 5
	.asciz "Xamarin_Forms_Element"

	.byte 216,1,16
LDIFF_SYM153=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "_automationId"

LDIFF_SYM154=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,64,6
	.asciz "_bindableResources"

LDIFF_SYM155=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,72,6
	.asciz "_changeHandlers"

LDIFF_SYM156=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,80,6
	.asciz "_dynamicResources"

LDIFF_SYM157=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,88,6
	.asciz "_effectControlProvider"

LDIFF_SYM158=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,96,6
	.asciz "_effects"

LDIFF_SYM159=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,104,6
	.asciz "_id"

LDIFF_SYM160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 3,35,192,1,6
	.asciz "_parentOverride"

LDIFF_SYM161=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,112,6
	.asciz "_platform"

LDIFF_SYM162=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,120,6
	.asciz "_styleId"

LDIFF_SYM163=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 3,35,128,1,6
	.asciz "<Owned>k__BackingField"

LDIFF_SYM164=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 3,35,212,1,6
	.asciz "<RealParent>k__BackingField"

LDIFF_SYM165=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 3,35,136,1,6
	.asciz "ChildAdded"

LDIFF_SYM166=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 3,35,144,1,6
	.asciz "ChildRemoved"

LDIFF_SYM167=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 3,35,152,1,6
	.asciz "DescendantAdded"

LDIFF_SYM168=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 3,35,160,1,6
	.asciz "DescendantRemoved"

LDIFF_SYM169=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 3,35,168,1,6
	.asciz "ParentSet"

LDIFF_SYM170=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 3,35,176,1,6
	.asciz "PlatformSet"

LDIFF_SYM171=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 3,35,184,1,0,7
	.asciz "Xamarin_Forms_Element"

LDIFF_SYM172=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM172
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM173=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM174=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_33:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM175=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM176=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM177=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM178=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM179=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_36:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 16,16
LDIFF_SYM180=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM181=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM181
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM182=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM183=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_39:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM184=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM185=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM186=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM187=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM188=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_40:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 16,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM189=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM190=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM191=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM191
LTDIE_41:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM192=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM193=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM193
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM194=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_38:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 80,16
LDIFF_SYM195=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM196=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,56,6
	.asciz "occupancy"

LDIFF_SYM198=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,60,6
	.asciz "loadsize"

LDIFF_SYM199=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,64,6
	.asciz "loadFactor"

LDIFF_SYM200=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,68,6
	.asciz "version"

LDIFF_SYM201=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,72,6
	.asciz "isWriterInProgress"

LDIFF_SYM202=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,76,6
	.asciz "keys"

LDIFF_SYM203=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM204=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,32,6
	.asciz "_keycomparer"

LDIFF_SYM205=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,40,6
	.asciz "_syncRoot"

LDIFF_SYM206=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,48,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM207=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_42:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM210=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM211=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM212=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM213=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_43:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM214=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM215=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM216=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM217=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_37:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM218=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM219=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM220=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM221=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM222=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM223=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM224=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM224
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM225=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM226=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_44:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM227=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM228=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM229=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM230=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_45:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM231=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM232=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM233=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM234=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM234
LTDIE_47:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM235=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM236=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM236
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM237=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_48:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM238=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM239=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM240=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM241=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM242=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_49:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM243=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM244=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM245=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM246=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM247=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_46:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM248=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM249=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM250=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM251=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM252=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM253=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM254=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM255=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM256=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM257=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM258=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM259=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM259
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM260=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM260
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM261=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM261
LTDIE_50:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM262=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM263=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM264=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM265=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM266=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM267=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM268=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM269=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM269
LTDIE_35:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM270=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM271=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM272=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM273=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM274=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM275=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM276=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM277=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM278=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM279=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM279
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM280=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_55:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM281=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM282=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM283=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM283
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM284=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM284
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM285=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_59:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM286=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM287=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM287
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM288=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM288
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM289=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM289
LTDIE_58:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM290=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM291=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM292=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM292
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM293=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM294=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM295=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM295
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM296=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM296
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM297=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM297
LTDIE_57:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM298=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM299=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM300=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM300
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM301=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM301
LTDIE_56:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM302=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM303=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM303
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM304=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM304
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM305=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_54:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 48,16
LDIFF_SYM306=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM307=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 2,35,24,6
	.asciz "safeWaitHandle"

LDIFF_SYM308=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,32,6
	.asciz "hasThreadAffinity"

LDIFF_SYM309=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,35,40,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM310=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM311=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM312=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM312
LTDIE_53:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 48,16
LDIFF_SYM313=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM314=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM314
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM315=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM315
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM316=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_52:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 48,16
LDIFF_SYM317=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM318=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM318
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM319=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM319
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM320=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM320
LTDIE_51:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM321=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM322=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM323=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM324=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM325=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM325
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM326=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM326
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM327=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM327
LTDIE_61:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM328=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM329=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM330=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM330
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM331=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM332=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM333=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM334=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM335=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_64:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM336=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM337=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM338=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_66:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM339=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM340=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM341=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_69:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM342=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM343=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM343
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM344=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM344
LTDIE_70:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM345=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM346=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM347=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM347
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM348=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM348
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM349=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_71:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM350=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM351=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM352=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM352
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM353=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM353
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM354=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM354
LTDIE_68:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM355=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM356=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM357=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM358=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM359=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM360=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM361=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM362=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM363=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM364=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM365=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM366=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM366
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM367=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM368=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM368
LTDIE_72:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 16,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM369=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM369
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM370=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM370
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM371=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM371
LTDIE_67:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 88,16
LDIFF_SYM372=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM373=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,16,6
	.asciz "m_data"

LDIFF_SYM374=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,24,6
	.asciz "m_types"

LDIFF_SYM375=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 2,35,32,6
	.asciz "m_nameToIndex"

LDIFF_SYM376=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2,35,40,6
	.asciz "m_currMember"

LDIFF_SYM377=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,35,80,6
	.asciz "m_converter"

LDIFF_SYM378=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,35,48,6
	.asciz "m_fullTypeName"

LDIFF_SYM379=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 2,35,56,6
	.asciz "m_assemName"

LDIFF_SYM380=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2,35,64,6
	.asciz "objectType"

LDIFF_SYM381=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,35,72,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM382=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,35,84,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM383=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,85,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM384=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 2,35,86,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM385=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM385
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM386=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM387=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM387
LTDIE_74:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 24,16
LDIFF_SYM388=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM388
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM389=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM390=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM391=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM391
LTDIE_78:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM392=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM393=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM393
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM394=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM394
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM395=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM395
LTDIE_77:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 16,16
LDIFF_SYM396=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM397=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM397
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM398=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM398
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM399=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_76:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 40,16
LDIFF_SYM400=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM401=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM402=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,24,6
	.asciz "reftype"

LDIFF_SYM403=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,32,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM404=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM404
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM405=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM406=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_75:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 32,16
LDIFF_SYM407=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM408=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,16,6
	.asciz "default_ctor"

LDIFF_SYM409=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,24,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM410=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM411=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM412=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_73:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 48,16
LDIFF_SYM413=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM414=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,24,6
	.asciz "GenericCache"

LDIFF_SYM415=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,32,6
	.asciz "m_serializationCtor"

LDIFF_SYM416=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,35,40,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM417=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM418=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM419=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_79:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM420=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM421=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM421
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM422=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM423=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_65:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 56,16
LDIFF_SYM424=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM425=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,16,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM426=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,24,6
	.asciz "m_realObject"

LDIFF_SYM427=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,32,6
	.asciz "m_realType"

LDIFF_SYM428=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,40,6
	.asciz "SerializeObjectState"

LDIFF_SYM429=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM430=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM431=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM431
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM432=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_63:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM433=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM434=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM435=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM436=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM437=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM438=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM439=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM440=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM441=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM442=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM443=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM444=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM445=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM446=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM447=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM448=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM449=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM450=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM451=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_62:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM452=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM453=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM454=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM455=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM456=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM457=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_60:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM458=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM459=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM460=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM461=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM462=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM463=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM463
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM464=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM464
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM465=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM465
LTDIE_80:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM466=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM467=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM468=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM468
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM469=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM469
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM470=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_81:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM471=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM472=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM473=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM474=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM475=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM476=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM477=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM478=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM478
LTDIE_34:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM479=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM480=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM481=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM482=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM483=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM484=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM485=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM486=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM487=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM488=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM488
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM489=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM489
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM490=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM490
LTDIE_32:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM491=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM492=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM493=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM494=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM495=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM496=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM497=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM498=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM499=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM500=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM500
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM501=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM501
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM502=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM502
LTDIE_82:

	.byte 17
	.asciz "System_Collections_Generic_IDictionary`2"

	.byte 16,7
	.asciz "System_Collections_Generic_IDictionary`2"

LDIFF_SYM503=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM503
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM504=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM504
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM505=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM505
LTDIE_31:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM506=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM507=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM508=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM508
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM509=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM509
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM510=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM510
LTDIE_84:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM511=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM512=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM512
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM513=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM513
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM514=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM514
LTDIE_83:

	.byte 5
	.asciz "System_Lazy`1"

	.byte 40,16
LDIFF_SYM515=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 2,35,0,6
	.asciz "m_boxed"

LDIFF_SYM516=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,35,16,6
	.asciz "m_valueFactory"

LDIFF_SYM517=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,35,24,6
	.asciz "m_threadSafeObj"

LDIFF_SYM518=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 2,35,32,0,7
	.asciz "System_Lazy`1"

LDIFF_SYM519=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM520=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM521=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_85:

	.byte 17
	.asciz "Xamarin_Forms_IAppIndexingProvider"

	.byte 16,7
	.asciz "Xamarin_Forms_IAppIndexingProvider"

LDIFF_SYM522=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM522
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM523=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM523
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM524=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM524
LTDIE_87:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM525=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM525
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM526=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM526
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM527=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM527
LTDIE_86:

	.byte 5
	.asciz "System_Collections_ObjectModel_ReadOnlyCollection`1"

	.byte 32,16
LDIFF_SYM528=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,35,0,6
	.asciz "list"

LDIFF_SYM529=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,35,16,6
	.asciz "_syncRoot"

LDIFF_SYM530=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2,35,24,0,7
	.asciz "System_Collections_ObjectModel_ReadOnlyCollection`1"

LDIFF_SYM531=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM531
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM532=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM532
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM533=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM533
LTDIE_91:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM534=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM534
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM535=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM535
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM536=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM536
LTDIE_92:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM537=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM538=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM539=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM539
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM540=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM540
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM541=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM541
LTDIE_93:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM542=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM543=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM544=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM544
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM545=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM545
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM546=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM546
LTDIE_90:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM547=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM548=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM549=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM550=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM551=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM552=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM553=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM554=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM555=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM556=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM557=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM558=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM558
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM559=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM559
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM560=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM560
LTDIE_95:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM561=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM561
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM562=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM563=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_96:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM564=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM565=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM566=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM567=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM568=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM569=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM569
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM570=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM570
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM571=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM571
LTDIE_97:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM572=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM572
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM573=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM574=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_98:

	.byte 17
	.asciz "Xamarin_Forms_IStyle"

	.byte 16,7
	.asciz "Xamarin_Forms_IStyle"

LDIFF_SYM575=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM576=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM576
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM577=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_99:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM578=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM579=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM580=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM580
LTDIE_94:

	.byte 5
	.asciz "_MergedStyle"

	.byte 80,16
LDIFF_SYM581=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,35,0,6
	.asciz "_classStyleProperties"

LDIFF_SYM582=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,35,16,6
	.asciz "_implicitStyles"

LDIFF_SYM583=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 2,35,24,6
	.asciz "_classStyles"

LDIFF_SYM584=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 2,35,32,6
	.asciz "_implicitStyle"

LDIFF_SYM585=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,40,6
	.asciz "_style"

LDIFF_SYM586=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM586
	.byte 2,35,48,6
	.asciz "_styleClass"

LDIFF_SYM587=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 2,35,56,6
	.asciz "<Target>k__BackingField"

LDIFF_SYM588=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2,35,64,6
	.asciz "<TargetType>k__BackingField"

LDIFF_SYM589=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,72,0,7
	.asciz "_MergedStyle"

LDIFF_SYM590=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM590
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM591=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM591
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM592=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_100:

	.byte 8
	.asciz "Xamarin_Forms_LayoutConstraint"

	.byte 4
LDIFF_SYM593=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "HorizontallyFixed"

	.byte 1,9
	.asciz "VerticallyFixed"

	.byte 2,9
	.asciz "Fixed"

	.byte 3,0,7
	.asciz "Xamarin_Forms_LayoutConstraint"

LDIFF_SYM594=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM595=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM596=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM596
LTDIE_101:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM597=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM598=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM599=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM599
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM600=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM600
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM601=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM601
LTDIE_104:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM602=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM603=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM604=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM604
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM605=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM605
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM606=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM606
LTDIE_105:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM607=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM608=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM609=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM609
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM610=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM610
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM611=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM611
LTDIE_103:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM612=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM613=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM614=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM615=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM616=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM617=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM618=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM619=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM620=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM621=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM622=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM623=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM623
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM624=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM624
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM625=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM625
LTDIE_106:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM626=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM627=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM627
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM628=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM628
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM629=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM629
LTDIE_102:

	.byte 5
	.asciz "Xamarin_Forms_ResourceDictionary"

	.byte 48,16
LDIFF_SYM630=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,35,0,6
	.asciz "_innerDictionary"

LDIFF_SYM631=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 2,35,16,6
	.asciz "_mergedWith"

LDIFF_SYM632=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 2,35,24,6
	.asciz "_mergedInstance"

LDIFF_SYM633=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 2,35,32,6
	.asciz "ValuesChanged"

LDIFF_SYM634=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,40,0,7
	.asciz "Xamarin_Forms_ResourceDictionary"

LDIFF_SYM635=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM635
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM636=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM636
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM637=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM637
LTDIE_107:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM638=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM639=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM639
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM640=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM640
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM641=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM641
LTDIE_108:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM642=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM643=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM643
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM644=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM645=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM645
LTDIE_109:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM646=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM647=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM647
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM648=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM648
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM649=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_89:

	.byte 5
	.asciz "Xamarin_Forms_VisualElement"

	.byte 224,2,16
LDIFF_SYM650=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2,35,0,6
	.asciz "_measureCache"

LDIFF_SYM651=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 3,35,216,1,6
	.asciz "_mergedStyle"

LDIFF_SYM652=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 3,35,224,1,6
	.asciz "_batched"

LDIFF_SYM653=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 3,35,168,2,6
	.asciz "_computedConstraint"

LDIFF_SYM654=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 3,35,172,2,6
	.asciz "_isInNativeLayout"

LDIFF_SYM655=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 3,35,176,2,6
	.asciz "_isNativeStateConsistent"

LDIFF_SYM656=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 3,35,177,2,6
	.asciz "_isPlatformEnabled"

LDIFF_SYM657=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 3,35,178,2,6
	.asciz "_mockHeight"

LDIFF_SYM658=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 3,35,184,2,6
	.asciz "_mockWidth"

LDIFF_SYM659=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 3,35,192,2,6
	.asciz "_mockX"

LDIFF_SYM660=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 3,35,200,2,6
	.asciz "_mockY"

LDIFF_SYM661=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 3,35,208,2,6
	.asciz "_resources"

LDIFF_SYM662=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 3,35,232,1,6
	.asciz "_selfConstraint"

LDIFF_SYM663=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 3,35,216,2,6
	.asciz "<DisableLayout>k__BackingField"

LDIFF_SYM664=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM664
	.byte 3,35,220,2,6
	.asciz "ChildrenReordered"

LDIFF_SYM665=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM665
	.byte 3,35,240,1,6
	.asciz "Focused"

LDIFF_SYM666=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 3,35,248,1,6
	.asciz "MeasureInvalidated"

LDIFF_SYM667=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 3,35,128,2,6
	.asciz "SizeChanged"

LDIFF_SYM668=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 3,35,136,2,6
	.asciz "Unfocused"

LDIFF_SYM669=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 3,35,144,2,6
	.asciz "BatchCommitted"

LDIFF_SYM670=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 3,35,152,2,6
	.asciz "FocusChangeRequested"

LDIFF_SYM671=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 3,35,160,2,0,7
	.asciz "Xamarin_Forms_VisualElement"

LDIFF_SYM672=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM672
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM673=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM673
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM674=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM674
LTDIE_111:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM675=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM675
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM676=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM676
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM677=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM677
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM678=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM678
LTDIE_110:

	.byte 5
	.asciz "System_Lazy`1"

	.byte 40,16
LDIFF_SYM679=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,35,0,6
	.asciz "m_boxed"

LDIFF_SYM680=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2,35,16,6
	.asciz "m_valueFactory"

LDIFF_SYM681=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 2,35,24,6
	.asciz "m_threadSafeObj"

LDIFF_SYM682=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM682
	.byte 2,35,32,0,7
	.asciz "System_Lazy`1"

LDIFF_SYM683=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM683
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM684=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM684
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM685=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM685
LTDIE_112:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM686=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM686
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM687=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM687
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM688=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM688
LTDIE_114:

	.byte 5
	.asciz "System_Collections_ObjectModel_Collection`1"

	.byte 32,16
LDIFF_SYM689=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,35,0,6
	.asciz "items"

LDIFF_SYM690=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 2,35,16,6
	.asciz "_syncRoot"

LDIFF_SYM691=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 2,35,24,0,7
	.asciz "System_Collections_ObjectModel_Collection`1"

LDIFF_SYM692=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM692
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM693=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM693
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM694=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM694
LTDIE_115:

	.byte 5
	.asciz "_SimpleMonitor"

	.byte 20,16
LDIFF_SYM695=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 2,35,0,6
	.asciz "_busyCount"

LDIFF_SYM696=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 2,35,16,0,7
	.asciz "_SimpleMonitor"

LDIFF_SYM697=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM697
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM698=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM698
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM699=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM699
LTDIE_113:

	.byte 5
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

	.byte 56,16
LDIFF_SYM700=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,35,0,6
	.asciz "CollectionChanged"

LDIFF_SYM701=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 2,35,32,6
	.asciz "PropertyChanged"

LDIFF_SYM702=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2,35,40,6
	.asciz "_monitor"

LDIFF_SYM703=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,35,48,0,7
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

LDIFF_SYM704=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM704
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM705=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM705
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM706=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM706
LTDIE_88:

	.byte 5
	.asciz "Xamarin_Forms_Page"

	.byte 200,3,16
LDIFF_SYM707=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 2,35,0,6
	.asciz "_platformConfigurationRegistry"

LDIFF_SYM708=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 3,35,224,2,6
	.asciz "_allocatedFlag"

LDIFF_SYM709=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM709
	.byte 3,35,152,3,6
	.asciz "_containerArea"

LDIFF_SYM710=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM710
	.byte 3,35,160,3,6
	.asciz "_containerAreaSet"

LDIFF_SYM711=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 3,35,192,3,6
	.asciz "_hasAppeared"

LDIFF_SYM712=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 3,35,193,3,6
	.asciz "_logicalChildren"

LDIFF_SYM713=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 3,35,232,2,6
	.asciz "<ToolbarItems>k__BackingField"

LDIFF_SYM714=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 3,35,240,2,6
	.asciz "<Xamarin.Forms.IPageController.InternalChildren>k__BackingField"

LDIFF_SYM715=LTDIE_113_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 3,35,248,2,6
	.asciz "LayoutChanged"

LDIFF_SYM716=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 3,35,128,3,6
	.asciz "Appearing"

LDIFF_SYM717=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 3,35,136,3,6
	.asciz "Disappearing"

LDIFF_SYM718=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 3,35,144,3,0,7
	.asciz "Xamarin_Forms_Page"

LDIFF_SYM719=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM719
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM720=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM720
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM721=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM721
LTDIE_117:

	.byte 17
	.asciz "Xamarin_Forms_INavigation"

	.byte 16,7
	.asciz "Xamarin_Forms_INavigation"

LDIFF_SYM722=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM722
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM723=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM723
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM724=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM724
LTDIE_119:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM725=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM726=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM726
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM727=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM727
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM728=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM728
LTDIE_118:

	.byte 5
	.asciz "System_Lazy`1"

	.byte 40,16
LDIFF_SYM729=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 2,35,0,6
	.asciz "m_boxed"

LDIFF_SYM730=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 2,35,16,6
	.asciz "m_valueFactory"

LDIFF_SYM731=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 2,35,24,6
	.asciz "m_threadSafeObj"

LDIFF_SYM732=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 2,35,32,0,7
	.asciz "System_Lazy`1"

LDIFF_SYM733=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM733
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM734=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM734
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM735=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM735
LTDIE_116:

	.byte 5
	.asciz "Xamarin_Forms_NavigationProxy"

	.byte 40,16
LDIFF_SYM736=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM736
	.byte 2,35,0,6
	.asciz "_inner"

LDIFF_SYM737=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM737
	.byte 2,35,16,6
	.asciz "_modalStack"

LDIFF_SYM738=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 2,35,24,6
	.asciz "_pushStack"

LDIFF_SYM739=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,35,32,0,7
	.asciz "Xamarin_Forms_NavigationProxy"

LDIFF_SYM740=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM740
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM741=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM741
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM742=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM742
LTDIE_120:

	.byte 17
	.asciz "Xamarin_Forms_IResourceDictionary"

	.byte 16,7
	.asciz "Xamarin_Forms_IResourceDictionary"

LDIFF_SYM743=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM743
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM744=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM744
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM745=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM745
LTDIE_121:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM746=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM747=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM747
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM748=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM748
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM749=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM749
LTDIE_122:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM750=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM750
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM751=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM751
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM752=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM752
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM753=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM753
LTDIE_123:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM754=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM754
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM755=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM755
LTDIE_123_POINTER:

	.byte 13
LDIFF_SYM756=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM756
LTDIE_123_REFERENCE:

	.byte 14
LDIFF_SYM757=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM757
LTDIE_124:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM758=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM759=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM759
LTDIE_124_POINTER:

	.byte 13
LDIFF_SYM760=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM760
LTDIE_124_REFERENCE:

	.byte 14
LDIFF_SYM761=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM761
LTDIE_1:

	.byte 5
	.asciz "Xamarin_Forms_Application"

	.byte 208,2,16
LDIFF_SYM762=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM762
	.byte 2,35,0,6
	.asciz "_propertiesTask"

LDIFF_SYM763=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 3,35,216,1,6
	.asciz "_platformConfigurationRegistry"

LDIFF_SYM764=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 3,35,224,1,6
	.asciz "_appIndexProvider"

LDIFF_SYM765=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 3,35,232,1,6
	.asciz "_isSaving"

LDIFF_SYM766=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM766
	.byte 3,35,200,2,6
	.asciz "_logicalChildren"

LDIFF_SYM767=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 3,35,240,1,6
	.asciz "_mainPage"

LDIFF_SYM768=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 3,35,248,1,6
	.asciz "_resources"

LDIFF_SYM769=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 3,35,128,2,6
	.asciz "_saveAgain"

LDIFF_SYM770=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM770
	.byte 3,35,201,2,6
	.asciz "<NavigationProxy>k__BackingField"

LDIFF_SYM771=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 3,35,136,2,6
	.asciz "<PanGestureId>k__BackingField"

LDIFF_SYM772=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 3,35,204,2,6
	.asciz "<SystemResources>k__BackingField"

LDIFF_SYM773=LTDIE_120_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 3,35,144,2,6
	.asciz "<InternalChildren>k__BackingField"

LDIFF_SYM774=LTDIE_113_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 3,35,152,2,6
	.asciz "ModalPopped"

LDIFF_SYM775=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 3,35,160,2,6
	.asciz "ModalPopping"

LDIFF_SYM776=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 3,35,168,2,6
	.asciz "ModalPushed"

LDIFF_SYM777=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 3,35,176,2,6
	.asciz "ModalPushing"

LDIFF_SYM778=LTDIE_124_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 3,35,184,2,6
	.asciz "PopCanceled"

LDIFF_SYM779=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 3,35,192,2,0,7
	.asciz "Xamarin_Forms_Application"

LDIFF_SYM780=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM780
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM781=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM781
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM782=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM782
LTDIE_0:

	.byte 5
	.asciz "StarWRPG_App"

	.byte 208,2,16
LDIFF_SYM783=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 2,35,0,0,7
	.asciz "StarWRPG_App"

LDIFF_SYM784=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM784
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM785=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM785
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM786=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM786
LTDIE_126:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM787=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM788=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM789=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM789
LTDIE_126_POINTER:

	.byte 13
LDIFF_SYM790=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM790
LTDIE_126_REFERENCE:

	.byte 14
LDIFF_SYM791=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM791
LTDIE_127:

	.byte 5
	.asciz "StarWRPG_Threshold"

	.byte 24,16
LDIFF_SYM792=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 2,35,0,6
	.asciz "<Max>k__BackingField"

LDIFF_SYM793=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 2,35,16,6
	.asciz "<Current>k__BackingField"

LDIFF_SYM794=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 2,35,20,0,7
	.asciz "StarWRPG_Threshold"

LDIFF_SYM795=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM795
LTDIE_127_POINTER:

	.byte 13
LDIFF_SYM796=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM796
LTDIE_127_REFERENCE:

	.byte 14
LDIFF_SYM797=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM797
LTDIE_128:

	.byte 5
	.asciz "StarWRPG_Defense"

	.byte 24,16
LDIFF_SYM798=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 2,35,0,6
	.asciz "<Ranged>k__BackingField"

LDIFF_SYM799=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 2,35,16,6
	.asciz "<Melee>k__BackingField"

LDIFF_SYM800=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM800
	.byte 2,35,20,0,7
	.asciz "StarWRPG_Defense"

LDIFF_SYM801=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM801
LTDIE_128_POINTER:

	.byte 13
LDIFF_SYM802=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM802
LTDIE_128_REFERENCE:

	.byte 14
LDIFF_SYM803=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM803
LTDIE_131:

	.byte 5
	.asciz "StarWRPG_CharacteristicOrSkill"

	.byte 24,16
LDIFF_SYM804=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM804
	.byte 2,35,0,6
	.asciz "maxRank"

LDIFF_SYM805=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM805
	.byte 2,35,16,6
	.asciz "<rank>k__BackingField"

LDIFF_SYM806=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM806
	.byte 2,35,20,0,7
	.asciz "StarWRPG_CharacteristicOrSkill"

LDIFF_SYM807=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM807
LTDIE_131_POINTER:

	.byte 13
LDIFF_SYM808=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM808
LTDIE_131_REFERENCE:

	.byte 14
LDIFF_SYM809=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM809
LTDIE_130:

	.byte 5
	.asciz "StarWRPG_Characteristic"

	.byte 24,16
LDIFF_SYM810=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM810
	.byte 2,35,0,0,7
	.asciz "StarWRPG_Characteristic"

LDIFF_SYM811=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM811
LTDIE_130_POINTER:

	.byte 13
LDIFF_SYM812=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM812
LTDIE_130_REFERENCE:

	.byte 14
LDIFF_SYM813=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM813
LTDIE_129:

	.byte 5
	.asciz "StarWRPG_AgilityCharacteristic"

	.byte 24,16
LDIFF_SYM814=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 2,35,0,0,7
	.asciz "StarWRPG_AgilityCharacteristic"

LDIFF_SYM815=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM815
LTDIE_129_POINTER:

	.byte 13
LDIFF_SYM816=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM816
LTDIE_129_REFERENCE:

	.byte 14
LDIFF_SYM817=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM817
LTDIE_132:

	.byte 5
	.asciz "StarWRPG_BrawnCharacteristic"

	.byte 24,16
LDIFF_SYM818=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 2,35,0,0,7
	.asciz "StarWRPG_BrawnCharacteristic"

LDIFF_SYM819=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM819
LTDIE_132_POINTER:

	.byte 13
LDIFF_SYM820=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM820
LTDIE_132_REFERENCE:

	.byte 14
LDIFF_SYM821=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM821
LTDIE_133:

	.byte 5
	.asciz "StarWRPG_CunningCharacteristic"

	.byte 24,16
LDIFF_SYM822=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM822
	.byte 2,35,0,0,7
	.asciz "StarWRPG_CunningCharacteristic"

LDIFF_SYM823=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM823
LTDIE_133_POINTER:

	.byte 13
LDIFF_SYM824=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM824
LTDIE_133_REFERENCE:

	.byte 14
LDIFF_SYM825=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM825
LTDIE_134:

	.byte 5
	.asciz "StarWRPG_IntellectCharacteristic"

	.byte 24,16
LDIFF_SYM826=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 2,35,0,0,7
	.asciz "StarWRPG_IntellectCharacteristic"

LDIFF_SYM827=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM827
LTDIE_134_POINTER:

	.byte 13
LDIFF_SYM828=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM828
LTDIE_134_REFERENCE:

	.byte 14
LDIFF_SYM829=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM829
LTDIE_135:

	.byte 5
	.asciz "StarWRPG_PresenceCharacteristic"

	.byte 24,16
LDIFF_SYM830=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 2,35,0,0,7
	.asciz "StarWRPG_PresenceCharacteristic"

LDIFF_SYM831=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM831
LTDIE_135_POINTER:

	.byte 13
LDIFF_SYM832=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM832
LTDIE_135_REFERENCE:

	.byte 14
LDIFF_SYM833=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM833
LTDIE_136:

	.byte 5
	.asciz "StarWRPG_WillpowerCharacteristic"

	.byte 24,16
LDIFF_SYM834=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM834
	.byte 2,35,0,0,7
	.asciz "StarWRPG_WillpowerCharacteristic"

LDIFF_SYM835=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM835
LTDIE_136_POINTER:

	.byte 13
LDIFF_SYM836=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM836
LTDIE_136_REFERENCE:

	.byte 14
LDIFF_SYM837=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM837
LTDIE_138:

	.byte 5
	.asciz "StarWRPG_Skill"

	.byte 32,16
LDIFF_SYM838=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 2,35,0,6
	.asciz "<Characteristic>k__BackingField"

LDIFF_SYM839=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM839
	.byte 2,35,24,0,7
	.asciz "StarWRPG_Skill"

LDIFF_SYM840=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM840
LTDIE_138_POINTER:

	.byte 13
LDIFF_SYM841=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM841
LTDIE_138_REFERENCE:

	.byte 14
LDIFF_SYM842=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM842
LTDIE_137:

	.byte 5
	.asciz "StarWRPG_AstrogationSkill"

	.byte 32,16
LDIFF_SYM843=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,35,0,0,7
	.asciz "StarWRPG_AstrogationSkill"

LDIFF_SYM844=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM844
LTDIE_137_POINTER:

	.byte 13
LDIFF_SYM845=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM845
LTDIE_137_REFERENCE:

	.byte 14
LDIFF_SYM846=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM846
LTDIE_139:

	.byte 5
	.asciz "StarWRPG_AthleticsSkill"

	.byte 32,16
LDIFF_SYM847=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM847
	.byte 2,35,0,0,7
	.asciz "StarWRPG_AthleticsSkill"

LDIFF_SYM848=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM848
LTDIE_139_POINTER:

	.byte 13
LDIFF_SYM849=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM849
LTDIE_139_REFERENCE:

	.byte 14
LDIFF_SYM850=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM850
LTDIE_140:

	.byte 5
	.asciz "StarWRPG_LightsaberSkill"

	.byte 32,16
LDIFF_SYM851=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 2,35,0,0,7
	.asciz "StarWRPG_LightsaberSkill"

LDIFF_SYM852=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM852
LTDIE_140_POINTER:

	.byte 13
LDIFF_SYM853=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM853
LTDIE_140_REFERENCE:

	.byte 14
LDIFF_SYM854=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM854
LTDIE_125:

	.byte 5
	.asciz "StarWRPG_FaDCharacter"

	.byte 168,1,16
LDIFF_SYM855=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM855
	.byte 2,35,0,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM856=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 2,35,16,6
	.asciz "<Background>k__BackingField"

LDIFF_SYM857=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM857
	.byte 2,35,24,6
	.asciz "<Description>k__BackingField"

LDIFF_SYM858=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM858
	.byte 2,35,32,6
	.asciz "<Species>k__BackingField"

LDIFF_SYM859=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM859
	.byte 2,35,40,6
	.asciz "<Career>k__BackingField"

LDIFF_SYM860=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM860
	.byte 2,35,48,6
	.asciz "<SpecializationTrees>k__BackingField"

LDIFF_SYM861=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM861
	.byte 2,35,56,6
	.asciz "<ForceRating>k__BackingField"

LDIFF_SYM862=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM862
	.byte 3,35,160,1,6
	.asciz "<SoakValue>k__BackingField"

LDIFF_SYM863=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 3,35,164,1,6
	.asciz "<Wounds>k__BackingField"

LDIFF_SYM864=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2,35,64,6
	.asciz "<Strain>k__BackingField"

LDIFF_SYM865=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM865
	.byte 2,35,72,6
	.asciz "<Defense>k__BackingField"

LDIFF_SYM866=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM866
	.byte 2,35,80,6
	.asciz "<Agility>k__BackingField"

LDIFF_SYM867=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2,35,88,6
	.asciz "<Brawn>k__BackingField"

LDIFF_SYM868=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM868
	.byte 2,35,96,6
	.asciz "<Cunning>k__BackingField"

LDIFF_SYM869=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM869
	.byte 2,35,104,6
	.asciz "<Intellect>k__BackingField"

LDIFF_SYM870=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM870
	.byte 2,35,112,6
	.asciz "<Presence>k__BackingField"

LDIFF_SYM871=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM871
	.byte 2,35,120,6
	.asciz "<Willpower>k__BackingField"

LDIFF_SYM872=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM872
	.byte 3,35,128,1,6
	.asciz "<Astrogation>k__BackingField"

LDIFF_SYM873=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM873
	.byte 3,35,136,1,6
	.asciz "<Athletics>k__BackingField"

LDIFF_SYM874=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM874
	.byte 3,35,144,1,6
	.asciz "<Lightsaber>k__BackingField"

LDIFF_SYM875=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM875
	.byte 3,35,152,1,0,7
	.asciz "StarWRPG_FaDCharacter"

LDIFF_SYM876=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM876
LTDIE_125_POINTER:

	.byte 13
LDIFF_SYM877=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM877
LTDIE_125_REFERENCE:

	.byte 14
LDIFF_SYM878=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM878
	.byte 2
	.asciz "StarWRPG.App:.ctor"
	.asciz "StarWRPG_App__ctor"

	.byte 1,7
	.quad StarWRPG_App__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM879=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM879
	.byte 1,106,11
	.asciz "FaDCharacter"

LDIFF_SYM880=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM880
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM881=Lfde0_end - Lfde0_start
	.long LDIFF_SYM881
Lfde0_start:

	.long 0
	.align 3
	.quad StarWRPG_App__ctor

LDIFF_SYM882=Lme_0 - StarWRPG_App__ctor
	.long LDIFF_SYM882
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,147,26,148,25,68,149,24,150,23,68,151,22,152,21,68,153,20
	.byte 154,19
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.App:OnStart"
	.asciz "StarWRPG_App_OnStart"

	.byte 1,27
	.quad StarWRPG_App_OnStart
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM883=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM883
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM884=Lfde1_end - Lfde1_start
	.long LDIFF_SYM884
Lfde1_start:

	.long 0
	.align 3
	.quad StarWRPG_App_OnStart

LDIFF_SYM885=Lme_1 - StarWRPG_App_OnStart
	.long LDIFF_SYM885
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.App:OnSleep"
	.asciz "StarWRPG_App_OnSleep"

	.byte 1,32
	.quad StarWRPG_App_OnSleep
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM886=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM886
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM887=Lfde2_end - Lfde2_start
	.long LDIFF_SYM887
Lfde2_start:

	.long 0
	.align 3
	.quad StarWRPG_App_OnSleep

LDIFF_SYM888=Lme_2 - StarWRPG_App_OnSleep
	.long LDIFF_SYM888
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.App:OnResume"
	.asciz "StarWRPG_App_OnResume"

	.byte 1,37
	.quad StarWRPG_App_OnResume
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM889=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM889
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM890=Lfde3_end - Lfde3_start
	.long LDIFF_SYM890
Lfde3_start:

	.long 0
	.align 3
	.quad StarWRPG_App_OnResume

LDIFF_SYM891=Lme_3 - StarWRPG_App_OnResume
	.long LDIFF_SYM891
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.App:InitializeComponent"
	.asciz "StarWRPG_App_InitializeComponent"

	.byte 2,18
	.quad StarWRPG_App_InitializeComponent
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM892=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM892
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM893=Lfde4_end - Lfde4_start
	.long LDIFF_SYM893
Lfde4_start:

	.long 0
	.align 3
	.quad StarWRPG_App_InitializeComponent

LDIFF_SYM894=Lme_4 - StarWRPG_App_InitializeComponent
	.long LDIFF_SYM894
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_143:

	.byte 5
	.asciz "Xamarin_Forms_TemplatedPage"

	.byte 200,3,16
LDIFF_SYM895=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 2,35,0,0,7
	.asciz "Xamarin_Forms_TemplatedPage"

LDIFF_SYM896=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM896
LTDIE_143_POINTER:

	.byte 13
LDIFF_SYM897=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM897
LTDIE_143_REFERENCE:

	.byte 14
LDIFF_SYM898=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM898
LTDIE_142:

	.byte 5
	.asciz "Xamarin_Forms_ContentPage"

	.byte 200,3,16
LDIFF_SYM899=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 2,35,0,0,7
	.asciz "Xamarin_Forms_ContentPage"

LDIFF_SYM900=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM900
LTDIE_142_POINTER:

	.byte 13
LDIFF_SYM901=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM901
LTDIE_142_REFERENCE:

	.byte 14
LDIFF_SYM902=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM902
LTDIE_141:

	.byte 5
	.asciz "StarWRPG_FaDCharacterDetailsPage"

	.byte 200,3,16
LDIFF_SYM903=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM903
	.byte 2,35,0,0,7
	.asciz "StarWRPG_FaDCharacterDetailsPage"

LDIFF_SYM904=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM904
LTDIE_141_POINTER:

	.byte 13
LDIFF_SYM905=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM905
LTDIE_141_REFERENCE:

	.byte 14
LDIFF_SYM906=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM906
	.byte 2
	.asciz "StarWRPG.FaDCharacterDetailsPage:.ctor"
	.asciz "StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter"

	.byte 3,7
	.quad StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM907=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM907
	.byte 1,105,3
	.asciz "FaDCharacter"

LDIFF_SYM908=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM908
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM909=Lfde5_end - Lfde5_start
	.long LDIFF_SYM909
Lfde5_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter

LDIFF_SYM910=Lme_5 - StarWRPG_FaDCharacterDetailsPage__ctor_StarWRPG_FaDCharacter
	.long LDIFF_SYM910
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterDetailsPage:InitializeComponent"
	.asciz "StarWRPG_FaDCharacterDetailsPage_InitializeComponent"

	.byte 4,18
	.quad StarWRPG_FaDCharacterDetailsPage_InitializeComponent
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM911=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM911
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM912=Lfde6_end - Lfde6_start
	.long LDIFF_SYM912
Lfde6_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterDetailsPage_InitializeComponent

LDIFF_SYM913=Lme_6 - StarWRPG_FaDCharacterDetailsPage_InitializeComponent
	.long LDIFF_SYM913
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Name"
	.asciz "StarWRPG_FaDCharacter_get_Name"

	.byte 5,11
	.quad StarWRPG_FaDCharacter_get_Name
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM914=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM914
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM915=Lfde7_end - Lfde7_start
	.long LDIFF_SYM915
Lfde7_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Name

LDIFF_SYM916=Lme_7 - StarWRPG_FaDCharacter_get_Name
	.long LDIFF_SYM916
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Name"
	.asciz "StarWRPG_FaDCharacter_set_Name_string"

	.byte 5,11
	.quad StarWRPG_FaDCharacter_set_Name_string
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM917=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM917
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM918=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM918
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM919=Lfde8_end - Lfde8_start
	.long LDIFF_SYM919
Lfde8_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Name_string

LDIFF_SYM920=Lme_8 - StarWRPG_FaDCharacter_set_Name_string
	.long LDIFF_SYM920
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Background"
	.asciz "StarWRPG_FaDCharacter_get_Background"

	.byte 5,12
	.quad StarWRPG_FaDCharacter_get_Background
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM921=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM921
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM922=Lfde9_end - Lfde9_start
	.long LDIFF_SYM922
Lfde9_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Background

LDIFF_SYM923=Lme_9 - StarWRPG_FaDCharacter_get_Background
	.long LDIFF_SYM923
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Background"
	.asciz "StarWRPG_FaDCharacter_set_Background_string"

	.byte 5,12
	.quad StarWRPG_FaDCharacter_set_Background_string
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM924=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM924
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM925=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM925
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM926=Lfde10_end - Lfde10_start
	.long LDIFF_SYM926
Lfde10_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Background_string

LDIFF_SYM927=Lme_a - StarWRPG_FaDCharacter_set_Background_string
	.long LDIFF_SYM927
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Description"
	.asciz "StarWRPG_FaDCharacter_get_Description"

	.byte 5,13
	.quad StarWRPG_FaDCharacter_get_Description
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM928=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM928
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM929=Lfde11_end - Lfde11_start
	.long LDIFF_SYM929
Lfde11_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Description

LDIFF_SYM930=Lme_b - StarWRPG_FaDCharacter_get_Description
	.long LDIFF_SYM930
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Description"
	.asciz "StarWRPG_FaDCharacter_set_Description_string"

	.byte 5,13
	.quad StarWRPG_FaDCharacter_set_Description_string
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM931=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM931
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM932=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM932
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM933=Lfde12_end - Lfde12_start
	.long LDIFF_SYM933
Lfde12_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Description_string

LDIFF_SYM934=Lme_c - StarWRPG_FaDCharacter_set_Description_string
	.long LDIFF_SYM934
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Species"
	.asciz "StarWRPG_FaDCharacter_get_Species"

	.byte 5,14
	.quad StarWRPG_FaDCharacter_get_Species
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM935=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM935
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM936=Lfde13_end - Lfde13_start
	.long LDIFF_SYM936
Lfde13_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Species

LDIFF_SYM937=Lme_d - StarWRPG_FaDCharacter_get_Species
	.long LDIFF_SYM937
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Species"
	.asciz "StarWRPG_FaDCharacter_set_Species_string"

	.byte 5,14
	.quad StarWRPG_FaDCharacter_set_Species_string
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM938=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM938
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM939=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM940=Lfde14_end - Lfde14_start
	.long LDIFF_SYM940
Lfde14_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Species_string

LDIFF_SYM941=Lme_e - StarWRPG_FaDCharacter_set_Species_string
	.long LDIFF_SYM941
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Career"
	.asciz "StarWRPG_FaDCharacter_get_Career"

	.byte 5,15
	.quad StarWRPG_FaDCharacter_get_Career
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM942=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM942
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM943=Lfde15_end - Lfde15_start
	.long LDIFF_SYM943
Lfde15_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Career

LDIFF_SYM944=Lme_f - StarWRPG_FaDCharacter_get_Career
	.long LDIFF_SYM944
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Career"
	.asciz "StarWRPG_FaDCharacter_set_Career_string"

	.byte 5,15
	.quad StarWRPG_FaDCharacter_set_Career_string
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM945=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM945
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM946=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM946
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM947=Lfde16_end - Lfde16_start
	.long LDIFF_SYM947
Lfde16_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Career_string

LDIFF_SYM948=Lme_10 - StarWRPG_FaDCharacter_set_Career_string
	.long LDIFF_SYM948
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_SpecializationTrees"
	.asciz "StarWRPG_FaDCharacter_get_SpecializationTrees"

	.byte 5,16
	.quad StarWRPG_FaDCharacter_get_SpecializationTrees
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM949=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM949
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM950=Lfde17_end - Lfde17_start
	.long LDIFF_SYM950
Lfde17_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_SpecializationTrees

LDIFF_SYM951=Lme_11 - StarWRPG_FaDCharacter_get_SpecializationTrees
	.long LDIFF_SYM951
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_SpecializationTrees"
	.asciz "StarWRPG_FaDCharacter_set_SpecializationTrees_string"

	.byte 5,16
	.quad StarWRPG_FaDCharacter_set_SpecializationTrees_string
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM952=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM952
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM953=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM953
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM954=Lfde18_end - Lfde18_start
	.long LDIFF_SYM954
Lfde18_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_SpecializationTrees_string

LDIFF_SYM955=Lme_12 - StarWRPG_FaDCharacter_set_SpecializationTrees_string
	.long LDIFF_SYM955
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_ForceRating"
	.asciz "StarWRPG_FaDCharacter_get_ForceRating"

	.byte 5,17
	.quad StarWRPG_FaDCharacter_get_ForceRating
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM956=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM956
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM957=Lfde19_end - Lfde19_start
	.long LDIFF_SYM957
Lfde19_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_ForceRating

LDIFF_SYM958=Lme_13 - StarWRPG_FaDCharacter_get_ForceRating
	.long LDIFF_SYM958
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_ForceRating"
	.asciz "StarWRPG_FaDCharacter_set_ForceRating_uint"

	.byte 5,17
	.quad StarWRPG_FaDCharacter_set_ForceRating_uint
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM959=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM959
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM960=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM960
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM961=Lfde20_end - Lfde20_start
	.long LDIFF_SYM961
Lfde20_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_ForceRating_uint

LDIFF_SYM962=Lme_14 - StarWRPG_FaDCharacter_set_ForceRating_uint
	.long LDIFF_SYM962
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_SoakValue"
	.asciz "StarWRPG_FaDCharacter_get_SoakValue"

	.byte 5,18
	.quad StarWRPG_FaDCharacter_get_SoakValue
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM963=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM963
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM964=Lfde21_end - Lfde21_start
	.long LDIFF_SYM964
Lfde21_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_SoakValue

LDIFF_SYM965=Lme_15 - StarWRPG_FaDCharacter_get_SoakValue
	.long LDIFF_SYM965
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_SoakValue"
	.asciz "StarWRPG_FaDCharacter_set_SoakValue_uint"

	.byte 5,18
	.quad StarWRPG_FaDCharacter_set_SoakValue_uint
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM966=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM967=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM967
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM968=Lfde22_end - Lfde22_start
	.long LDIFF_SYM968
Lfde22_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_SoakValue_uint

LDIFF_SYM969=Lme_16 - StarWRPG_FaDCharacter_set_SoakValue_uint
	.long LDIFF_SYM969
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Wounds"
	.asciz "StarWRPG_FaDCharacter_get_Wounds"

	.byte 5,19
	.quad StarWRPG_FaDCharacter_get_Wounds
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM970=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM971=Lfde23_end - Lfde23_start
	.long LDIFF_SYM971
Lfde23_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Wounds

LDIFF_SYM972=Lme_17 - StarWRPG_FaDCharacter_get_Wounds
	.long LDIFF_SYM972
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Wounds"
	.asciz "StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold"

	.byte 5,19
	.quad StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM973=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM973
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM974=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM974
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM975=Lfde24_end - Lfde24_start
	.long LDIFF_SYM975
Lfde24_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold

LDIFF_SYM976=Lme_18 - StarWRPG_FaDCharacter_set_Wounds_StarWRPG_Threshold
	.long LDIFF_SYM976
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Strain"
	.asciz "StarWRPG_FaDCharacter_get_Strain"

	.byte 5,20
	.quad StarWRPG_FaDCharacter_get_Strain
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM977=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM977
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM978=Lfde25_end - Lfde25_start
	.long LDIFF_SYM978
Lfde25_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Strain

LDIFF_SYM979=Lme_19 - StarWRPG_FaDCharacter_get_Strain
	.long LDIFF_SYM979
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Strain"
	.asciz "StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold"

	.byte 5,20
	.quad StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM980=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM980
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM981=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM981
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM982=Lfde26_end - Lfde26_start
	.long LDIFF_SYM982
Lfde26_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold

LDIFF_SYM983=Lme_1a - StarWRPG_FaDCharacter_set_Strain_StarWRPG_Threshold
	.long LDIFF_SYM983
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Defense"
	.asciz "StarWRPG_FaDCharacter_get_Defense"

	.byte 5,21
	.quad StarWRPG_FaDCharacter_get_Defense
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM984=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM984
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM985=Lfde27_end - Lfde27_start
	.long LDIFF_SYM985
Lfde27_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Defense

LDIFF_SYM986=Lme_1b - StarWRPG_FaDCharacter_get_Defense
	.long LDIFF_SYM986
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Defense"
	.asciz "StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense"

	.byte 5,21
	.quad StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM987=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM987
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM988=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM988
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM989=Lfde28_end - Lfde28_start
	.long LDIFF_SYM989
Lfde28_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense

LDIFF_SYM990=Lme_1c - StarWRPG_FaDCharacter_set_Defense_StarWRPG_Defense
	.long LDIFF_SYM990
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Agility"
	.asciz "StarWRPG_FaDCharacter_get_Agility"

	.byte 5,23
	.quad StarWRPG_FaDCharacter_get_Agility
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM991=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM991
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM992=Lfde29_end - Lfde29_start
	.long LDIFF_SYM992
Lfde29_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Agility

LDIFF_SYM993=Lme_1d - StarWRPG_FaDCharacter_get_Agility
	.long LDIFF_SYM993
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Agility"
	.asciz "StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic"

	.byte 5,23
	.quad StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM994=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM994
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM995=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM995
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM996=Lfde30_end - Lfde30_start
	.long LDIFF_SYM996
Lfde30_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic

LDIFF_SYM997=Lme_1e - StarWRPG_FaDCharacter_set_Agility_StarWRPG_AgilityCharacteristic
	.long LDIFF_SYM997
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Brawn"
	.asciz "StarWRPG_FaDCharacter_get_Brawn"

	.byte 5,24
	.quad StarWRPG_FaDCharacter_get_Brawn
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM998=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM998
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM999=Lfde31_end - Lfde31_start
	.long LDIFF_SYM999
Lfde31_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Brawn

LDIFF_SYM1000=Lme_1f - StarWRPG_FaDCharacter_get_Brawn
	.long LDIFF_SYM1000
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Brawn"
	.asciz "StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic"

	.byte 5,24
	.quad StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1001=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1002=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1002
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1003=Lfde32_end - Lfde32_start
	.long LDIFF_SYM1003
Lfde32_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic

LDIFF_SYM1004=Lme_20 - StarWRPG_FaDCharacter_set_Brawn_StarWRPG_BrawnCharacteristic
	.long LDIFF_SYM1004
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Cunning"
	.asciz "StarWRPG_FaDCharacter_get_Cunning"

	.byte 5,25
	.quad StarWRPG_FaDCharacter_get_Cunning
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1005=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1005
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1006=Lfde33_end - Lfde33_start
	.long LDIFF_SYM1006
Lfde33_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Cunning

LDIFF_SYM1007=Lme_21 - StarWRPG_FaDCharacter_get_Cunning
	.long LDIFF_SYM1007
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Cunning"
	.asciz "StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic"

	.byte 5,25
	.quad StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1008=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1008
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1009=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1009
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1010=Lfde34_end - Lfde34_start
	.long LDIFF_SYM1010
Lfde34_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic

LDIFF_SYM1011=Lme_22 - StarWRPG_FaDCharacter_set_Cunning_StarWRPG_CunningCharacteristic
	.long LDIFF_SYM1011
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Intellect"
	.asciz "StarWRPG_FaDCharacter_get_Intellect"

	.byte 5,26
	.quad StarWRPG_FaDCharacter_get_Intellect
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1012=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1012
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1013=Lfde35_end - Lfde35_start
	.long LDIFF_SYM1013
Lfde35_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Intellect

LDIFF_SYM1014=Lme_23 - StarWRPG_FaDCharacter_get_Intellect
	.long LDIFF_SYM1014
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Intellect"
	.asciz "StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic"

	.byte 5,26
	.quad StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1015=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1015
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1016=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1016
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1017=Lfde36_end - Lfde36_start
	.long LDIFF_SYM1017
Lfde36_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic

LDIFF_SYM1018=Lme_24 - StarWRPG_FaDCharacter_set_Intellect_StarWRPG_IntellectCharacteristic
	.long LDIFF_SYM1018
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Presence"
	.asciz "StarWRPG_FaDCharacter_get_Presence"

	.byte 5,27
	.quad StarWRPG_FaDCharacter_get_Presence
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1019=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1020=Lfde37_end - Lfde37_start
	.long LDIFF_SYM1020
Lfde37_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Presence

LDIFF_SYM1021=Lme_25 - StarWRPG_FaDCharacter_get_Presence
	.long LDIFF_SYM1021
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Presence"
	.asciz "StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic"

	.byte 5,27
	.quad StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1022=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1022
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1023=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1023
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1024=Lfde38_end - Lfde38_start
	.long LDIFF_SYM1024
Lfde38_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic

LDIFF_SYM1025=Lme_26 - StarWRPG_FaDCharacter_set_Presence_StarWRPG_PresenceCharacteristic
	.long LDIFF_SYM1025
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Willpower"
	.asciz "StarWRPG_FaDCharacter_get_Willpower"

	.byte 5,28
	.quad StarWRPG_FaDCharacter_get_Willpower
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1026=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1026
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1027=Lfde39_end - Lfde39_start
	.long LDIFF_SYM1027
Lfde39_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Willpower

LDIFF_SYM1028=Lme_27 - StarWRPG_FaDCharacter_get_Willpower
	.long LDIFF_SYM1028
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Willpower"
	.asciz "StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic"

	.byte 5,28
	.quad StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1029=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1029
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1030=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1030
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1031=Lfde40_end - Lfde40_start
	.long LDIFF_SYM1031
Lfde40_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic

LDIFF_SYM1032=Lme_28 - StarWRPG_FaDCharacter_set_Willpower_StarWRPG_WillpowerCharacteristic
	.long LDIFF_SYM1032
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Astrogation"
	.asciz "StarWRPG_FaDCharacter_get_Astrogation"

	.byte 5,30
	.quad StarWRPG_FaDCharacter_get_Astrogation
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1033=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1033
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1034=Lfde41_end - Lfde41_start
	.long LDIFF_SYM1034
Lfde41_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Astrogation

LDIFF_SYM1035=Lme_29 - StarWRPG_FaDCharacter_get_Astrogation
	.long LDIFF_SYM1035
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Astrogation"
	.asciz "StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill"

	.byte 5,30
	.quad StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1036=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1036
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1037=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1038=Lfde42_end - Lfde42_start
	.long LDIFF_SYM1038
Lfde42_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill

LDIFF_SYM1039=Lme_2a - StarWRPG_FaDCharacter_set_Astrogation_StarWRPG_AstrogationSkill
	.long LDIFF_SYM1039
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Athletics"
	.asciz "StarWRPG_FaDCharacter_get_Athletics"

	.byte 5,31
	.quad StarWRPG_FaDCharacter_get_Athletics
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1040=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1040
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1041=Lfde43_end - Lfde43_start
	.long LDIFF_SYM1041
Lfde43_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Athletics

LDIFF_SYM1042=Lme_2b - StarWRPG_FaDCharacter_get_Athletics
	.long LDIFF_SYM1042
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Athletics"
	.asciz "StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill"

	.byte 5,31
	.quad StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1043=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1043
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1044=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1044
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1045=Lfde44_end - Lfde44_start
	.long LDIFF_SYM1045
Lfde44_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill

LDIFF_SYM1046=Lme_2c - StarWRPG_FaDCharacter_set_Athletics_StarWRPG_AthleticsSkill
	.long LDIFF_SYM1046
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:get_Lightsaber"
	.asciz "StarWRPG_FaDCharacter_get_Lightsaber"

	.byte 5,32
	.quad StarWRPG_FaDCharacter_get_Lightsaber
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1047=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1047
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1048=Lfde45_end - Lfde45_start
	.long LDIFF_SYM1048
Lfde45_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_get_Lightsaber

LDIFF_SYM1049=Lme_2d - StarWRPG_FaDCharacter_get_Lightsaber
	.long LDIFF_SYM1049
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:set_Lightsaber"
	.asciz "StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill"

	.byte 5,32
	.quad StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1050=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1050
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1051=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1051
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1052=Lfde46_end - Lfde46_start
	.long LDIFF_SYM1052
Lfde46_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill

LDIFF_SYM1053=Lme_2e - StarWRPG_FaDCharacter_set_Lightsaber_StarWRPG_LightsaberSkill
	.long LDIFF_SYM1053
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:.ctor"
	.asciz "StarWRPG_FaDCharacter__ctor_uint_uint"

	.byte 5,43
	.quad StarWRPG_FaDCharacter__ctor_uint_uint
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1054=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1054
	.byte 1,104,3
	.asciz "maxWound"

LDIFF_SYM1055=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1055
	.byte 2,141,24,3
	.asciz "maxStrain"

LDIFF_SYM1056=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1056
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1057=Lfde47_end - Lfde47_start
	.long LDIFF_SYM1057
Lfde47_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter__ctor_uint_uint

LDIFF_SYM1058=Lme_2f - StarWRPG_FaDCharacter__ctor_uint_uint
	.long LDIFF_SYM1058
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:initializeCharacteristics"
	.asciz "StarWRPG_FaDCharacter_initializeCharacteristics"

	.byte 5,55
	.quad StarWRPG_FaDCharacter_initializeCharacteristics
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1059=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1060=Lfde48_end - Lfde48_start
	.long LDIFF_SYM1060
Lfde48_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_initializeCharacteristics

LDIFF_SYM1061=Lme_30 - StarWRPG_FaDCharacter_initializeCharacteristics
	.long LDIFF_SYM1061
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacter:initializeSkills"
	.asciz "StarWRPG_FaDCharacter_initializeSkills"

	.byte 5,65
	.quad StarWRPG_FaDCharacter_initializeSkills
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1062=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1062
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1063=Lfde49_end - Lfde49_start
	.long LDIFF_SYM1063
Lfde49_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacter_initializeSkills

LDIFF_SYM1064=Lme_31 - StarWRPG_FaDCharacter_initializeSkills
	.long LDIFF_SYM1064
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Threshold:get_Max"
	.asciz "StarWRPG_Threshold_get_Max"

	.byte 6,6
	.quad StarWRPG_Threshold_get_Max
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1065=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1065
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1066=Lfde50_end - Lfde50_start
	.long LDIFF_SYM1066
Lfde50_start:

	.long 0
	.align 3
	.quad StarWRPG_Threshold_get_Max

LDIFF_SYM1067=Lme_32 - StarWRPG_Threshold_get_Max
	.long LDIFF_SYM1067
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Threshold:set_Max"
	.asciz "StarWRPG_Threshold_set_Max_uint"

	.byte 6,6
	.quad StarWRPG_Threshold_set_Max_uint
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1068=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1068
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1069=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1069
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1070=Lfde51_end - Lfde51_start
	.long LDIFF_SYM1070
Lfde51_start:

	.long 0
	.align 3
	.quad StarWRPG_Threshold_set_Max_uint

LDIFF_SYM1071=Lme_33 - StarWRPG_Threshold_set_Max_uint
	.long LDIFF_SYM1071
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Threshold:get_Current"
	.asciz "StarWRPG_Threshold_get_Current"

	.byte 6,7
	.quad StarWRPG_Threshold_get_Current
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1072=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1072
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1073=Lfde52_end - Lfde52_start
	.long LDIFF_SYM1073
Lfde52_start:

	.long 0
	.align 3
	.quad StarWRPG_Threshold_get_Current

LDIFF_SYM1074=Lme_34 - StarWRPG_Threshold_get_Current
	.long LDIFF_SYM1074
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Threshold:set_Current"
	.asciz "StarWRPG_Threshold_set_Current_uint"

	.byte 6,7
	.quad StarWRPG_Threshold_set_Current_uint
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1075=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1075
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1076=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1076
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1077=Lfde53_end - Lfde53_start
	.long LDIFF_SYM1077
Lfde53_start:

	.long 0
	.align 3
	.quad StarWRPG_Threshold_set_Current_uint

LDIFF_SYM1078=Lme_35 - StarWRPG_Threshold_set_Current_uint
	.long LDIFF_SYM1078
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Threshold:.ctor"
	.asciz "StarWRPG_Threshold__ctor_uint"

	.byte 6,9
	.quad StarWRPG_Threshold__ctor_uint
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1079=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1079
	.byte 1,105,3
	.asciz "max"

LDIFF_SYM1080=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1080
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1081=Lfde54_end - Lfde54_start
	.long LDIFF_SYM1081
Lfde54_start:

	.long 0
	.align 3
	.quad StarWRPG_Threshold__ctor_uint

LDIFF_SYM1082=Lme_36 - StarWRPG_Threshold__ctor_uint
	.long LDIFF_SYM1082
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Defense:get_Ranged"
	.asciz "StarWRPG_Defense_get_Ranged"

	.byte 7,6
	.quad StarWRPG_Defense_get_Ranged
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1083=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1083
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1084=Lfde55_end - Lfde55_start
	.long LDIFF_SYM1084
Lfde55_start:

	.long 0
	.align 3
	.quad StarWRPG_Defense_get_Ranged

LDIFF_SYM1085=Lme_37 - StarWRPG_Defense_get_Ranged
	.long LDIFF_SYM1085
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Defense:set_Ranged"
	.asciz "StarWRPG_Defense_set_Ranged_uint"

	.byte 7,6
	.quad StarWRPG_Defense_set_Ranged_uint
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1086=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1086
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1087=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1087
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1088=Lfde56_end - Lfde56_start
	.long LDIFF_SYM1088
Lfde56_start:

	.long 0
	.align 3
	.quad StarWRPG_Defense_set_Ranged_uint

LDIFF_SYM1089=Lme_38 - StarWRPG_Defense_set_Ranged_uint
	.long LDIFF_SYM1089
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Defense:get_Melee"
	.asciz "StarWRPG_Defense_get_Melee"

	.byte 7,7
	.quad StarWRPG_Defense_get_Melee
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1090=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1090
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1091=Lfde57_end - Lfde57_start
	.long LDIFF_SYM1091
Lfde57_start:

	.long 0
	.align 3
	.quad StarWRPG_Defense_get_Melee

LDIFF_SYM1092=Lme_39 - StarWRPG_Defense_get_Melee
	.long LDIFF_SYM1092
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Defense:set_Melee"
	.asciz "StarWRPG_Defense_set_Melee_uint"

	.byte 7,7
	.quad StarWRPG_Defense_set_Melee_uint
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1093=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1093
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1094=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1094
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1095=Lfde58_end - Lfde58_start
	.long LDIFF_SYM1095
Lfde58_start:

	.long 0
	.align 3
	.quad StarWRPG_Defense_set_Melee_uint

LDIFF_SYM1096=Lme_3a - StarWRPG_Defense_set_Melee_uint
	.long LDIFF_SYM1096
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Defense:.ctor"
	.asciz "StarWRPG_Defense__ctor"

	.byte 7,9
	.quad StarWRPG_Defense__ctor
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1097=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1097
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1098=Lfde59_end - Lfde59_start
	.long LDIFF_SYM1098
Lfde59_start:

	.long 0
	.align 3
	.quad StarWRPG_Defense__ctor

LDIFF_SYM1099=Lme_3b - StarWRPG_Defense__ctor
	.long LDIFF_SYM1099
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_144:

	.byte 5
	.asciz "StarWRPG_FaDCharacterViewModel"

	.byte 32,16
LDIFF_SYM1100=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM1100
	.byte 2,35,0,6
	.asciz "<fadCharacter>k__BackingField"

LDIFF_SYM1101=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1101
	.byte 2,35,16,6
	.asciz "PropertyChanged"

LDIFF_SYM1102=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1102
	.byte 2,35,24,0,7
	.asciz "StarWRPG_FaDCharacterViewModel"

LDIFF_SYM1103=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1103
LTDIE_144_POINTER:

	.byte 13
LDIFF_SYM1104=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1104
LTDIE_144_REFERENCE:

	.byte 14
LDIFF_SYM1105=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1105
	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_fadCharacter"
	.asciz "StarWRPG_FaDCharacterViewModel_get_fadCharacter"

	.byte 8,9
	.quad StarWRPG_FaDCharacterViewModel_get_fadCharacter
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1106=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1106
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1107=Lfde60_end - Lfde60_start
	.long LDIFF_SYM1107
Lfde60_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_fadCharacter

LDIFF_SYM1108=Lme_3c - StarWRPG_FaDCharacterViewModel_get_fadCharacter
	.long LDIFF_SYM1108
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_fadCharacter"
	.asciz "StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter"

	.byte 8,9
	.quad StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1109=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1109
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1110=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1110
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1111=Lfde61_end - Lfde61_start
	.long LDIFF_SYM1111
Lfde61_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter

LDIFF_SYM1112=Lme_3d - StarWRPG_FaDCharacterViewModel_set_fadCharacter_StarWRPG_FaDCharacter
	.long LDIFF_SYM1112
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Name"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Name"

	.byte 8,13
	.quad StarWRPG_FaDCharacterViewModel_get_Name
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1113=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1114=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1114
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1115=Lfde62_end - Lfde62_start
	.long LDIFF_SYM1115
Lfde62_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Name

LDIFF_SYM1116=Lme_3e - StarWRPG_FaDCharacterViewModel_get_Name
	.long LDIFF_SYM1116
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Name"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Name_string"

	.byte 8,16
	.quad StarWRPG_FaDCharacterViewModel_set_Name_string
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1117=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1118=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1119=Lfde63_end - Lfde63_start
	.long LDIFF_SYM1119
Lfde63_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Name_string

LDIFF_SYM1120=Lme_3f - StarWRPG_FaDCharacterViewModel_set_Name_string
	.long LDIFF_SYM1120
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Background"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Background"

	.byte 8,24
	.quad StarWRPG_FaDCharacterViewModel_get_Background
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1121=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1121
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1122=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1122
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1123=Lfde64_end - Lfde64_start
	.long LDIFF_SYM1123
Lfde64_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Background

LDIFF_SYM1124=Lme_40 - StarWRPG_FaDCharacterViewModel_get_Background
	.long LDIFF_SYM1124
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Background"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Background_string"

	.byte 8,27
	.quad StarWRPG_FaDCharacterViewModel_set_Background_string
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1125=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1125
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1126=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1126
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1127=Lfde65_end - Lfde65_start
	.long LDIFF_SYM1127
Lfde65_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Background_string

LDIFF_SYM1128=Lme_41 - StarWRPG_FaDCharacterViewModel_set_Background_string
	.long LDIFF_SYM1128
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Description"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Description"

	.byte 8,35
	.quad StarWRPG_FaDCharacterViewModel_get_Description
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1129=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1130=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1130
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1131=Lfde66_end - Lfde66_start
	.long LDIFF_SYM1131
Lfde66_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Description

LDIFF_SYM1132=Lme_42 - StarWRPG_FaDCharacterViewModel_get_Description
	.long LDIFF_SYM1132
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Description"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Description_string"

	.byte 8,38
	.quad StarWRPG_FaDCharacterViewModel_set_Description_string
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1133=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1133
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1134=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1134
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1135=Lfde67_end - Lfde67_start
	.long LDIFF_SYM1135
Lfde67_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Description_string

LDIFF_SYM1136=Lme_43 - StarWRPG_FaDCharacterViewModel_set_Description_string
	.long LDIFF_SYM1136
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Species"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Species"

	.byte 8,46
	.quad StarWRPG_FaDCharacterViewModel_get_Species
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1137=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1138=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1138
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1139=Lfde68_end - Lfde68_start
	.long LDIFF_SYM1139
Lfde68_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Species

LDIFF_SYM1140=Lme_44 - StarWRPG_FaDCharacterViewModel_get_Species
	.long LDIFF_SYM1140
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Species"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Species_string"

	.byte 8,49
	.quad StarWRPG_FaDCharacterViewModel_set_Species_string
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1141=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1141
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1142=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1143=Lfde69_end - Lfde69_start
	.long LDIFF_SYM1143
Lfde69_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Species_string

LDIFF_SYM1144=Lme_45 - StarWRPG_FaDCharacterViewModel_set_Species_string
	.long LDIFF_SYM1144
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Career"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Career"

	.byte 8,57
	.quad StarWRPG_FaDCharacterViewModel_get_Career
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1145=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1145
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1146=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1146
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1147=Lfde70_end - Lfde70_start
	.long LDIFF_SYM1147
Lfde70_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Career

LDIFF_SYM1148=Lme_46 - StarWRPG_FaDCharacterViewModel_get_Career
	.long LDIFF_SYM1148
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Career"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Career_string"

	.byte 8,60
	.quad StarWRPG_FaDCharacterViewModel_set_Career_string
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1149=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1149
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1150=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1150
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1151=Lfde71_end - Lfde71_start
	.long LDIFF_SYM1151
Lfde71_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Career_string

LDIFF_SYM1152=Lme_47 - StarWRPG_FaDCharacterViewModel_set_Career_string
	.long LDIFF_SYM1152
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_SpecializationTrees"
	.asciz "StarWRPG_FaDCharacterViewModel_get_SpecializationTrees"

	.byte 8,68
	.quad StarWRPG_FaDCharacterViewModel_get_SpecializationTrees
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1153=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1154=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1155=Lfde72_end - Lfde72_start
	.long LDIFF_SYM1155
Lfde72_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_SpecializationTrees

LDIFF_SYM1156=Lme_48 - StarWRPG_FaDCharacterViewModel_get_SpecializationTrees
	.long LDIFF_SYM1156
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_SpecializationTrees"
	.asciz "StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string"

	.byte 8,71
	.quad StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1157=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1157
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1158=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1158
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1159=Lfde73_end - Lfde73_start
	.long LDIFF_SYM1159
Lfde73_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string

LDIFF_SYM1160=Lme_49 - StarWRPG_FaDCharacterViewModel_set_SpecializationTrees_string
	.long LDIFF_SYM1160
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_ForceRating"
	.asciz "StarWRPG_FaDCharacterViewModel_get_ForceRating"

	.byte 8,79
	.quad StarWRPG_FaDCharacterViewModel_get_ForceRating
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1161=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1161
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1162=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1163=Lfde74_end - Lfde74_start
	.long LDIFF_SYM1163
Lfde74_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_ForceRating

LDIFF_SYM1164=Lme_4a - StarWRPG_FaDCharacterViewModel_get_ForceRating
	.long LDIFF_SYM1164
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_ForceRating"
	.asciz "StarWRPG_FaDCharacterViewModel_set_ForceRating_uint"

	.byte 8,82
	.quad StarWRPG_FaDCharacterViewModel_set_ForceRating_uint
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1165=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1165
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1166=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1166
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1167=Lfde75_end - Lfde75_start
	.long LDIFF_SYM1167
Lfde75_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_ForceRating_uint

LDIFF_SYM1168=Lme_4b - StarWRPG_FaDCharacterViewModel_set_ForceRating_uint
	.long LDIFF_SYM1168
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_SoakValue"
	.asciz "StarWRPG_FaDCharacterViewModel_get_SoakValue"

	.byte 8,90
	.quad StarWRPG_FaDCharacterViewModel_get_SoakValue
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1169=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1170=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1170
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1171=Lfde76_end - Lfde76_start
	.long LDIFF_SYM1171
Lfde76_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_SoakValue

LDIFF_SYM1172=Lme_4c - StarWRPG_FaDCharacterViewModel_get_SoakValue
	.long LDIFF_SYM1172
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_SoakValue"
	.asciz "StarWRPG_FaDCharacterViewModel_set_SoakValue_uint"

	.byte 8,93
	.quad StarWRPG_FaDCharacterViewModel_set_SoakValue_uint
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1173=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1173
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1174=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1174
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1175=Lfde77_end - Lfde77_start
	.long LDIFF_SYM1175
Lfde77_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_SoakValue_uint

LDIFF_SYM1176=Lme_4d - StarWRPG_FaDCharacterViewModel_set_SoakValue_uint
	.long LDIFF_SYM1176
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_CurrentWounds"
	.asciz "StarWRPG_FaDCharacterViewModel_get_CurrentWounds"

	.byte 8,101
	.quad StarWRPG_FaDCharacterViewModel_get_CurrentWounds
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1177=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1177
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1178=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1178
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1179=Lfde78_end - Lfde78_start
	.long LDIFF_SYM1179
Lfde78_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_CurrentWounds

LDIFF_SYM1180=Lme_4e - StarWRPG_FaDCharacterViewModel_get_CurrentWounds
	.long LDIFF_SYM1180
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_CurrentWounds"
	.asciz "StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint"

	.byte 8,104
	.quad StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1181=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1181
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1182=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1182
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1183=Lfde79_end - Lfde79_start
	.long LDIFF_SYM1183
Lfde79_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint

LDIFF_SYM1184=Lme_4f - StarWRPG_FaDCharacterViewModel_set_CurrentWounds_uint
	.long LDIFF_SYM1184
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_MaxWounds"
	.asciz "StarWRPG_FaDCharacterViewModel_get_MaxWounds"

	.byte 8,112
	.quad StarWRPG_FaDCharacterViewModel_get_MaxWounds
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1185=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1185
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1186=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1186
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1187=Lfde80_end - Lfde80_start
	.long LDIFF_SYM1187
Lfde80_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_MaxWounds

LDIFF_SYM1188=Lme_50 - StarWRPG_FaDCharacterViewModel_get_MaxWounds
	.long LDIFF_SYM1188
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_MaxWounds"
	.asciz "StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint"

	.byte 8,115
	.quad StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1189=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1189
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1190=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1190
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1191=Lfde81_end - Lfde81_start
	.long LDIFF_SYM1191
Lfde81_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint

LDIFF_SYM1192=Lme_51 - StarWRPG_FaDCharacterViewModel_set_MaxWounds_uint
	.long LDIFF_SYM1192
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_CurrentStrain"
	.asciz "StarWRPG_FaDCharacterViewModel_get_CurrentStrain"

	.byte 8,123
	.quad StarWRPG_FaDCharacterViewModel_get_CurrentStrain
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1193=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1193
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1194=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1194
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1195=Lfde82_end - Lfde82_start
	.long LDIFF_SYM1195
Lfde82_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_CurrentStrain

LDIFF_SYM1196=Lme_52 - StarWRPG_FaDCharacterViewModel_get_CurrentStrain
	.long LDIFF_SYM1196
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_CurrentStrain"
	.asciz "StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint"

	.byte 8,126
	.quad StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1197=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1197
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1198=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1198
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1199=Lfde83_end - Lfde83_start
	.long LDIFF_SYM1199
Lfde83_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint

LDIFF_SYM1200=Lme_53 - StarWRPG_FaDCharacterViewModel_set_CurrentStrain_uint
	.long LDIFF_SYM1200
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_MaxStrain"
	.asciz "StarWRPG_FaDCharacterViewModel_get_MaxStrain"

	.byte 8,134,1
	.quad StarWRPG_FaDCharacterViewModel_get_MaxStrain
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1201=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1201
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1202=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1202
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1203=Lfde84_end - Lfde84_start
	.long LDIFF_SYM1203
Lfde84_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_MaxStrain

LDIFF_SYM1204=Lme_54 - StarWRPG_FaDCharacterViewModel_get_MaxStrain
	.long LDIFF_SYM1204
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_MaxStrain"
	.asciz "StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint"

	.byte 8,137,1
	.quad StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1205=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1205
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1206=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1206
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1207=Lfde85_end - Lfde85_start
	.long LDIFF_SYM1207
Lfde85_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint

LDIFF_SYM1208=Lme_55 - StarWRPG_FaDCharacterViewModel_set_MaxStrain_uint
	.long LDIFF_SYM1208
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_RangedDefense"
	.asciz "StarWRPG_FaDCharacterViewModel_get_RangedDefense"

	.byte 8,145,1
	.quad StarWRPG_FaDCharacterViewModel_get_RangedDefense
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1209=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1209
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1210=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1210
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1211=Lfde86_end - Lfde86_start
	.long LDIFF_SYM1211
Lfde86_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_RangedDefense

LDIFF_SYM1212=Lme_56 - StarWRPG_FaDCharacterViewModel_get_RangedDefense
	.long LDIFF_SYM1212
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_RangedDefense"
	.asciz "StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint"

	.byte 8,148,1
	.quad StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1213=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1213
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1214=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1214
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1215=Lfde87_end - Lfde87_start
	.long LDIFF_SYM1215
Lfde87_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint

LDIFF_SYM1216=Lme_57 - StarWRPG_FaDCharacterViewModel_set_RangedDefense_uint
	.long LDIFF_SYM1216
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_MeleeDefense"
	.asciz "StarWRPG_FaDCharacterViewModel_get_MeleeDefense"

	.byte 8,156,1
	.quad StarWRPG_FaDCharacterViewModel_get_MeleeDefense
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1217=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1217
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1218=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1219=Lfde88_end - Lfde88_start
	.long LDIFF_SYM1219
Lfde88_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_MeleeDefense

LDIFF_SYM1220=Lme_58 - StarWRPG_FaDCharacterViewModel_get_MeleeDefense
	.long LDIFF_SYM1220
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_MeleeDefense"
	.asciz "StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint"

	.byte 8,159,1
	.quad StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1221=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1221
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1222=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1222
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1223=Lfde89_end - Lfde89_start
	.long LDIFF_SYM1223
Lfde89_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint

LDIFF_SYM1224=Lme_59 - StarWRPG_FaDCharacterViewModel_set_MeleeDefense_uint
	.long LDIFF_SYM1224
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde89_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Agility"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Agility"

	.byte 8,167,1
	.quad StarWRPG_FaDCharacterViewModel_get_Agility
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1225=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1226=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1226
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1227=Lfde90_end - Lfde90_start
	.long LDIFF_SYM1227
Lfde90_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Agility

LDIFF_SYM1228=Lme_5a - StarWRPG_FaDCharacterViewModel_get_Agility
	.long LDIFF_SYM1228
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde90_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Agility"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Agility_uint"

	.byte 8,170,1
	.quad StarWRPG_FaDCharacterViewModel_set_Agility_uint
	.quad Lme_5b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1229=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1229
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1230=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1230
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1231=Lfde91_end - Lfde91_start
	.long LDIFF_SYM1231
Lfde91_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Agility_uint

LDIFF_SYM1232=Lme_5b - StarWRPG_FaDCharacterViewModel_set_Agility_uint
	.long LDIFF_SYM1232
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde91_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Brawn"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Brawn"

	.byte 8,178,1
	.quad StarWRPG_FaDCharacterViewModel_get_Brawn
	.quad Lme_5c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1233=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1233
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1234=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1234
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1235=Lfde92_end - Lfde92_start
	.long LDIFF_SYM1235
Lfde92_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Brawn

LDIFF_SYM1236=Lme_5c - StarWRPG_FaDCharacterViewModel_get_Brawn
	.long LDIFF_SYM1236
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde92_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Brawn"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Brawn_uint"

	.byte 8,181,1
	.quad StarWRPG_FaDCharacterViewModel_set_Brawn_uint
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1237=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1237
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1238=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1238
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1239=Lfde93_end - Lfde93_start
	.long LDIFF_SYM1239
Lfde93_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Brawn_uint

LDIFF_SYM1240=Lme_5d - StarWRPG_FaDCharacterViewModel_set_Brawn_uint
	.long LDIFF_SYM1240
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde93_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Cunning"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Cunning"

	.byte 8,189,1
	.quad StarWRPG_FaDCharacterViewModel_get_Cunning
	.quad Lme_5e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1241=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1241
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1242=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1242
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1243=Lfde94_end - Lfde94_start
	.long LDIFF_SYM1243
Lfde94_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Cunning

LDIFF_SYM1244=Lme_5e - StarWRPG_FaDCharacterViewModel_get_Cunning
	.long LDIFF_SYM1244
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde94_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Cunning"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Cunning_uint"

	.byte 8,192,1
	.quad StarWRPG_FaDCharacterViewModel_set_Cunning_uint
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1245=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1245
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1246=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1246
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1247=Lfde95_end - Lfde95_start
	.long LDIFF_SYM1247
Lfde95_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Cunning_uint

LDIFF_SYM1248=Lme_5f - StarWRPG_FaDCharacterViewModel_set_Cunning_uint
	.long LDIFF_SYM1248
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde95_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Intellect"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Intellect"

	.byte 8,200,1
	.quad StarWRPG_FaDCharacterViewModel_get_Intellect
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1249=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1249
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1250=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1250
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1251=Lfde96_end - Lfde96_start
	.long LDIFF_SYM1251
Lfde96_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Intellect

LDIFF_SYM1252=Lme_60 - StarWRPG_FaDCharacterViewModel_get_Intellect
	.long LDIFF_SYM1252
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde96_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Intellect"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Intellect_uint"

	.byte 8,203,1
	.quad StarWRPG_FaDCharacterViewModel_set_Intellect_uint
	.quad Lme_61

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1253=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1254=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1254
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1255=Lfde97_end - Lfde97_start
	.long LDIFF_SYM1255
Lfde97_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Intellect_uint

LDIFF_SYM1256=Lme_61 - StarWRPG_FaDCharacterViewModel_set_Intellect_uint
	.long LDIFF_SYM1256
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde97_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Presence"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Presence"

	.byte 8,211,1
	.quad StarWRPG_FaDCharacterViewModel_get_Presence
	.quad Lme_62

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1257=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1257
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1258=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1258
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1259=Lfde98_end - Lfde98_start
	.long LDIFF_SYM1259
Lfde98_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Presence

LDIFF_SYM1260=Lme_62 - StarWRPG_FaDCharacterViewModel_get_Presence
	.long LDIFF_SYM1260
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde98_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Presence"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Presence_uint"

	.byte 8,214,1
	.quad StarWRPG_FaDCharacterViewModel_set_Presence_uint
	.quad Lme_63

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1261=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1261
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1262=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1262
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1263=Lfde99_end - Lfde99_start
	.long LDIFF_SYM1263
Lfde99_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Presence_uint

LDIFF_SYM1264=Lme_63 - StarWRPG_FaDCharacterViewModel_set_Presence_uint
	.long LDIFF_SYM1264
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde99_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:get_Willpower"
	.asciz "StarWRPG_FaDCharacterViewModel_get_Willpower"

	.byte 8,222,1
	.quad StarWRPG_FaDCharacterViewModel_get_Willpower
	.quad Lme_64

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1265=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1265
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1266=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1266
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1267=Lfde100_end - Lfde100_start
	.long LDIFF_SYM1267
Lfde100_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_get_Willpower

LDIFF_SYM1268=Lme_64 - StarWRPG_FaDCharacterViewModel_get_Willpower
	.long LDIFF_SYM1268
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde100_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:set_Willpower"
	.asciz "StarWRPG_FaDCharacterViewModel_set_Willpower_uint"

	.byte 8,225,1
	.quad StarWRPG_FaDCharacterViewModel_set_Willpower_uint
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1269=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1269
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1270=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1270
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1271=Lfde101_end - Lfde101_start
	.long LDIFF_SYM1271
Lfde101_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_set_Willpower_uint

LDIFF_SYM1272=Lme_65 - StarWRPG_FaDCharacterViewModel_set_Willpower_uint
	.long LDIFF_SYM1272
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde101_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:.ctor"
	.asciz "StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter"

	.byte 8,231,1
	.quad StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1273=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 1,105,3
	.asciz "character"

LDIFF_SYM1274=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1274
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1275=Lfde102_end - Lfde102_start
	.long LDIFF_SYM1275
Lfde102_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter

LDIFF_SYM1276=Lme_66 - StarWRPG_FaDCharacterViewModel__ctor_StarWRPG_FaDCharacter
	.long LDIFF_SYM1276
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde102_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:add_PropertyChanged"
	.asciz "StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.quad StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1277=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1277
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1278=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1278
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1279=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1279
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1280=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1280
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM1281=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1281
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1282=Lfde103_end - Lfde103_start
	.long LDIFF_SYM1282
Lfde103_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler

LDIFF_SYM1283=Lme_67 - StarWRPG_FaDCharacterViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.long LDIFF_SYM1283
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12,150,11,68,151,10,152,9,68,153,8,154,7
	.align 3
Lfde103_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:remove_PropertyChanged"
	.asciz "StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.quad StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.quad Lme_68

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1284=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1284
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1285=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1285
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1286=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1286
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1287=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1287
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM1288=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1288
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1289=Lfde104_end - Lfde104_start
	.long LDIFF_SYM1289
Lfde104_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler

LDIFF_SYM1290=Lme_68 - StarWRPG_FaDCharacterViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.long LDIFF_SYM1290
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12,150,11,68,151,10,152,9,68,153,8,154,7
	.align 3
Lfde104_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.FaDCharacterViewModel:OnPropertyChanged"
	.asciz "StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string"

	.byte 8,239,1
	.quad StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string
	.quad Lme_69

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1291=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1291
	.byte 1,105,3
	.asciz "propertyName"

LDIFF_SYM1292=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1292
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1293=Lfde105_end - Lfde105_start
	.long LDIFF_SYM1293
Lfde105_start:

	.long 0
	.align 3
	.quad StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string

LDIFF_SYM1294=Lme_69 - StarWRPG_FaDCharacterViewModel_OnPropertyChanged_string
	.long LDIFF_SYM1294
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,153,8
	.align 3
Lfde105_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Characteristic:.ctor"
	.asciz "StarWRPG_Characteristic__ctor"

	.byte 0,0
	.quad StarWRPG_Characteristic__ctor
	.quad Lme_6b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1295=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1295
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1296=Lfde106_end - Lfde106_start
	.long LDIFF_SYM1296
Lfde106_start:

	.long 0
	.align 3
	.quad StarWRPG_Characteristic__ctor

LDIFF_SYM1297=Lme_6b - StarWRPG_Characteristic__ctor
	.long LDIFF_SYM1297
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde106_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.BrawnCharacteristic:get_Name"
	.asciz "StarWRPG_BrawnCharacteristic_get_Name"

	.byte 9,9
	.quad StarWRPG_BrawnCharacteristic_get_Name
	.quad Lme_6c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1298=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1298
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1299=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1299
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1300=Lfde107_end - Lfde107_start
	.long LDIFF_SYM1300
Lfde107_start:

	.long 0
	.align 3
	.quad StarWRPG_BrawnCharacteristic_get_Name

LDIFF_SYM1301=Lme_6c - StarWRPG_BrawnCharacteristic_get_Name
	.long LDIFF_SYM1301
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde107_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.BrawnCharacteristic:get_ShortName"
	.asciz "StarWRPG_BrawnCharacteristic_get_ShortName"

	.byte 9,17
	.quad StarWRPG_BrawnCharacteristic_get_ShortName
	.quad Lme_6d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1302=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1302
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1303=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1303
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1304=Lfde108_end - Lfde108_start
	.long LDIFF_SYM1304
Lfde108_start:

	.long 0
	.align 3
	.quad StarWRPG_BrawnCharacteristic_get_ShortName

LDIFF_SYM1305=Lme_6d - StarWRPG_BrawnCharacteristic_get_ShortName
	.long LDIFF_SYM1305
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde108_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.BrawnCharacteristic:.ctor"
	.asciz "StarWRPG_BrawnCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_BrawnCharacteristic__ctor
	.quad Lme_6e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1306=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1306
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1307=Lfde109_end - Lfde109_start
	.long LDIFF_SYM1307
Lfde109_start:

	.long 0
	.align 3
	.quad StarWRPG_BrawnCharacteristic__ctor

LDIFF_SYM1308=Lme_6e - StarWRPG_BrawnCharacteristic__ctor
	.long LDIFF_SYM1308
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde109_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.IntellectCharacteristic:get_Name"
	.asciz "StarWRPG_IntellectCharacteristic_get_Name"

	.byte 10,10
	.quad StarWRPG_IntellectCharacteristic_get_Name
	.quad Lme_6f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1309=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1309
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1310=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1310
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1311=Lfde110_end - Lfde110_start
	.long LDIFF_SYM1311
Lfde110_start:

	.long 0
	.align 3
	.quad StarWRPG_IntellectCharacteristic_get_Name

LDIFF_SYM1312=Lme_6f - StarWRPG_IntellectCharacteristic_get_Name
	.long LDIFF_SYM1312
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde110_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.IntellectCharacteristic:get_ShortName"
	.asciz "StarWRPG_IntellectCharacteristic_get_ShortName"

	.byte 10,18
	.quad StarWRPG_IntellectCharacteristic_get_ShortName
	.quad Lme_70

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1313=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1313
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1314=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1314
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1315=Lfde111_end - Lfde111_start
	.long LDIFF_SYM1315
Lfde111_start:

	.long 0
	.align 3
	.quad StarWRPG_IntellectCharacteristic_get_ShortName

LDIFF_SYM1316=Lme_70 - StarWRPG_IntellectCharacteristic_get_ShortName
	.long LDIFF_SYM1316
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde111_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.IntellectCharacteristic:.ctor"
	.asciz "StarWRPG_IntellectCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_IntellectCharacteristic__ctor
	.quad Lme_71

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1317=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1317
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1318=Lfde112_end - Lfde112_start
	.long LDIFF_SYM1318
Lfde112_start:

	.long 0
	.align 3
	.quad StarWRPG_IntellectCharacteristic__ctor

LDIFF_SYM1319=Lme_71 - StarWRPG_IntellectCharacteristic__ctor
	.long LDIFF_SYM1319
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde112_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AgilityCharacteristic:get_Name"
	.asciz "StarWRPG_AgilityCharacteristic_get_Name"

	.byte 11,10
	.quad StarWRPG_AgilityCharacteristic_get_Name
	.quad Lme_72

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1320=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1320
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1321=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1321
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1322=Lfde113_end - Lfde113_start
	.long LDIFF_SYM1322
Lfde113_start:

	.long 0
	.align 3
	.quad StarWRPG_AgilityCharacteristic_get_Name

LDIFF_SYM1323=Lme_72 - StarWRPG_AgilityCharacteristic_get_Name
	.long LDIFF_SYM1323
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde113_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AgilityCharacteristic:get_ShortName"
	.asciz "StarWRPG_AgilityCharacteristic_get_ShortName"

	.byte 11,18
	.quad StarWRPG_AgilityCharacteristic_get_ShortName
	.quad Lme_73

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1324=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1324
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1325=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1325
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1326=Lfde114_end - Lfde114_start
	.long LDIFF_SYM1326
Lfde114_start:

	.long 0
	.align 3
	.quad StarWRPG_AgilityCharacteristic_get_ShortName

LDIFF_SYM1327=Lme_73 - StarWRPG_AgilityCharacteristic_get_ShortName
	.long LDIFF_SYM1327
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde114_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AgilityCharacteristic:.ctor"
	.asciz "StarWRPG_AgilityCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_AgilityCharacteristic__ctor
	.quad Lme_74

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1328=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1328
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1329=Lfde115_end - Lfde115_start
	.long LDIFF_SYM1329
Lfde115_start:

	.long 0
	.align 3
	.quad StarWRPG_AgilityCharacteristic__ctor

LDIFF_SYM1330=Lme_74 - StarWRPG_AgilityCharacteristic__ctor
	.long LDIFF_SYM1330
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde115_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CunningCharacteristic:get_Name"
	.asciz "StarWRPG_CunningCharacteristic_get_Name"

	.byte 12,10
	.quad StarWRPG_CunningCharacteristic_get_Name
	.quad Lme_75

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1331=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1331
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1332=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1332
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1333=Lfde116_end - Lfde116_start
	.long LDIFF_SYM1333
Lfde116_start:

	.long 0
	.align 3
	.quad StarWRPG_CunningCharacteristic_get_Name

LDIFF_SYM1334=Lme_75 - StarWRPG_CunningCharacteristic_get_Name
	.long LDIFF_SYM1334
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde116_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CunningCharacteristic:get_ShortName"
	.asciz "StarWRPG_CunningCharacteristic_get_ShortName"

	.byte 12,18
	.quad StarWRPG_CunningCharacteristic_get_ShortName
	.quad Lme_76

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1335=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1335
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1336=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1336
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1337=Lfde117_end - Lfde117_start
	.long LDIFF_SYM1337
Lfde117_start:

	.long 0
	.align 3
	.quad StarWRPG_CunningCharacteristic_get_ShortName

LDIFF_SYM1338=Lme_76 - StarWRPG_CunningCharacteristic_get_ShortName
	.long LDIFF_SYM1338
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde117_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CunningCharacteristic:.ctor"
	.asciz "StarWRPG_CunningCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_CunningCharacteristic__ctor
	.quad Lme_77

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1339=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1339
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1340=Lfde118_end - Lfde118_start
	.long LDIFF_SYM1340
Lfde118_start:

	.long 0
	.align 3
	.quad StarWRPG_CunningCharacteristic__ctor

LDIFF_SYM1341=Lme_77 - StarWRPG_CunningCharacteristic__ctor
	.long LDIFF_SYM1341
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde118_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.WillpowerCharacteristic:get_Name"
	.asciz "StarWRPG_WillpowerCharacteristic_get_Name"

	.byte 13,9
	.quad StarWRPG_WillpowerCharacteristic_get_Name
	.quad Lme_78

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1342=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1342
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1343=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1343
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1344=Lfde119_end - Lfde119_start
	.long LDIFF_SYM1344
Lfde119_start:

	.long 0
	.align 3
	.quad StarWRPG_WillpowerCharacteristic_get_Name

LDIFF_SYM1345=Lme_78 - StarWRPG_WillpowerCharacteristic_get_Name
	.long LDIFF_SYM1345
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde119_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.WillpowerCharacteristic:get_ShortName"
	.asciz "StarWRPG_WillpowerCharacteristic_get_ShortName"

	.byte 13,17
	.quad StarWRPG_WillpowerCharacteristic_get_ShortName
	.quad Lme_79

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1346=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1346
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1347=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1347
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1348=Lfde120_end - Lfde120_start
	.long LDIFF_SYM1348
Lfde120_start:

	.long 0
	.align 3
	.quad StarWRPG_WillpowerCharacteristic_get_ShortName

LDIFF_SYM1349=Lme_79 - StarWRPG_WillpowerCharacteristic_get_ShortName
	.long LDIFF_SYM1349
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde120_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.WillpowerCharacteristic:.ctor"
	.asciz "StarWRPG_WillpowerCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_WillpowerCharacteristic__ctor
	.quad Lme_7a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1350=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1350
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1351=Lfde121_end - Lfde121_start
	.long LDIFF_SYM1351
Lfde121_start:

	.long 0
	.align 3
	.quad StarWRPG_WillpowerCharacteristic__ctor

LDIFF_SYM1352=Lme_7a - StarWRPG_WillpowerCharacteristic__ctor
	.long LDIFF_SYM1352
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde121_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.PresenceCharacteristic:get_Name"
	.asciz "StarWRPG_PresenceCharacteristic_get_Name"

	.byte 14,9
	.quad StarWRPG_PresenceCharacteristic_get_Name
	.quad Lme_7b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1353=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1353
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1354=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1354
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1355=Lfde122_end - Lfde122_start
	.long LDIFF_SYM1355
Lfde122_start:

	.long 0
	.align 3
	.quad StarWRPG_PresenceCharacteristic_get_Name

LDIFF_SYM1356=Lme_7b - StarWRPG_PresenceCharacteristic_get_Name
	.long LDIFF_SYM1356
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde122_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.PresenceCharacteristic:get_ShortName"
	.asciz "StarWRPG_PresenceCharacteristic_get_ShortName"

	.byte 14,17
	.quad StarWRPG_PresenceCharacteristic_get_ShortName
	.quad Lme_7c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1357=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1357
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1358=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1358
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1359=Lfde123_end - Lfde123_start
	.long LDIFF_SYM1359
Lfde123_start:

	.long 0
	.align 3
	.quad StarWRPG_PresenceCharacteristic_get_ShortName

LDIFF_SYM1360=Lme_7c - StarWRPG_PresenceCharacteristic_get_ShortName
	.long LDIFF_SYM1360
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde123_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.PresenceCharacteristic:.ctor"
	.asciz "StarWRPG_PresenceCharacteristic__ctor"

	.byte 0,0
	.quad StarWRPG_PresenceCharacteristic__ctor
	.quad Lme_7d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1361=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1361
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1362=Lfde124_end - Lfde124_start
	.long LDIFF_SYM1362
Lfde124_start:

	.long 0
	.align 3
	.quad StarWRPG_PresenceCharacteristic__ctor

LDIFF_SYM1363=Lme_7d - StarWRPG_PresenceCharacteristic__ctor
	.long LDIFF_SYM1363
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde124_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Skill:get_Characteristic"
	.asciz "StarWRPG_Skill_get_Characteristic"

	.byte 15,6
	.quad StarWRPG_Skill_get_Characteristic
	.quad Lme_7e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1364=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1364
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1365=Lfde125_end - Lfde125_start
	.long LDIFF_SYM1365
Lfde125_start:

	.long 0
	.align 3
	.quad StarWRPG_Skill_get_Characteristic

LDIFF_SYM1366=Lme_7e - StarWRPG_Skill_get_Characteristic
	.long LDIFF_SYM1366
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde125_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Skill:set_Characteristic"
	.asciz "StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic"

	.byte 15,6
	.quad StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic
	.quad Lme_7f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1367=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1367
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1368=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1368
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1369=Lfde126_end - Lfde126_start
	.long LDIFF_SYM1369
Lfde126_start:

	.long 0
	.align 3
	.quad StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic

LDIFF_SYM1370=Lme_7f - StarWRPG_Skill_set_Characteristic_StarWRPG_Characteristic
	.long LDIFF_SYM1370
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde126_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Skill:get_CharacteristicName"
	.asciz "StarWRPG_Skill_get_CharacteristicName"

	.byte 15,11
	.quad StarWRPG_Skill_get_CharacteristicName
	.quad Lme_80

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1371=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1371
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1372=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1372
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1373=Lfde127_end - Lfde127_start
	.long LDIFF_SYM1373
Lfde127_start:

	.long 0
	.align 3
	.quad StarWRPG_Skill_get_CharacteristicName

LDIFF_SYM1374=Lme_80 - StarWRPG_Skill_get_CharacteristicName
	.long LDIFF_SYM1374
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde127_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Skill:get_NameAndCharacteristicName"
	.asciz "StarWRPG_Skill_get_NameAndCharacteristicName"

	.byte 15,19
	.quad StarWRPG_Skill_get_NameAndCharacteristicName
	.quad Lme_81

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1375=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1375
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1376=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1376
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1377=Lfde128_end - Lfde128_start
	.long LDIFF_SYM1377
Lfde128_start:

	.long 0
	.align 3
	.quad StarWRPG_Skill_get_NameAndCharacteristicName

LDIFF_SYM1378=Lme_81 - StarWRPG_Skill_get_NameAndCharacteristicName
	.long LDIFF_SYM1378
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde128_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.Skill:.ctor"
	.asciz "StarWRPG_Skill__ctor_StarWRPG_Characteristic"

	.byte 15,24
	.quad StarWRPG_Skill__ctor_StarWRPG_Characteristic
	.quad Lme_82

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1379=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1379
	.byte 1,105,3
	.asciz "characteristic"

LDIFF_SYM1380=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1380
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1381=Lfde129_end - Lfde129_start
	.long LDIFF_SYM1381
Lfde129_start:

	.long 0
	.align 3
	.quad StarWRPG_Skill__ctor_StarWRPG_Characteristic

LDIFF_SYM1382=Lme_82 - StarWRPG_Skill__ctor_StarWRPG_Characteristic
	.long LDIFF_SYM1382
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde129_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CharacteristicOrSkill:get_rank"
	.asciz "StarWRPG_CharacteristicOrSkill_get_rank"

	.byte 16,7
	.quad StarWRPG_CharacteristicOrSkill_get_rank
	.quad Lme_83

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1383=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1383
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1384=Lfde130_end - Lfde130_start
	.long LDIFF_SYM1384
Lfde130_start:

	.long 0
	.align 3
	.quad StarWRPG_CharacteristicOrSkill_get_rank

LDIFF_SYM1385=Lme_83 - StarWRPG_CharacteristicOrSkill_get_rank
	.long LDIFF_SYM1385
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde130_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CharacteristicOrSkill:set_rank"
	.asciz "StarWRPG_CharacteristicOrSkill_set_rank_uint"

	.byte 16,7
	.quad StarWRPG_CharacteristicOrSkill_set_rank_uint
	.quad Lme_84

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1386=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1387=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1387
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1388=Lfde131_end - Lfde131_start
	.long LDIFF_SYM1388
Lfde131_start:

	.long 0
	.align 3
	.quad StarWRPG_CharacteristicOrSkill_set_rank_uint

LDIFF_SYM1389=Lme_84 - StarWRPG_CharacteristicOrSkill_set_rank_uint
	.long LDIFF_SYM1389
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde131_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CharacteristicOrSkill:get_Rank"
	.asciz "StarWRPG_CharacteristicOrSkill_get_Rank"

	.byte 16,12
	.quad StarWRPG_CharacteristicOrSkill_get_Rank
	.quad Lme_86

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1390=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1390
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1391=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1391
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1392=Lfde132_end - Lfde132_start
	.long LDIFF_SYM1392
Lfde132_start:

	.long 0
	.align 3
	.quad StarWRPG_CharacteristicOrSkill_get_Rank

LDIFF_SYM1393=Lme_86 - StarWRPG_CharacteristicOrSkill_get_Rank
	.long LDIFF_SYM1393
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde132_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CharacteristicOrSkill:set_Rank"
	.asciz "StarWRPG_CharacteristicOrSkill_set_Rank_uint"

	.byte 16,15
	.quad StarWRPG_CharacteristicOrSkill_set_Rank_uint
	.quad Lme_87

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1394=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1394
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1395=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1395
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1396=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1396
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1397=Lfde133_end - Lfde133_start
	.long LDIFF_SYM1397
Lfde133_start:

	.long 0
	.align 3
	.quad StarWRPG_CharacteristicOrSkill_set_Rank_uint

LDIFF_SYM1398=Lme_87 - StarWRPG_CharacteristicOrSkill_set_Rank_uint
	.long LDIFF_SYM1398
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde133_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.CharacteristicOrSkill:.ctor"
	.asciz "StarWRPG_CharacteristicOrSkill__ctor"

	.byte 16,6
	.quad StarWRPG_CharacteristicOrSkill__ctor
	.quad Lme_88

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1399=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1399
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1400=Lfde134_end - Lfde134_start
	.long LDIFF_SYM1400
Lfde134_start:

	.long 0
	.align 3
	.quad StarWRPG_CharacteristicOrSkill__ctor

LDIFF_SYM1401=Lme_88 - StarWRPG_CharacteristicOrSkill__ctor
	.long LDIFF_SYM1401
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde134_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AstrogationSkill:get_Name"
	.asciz "StarWRPG_AstrogationSkill_get_Name"

	.byte 17,9
	.quad StarWRPG_AstrogationSkill_get_Name
	.quad Lme_89

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1402=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1402
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1403=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1403
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1404=Lfde135_end - Lfde135_start
	.long LDIFF_SYM1404
Lfde135_start:

	.long 0
	.align 3
	.quad StarWRPG_AstrogationSkill_get_Name

LDIFF_SYM1405=Lme_89 - StarWRPG_AstrogationSkill_get_Name
	.long LDIFF_SYM1405
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde135_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AstrogationSkill:.ctor"
	.asciz "StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic"

	.byte 17,14
	.quad StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic
	.quad Lme_8a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1406=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1406
	.byte 2,141,16,3
	.asciz "characteristic"

LDIFF_SYM1407=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1407
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1408=Lfde136_end - Lfde136_start
	.long LDIFF_SYM1408
Lfde136_start:

	.long 0
	.align 3
	.quad StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic

LDIFF_SYM1409=Lme_8a - StarWRPG_AstrogationSkill__ctor_StarWRPG_Characteristic
	.long LDIFF_SYM1409
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde136_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.LightsaberSkill:.ctor"
	.asciz "StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic"

	.byte 18,7
	.quad StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic
	.quad Lme_8b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1410=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1410
	.byte 2,141,16,3
	.asciz "c"

LDIFF_SYM1411=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1411
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1412=Lfde137_end - Lfde137_start
	.long LDIFF_SYM1412
Lfde137_start:

	.long 0
	.align 3
	.quad StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic

LDIFF_SYM1413=Lme_8b - StarWRPG_LightsaberSkill__ctor_StarWRPG_Characteristic
	.long LDIFF_SYM1413
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde137_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.LightsaberSkill:SetCharacteristic"
	.asciz "StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic"

	.byte 18,10
	.quad StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic
	.quad Lme_8c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1414=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1414
	.byte 2,141,16,3
	.asciz "c"

LDIFF_SYM1415=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1415
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1416=Lfde138_end - Lfde138_start
	.long LDIFF_SYM1416
Lfde138_start:

	.long 0
	.align 3
	.quad StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic

LDIFF_SYM1417=Lme_8c - StarWRPG_LightsaberSkill_SetCharacteristic_StarWRPG_Characteristic
	.long LDIFF_SYM1417
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde138_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.LightsaberSkill:get_Name"
	.asciz "StarWRPG_LightsaberSkill_get_Name"

	.byte 18,17
	.quad StarWRPG_LightsaberSkill_get_Name
	.quad Lme_8d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1418=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1418
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1419=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1419
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1420=Lfde139_end - Lfde139_start
	.long LDIFF_SYM1420
Lfde139_start:

	.long 0
	.align 3
	.quad StarWRPG_LightsaberSkill_get_Name

LDIFF_SYM1421=Lme_8d - StarWRPG_LightsaberSkill_get_Name
	.long LDIFF_SYM1421
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde139_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AthleticsSkill:.ctor"
	.asciz "StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic"

	.byte 19,6
	.quad StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic
	.quad Lme_8e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1422=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1422
	.byte 2,141,16,3
	.asciz "c"

LDIFF_SYM1423=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1423
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1424=Lfde140_end - Lfde140_start
	.long LDIFF_SYM1424
Lfde140_start:

	.long 0
	.align 3
	.quad StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic

LDIFF_SYM1425=Lme_8e - StarWRPG_AthleticsSkill__ctor_StarWRPG_Characteristic
	.long LDIFF_SYM1425
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde140_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "StarWRPG.AthleticsSkill:get_Name"
	.asciz "StarWRPG_AthleticsSkill_get_Name"

	.byte 19,11
	.quad StarWRPG_AthleticsSkill_get_Name
	.quad Lme_8f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1426=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1426
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1427=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1427
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1428=Lfde141_end - Lfde141_start
	.long LDIFF_SYM1428
Lfde141_start:

	.long 0
	.align 3
	.quad StarWRPG_AthleticsSkill_get_Name

LDIFF_SYM1429=Lme_8f - StarWRPG_AthleticsSkill_get_Name
	.long LDIFF_SYM1429
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde141_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
