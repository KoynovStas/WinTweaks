:: SPDX-License-Identifier: MIT
@echo off


echo Set Big Icon size in ControlPanel:
REG ADD "HKU\S-1-5-21-1604720666-793774009-584802355-1002\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /t REG_DWORD /d 1 /f
echo:
