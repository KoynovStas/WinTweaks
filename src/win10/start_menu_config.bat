:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_ADVANCED=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced


:: --- Start(Windows) Menu ---
echo Disable MRU lists (jump lists) of XAML apps in Start Menu:

REG ADD "%HKCU_ADVANCED%" /v "Start_TrackDocs" /t REG_DWORD /d 0 /f


echo:
ENDLOCAL
