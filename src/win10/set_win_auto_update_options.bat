:: SPDX-License-Identifier: MIT
:: more details see: 
:: 1. https://learn.microsoft.com/en-us/windows/deployment/update/waas-wu-settings
:: 2. http://www.oszone.net/27827/Windows_10_autoupdate_settings
::
:: Input param for script:
:: %1  - AUOptions
::      -1: Disable Auto Update - Hard mode (The Updates setup window will give an error (will be empty))
::       0: Disable Auto Update(default) - Soft mode (The user can start the update himself)
::       1: Keep my computer up to date is disabled in Automatic Updates.
::       2: Notify of download and installation. (Manual mode!)
::       3: Automatically download and notify of installation.
::       4: Automatically download and scheduled installation.
::       5: Allow local admin to select the configuration mode. This option isn't available for Windows 10 or later versions.
:: %2  - ScheduledInstallDay  (0 Every day (dafault), 1 through 7: The days of the week from Sunday (1) to Saturday (7))
:: %3  - ScheduledInstallTime (3 default, the time of day in a 24-hour format (0-23))
@echo off



SETLOCAL
echo Set Windows AutoUpdate options:


set AUOptions=%1
if not defined AUOptions set AUOptions=0

set InstallDay=%2
if not defined InstallDay set InstallDay=0

set InstallTime=%3
if not defined InstallTime set InstallTime=3


:: Check Input params
if %AUOptions% LSS -1 goto :BadParam1
if %AUOptions% GTR  5 goto :BadParam1


if %InstallDay% LSS 0 goto :BadParam2
if %InstallDay% GTR 7 goto :BadParam2


if %InstallTime% LSS  0 goto :BadParam3
if %InstallTime% GTR 23 goto :BadParam3


goto :work


:BadParam1
    echo Error: Param 1 must be in range [-1..5]!
    exit /b 1

:BadParam2
    echo Error: Param 2 must be in range [0..7]!
    exit /b 1

:BadParam3
    echo Error: Param 3 must be in range [0..23]!
    exit /b 1



:work
set HKLM_AU=HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
set HKLM_SERVICES=HKLM\SYSTEM\CurrentControlSet\Services

NET STOP wuauserv
REG DELETE "%HKLM_AU%" /f >nul 2>nul


::If Enable AutoUpdate
if %AUOptions% GTR 0 goto :Enable_AutoUpdate

if %AUOptions%==0 (
    echo Disable Windows AutoUpdate - Soft mode:
) else (
    echo Disable Windows AutoUpdate - Hard mode:
)


schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start"                /DISABLE
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan"             /DISABLE
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Work"             /DISABLE
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE

sc stop wuauserv
REG ADD "%HKLM_SERVICES%\bits" /v "Start" /t REG_DWORD /d 4 /f

rem for Hard mode (-1) service must be full disabled(4)
rem for Soft mode (0)  service must be in manual mode(3)
set mode=4
if %AUOptions%==0 set mode=3

REG ADD "%HKLM_SERVICES%\wuauserv" /v "Start" /t REG_DWORD /d %mode% /f
REG ADD "%HKLM_SERVICES%\UsoSvc"   /v "Start" /t REG_DWORD /d %mode% /f

REG ADD "%HKLM_AU%" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f


echo:
exit /b 0



:Enable_AutoUpdate
echo Enable Windows AutoUpdate with param:
echo AUOptions   = %AUOptions%
echo InstallDay  = %InstallDay%
echo InstallTime = %InstallTime%

REG ADD "%HKLM_AU%" /v "NoAutoUpdate"                  /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AU%" /v "AUOptions"                     /t REG_DWORD /d %AUOptions%   /f
REG ADD "%HKLM_AU%" /v "ScheduledInstallDay"           /t REG_DWORD /d %InstallDay%  /f
REG ADD "%HKLM_AU%" /v "ScheduledInstallTime"          /t REG_DWORD /d %InstallTime% /f
REG ADD "%HKLM_AU%" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d 1 /f

schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /ENABLE

REG ADD "%HKLM_SERVICES%\wuauserv" /v "Start" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SERVICES%\bits"     /v "Start" /t REG_DWORD /d 2 /f
REG ADD "%HKLM_SERVICES%\UsoSvc"   /v "Start" /t REG_DWORD /d 2 /f


echo:
ENDLOCAL
