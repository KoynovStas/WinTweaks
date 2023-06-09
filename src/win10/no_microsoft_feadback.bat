:: SPDX-License-Identifier: MIT
@echo off


echo Suppress Microsoft Feedback:

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules"                      /v "NumberOfSIUFInPeriod"           /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0"  /v "NoExplicitFeedback"             /t REG_DWORD /d 1 /f

echo:
