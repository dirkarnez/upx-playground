@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set UPX_DIR=%DOWNLOADS_DIR%\upx-4.2.4-win64
set UPX_EXE=%UPX_DIR%\upx-4.2.4-win64\upx.exe

cd %DOWNLOADS_DIR% &&^
%UPX_EXE% -d Sculptris_Installer_WIN.exe -o Sculptris_Installer_WIN-unpacked.exe &&^
pause