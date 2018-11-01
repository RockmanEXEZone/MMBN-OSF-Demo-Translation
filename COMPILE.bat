@echo off
rmdir /S /Q temp >nul
mkdir temp >nul
if errorlevel 1 goto :error
mkdir temp\titlemenu
if errorlevel 1 goto :error
del /F /Q rom\MMBNOSF_Demo.nds >nul
if errorlevel 1 goto :error

echo Extracting ROM...
tools\ndstool.exe -x rom\EXEOSS_Demo.nds -9 temp\arm9.bin -7 temp\arm7.bin -d temp\data -y temp\overlay -h temp\header.bin -y9 temp\y9.bin -y7 temp\y7.bin -t temp\banner.bin
if errorlevel 1 goto :error

echo Pre-processing files...
tools\armips.exe asm\src_pre.asm
if errorlevel 1 goto :error

echo Decompressing files...
tools\blz.exe -d temp\arm9.dec

echo Generating graphics...
call gfx.bat
if errorlevel 1 goto :error
tools\armips.exe asm\titlemenu.asm
if errorlevel 1 goto :error

echo Importing text...
tools\TextPet.exe run-script "script.tps"
if errorlevel 1 goto :error

echo Patching files...
tools\armips.exe asm\src_patch.asm
if errorlevel 1 goto :error

echo Compressing files...
copy /Y temp\arm9.dec temp\arm9.bin
tools\blz.exe -en9 temp\arm9.bin
if errorlevel 1 goto :error

echo Post-processing files...
tools\armips.exe asm\src_post.asm
if errorlevel 1 goto :error

echo Creating ROM...
tools\ndstool.exe -c rom\MMBNOSF_Demo.nds -9 temp\arm9.bin -7 temp\arm7.bin -d temp\data -y temp\overlay -h temp\header.bin -y9 temp\y9.bin -y7 temp\y7.bin -b img\icon.bmp "MEGA MAN BATTLE NETWORK;Operate Star Force;Demo Version"

echo.
echo.
echo Done. Compiled successfully.
exit /b 0

:error
echo.
echo.
echo Error! Failed to compile!
pause