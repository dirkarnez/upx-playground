@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set UPX_DIR=%DOWNLOADS_DIR%\upx-4.2.4-win64
set UPX_EXE=%UPX_DIR%\upx-4.2.4-win64\upx.exe

if not exist %UPX_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/upx/upx/releases/download/v4.2.4/upx-4.2.4-win64.zip" -L -O  &&^
%SEVENZIP% x upx-4.2.4-win64.zip -o"%UPX_DIR%"  &&^
del upx-4.2.4-win64.zip
)

if exist %UPX_EXE% (
    echo UPX %UPX_EXE% found
)


