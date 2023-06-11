:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_IE_MAIN=HKLM\SOFTWARE\Microsoft\Internet Explorer\Main
set HKCU_IE_MAIN=HKCU\SOFTWARE\Microsoft\Internet Explorer\Main


echo Configure Internet Explorer:

REG ADD "%HKLM_IE_MAIN%" /v "RunOnceHasShown"            /t REG_DWORD /d 1 /f
REG ADD "%HKLM_IE_MAIN%" /v "RunOnceComplete"            /t REG_DWORD /d 1 /f
REG ADD "%HKLM_IE_MAIN%" /v "DisableFirstRunCustomize"   /t REG_DWORD /d 1 /f
REG ADD "%HKCU_IE_MAIN%" /v "Start Page Redirect Cache"  /t REG_SZ /d "http://www.google.com" /f
REG ADD "%HKCU_IE_MAIN%" /v "Search Page"                /t REG_SZ /d "http://www.google.com" /f
REG ADD "%HKCU_IE_MAIN%" /v "RunOnceHasShown"            /t REG_DWORD /d 1 /f
REG ADD "%HKCU_IE_MAIN%" /v "RunOnceComplete"            /t REG_DWORD /d 1 /f
REG ADD "%HKCU_IE_MAIN%" /v "DoNotTrack"                 /t REG_DWORD /d 1 /f
REG ADD "%HKCU_IE_MAIN%" /v "DisableFirstRunCustomize"   /t REG_DWORD /d 1 /f

echo:
ENDLOCAL
