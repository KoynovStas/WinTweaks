:: SPDX-License-Identifier: MIT
@echo off


:: Delete Windows components
:: For Show all components run in cmd: dism /online /Get-Features /Format:Table
echo ---- Delete Windows components ----:

SETLOCAL
set list=MediaPlayback
set list=%list% WindowsMediaPlayer
set list=%list% MediaCenter
set list=%list% OpticalMediaDisc
set list=%list% TabletPCOC
set list=%list% FaxServicesClientPackage
set list=%list% Printing-XPSServices-Features
set list=%list% SearchEngine-Client-Package
set list=%list% WindowsGadgetPlatform


for %%s in (%list%) do (
   echo Delete component %%s:
   dism /Online /NoRestart /Disable-Feature /FeatureName:%%s
   ::OCSETUP  %%s /uninstall /passive /quiet /norestart
   echo:
)


echo:
ENDLOCAL
