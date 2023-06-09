:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_POLIC=HKLM\SOFTWARE\Policies\Microsoft
set HKLM_POLIC_WIN=HKLM\SOFTWARE\Policies\Microsoft\Windows
set HKLM_CUR_VER=HKLM\Software\Microsoft\Windows\CurrentVersion
set HKCU_CUR_VER=HKCU\Software\Microsoft\Windows\CurrentVersion


echo Configure privacy:

REG ADD "%HKLM_POLIC_WIN%\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POLIC_WIN%\Personalization" /v "NoLockScreen" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POLIC_WIN%\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\GameUX" /v "DownloadGameInfo" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_POLIC_WIN%\FileHistory" /v "Disabled" /t REG_DWORD /d "1" /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsSyncWithDevices" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessTrustedDevices" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessRadios" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessMotion" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessMicrophone" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessMessaging" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessLocation" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessEmail" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessContacts" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessCamera" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessCallHistory" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessCalendar" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN%\AppPrivacy" /v "LetAppsAccessAccountInfo" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC_WIN% Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC%\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_POLIC%\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC%\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
REG ADD "%HKLM_POLIC%\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_CUR_VER%\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceComplete" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer" /v "PreventMusicFileMetadataRetrieval" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_CUR_VER%\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_CUR_VER%\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "Start Page Redirect Cache" /t REG_SZ /d "http://www.google.com" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "Search Page" /t REG_SZ /d "http://www.google.com" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceHasShown" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "RunOnceComplete" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d 1 /f


echo Disable Password reveal button:
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Windows\CredUI" /v "DisablePasswordReveal" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" /v "DisablePasswordReveal" /t REG_DWORD /d 1 /f

echo Disable DomainPicturePassword:
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "BlockDomainPicturePassword" /t REG_DWORD /d 1 /f

echo Disable handwriting data sharing:
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f


echo:
ENDLOCAL
