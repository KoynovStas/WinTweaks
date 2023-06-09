:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_ADVANCED=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced


:: --- Start(Windows) Menu ---
echo Hide links in Windows menu:
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowMyDocs"     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowVideos"     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowMyMusic"    /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowMyPics"     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowMyGames"    /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowHomegroup"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowUser"       /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "StartMenuFavorites"   /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowRecentDocs" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowRecordedTV" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowDownloads"  /t REG_DWORD /d 0 /f
echo:

echo Show links in Windows menu:
REG ADD "%HKCU_ADVANCED%" /v "StartMenuAdminTools"    /t REG_DWORD /d 1 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowMyComputer"   /t REG_DWORD /d 1 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowControlPanel" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_ADVANCED%" /v "Start_ShowSetProgramAccessAndDefaults" /t REG_DWORD /d 1 /f


echo:
ENDLOCAL
