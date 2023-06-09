:: SPDX-License-Identifier: MIT
@echo off


echo Disable Camera on Lock Screen:
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d 1 /f
echo:
