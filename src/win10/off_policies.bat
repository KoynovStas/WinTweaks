:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_POL_MS=HKLM\SOFTWARE\Policies\Microsoft
set HKLM_POL_WIN=HKLM\SOFTWARE\Policies\Microsoft\Windows

set HKCU_POL_MS=HKCU\SOFTWARE\Policies\Microsoft
set HKCU_POL_WIN=HKCU\SOFTWARE\Policies\Microsoft\Windows


echo Disable Policies:


REG ADD "%HKCU_POL_MS%\InputPersonalization"                  /v "RestrictImplicitInkCollection"     /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_MS%\InputPersonalization"                  /v "RestrictImplicitTextCollection"    /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_MS%\Internet Explorer\Main"                /v "DisableFirstRunCustomize"          /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_MS%\Internet Explorer\Main"                /v "RunOnceComplete"                   /t REG_DWORD /d 1 /f                                                                                 
REG ADD "%HKCU_POL_MS%\Internet Explorer\Main"                /v "RunOnceHasShown"                   /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_MS%\Messenger\Client"                      /v "CEIP"                              /t REG_DWORD /d 2 /f
REG ADD "%HKCU_POL_MS%\WindowsMediaPlayer"                    /v "PreventMusicFileMetadataRetrieval" /t REG_DWORD /d 1 /f

REG ADD "%HKLM_POL_MS%\Assistance\Client\1.0"                 /v "NoActiveHelp"                   /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\InputPersonalization"                  /v "AllowInputPersonalization"      /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_MS%\InputPersonalization"                  /v "RestrictImplicitInkCollection"  /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\InputPersonalization"                  /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\MRT"                                   /v "DontOfferThroughWUAU"           /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\Messenger\Client"                      /v "CEIP"                           /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoExternalURL"                /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoFileCollection"             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\PCHealth\ErrorReporting\DW"            /v "DWNoSecondLevelCollection"      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\SQMClient"                             /v "CorporateSQMURL"                /t REG_SZ /d 127.0.0.1 /f
REG ADD "%HKLM_POL_MS%\SQMClient\Windows"                     /v "CEIPEnable"                     /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_MS%\SearchCompanion"                       /v "DisableContentFileUpdates"      /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\WMDRM"                                 /v "DisableOnline"                  /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\Windows Defender"                      /v "DisableAntiSpyware"             /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_MS%\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring"      /t REG_DWORD /d 1 /f

REG ADD "%HKCU_POL_WIN%\CurrentVersion\PushNotifications"     /v "NoToastApplicationNotification" /t REG_DWORD /d 1 /f

REG ADD "%HKLM_POL_WIN%\AdvertisingInfo"                      /v "DisabledByGroupPolicy"          /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "AITEnable"                      /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "DisableInventory"               /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppCompat"                            /v "DisableUAR"                     /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessAccountInfo"       /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessCalendar"          /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessCallHistory"       /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessCamera"            /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessContacts"          /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessEmail"             /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessLocation"          /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessMessaging"         /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessMicrophone"        /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessMotion"            /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessRadios"            /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsAccessTrustedDevices"    /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\AppPrivacy"                           /v "LetAppsSyncWithDevices"         /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POL_WIN%\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest"                    /t REG_SZ /d "no" /f
REG ADD "%HKLM_POL_WIN%\DataCollection"                       /v "AllowTelemetry"                 /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\FileHistory"                          /v "Disabled"                       /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\GameUX"                               /v "DownloadGameInfo"               /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\LocationAndSensors"                   /v "DisableLocation"                /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\LocationAndSensors"                   /v "DisableLocationScripting"       /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\LocationAndSensors"                   /v "DisableWindowsLocationProvider" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Maps"                                 /v "AutoDownloadAndUpdateMapData"   /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\NetworkConnectivityStatusIndicator"   /v "NoActiveProbe"                  /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Personalization"                      /v "NoLockScreen"                   /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\System"                               /v "DisableHHDEP"                   /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\System"                               /v "EnableSmartScreen"              /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "AutoApproveOSDumps"             /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "Disabled"                       /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Windows Error Reporting"              /v "DontSendAdditionalData"         /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\Windows Search"                       /v "AllowCortana"                   /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POL_WIN%\WindowsUpdate"                        /v "DeferUpgrade"                   /t REG_DWORD /d 0 /f


echo Disable CloudContent:
REG ADD "%HKLM_POL_WIN%\CloudContent" /v "DisableSoftLanding"                              /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CloudContent" /v "DisableThirdPartySuggestions"                    /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CloudContent" /v "DisableWindowsConsumerFeatures"                  /t REG_DWORD /d 1 /f

REG ADD "%HKCU_POL_WIN%\CloudContent" /v "ConfigureWindowsSpotlight"                       /t REG_DWORD /d 2 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "IncludeEnterpriseSpotlight"                      /t REG_DWORD /d 0 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableThirdPartySuggestions"                    /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData"    /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableWindowsSpotlightFeatures"                 /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableWindowsSpotlightOnActionCenter"           /t REG_DWORD /d 1 /f
REG ADD "%HKCU_POL_WIN%\CloudContent" /v "DisableWindowsSpotlightOnSettings"               /t REG_DWORD /d 1 /f


echo Disable Password reveal button:
REG ADD "%HKCU_POL_WIN%\CredUI"       /v "DisablePasswordReveal" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POL_WIN%\CredUI"       /v "DisablePasswordReveal" /t REG_DWORD /d 1 /f

echo Disable DomainPicturePassword:
REG ADD "%HKLM_POL_WIN%\System"       /v "BlockDomainPicturePassword" /t REG_DWORD /d 1 /f

echo Disable handwriting data sharing:
REG ADD "%HKLM_POL_WIN%\TabletPC"     /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f


echo:
ENDLOCAL
