// ARM9 binary

// Mode 0: Nintendo Channel
// Mode 1: Tokyo Game Show
// Mode 2: 2-in-1
.definelabel	DEMO_MODE,2

.nds
.thumb
.open "temp\arm9.dec",0x2000000


// Insert Secure Area stub
.org 0x2000000
.area 0x800
	.db	0xFF,0xDE,0xFF,0xE7
	.db	0xFF,0xDE,0xFF,0xE7
	.db	0xFF,0xDE,0xFF,0xE7
	.db	0xFF,0xDE
	.dh	0xFFAA	// CRC16 of 0x10-0x7F0

	.fill	0x7F0,0x00
.endarea


// Text archive pointers
.org 0x20123FC
	dw	text_chipcode
.org 0x203D2F8
	dw	text_chipcode
.org 0x2018924
	dw	text_chipdesc
.org 0x202C8F4
	dw	text_chipdesc
.org 0x20123F4
	dw	text_chipname
.org 0x2012534
	dw	text_chipname
.org 0x2018874
	dw	text_chipname
.org 0x2019754
	dw	text_chipname
.org 0x2020BA8
	dw	text_chipname
.org 0x2020EB4
	dw	text_chipname
.org 0x202105C
	dw	text_chipname
.org 0x202C8C0
	dw	text_chipname
.org 0x203D2F4
	dw	text_chipname
.org 0x2016998
	dw	text_battle
.org 0x20184B4
	dw	text_battle
.org 0x20186B8
	dw	text_battle
.org 0x20230E4
	dw	text_battle
.org 0x203D2F0
	dw	text_itemname
.org 0x2020D64
	dw	text_menu
.org 0x202103C
	dw	text_menu
.org 0x2021178
	dw	text_menu
.org 0x202C8EC
	dw	text_menu
.org 0x2017C60
	dw	text_scene
.org 0x2017CB0
	dw	text_scene
.org 0x2017CF0
	dw	text_scene
.org 0x2017E28
	dw	text_scene
.org 0x2017F5C
	dw	text_scene
.org 0x2017FC4
	dw	text_scene
.org 0x2020468
	dw	text_scene


.thumb
.org 0x2017F42
	bl	func_StartText70
.org 0x2017FAA
	bl	func_StartText74


.thumb
.org 0x2020F12
	// Move P.A. timer out of border
	mov	r2,0x8


.thumb
.org 0x202B7E2
	// Override MMSF OW initial animation
	bl	func_SSRInitOWHook


.thumb
.org 0x202C288
	bl	func_StartDemo


.org 0x203E130 + 0x4 * 0x3
	// Override post-MMSF cutscene
	.dw	func_Scene3|0x1


.org 0x2041D2C + 0x4 * 0x8
	// Override MMSF battle handler
	.dw	func_SSRBattleHandler|0x1
.org 0x204170C + 0x4 * 0x14
	.dw	func_SSRBattleFinish|0x1


.org 0x2044498
	.dw	gfx_titlescreen_tset
.org 0x20444A2
	.dh	gfx_titlescreen_tset_end - gfx_titlescreen_tset

.org 0x21193E0
.area 0x280
	.import "temp/font-chip-atk.bin"
.endarea


.org 0x2119A60
.area 0x300
	.import "temp/programadvance.bin"
.endarea
// Fix OBJ alignment
.org 0x2020B9A
	.db	0x0C	// x-position of OBJ 1


.org 0x211A260
.area 0x400
	.import "temp/megamandeleted.bin"
.endarea


.org 0x2126F60
.area 0x200
	.import "temp/titlescreen-pal.bin"
.endarea
.org 0x2175770	// Swapped with text
.area 0x5E34
gfx_titlescreen_tset:
	.import "temp/titlescreen-tset.bin"
gfx_titlescreen_tset_end:
.endarea
.org 0x212C2E0
.area 0x600
	.import "temp/titlescreen-tmap.bin"
.endarea


.org 0x212C8E0
.area 0x45D0
	.import "temp/titlemenu.bin"
.endarea


.org 0x2148ED0
.area 0x8000
	.import "temp/font.bin"
.endarea

.org 0x21516F0
.area 0x1F00
	.import "temp/font-chip.bin"
.endarea


.org 0x2159570
.area 0x700
	.import "temp/chip-misc-nodata.bin"
.endarea
.org 0x2159C90
.area 0x700
	.import "temp/chip-misc-send.bin"
.endarea
.org 0x215A3B0
.area 0x700
	.import "temp/chip-misc-add.bin"
.endarea


.org 0x215D830
.area 0x200
	.import "temp/endscreen-pal.bin"
.endarea
.org 0x215DA30
.area 0xBF00
	.import "temp/endscreen-tset.bin"
.endarea
.org 0x02169930
.area 0x600
	.import "temp/endscreen-tmap.bin"
.endarea


.org 0x2169F30
.area 0xB040
	.import "temp/controls-tset.bin"
.endarea
.org 0x2174F70
.area 0x200
	.import "temp/controls-pal.bin"
.endarea
.org 0x2175170
.area 0x600
	.import "temp/controls-tmap.bin"
.endarea


.org 0x227D02C + 0x8 * 0x13E
	// Import BeastSlap sprite
	dw	gfx_beastslap
	dw	0x0


.org 0x2127160	// Swapped with title screen
.area 0x5180
text:
.align 4
text_chipcode:
	.import "temp/msg/175770.msg"
.align 4
text_chipdesc:
	.import "temp/msg/175850.msg"
.align 4
text_chipname:
	.import "temp/msg/177388.msg"
.align 4
text_battle:
	.import "temp/msg/1780AC.msg"
.align 4
text_itemname:
	.import "temp/msg/1783F0.msg"
.align 4
text_menu:
	.import "temp/msg/178954.msg"
.align 4
text_scene:
	.import "temp/msg/17A314.msg"


.align 2
fspace:


.thumb
func_StartDemo:
	push	r14

	add	r1,=data_IsTGSDemo

	// Reset TGS demo flag
	ldr	r0,[data_DemoMode]
	cmp	r0,0x2
	bne	@@storeFlag

	// Check if Select being held
	mov	r0,r10
	ldr	r0,[r0,0x4]
	ldrh	r0,[r0]

	// Turn on TGS demo flag if Select held
	lsl	r0,r0,0x1D
	lsr	r0,r0,0x1F

@@storeFlag:
	strb	r0,[r1]

@@end:
	bl	0x200B3E0

	pop	r15


.thumb
func_StartText70:
	// Override with script 30
	mov	r3,0x1E
	b	func_StartTextCommon
func_StartText74:
	// Override with script 32
	mov	r3,0x20
func_StartTextCommon:
	push	r14

	ldr	r2,[data_IsTGSDemo]
	tst	r2,r2
	beq	@@end

	// Override script
	mov	r1,r3

@@end:
	// Start script
	bl	0x20139C0

	pop	r15
	

.thumb
func_SSRBattleHandler:
	ldr	r0,[data_IsTGSDemo]
	tst	r0,r0
	bne	@@tgs

@@nc:
	ldr	r0,=0x2020411
	bx	r0

@@tgs:
	ldr	r0,=0x2022B09
	bx	r0


.thumb
func_SSRBattleFinish:
	// Shortened function at 0x21B5B24 in full game
	push	r14

	ldrb	r0,[r5]
	cmp	r0,0x0
	bne	@@state1

@@state0:
	mov	r0,0x4
	strb	r0,[r5]		// Next state

	// Fade out (r0 = 0x4)
	mov	r1,0x4
	bl	0x1FF9FE4

@@state1:
	bl	0x2020488

@@end:
	pop	r15


.thumb
func_SSRInitOWHook:
	// Initializes MMSF animation based on current cutscene
	push	r5

	// Face SW animation
	mov	r0,0x5

	// Check which cutscene we're in
	ldr	r1,=0x21D18D0
	ldrb	r1,[r1]
	cmp	r1,0x3		// 3 for cutscene 2
	bne	@@end

	// Warp in animation
	mov	r0,0x28

@@end:
	bx	r14


.thumb
func_Scene3:
	push	r14

	ldr	r0,[data_IsTGSDemo]
	tst	r0,r0
	bne	@@tgs

	// Set state to end screen
	mov	r0,0x2C
	strb	r0,[r5]

@@tgs:
	add	r0,=data_Scene3StatePtrs
	ldrb	r1,[r5]
	ldr	r0,[r0,r1]
	blx	r0

	pop	r15

.align 4
data_Scene3StatePtrs:
	.dw	@@state0|0x1	// init
	.dw	@@state1|0x1
	.dw	@@state2|0x1	// skippable from here
	.dw	@@state3|0x1
	.dw	@@state4|0x1
	.dw	@@state5|0x1
	.dw	@@state6|0x1
	.dw	@@state7|0x1
	.dw	@@state8|0x1
	.dw	@@state9|0x1
	.dw	@@stateA|0x1	// skips to here
	.dw	0x20180CC|0x1

@@nextState:
	ldrb	r0,[r5]
	add	r0,0x4
	strb	r0,[r5]
	bx	r14

@@state0:
	push	r14

	// Initialize NPCs
	mov	r0,0x1
	strb	r0,[r5,0x10]
	bl	0x201805C	// Lan
	bl	0x2018094	// MegaMan SF

	// Next state
	bl	@@nextState

	b	@@state_end

@@state1:
	push	r14

	// Wait for fade in
	bl	0x1FFA064
	cmp	r0,0x1
	beq	@@state_end

	// Set timer
	mov	r0,0x3C
	strh	r0,[r5,0x8]

	// Next state
	bl	@@nextState

	b	@@state_end

@@state2:
	push	r14

	// Decrement timer
	ldrh	r0,[r5,0x8]
	sub	r0,0x1
	strh	r0,[r5,0x8]
	bne	@@state_skip

	// Start script 60
	push	r5
	ldr	r0,=text_scene
	mov	r1,0x3C
	bl	0x20139C0	// spoils r5
	pop	r5

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state3:
	push	r14

	// Check script finished
	mov	r0,0x80
	bl	0x2013D4C
	bne	@@state_skip

	// Fade to white
	mov	r0,0x2
	mov	r1,0x8
	bl	0x1FF9FE4

	// Next state
	bl	@@nextState

	b	@@state_skip

	pop	r15

@@state4:
	push	r14

	// Wait for fade out
	bl	0x1FFA064
	cmp	r0,0x1
	beq	@@state_skip

	// Hide NPCs
	mov	r0,0x1

	// Hide Mega Man SF
	ldr	r1,[r5,0x24]
	strb	r0,[r1]

	// Hide Mr. Famous
	ldr	r1,=0x21D0854
	strb	r0,[r1]

	// Play SFX
//	mov	r0,(0x10E - 0xFF)
//	add	r0,0xFF
	mov	r0,0xDE
	bl	0x20105CC

	// Set timer
	mov	r0,0x1E
	strh	r0,[r5,0x8]

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state5:
	push	r14

	// Decrement timer
	ldrh	r0,[r5,0x8]
	sub	r0,0x1
	strh	r0,[r5,0x8]
	bpl	@@state_skip

	// Fade in
	mov	r0,0x1
	mov	r1,0x8
	bl	0x1FF9FE4

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state6:
	push	r14

	// Wait for fade out
	bl	0x1FFA064
	cmp	r0,0x1
	beq	@@state_skip

	// Set timer
	mov	r0,0x3C
	strh	r0,[r5,0x8]

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state7:
	push	r14

	// Decrement timer
	ldrh	r0,[r5,0x8]
	sub	r0,0x1
	strh	r0,[r5,0x8]
	bpl	@@state_skip

	// Start script 65
	push	r5
	ldr	r0,=text_scene
	mov	r1,0x41
	bl	0x20139C0	// spoils r5
	pop	r5

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state8:
	push	r14

	// Check script finished
	mov	r0,0x80
	bl	0x2013D4C
	bne	@@state_skip

	// Next state
	bl	@@nextState

	b	@@state_skip

@@state9:
	push	r14

	// Fade out
	mov	r0,0x4
	mov	r1,0x4
	bl	0x1FF9FE4

	// Next state
	bl	@@nextState

	b	@@state_end

@@stateA:
	push	r14

	// Wait for fade out
	bl	0x1FFA064
	cmp	r0,0x1
	beq	@@state_end

	// Next state
	bl	@@nextState
	b	@@state_end

@@state_skip:
	bl	0x20150C0
	beq	@@state_end

	// Start fade out
	mov	r0,0x4
	mov	r1,0x4
	bl	0x1FF9FE4

	bl	0x2010610

	// Disable text box
	mov	r0,0x40
	bl	0x2013D2C

	// Go to state A
	mov	r0,0x28
	strb	r0,[r5]

@@state_end:
	pop	r15


	.pool


.align 4
data_DemoMode:
	.dw	DEMO_MODE

data_IsTGSDemo:
	.dw	0


gfx_beastslap:
	.import "include/beastslap.bin"


.endarea


.close
