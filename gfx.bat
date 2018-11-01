@echo off

echo Generating: Font
tools\PixelPet.exe ^
Import-Bytes "img\pal\font-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\font.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\font.bin"
if errorlevel 1 exit /b 1

echo Generating: Chip font
tools\PixelPet.exe ^
Import-Bytes "img\pal\font-chip-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\font-chip.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\font-chip.bin"
if errorlevel 1 exit /b 1

echo Generating: Chip attack font
tools\PixelPet.exe ^
Import-Bytes "img\pal\font-chip-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\font-chip-atk.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\font-chip-atk.bin"
if errorlevel 1 exit /b 1

echo Generating: No Data Selected chip image
tools\PixelPet.exe ^
Import-Bytes "img\pal\chip-misc-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\chip-misc-nodata.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\chip-misc-nodata.bin"
if errorlevel 1 exit /b 1

echo Generating: Additional Chip Data chip image
tools\PixelPet.exe ^
Import-Bytes "img\pal\chip-misc-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\chip-misc-add.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\chip-misc-add.bin"
if errorlevel 1 exit /b 1

echo Generating: Chip Data Transmission chip image
tools\PixelPet.exe ^
Import-Bytes "img\pal\chip-misc-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\chip-misc-send.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\chip-misc-send.bin"
if errorlevel 1 exit /b 1

echo Generating: MegaMan Deleted
tools\PixelPet.exe ^
Import-Bytes "img\pal\megamandeleted-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\megamandeleted.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 64 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 96 -y 0 -w 32 -h 16 ^
Serialize-Tileset Export-Bytes "temp\megamandeleted.bin"
if errorlevel 1 exit /b 1

echo Generating: Program Advance
tools\PixelPet.exe ^
Import-Bytes "img\pal\programadvance-pal.bin" Deserialize-Palettes GBA ^
Import-Bitmap "img\programadvance.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 64 -y 0 -w 32 -h 16 ^
Serialize-Tileset Export-Bytes "temp\programadvance.bin"
if errorlevel 1 exit /b 1

echo Generating: Controls
tools\PixelPet.exe ^
Import-Bitmap "img\controls-255.png" Convert-Bitmap GBA ^
Pad-Palettes 1 --color 0x80000000 Extract-Palettes --palette-size 256 Pad-Palettes 256 ^
Generate-Tilemap GBA-8BPP --indexed ^
Serialize-Tilemap Export-Bytes "temp\controls-tmap.bin" ^
Serialize-Tileset Export-Bytes "temp\controls-tset.bin" ^
Serialize-Palettes Export-Bytes "temp\controls-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: End Screen
tools\PixelPet.exe ^
Import-Bitmap "img\endscreen-255.png" Convert-Bitmap GBA ^
Pad-Palettes 1 --color 0x80000000 Extract-Palettes --palette-size 256 Pad-Palettes 256 ^
Generate-Tilemap GBA-8BPP --indexed ^
Serialize-Tilemap --base-tile 1 Export-Bytes "temp\endscreen-tmap.bin" ^
Serialize-Tileset Export-Bytes "temp\endscreen-tset.bin" ^
Serialize-Palettes Export-Bytes "temp\endscreen-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: Title Screen BG
tools\PixelPet.exe ^
Import-Bitmap "img\titlescreen-256.png" Convert-Bitmap GBA ^
Extract-Palettes --palette-size 256 Pad-Palettes 256 ^
Generate-Tilemap GBA-8BPP --indexed ^
Serialize-Tilemap Export-Bytes "temp\titlescreen-tmap.bin" ^
Serialize-Tileset Export-Bytes "temp\titlescreen-tset.bin" ^
Serialize-Palettes Export-Bytes "temp\titlescreen-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: Title Menu: New Game, Press Start, Copyright
tools\PixelPet.exe ^
Import-Bitmap "img\titlemenu\options-pal.png" Convert-Bitmap GBA Read-Palettes --palette-size 16 ^
Import-Bitmap "img\titlemenu\options-newgame.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-options-newgame.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\options-pressstart.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 64 -y 0 -w 16 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 80 -y 0 -w 8 -h 16 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-options-pressstart.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\options-copyright.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 64 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 96 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 128 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 160 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 192 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 224 -y 0 -w 32 -h 16 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-options-copyright.bin" ^
Serialize-Palettes Export-Bytes "temp\titlemenu-options-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: Title Menu: Arrow
tools\PixelPet.exe ^
Import-Bitmap "img\titlemenu\icons-pal.png" Convert-Bitmap GBA Read-Palettes --palette-size 16 ^
Import-Bitmap "img\titlemenu\icons-arrow.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed ^
Serialize-Tileset Export-Bytes "temp\titlemenu-icons-arrow.bin" ^
Serialize-Palettes Export-Bytes "temp\titlemenu-icons-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: Title Menu: Game Title
tools\PixelPet.exe ^
Import-Bitmap "img\titlemenu\gametitle-pal.png" Convert-Bitmap GBA Read-Palettes --palette-size 16 ^
Import-Bitmap "img\titlemenu\gametitle.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 0 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 32 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 64 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 96 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 128 -y 0 -w 32 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 160 -y 0 -w 8 -h 16 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-gametitle.bin" ^
Serialize-Palettes Export-Bytes "temp\titlemenu-gametitle-pal.bin"
if errorlevel 1 exit /b 1

echo Generating: Title Menu: Animation
tools\PixelPet.exe ^
Import-Bitmap "img\titlemenu\animation-pal.png" Convert-Bitmap GBA Read-Palettes --palette-size 16 ^
Import-Bitmap "img\titlemenu\animation-1a.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 177 -y 45 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 209 -y 45 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 131 -y 89 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 163 -y 89 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 195 -y 89 -w 16 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-1a.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\animation-1b.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 177 -y 45 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 209 -y 45 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 131 -y 89 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 163 -y 89 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 195 -y 89 -w 16 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-1b.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\animation-2a.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 187 -y 43 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 219 -y 43 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 119 -y 109 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 151 -y 109 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 115 -y 137 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 147 -y 137 -w 16 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-2a.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\animation-2b.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 187 -y 43 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 219 -y 43 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 119 -y 109 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 151 -y 109 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 115 -y 137 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 147 -y 137 -w 16 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-2b.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\animation-3a.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 177 -y 37 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 205 -y 29 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 209 -y 37 -w 16 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 115 -y 129 -w 32 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-3a.bin" ^
Clear-Tileset ^
Import-Bitmap "img\titlemenu\animation-3b.png" Convert-Bitmap GBA ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 177 -y 37 -w 32 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 205 -y 29 -w 16 -h 8 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 209 -y 37 -w 16 -h 16 ^
Generate-Tilemap GBA-4BPP --no-reduce --indexed -x 115 -y 129 -w 32 -h 8 ^
Serialize-Tileset Export-Bytes "temp\titlemenu-animation-3b.bin" ^
Serialize-Palettes Export-Bytes "temp\titlemenu-animation-pal.bin"
if errorlevel 1 exit /b 1