.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test
/* 0000B0 004000B0 3C0E0041 */  lui   $t6, %hi(D_410170)
/* 0000B4 004000B4 8DCE0170 */  lw    $t6, %lo(D_410170)($t6)
/* 0000B8 004000B8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0000BC 004000BC 0004C0C0 */  sll   $t8, $a0, 3
/* 0000C0 004000C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0000C4 004000C4 AFA40030 */  sw    $a0, 0x30($sp)
/* 0000C8 004000C8 01D81021 */  addu  $v0, $t6, $t8
/* 0000CC 004000CC 8C460004 */  lw    $a2, 4($v0)
/* 0000D0 004000D0 8C590008 */  lw    $t9, 8($v0)
/* 0000D4 004000D4 00A03825 */  move  $a3, $a1
/* 0000D8 004000D8 00807825 */  move  $t7, $a0
/* 0000DC 004000DC 24C60001 */  addiu $a2, $a2, 1
/* 0000E0 004000E0 AFA6002C */  sw    $a2, 0x2c($sp)
/* 0000E4 004000E4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0000E8 004000E8 24040001 */  addiu $a0, $zero, 1
/* 0000EC 004000EC 24050002 */  addiu $a1, $zero, 2
/* 0000F0 004000F0 0C100050 */  jal   func_00400140
/* 0000F4 004000F4 AFB90024 */   sw    $t9, 0x24($sp)
/* 0000F8 004000F8 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0000FC 004000FC 14400003 */  bnez  $v0, .L0040010C
/* 000100 00400100 00402825 */   move  $a1, $v0
/* 000104 00400104 1000000A */  b     .L00400130
/* 000108 00400108 00001025 */   move  $v0, $zero
.L0040010C:
/* 00010C 0040010C 8FA40024 */  lw    $a0, 0x24($sp)
/* 000110 00400110 0C100056 */  jal   func_00400158
/* 000114 00400114 AFA50028 */   sw    $a1, 0x28($sp)
/* 000118 00400118 8FA90030 */  lw    $t1, 0x30($sp)
/* 00011C 0040011C 3C010041 */  lui   $at, %hi(D_410178)
/* 000120 00400120 24080005 */  addiu $t0, $zero, 5
/* 000124 00400124 00290821 */  addu  $at, $at, $t1
/* 000128 00400128 8FA20028 */  lw    $v0, 0x28($sp)
/* 00012C 0040012C A0280178 */  sb    $t0, %lo(D_410178)($at)
.L00400130:
/* 000130 00400130 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000134 00400134 27BD0030 */  addiu $sp, $sp, 0x30
/* 000138 00400138 03E00008 */  jr    $ra
/* 00013C 0040013C 00000000 */   nop

glabel func_00400140
/* 000140 00400140 AFA40000 */  sw    $a0, ($sp)
/* 000144 00400144 AFA50004 */  sw    $a1, 4($sp)
/* 000148 00400148 AFA60008 */  sw    $a2, 8($sp)
/* 00014C 0040014C AFA7000C */  sw    $a3, 0xc($sp)
/* 000150 00400150 03E00008 */  jr    $ra
/* 000154 00400154 24020001 */   addiu $v0, $zero, 1

glabel func_00400158
/* 000158 00400158 AFA40000 */  sw    $a0, ($sp)
/* 00015C 0040015C AFA50004 */  sw    $a1, 4($sp)
/* 000160 00400160 AFA60008 */  sw    $a2, 8($sp)
/* 000164 00400164 03E00008 */  jr    $ra
/* 000168 00400168 24020001 */   addiu $v0, $zero, 1

/* 00016C 0040016C 00000000 */  nop
