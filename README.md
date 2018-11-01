# Mega Man Battle Network: Operate Star Force - Demo Version Translation

## Introduction

This project translates the pre-release demo version of Rockman EXE: Operate Shooting Star into English. This demo version was initially available to play at Tokyo Game Show 2009, and was later also made available for download through Nintendo Channel. The two versions are different in that you do not fight Mega Man SF in the downloadable version, whereas you do fight him in the TGS version.

Unfortunately, the TGS demo ROM is not known to be dumped; however, the events unique to this version have been recreated based on leftover data in the Nintendo Channel version and a player's account from The Mega Man Network.

## Video

If you can't find the demo ROM or don't want to bother with patching, you can also watch a video of the demo on YouTube.

* Nintendo Channel: https://www.youtube.com/watch?v=nga0T8RRtSM
* TGS demo differences: https://www.youtube.com/watch?v=P6ZAT_-wBS8

## Patches

The base ROM for this translation patch is the version that was downloadable from Nintendo Channel, as this was the only version that has been dumped. This ROM is not included in this archive and you are on your own to find it. You can verify that you have the correct ROM by checking that the file hash matches one of the following:

* CRC-32: B5E5E78C
* MD-5: 4D77996723F558F1B66B4A84F1704AFB
* SHA-1: B6A985CA5941C319E6651522B7F0B03DCA77B6B1

This archive includes the following three patches. To apply a patch to the base ROM, you can use the included tool **DeltaPatcherLite.exe**. 

* **MMBNOSF_Demo_DL.xdelta** - This patch translates the base ROM into the Nintendo Channel version of the demo. You do not fight Mega Man SF in this version.
* **MMBNOSF_Demo_TGS.xdelta** - This patch translates the base ROM into the recreated TGS version of the demo. Mega Man SF can be fought in this version.
* **MMBNOSF_Demo_2in1.xdelta** - This patch produces a ROM containing translations of both demo versions. If you hold the SELECT BUTTON while choosing NEW GAME from the title screen, you will experience the events of the TGS demo. Otherwise, you will experience the events of the Nintendo Channel demo.

## Credits

### Mega Man Battle Network: Operate Star Force - Demo Version Translation Project

* **Greiga Master** - Special Thanks
* **Jumi** - Translation
* **Lex** - Special Thanks
* **MegaRockEXE** - Graphic Design
* **MidniteW** - Editing
* **Prof. 9** - Direction, Programming, Editing

### Third-party software used:

* ARMIPS by Kingcom
* BLZ by CUE
* Delta Patcher Lite by Phoenix
* ndstool by Rafael Vuijk, Dave Murphy, Alexei Karpenko

## Building

If you want to build the patch(es) yourself, follow the steps below. The build scripts support Windows only (I used Windows 10 version 1809 myself).

* Download **ARMIPS**, **BLZ** (from CUE's Nintendo DS/GBA Compressors) and **ndstool** (from devkitPro) and place these in the **tools** folder. See the **tools_go_here.txt** file for more details.
* Place the base ROM into the **rom** folder, with name **EXEOSS_Demo.nds**. See the **rom_goes_here.txt** file for more details.
* In **arm9.asm** in the **asm** folder, change the line `.definelabel DEMO_MODE,2` to whichever version of the patch you would like to build.
* Run **COMPILE.bat**. An output ROM named **MMBNOSF_Demo.nds** will be produced in the **rom** folder.

The project files are laid out as follows:

* The **asm** folder contains all assembly source files. **src_pre.asm** and **src_post.asm** perform pre- and post-processing respectively; **titlemenu.asm** generates a sprite objects file for the title screen graphics.
* The **etc** folder contains the source files for the translated graphics in PDN (Paint.NET) format. These are layered files and they include textless layers, so it should be easy to change the text if needed. In addition, this folder contains a text file containing all original Japanese text from the demo ROM in plain-text TPL (TextPet Language) format.
* The **img** folder contains all graphics that will be inserted into the ROM. All graphics are converted to a binary format in the **gfx.bat** script. Note that some of the PNGs must adhere to their original palettes, which are included as binary palette files in the **pal** folder or as **-pal.png** files. For the files labeled **-255** or **-256**, replacement files must contain at most that number of colors (after GBA color reduction).
* The **include** folder contains files that are included as-is into the ROM. Currently this applies to the BeastSlap sprite objects file, which is taken from the Rockman EXE OSS full game.
* The **plugins** folder contains the TextPet plugins used in this project. The English table file is included as **exeosst-utf8.tbl**; font characters can be added or changed by replacing them in this file and in the **font.png** and **font-chip.png** image files in the **img** folder.
* The **rom** folder is where you place the base ROM and also where the output ROM will be produced.
* The **temp** folder is generated during compilation and holds temporary files for building the output ROM.
* The **text** folder contains all (English) text files that will be inserted into the ROM. 
* The **tools** folder is where all third-party tools go.
* The root folder contains the main build script, **COMPILE.bat**; the graphics build script, **gfx.bat**; and the TextPet Script used for inserting text, **script.tps**.