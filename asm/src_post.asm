.nds

.open "temp/arm9.bin",0x02000000
.org 0x02000BE8 + 0x14
	.dw filesize("temp/arm9.bin") + 0x02000000
.close