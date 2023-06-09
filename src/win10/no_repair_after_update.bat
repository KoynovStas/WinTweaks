:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_CUR_VER=HKLM\Software\Microsoft\Windows\CurrentVersion
set SERVICING={7C0F6EBB-E44C-48D1-82A9-0561C4650831}Machine\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Servicing
SET NOURL=127.0.0.0

echo Don't allow Windows 10 to repair itself from Windows Update:

REG ADD "%HKLM_CUR_VER%\Policies\Servicing" /v "UseWindowsUpdate" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_CUR_VER%\Policies\Servicing" /v "LocalSourcePath" /t REG_EXPAND_SZ /d %NOURL% /f
REG ADD "%HKLM_CUR_VER%\Policies\Servicing" /f
REG ADD "%HKLM_CUR_VER%\Group Policy Objects\%SERVICING%" /v "UseWindowsUpdate" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_CUR_VER%\Group Policy Objects\%SERVICING%" /v "LocalSourcePath" /t REG_EXPAND_SZ /d %NOURL% /f
REG ADD "%HKLM_CUR_VER%\Group Policy Objects\%SERVICING%" /v "**del.RepairContentServerSource" /t REG_SZ /d " " /f
REG ADD "%HKLM_CUR_VER%\Group Policy Objects\%SERVICING%" /f

echo:
ENDLOCAL
