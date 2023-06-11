:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_CORTANA=HKLM\COMPONENTS\DerivedData\Components\amd64_microsoft-windows-c..lemetry.lib.cortana_31bf3856ad364e35_10.0.10240.16384_none_40ba2ec3d03bceb0
set HKLM_MS_WIN_APP_EXP=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience
set HKCU_CUR_VER=HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion
set HKLM_CUR_VER=HKLM\Software\Microsoft\Windows\CurrentVersion


echo Remove Telemetry:


REG DELETE "%HKCU_CUR_VER%\AdvertisingInfo" /v "Id" /f >nul 2>nul

REG ADD "%HKLM_MS_WIN_APP_EXP%/Steps-Recorder"                                                     /v "Enabled" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Telemetry"                                                  /v "Enabled" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Inventory"                                                  /v "Enabled" /t REG_DWORD /d 0 /f 
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Compatibility-Troubleshooter"                               /v "Enabled" /t REG_DWORD /d 0 /f 
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Compatibility-Assistant/Trace"                              /v "Enabled" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Compatibility-Assistant/Compatibility-Infrastructure-Debug" /v "Enabled" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Compatibility-Assistant/Analytic"                           /v "Enabled" /t REG_DWORD /d 0 /f 
REG ADD "%HKLM_MS_WIN_APP_EXP%/Program-Compatibility-Assistant"                                    /v "Enabled" /t REG_DWORD /d 0 /f 

REG ADD "%HKLM_CUR_VER%\Policies\DataCollection" /v AllowTelemetry                   /t REG_DWORD /d 0 /f
REG ADD "%HKLM_CUR_VER%\Device Metadata"         /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
REG ADD "%HKLM_CUR_VER%\AdvertisingInfo"         /v Enabled                          /t REG_DWORD /d 0 /f

REG ADD "%HKCU_CUR_VER%\Search"            /v "CortanaEnabled"      /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CUR_VER%\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_CUR_VER%\AdvertisingInfo"   /v "Enabled"             /t REG_DWORD /d 0 /f


:: Before we can work with the COMPONENTS tree, we must load it!
REG LOAD HKLM\COMPONENTS %windir%\System32\config\components
REG ADD "%HKLM_CORTANA%" /v "f!proactive-telemetry-inter_58073761d33f144b" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_CORTANA%" /v "f!proactive-telemetry-event_8ac43a41e5030538" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_CORTANA%" /v "f!proactive-telemetry.js"                     /t REG_DWORD /d 0 /f
REG ADD "%HKLM_CORTANA%" /v "f!dss-winrt-telemetry.js"                     /t REG_DWORD /d 0 /f
REG UNLOAD HKLM\COMPONENTS


REG ADD "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f

REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts"                /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization"                  /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization"                  /v "RestrictImplicitInkCollection"  /t REG_DWORD /d 1 /f

REG ADD "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f


echo:
ENDLOCAL
