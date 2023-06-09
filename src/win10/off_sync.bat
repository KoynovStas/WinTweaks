:: SPDX-License-Identifier: MIT
:: https://win10tweaker.ru/twikinarium/services
@echo off


SETLOCAL
set HKLM_SettingSync=HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync


echo Disable sync:

REG ADD "%HKLM_SettingSync%" /v "DisableWindowsSettingSyncUserOverride"         /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableWindowsSettingSync"                     /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableWebBrowserSettingSyncUserOverride"      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableWebBrowserSettingSync"                  /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableSyncOnPaidNetwork"                      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableStartLayoutSettingSyncUserOverride"     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableStartLayoutSettingSync"                 /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableSettingSyncUserOverride"                /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableSettingSync"                            /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisablePersonalizationSettingSyncUserOverride" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisablePersonalizationSettingSync"             /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableDesktopThemeSettingSyncUserOverride"    /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableDesktopThemeSettingSync"                /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableCredentialsSettingSyncUserOverride"     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableCredentialsSettingSync"                 /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableAppSyncSettingSyncUserOverride"         /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableAppSyncSettingSync"                     /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SettingSync%" /v "DisableApplicationSettingSyncUserOverride"     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_SettingSync%" /v "DisableApplicationSettingSync"                 /t REG_DWORD /d 2 /f


echo:
ENDLOCAL
