.nds
.create "temp/titlemenu.bin",0

.macro OAM_OBJ,tileset,tile,x,y,flip,dim
.if x >= -128 && x <= 127 && y >= -128 && y <= 127
	// Add terminator for previous OBJ
	.align 4
	// TODO: Handle tile size shift properly
	.dh	((tileset - @Tileset)/@TILE_SIZE + tile) >> 1
	.db	x,y
	.db	(dim & 0x3),(dim >> 2)
	.db	flip
	// Leave out terminator for this OBJ
.else
	.error "OAM_OBJ out of bounds"
.endif
.endmacro
.macro OAM_OBJ_END
	.db	1
.endmacro

.macro ANIM,obj,palset,pal,delay,flags
	.db	obj
	.db	delay
	.db	flags
	.db	(palset - @Palettes)/@PALETTE_SIZE + pal
.endmacro

.definelabel	@TILE_DEPTH,5
.definelabel	@TILE_SIZE,(1 << @TILE_DEPTH)
.definelabel	@PALETTE_DEPTH,5
.definelabel	@PALETTE_SIZE,(1 << @PALETTE_DEPTH)

.definelabel	@FLIP_NONE,0
.definelabel	@FLIP_HORI,1
.definelabel	@FLIP_VERT,2
.definelabel	@FLIP_BOTH,3

.definelabel	@DIM_8x8,0
.definelabel	@DIM_8x16,8
.definelabel	@DIM_8x32,9
.definelabel	@DIM_16x8,4
.definelabel	@DIM_16x16,1
.definelabel	@DIM_16x32,10
.definelabel	@DIM_32x8,5
.definelabel	@DIM_32x16,6
.definelabel	@DIM_32x32,2
.definelabel	@DIM_32x64,11
.definelabel	@DIM_64x32,7
.definelabel	@DIM_64x64,3

.definelabel	@ANIM_NEXT,0x00
.definelabel	@ANIM_LOOP,0x40
.definelabel	@ANIM_END,0x80



@Header:
	.db	0x21,0x6A,0x62,0x4F	// TODO
	.db	0x01
	.db	0x01
	.db	0x01
	.db	0x00	// 1 = absolute pointers, 0 = relative pointers

	.dw	@TileBlock
	.dw	@PalsBlock
	.dw	@AnimBlock
	.dw	@ObjsBlock



.align 4
@TileBlock:
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE
	.dw	@Tileset - @TileBlock

@TilesInfo:
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x00
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x01
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x02
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x03
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x04
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x05
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x06
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x07
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x08
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x09
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0A
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0B
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0C
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0D
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0E
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x0F
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x10
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x11
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x12
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x13
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x14
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x15
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x16
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x17
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x18
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x19
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1A
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1B
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1C
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1D
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1E
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x1F
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x20
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x21
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x22
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x23
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x24
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x25
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x26
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x27
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x28
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x29
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2A
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2B
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2C
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2D
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2E
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x2F
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x30
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x31
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x32
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x33
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x34
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x35
	.dh	(@Tileset_end - @Tileset)/@TILE_SIZE,0x0	// 0x36

@Tileset:
@Tiles_dummy:
	// TODO: Handle tile shift properly
	.fill	@TILE_SIZE << 1
@Tiles_options_newgame:
	.import	"temp/titlemenu-options-newgame.bin"
@Tiles_options_pressstart:
	.import	"temp/titlemenu-options-pressstart.bin"
@Tiles_icons_arrow:
	.import "temp/titlemenu-icons-arrow.bin"
@Tiles_options_copyright:
	.import "temp/titlemenu-options-copyright.bin"
@Tiles_gametitle:
	.import "temp/titlemenu-gametitle.bin"
@Tiles_animation_1a:
	.import "temp/titlemenu-animation-1a.bin"
@Tiles_animation_1b:
	.import "temp/titlemenu-animation-1b.bin"
@Tiles_animation_2a:
	.import "temp/titlemenu-animation-2a.bin"
@Tiles_animation_2b:
	.import "temp/titlemenu-animation-2b.bin"
@Tiles_animation_3a:
	.import "temp/titlemenu-animation-3a.bin"
@Tiles_animation_3b:
	.import "temp/titlemenu-animation-3b.bin"

@Tileset_end:



.align 4
@PalsBlock:
	.db	@TILE_DEPTH
	.db	0x00
	.dh	(@Palettes_end - @Palettes)/@PALETTE_SIZE

@Palettes:
@Palette_none:
@Palette_options:
	.import	"temp/titlemenu-options-pal.bin"
@Palette_icons:
	.import	"temp/titlemenu-icons-pal.bin"
@Palette_gametitle:
	.import "temp/titlemenu-gametitle-pal.bin"
@Palette_animation:
	.import "temp/titlemenu-animation-pal.bin"

@Palettes_end:



.align 4
@AnimBlock:
	.dw	(@AnimPtrs_end - @AnimPtrs)/0x4
@AnimPtrs:
	.dw	@Anim_00			- @AnimBlock	// 0x00
	.dw	@Anim_options_newgame1		- @AnimBlock	// 0x01
	.dw	@Anim_02			- @AnimBlock	// 0x02
	.dw	@Anim_03			- @AnimBlock	// 0x03
	.dw	@Anim_04			- @AnimBlock	// 0x04
	.dw	@Anim_options_newgame2		- @AnimBlock	// 0x05
	.dw	@Anim_06			- @AnimBlock	// 0x06
	.dw	@Anim_07			- @AnimBlock	// 0x07
	.dw	@Anim_08			- @AnimBlock	// 0x08
	.dw	@Anim_options_newgame3		- @AnimBlock	// 0x09
	.dw	@Anim_0A			- @AnimBlock	// 0x0A
	.dw	@Anim_0B			- @AnimBlock	// 0x0B
	.dw	@Anim_options_pressstart	- @AnimBlock	// 0x0C
	.dw	@Anim_icons_arrow		- @AnimBlock	// 0x0D
	.dw	@Anim_0E			- @AnimBlock	// 0x0E
	.dw	@Anim_options_copyright		- @AnimBlock	// 0x0F
	.dw	@Anim_gametitle			- @AnimBlock	// 0x10
	.dw	@Anim_animation1		- @AnimBlock	// 0x11
	.dw	@Anim_animation2		- @AnimBlock	// 0x12
	.dw	@Anim_animation3		- @AnimBlock	// 0x13
@AnimPtrs_end:

@Anim_00:
@Anim_02:
@Anim_03:
@Anim_04:
@Anim_06:
@Anim_07:
@Anim_08:
@Anim_0A:
@Anim_0B:
@Anim_0E:
	ANIM	0x00, @Palette_none,		0,	  4, @ANIM_LOOP
@Anim_options_newgame1:		// 0x01; highlighted
	ANIM	0x02, @Palette_options,		0,	  4, @ANIM_LOOP
@Anim_options_newgame2:		// 0x05; not highlighted
	ANIM	0x06, @Palette_options,		1,	  4, @ANIM_LOOP
@Anim_options_newgame3:		// 0x09; blink
	ANIM	0x02, @Palette_options,		0,	  8, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	  8, @ANIM_LOOP
@Anim_options_pressstart:	// 0x0C
	ANIM	0x09, @Palette_options,		0,	 32, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	 16, @ANIM_LOOP
@Anim_icons_arrow:		// 0x0D
	ANIM	0x0A, @Palette_icons,		0,	  6, @ANIM_NEXT
	ANIM	0x0B, @Palette_icons,		0,	  6, @ANIM_NEXT
	ANIM	0x0C, @Palette_icons,		0,	  6, @ANIM_LOOP
@Anim_options_copyright:	// 0x0F
	ANIM	0x13, @Palette_options,		0,	  4, @ANIM_LOOP
@Anim_gametitle:		// 0x10
	ANIM	0x00, @Palette_none,		0,	 55, @ANIM_NEXT
	ANIM	0x2B, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x2A, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x29, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x28, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x27, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x26, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x25, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x24, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x23, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x21, @Palette_gametitle,	0,	  1, @ANIM_NEXT
	ANIM	0x14, @Palette_gametitle,	9,	  2, @ANIM_NEXT
	ANIM	0x17, @Palette_gametitle,	6,	  2, @ANIM_NEXT
	ANIM	0x14, @Palette_gametitle,	9,	  4, @ANIM_NEXT
	ANIM	0x15, @Palette_gametitle,	8,	  2, @ANIM_NEXT
	ANIM	0x16, @Palette_gametitle,	7,	  1, @ANIM_NEXT
	ANIM	0x17, @Palette_gametitle,	6,	  1, @ANIM_NEXT
	ANIM	0x18, @Palette_gametitle,	5,	  1, @ANIM_NEXT
	ANIM	0x19, @Palette_gametitle,	4,	  1, @ANIM_NEXT
	ANIM	0x1A, @Palette_gametitle,	3,	  1, @ANIM_NEXT
	ANIM	0x1B, @Palette_gametitle,	2,	  1, @ANIM_NEXT
	ANIM	0x1C, @Palette_gametitle,	1,	  1, @ANIM_NEXT
	ANIM	0x1D, @Palette_gametitle,	0,	100, @ANIM_END
@Anim_animation1:		// 0x11
	ANIM	0x00, @Palette_none,		0,	 24, @ANIM_NEXT
	ANIM	0x31, @Palette_animation,	1,	  8, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	  4, @ANIM_NEXT
	ANIM	0x32, @Palette_animation,	2,	  4, @ANIM_NEXT
	ANIM	0x31, @Palette_animation,	1,	  4, @ANIM_NEXT
	ANIM	0x32, @Palette_animation,	2,	  4, @ANIM_LOOP
@Anim_animation2:		// 0x12
	ANIM	0x34, @Palette_animation,	2,	  4, @ANIM_NEXT
	ANIM	0x33, @Palette_animation,	1,	  4, @ANIM_NEXT
	ANIM	0x34, @Palette_animation,	2,	  4, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	 16, @ANIM_NEXT
	ANIM	0x33, @Palette_animation,	1,	  8, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	  4, @ANIM_LOOP
@Anim_animation3:		// 0x13
	ANIM	0x35, @Palette_animation,	1,	  8, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	 24, @ANIM_NEXT
	ANIM	0x35, @Palette_animation,	1,	  4, @ANIM_NEXT
	ANIM	0x36, @Palette_animation,	2,	  4, @ANIM_NEXT
	ANIM	0x35, @Palette_animation,	1,	  4, @ANIM_NEXT
	ANIM	0x00, @Palette_none,		0,	 24, @ANIM_LOOP


.align 4
@ObjsBlock:
	.dw	(@ObjsPtrs_end - @ObjsPtrs)/0x4
@ObjsPtrs:
	.dw	@Objs_00			- @ObjsBlock	// 0x00
	.dw	@Objs_01			- @ObjsBlock	// 0x01
	.dw	@Objs_options_newgame		- @ObjsBlock	// 0x02
	.dw	@Objs_03			- @ObjsBlock	// 0x03
	.dw	@Objs_04			- @ObjsBlock	// 0x04
	.dw	@Objs_05			- @ObjsBlock	// 0x05
	.dw	@Objs_options_newgame		- @ObjsBlock	// 0x06
	.dw	@Objs_07			- @ObjsBlock	// 0x07
	.dw	@Objs_08			- @ObjsBlock	// 0x08
	.dw	@Objs_options_pressstart	- @ObjsBlock	// 0x09
	.dw	@Objs_icons_arrow1		- @ObjsBlock	// 0x0A
	.dw	@Objs_icons_arrow2		- @ObjsBlock	// 0x0B
	.dw	@Objs_icons_arrow3		- @ObjsBlock	// 0x0C
	.dw	@Objs_0D			- @ObjsBlock	// 0x0D
	.dw	@Objs_0E			- @ObjsBlock	// 0x0E
	.dw	@Objs_0F			- @ObjsBlock	// 0x0F
	.dw	@Objs_10			- @ObjsBlock	// 0x10
	.dw	@Objs_11			- @ObjsBlock	// 0x11
	.dw	@Objs_12			- @ObjsBlock	// 0x12
	.dw	@Objs_options_copyright		- @ObjsBlock	// 0x13
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x14
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x15
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x16
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x17
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x18
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x19
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x1A
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x1B
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x1C
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x1D
	.dw	@Objs_gametitle1		- @ObjsBlock	// 0x1E
	.dw	@Objs_gametitle2		- @ObjsBlock	// 0x1F
	.dw	@Objs_gametitle0		- @ObjsBlock	// 0x20
	.dw	@Objs_gametitle3		- @ObjsBlock	// 0x21
	.dw	@Objs_gametitle3		- @ObjsBlock	// 0x22
	.dw	@Objs_gametitle4		- @ObjsBlock	// 0x23
	.dw	@Objs_gametitle5		- @ObjsBlock	// 0x24
	.dw	@Objs_gametitle6		- @ObjsBlock	// 0x25
	.dw	@Objs_gametitle7		- @ObjsBlock	// 0x26
	.dw	@Objs_gametitle8		- @ObjsBlock	// 0x27
	.dw	@Objs_gametitle9		- @ObjsBlock	// 0x28
	.dw	@Objs_gametitle10		- @ObjsBlock	// 0x29
	.dw	@Objs_gametitle11		- @ObjsBlock	// 0x2A
	.dw	@Objs_gametitle12		- @ObjsBlock	// 0x2B
	.dw	@Objs_gametitle13		- @ObjsBlock	// 0x2C
	.dw	@Objs_gametitle14		- @ObjsBlock	// 0x2D
	.dw	@Objs_gametitle15		- @ObjsBlock	// 0x2E
	.dw	@Objs_gametitle16		- @ObjsBlock	// 0x2F
	.dw	@Objs_gametitle17		- @ObjsBlock	// 0x30
	.dw	@Objs_animation_1a		- @ObjsBlock	// 0x31
	.dw	@Objs_animation_1b		- @ObjsBlock	// 0x32
	.dw	@Objs_animation_2a		- @ObjsBlock	// 0x33
	.dw	@Objs_animation_2b		- @ObjsBlock	// 0x34
	.dw	@Objs_animation_3a		- @ObjsBlock	// 0x35
	.dw	@Objs_animation_3b		- @ObjsBlock	// 0x36
@ObjsPtrs_end:

@Objs_00:
@Objs_01:
@Objs_03:
@Objs_04:
@Objs_05:
@Objs_07:
@Objs_08:
@Objs_0D:
@Objs_0E:
@Objs_0F:
@Objs_10:
@Objs_11:
@Objs_12:
	OAM_OBJ	@Tiles_dummy,			 0,   0,   0, @FLIP_NONE, @DIM_8x8
	OAM_OBJ_END

@Objs_options_newgame:		// 0x02,0x06
	OAM_OBJ	@Tiles_options_newgame,		 0, -32, -20, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_newgame,		 8,   0, -20, @FLIP_NONE, @DIM_32x16
	OAM_OBJ_END

@Objs_options_pressstart:	// 0x09
	OAM_OBJ	@Tiles_options_pressstart,	 0, -44,  -8, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_pressstart,	 8, -12,  -8, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_pressstart,	16,  20,  -8, @FLIP_NONE, @DIM_16x16
	OAM_OBJ	@Tiles_options_pressstart,	20,  36,  -8, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END

@Objs_icons_arrow1:		// 0x0A
	OAM_OBJ	@Tiles_icons_arrow,		 0,   0,   0, @FLIP_NONE, @DIM_16x16
	OAM_OBJ_END
@Objs_icons_arrow2:		// 0x0B
	OAM_OBJ	@Tiles_icons_arrow,		 4,   0,   0, @FLIP_NONE, @DIM_16x16
	OAM_OBJ_END
@Objs_icons_arrow3:		// 0x0C
	OAM_OBJ	@Tiles_icons_arrow,		 8,   0,   0, @FLIP_NONE, @DIM_16x16
	OAM_OBJ_END

@Objs_options_copyright:	// 0x13
	OAM_OBJ	@Tiles_options_copyright,	 0,-128,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	 8, -96,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	16, -64,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	24, -32,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	32,   0,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	40,  32,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	48,  64,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_options_copyright,	56,  96,  80, @FLIP_NONE, @DIM_32x16
	OAM_OBJ_END

@Objs_gametitle0:		// 0x14,...,0x1D,0x20
	OAM_OBJ	@Tiles_gametitle,		 0,-102,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		40,  58,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle1:		// 0x1E
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		40,  58 + 2,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle2:		// 0x1F
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		40,  58 + 4,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle3:		// 0x21,0x22
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*1,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle4:		// 0x23
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*2,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*2,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle5:		// 0x24
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*3,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*3,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*3,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*3,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*3,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle6:		// 0x25
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*4,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*4,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle7:		// 0x26
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*5,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*5,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*5,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*5,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*5,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*5,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle8:		// 0x27
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*6,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*6,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*6,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*6,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*6,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*6,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle9:		// 0x28
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*7,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*7,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*7,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*7,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*7,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*7,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle10:		// 0x29
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*8,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*8,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*8,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*8,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*8,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*8,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle11:		// 0x2A
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*9,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*9,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*9,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*9,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*9,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*9,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle12:		// 0x2B
	OAM_OBJ	@Tiles_dummy,			 0,   0,   0, @FLIP_NONE, @DIM_8x8
//	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 24*10,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 24*10,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 24*10,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 24*10,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 24*10,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 24*10,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle13:		// 0x2C
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 176 + 16*0,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 176 + 16*0,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 176 + 16*0,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 176 + 16*0,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 176 + 16*0,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 176 + 16*0,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle14:		// 0x2D
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 176 + 16*1,  21, @FLIP_NONE, @DIM_32x16
	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 176 + 16*1,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 176 + 16*1,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 176 + 16*1,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 176 + 16*1,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 176 + 16*1,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle15:		// 0x2E
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 176 + 16*2,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 176 + 16*2,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 176 + 16*2,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 176 + 16*2,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 176 + 16*2,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 176 + 16*2,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle16:		// 0x2F
	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 176 + 16*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 176 + 16*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 176 + 16*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 176 + 16*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 176 + 16*3,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 176 + 16*3,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END
@Objs_gametitle17:		// 0x30
	OAM_OBJ	@Tiles_dummy,			 0,   0,   0, @FLIP_NONE, @DIM_8x8
//	OAM_OBJ	@Tiles_gametitle,		 0,-102 + 176 + 16*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		 8, -70 + 176 + 16*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		16, -38 + 176 + 16*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		24,  -6 + 176 + 16*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		32,  26 + 176 + 16*4,  21, @FLIP_NONE, @DIM_32x16
//	OAM_OBJ	@Tiles_gametitle,		40,  58 + 176 + 16*4,  21, @FLIP_NONE, @DIM_8x16
	OAM_OBJ_END

@Objs_animation_1a:		// 0x31
	OAM_OBJ	@Tiles_animation_1a,		 0,  49, -51, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1a,		 4,  81, -51, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_1a,		 6,   3,  -7, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1a,		10,  35,  -7, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1a,		14,  67,  -7, @FLIP_NONE, @DIM_16x8
	OAM_OBJ_END
@Objs_animation_1b:		// 0x32
	OAM_OBJ	@Tiles_animation_1b,		 0,  49, -51, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1b,		 4,  81, -51, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_1b,		 6,   3,  -7, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1b,		10,  35,  -7, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_1b,		14,  67,  -7, @FLIP_NONE, @DIM_16x8
	OAM_OBJ_END
@Objs_animation_2a:		// 0x33
	OAM_OBJ	@Tiles_animation_2a,		 0,  59, -53, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2a,		 4,  91, -53, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_2a,		 6,  -9,  13, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2a,		10,  23,  13, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2a,		14, -13,  41, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2a,		18,  19,  41, @FLIP_NONE, @DIM_16x8
	OAM_OBJ_END
@Objs_animation_2b:		// 0x34
	OAM_OBJ	@Tiles_animation_2b,		 0,  59, -53, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2b,		 4,  91, -53, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_2b,		 6,  -9,  13, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2b,		10,  23,  13, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2b,		14, -13,  41, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_2b,		18,  19,  41, @FLIP_NONE, @DIM_16x8
	OAM_OBJ_END
@Objs_animation_3a:		// 0x35
	OAM_OBJ	@Tiles_animation_3a,		 0,  49, -59, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_3a,		 4,  77, -67, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_3a,		 6,  81, -59, @FLIP_NONE, @DIM_16x16
	OAM_OBJ	@Tiles_animation_3a,		10, -13,  33, @FLIP_NONE, @DIM_32x8
	OAM_OBJ_END
@Objs_animation_3b:		// 0x36
	OAM_OBJ	@Tiles_animation_3b,		 0,  49, -59, @FLIP_NONE, @DIM_32x8
	OAM_OBJ	@Tiles_animation_3b,		 4,  77, -67, @FLIP_NONE, @DIM_16x8
	OAM_OBJ	@Tiles_animation_3b,		 6,  81, -59, @FLIP_NONE, @DIM_16x16
	OAM_OBJ	@Tiles_animation_3b,		10, -13,  33, @FLIP_NONE, @DIM_32x8
	OAM_OBJ_END



.close