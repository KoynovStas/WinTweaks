:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_CUR_VER=HKLM\Software\Microsoft\Windows\CurrentVersion
set HKCU_CDM=HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager


echo Disable ContentDeliveryManager:

REG ADD "%HKLM_CUR_VER%\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f

REG ADD "%HKCU_CDM%" /v "SoftLandingEnabled"               /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "FeatureManagementEnabled"         /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "OemPreInstalledAppsEnabled"       /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "PreInstalledAppsEnabled"          /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "RotatingLockScreenEnabled"        /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SoftLandingEnabled"               /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SystemPaneSuggestionsEnabled"     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContentEnabled"         /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "ContentDeliveryAllowed"           /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SilentInstalledAppsEnabled"       /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "PreInstalledAppsEverEnabled"      /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "RemediationRequired"              /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-338387Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-338388Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-338389Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-310093Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-338393Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-314563Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-353698Enabled"  /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%" /v "SubscribedContent-353694Enabled"  /t REG_DWORD /d 0 /f

REG ADD "%HKCU_CDM%\SuggestedApps" /v "46928bounde.EclipseManager_a5h4egax66k6y"                     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "ActiproSoftwareLLC.562882FEEB491_24pqs290vpjk0"               /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "AdobeSystemsIncorporated.AdobePhotoshopExpress_ynb6jyjzte8ga" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "D5EA27B7.Duolingo-LearnLanguagesforFree_yx6k7tf7xvsea"        /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Flipboard.Flipboard_3f5azkryzdbc4"                            /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.BingNews_8wekyb3d8bbwe"                             /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.BingWeather_8wekyb3d8bbwe"                          /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.FreshPaint_8wekyb3d8bbwe"                           /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.Getstarted_8wekyb3d8bbwe"                           /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.NetworkSpeedTest_8wekyb3d8bbwe"                     /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.Office.Sway_8wekyb3d8bbwe"                          /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.RemoteDesktop_8wekyb3d8bbwe"                        /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.WindowsAlarms_8wekyb3d8bbwe"                        /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe"                 /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CDM%\SuggestedApps" /v "40579FactionSoftware.Colorist_ktsqrfenxtjhw"                  /t REG_DWORD /d 0 /f

echo:
ENDLOCAL
