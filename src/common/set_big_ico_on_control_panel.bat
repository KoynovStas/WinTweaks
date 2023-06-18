:: SPDX-License-Identifier: MIT
@echo off

echo Set Big Icon size in ControlPanel:
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage"      /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /t REG_DWORD /d 0 /f
echo:
