:: SPDX-License-Identifier: MIT
@echo off

echo Disable UAC:
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
echo:
