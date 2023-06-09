:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_EXPLORER=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer


echo Disable Autoplay:
REG ADD "%HKCU_EXPLORER%\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d 1 /f


set list=AutorunINFLegacyArrival
set list=%list% HandleBDBurningOnArrival
set list=%list% HandleCDBurningOnArrival
set list=%list% HandleDVDBurningOnArrival
set list=%list% MixedContentOnArrival
set list=%list% PlayBluRayOnArrival
set list=%list% PlayCDAudioOnArrival
set list=%list% PlayDVDAudioOnArrival
set list=%list% PlayDVDMovieOnArrival
set list=%list% PlayEnhancedCDOnArrival
set list=%list% PlayEnhancedDVDOnArrival
set list=%list% PlayMusicFilesOnArrival
set list=%list% PlaySuperVideoCDMovieOnArrival
set list=%list% PlayVideoCDMovieOnArrival
set list=%list% PlayVideoFilesOnArrival
set list=%list% ShowPicturesOnArrival
::only for Windows 10
set list=%list% CameraAlternate
set list=%list% StorageOnArrival


:: Set NoActions!
for %%s in (%list%) do (
   echo Set NoActions for: %%s
   REG ADD "%HKCU_EXPLORER%\AutoplayHandlers\UserChosenExecuteHandlers\%%s" /ve /t REG_SZ /d "MSTakeNoAction" /f
   echo:
)

echo:
ENDLOCAL
