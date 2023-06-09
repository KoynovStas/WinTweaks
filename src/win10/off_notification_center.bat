:: SPDX-License-Identifier: MIT
@echo off


echo Disable Notification Center:

REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Policy Manager" /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f

echo:
