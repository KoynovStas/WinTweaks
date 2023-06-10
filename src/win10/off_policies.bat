:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_POL_MS=HKLM\SOFTWARE\Policies\Microsoft
set HKCU_POL_MS=HKCU\SOFTWARE\Policies\Microsoft
set HKLM_POL_WIN=HKLM\SOFTWARE\Policies\Microsoft\Windows

echo Disable Policies:


REG ADD "%HKCU_POL_MS%\Internet Explorer\Main"                /v "RunOnceComplete"                /t REG_DWORD /d 1 /f
                                                                                                  
REG ADD "%HKLM_POL_MS%\Assistance\Client\1.0"                 /v "NoActiveHelp"                   /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\MRT"                                   /v DontOfferThroughWUAU             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\MRT"                                   /v DontOfferThroughWUAU             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoExternalURL"                /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoFileCollection"             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoSecondLevelCollection"      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\SQMClient"                             /v "CorporateSQMURL"                /t REG_SZ /d 127.0.0.1 /f
REG ADD "%HKLM_POL_MS%\SQMClient\Windows"                     /v "CEIPEnable"                     /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_MS%\SQMClient\Windows"                     /v "CEIPEnable"                     /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_MS%\SearchCompanion"                       /v "DisableContentFileUpdates"      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\WMDRM"                                 /v "DisableOnline"                  /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring"      /t REG_DWORD /d 1 /f

REG ADD "%HKLM_POL_WIN%\AdvertisingInfo"                      /v "DisabledByGroupPolicy"          /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "AITEnable"                      /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "AITEnable"                      /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "DisableInventory"               /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "DisableUAR"                     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "DisableUAR"                     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CloudContent"                         /v "DisableSoftLanding"             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CloudContent"                         /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest"                    /t REG_SZ /d "no" /f
REG ADD "%HKLM_POL_WIN%\DataCollection"                       /v "AllowTelemetry"                 /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\DataCollection"                       /v "AllowTelemetry"                 /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\System"                               /v "DisableHHDEP"                   /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\System"                               /v "EnableSmartScreen"              /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "AutoApproveOSDumps"             /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "Disabled"                       /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "Disabled"                       /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "DontSendAdditionalData"         /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Windows Search"                       /v "AllowCortana"                   /t REG_DWORD /d 0 /f


echo:
ENDLOCAL
