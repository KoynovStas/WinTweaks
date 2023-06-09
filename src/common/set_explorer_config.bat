:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_CUR_VER=HKCU\Software\Microsoft\Windows\CurrentVersion
set HKCU_EXPLORER=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer


:: --- Explorer ---
echo Don't create thumb.db files
:: If not turned off, the thumbnail files are stored under %userprofile%\AppData\Local\Microsoft\Windows\Explorer
REG ADD "%HKCU_EXPLORER%\Advanced" /v DisableThumbnailCache /t REG_DWORD  /d 1 /f
echo:

echo Don't create thumbnail files on network drives
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableThumbsDBOnNetworkFolders  /t REG_DWORD  /d 1 /f
echo:

echo Don't ask to search the internet for file with unknown extension
REG ADD "%HKCU_CUR_VER%\Policies\Explorer" /v NoInternetOpenWith /t REG_DWORD  /d 1 /f
echo:

echo Show file extensions:
REG ADD "%HKCU_EXPLORER%\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
echo:


echo:
ENDLOCAL
