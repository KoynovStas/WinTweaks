:: SPDX-License-Identifier: MIT
@echo off


:: Delete Windows components
:: For Show all components run in cmd: dism /online /Get-Features /Format:Table
echo ---- Delete Windows components ----:

SETLOCAL
set list=MediaPlayback
set list=%list% WindowsMediaPlayer
set list=%list% WorkFolders-Client
set list=%list% Printing-XPSServices-Features
set list=%list% SearchEngine-Client-Package


for %%s in (%list%) do (
   echo Delete component %%s:
   dism /Online /NoRestart /Disable-Feature /FeatureName:%%s
   ::PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "%%s"
   echo:
)


echo:
ENDLOCAL
