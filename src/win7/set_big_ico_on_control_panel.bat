:: SPDX-License-Identifier: MIT
@echo off

echo Set Big Icon size in ControlPanel:
REG ADD "HKU\S-1-5-21-2068785810-2064055111-2312972882-1000\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /t REG_DWORD /d 1 /f
echo:
