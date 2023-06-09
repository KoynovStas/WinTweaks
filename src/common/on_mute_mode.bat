:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_CUR_VER=HKLM\Software\Microsoft\Windows\CurrentVersion


echo Enable mute mode (no sound):
:: Set Sound Sheme like (None)
REG ADD "HKCU\AppEvents\Schemes" /t REG_SZ /d ".None" /f

:: Disable StartUp sound
REG ADD "%HKLM_CUR_VER%\Authentication\LogonUI\BootAnimation" /v "DisableStartupSound" /t REG_DWORD /d 1 /f


set list=.Default\.Default
set list=%list% .Default\AppGPFault
set list=%list% .Default\CCSelect
set list=%list% .Default\ChangeTheme
set list=%list% .Default\Close
set list=%list% .Default\CriticalBatteryAlarm
set list=%list% .Default\DeviceConnect
set list=%list% .Default\DeviceDisconnect
set list=%list% .Default\DeviceFail
set list=%list% .Default\FaxBeep
set list=%list% .Default\LowBatteryAlarm
set list=%list% .Default\MailBeep
set list=%list% .Default\Maximize
set list=%list% .Default\MenuCommand
set list=%list% .Default\MenuPopup
set list=%list% .Default\Minimize
set list=%list% .Default\Open
set list=%list% .Default\PrintComplete
set list=%list% .Default\RestoreDown
set list=%list% .Default\RestoreUp
set list=%list% .Default\ShowBand
set list=%list% .Default\SystemAsterisk
set list=%list% .Default\SystemExclamation
set list=%list% .Default\SystemExit
set list=%list% .Default\SystemHand
set list=%list% .Default\SystemNotification
set list=%list% .Default\SystemQuestion
set list=%list% .Default\WindowsLogoff
set list=%list% .Default\WindowsLogon
set list=%list% .Default\WindowsUAC
set list=%list% Explorer\ActivatingDocument
set list=%list% Explorer\BlockedPopup
set list=%list% Explorer\EmptyRecycleBin
set list=%list% Explorer\FaxError
set list=%list% Explorer\FaxLineRings
set list=%list% Explorer\FaxSent
set list=%list% Explorer\FeedDiscovered
set list=%list% Explorer\MoveMenuItem
set list=%list% Explorer\Navigating
set list=%list% Explorer\SearchProviderDiscovered
set list=%list% Explorer\SecurityBand
set list=%list% sapisvr\DisNumbersSound
set list=%list% sapisvr\HubOffSound
set list=%list% sapisvr\HubOnSound
set list=%list% sapisvr\HubSleepSound
set list=%list% sapisvr\MisrecoSound
set list=%list% sapisvr\PanelSound

::Extended Events for Win10
::The set variable function does not work inside a multi-statement if-else scope.
::for this problem is to call a sub-routine in the if statement
if "%1"=="Win10" goto :subroutine
goto :end

:subroutine
set list=%list% .Default\MessageNudge
set list=%list% .Default\Notification.Default
set list=%list% .Default\Notification.IM
set list=%list% .Default\Notification.Looping.Alarm
set list=%list% .Default\Notification.Looping.Alarm2
set list=%list% .Default\Notification.Looping.Alarm3
set list=%list% .Default\Notification.Looping.Alarm4
set list=%list% .Default\Notification.Looping.Alarm5
set list=%list% .Default\Notification.Looping.Alarm6
set list=%list% .Default\Notification.Looping.Alarm7
set list=%list% .Default\Notification.Looping.Alarm8
set list=%list% .Default\Notification.Looping.Alarm9
set list=%list% .Default\Notification.Looping.Alarm10
set list=%list% .Default\Notification.Looping.Call
set list=%list% .Default\Notification.Looping.Call2
set list=%list% .Default\Notification.Looping.Call3
set list=%list% .Default\Notification.Looping.Call4
set list=%list% .Default\Notification.Looping.Call5
set list=%list% .Default\Notification.Looping.Call6
set list=%list% .Default\Notification.Looping.Call7
set list=%list% .Default\Notification.Looping.Call8
set list=%list% .Default\Notification.Looping.Call9
set list=%list% .Default\Notification.Looping.Call10
set list=%list% .Default\Notification.Mail
set list=%list% .Default\Notification.Proximity
set list=%list% .Default\Notification.Reminder
set list=%list% .Default\Notification.SMS
set list=%list% .Default\ProximityConnection
set list=%list% .Default\WindowsUnlock
:end

:: Set Sound Sheme like (None) for every event and application
for %%s in (%list%) do (
   echo Set NoSound for: "HKCU\AppEvents\Schemes\Apps\%%s"
   REG ADD "HKCU\AppEvents\Schemes\Apps\%%s\.Current" /ve /t REG_SZ /d "" /f
   echo:
)


echo:
ENDLOCAL
