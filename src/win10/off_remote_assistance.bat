:: SPDX-License-Identifier: MIT
@echo off


echo Disable Remote Assistance:

REG ADD "HKLM\System\CurrentControlSet\Control\Remote Assistance"       /v "fAllowToGetHelp"              /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Remote Assistance"       /v "fAllowFullControl"            /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections"           /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicitedFullControl" /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited"            /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp"              /t REG_DWORD /d "0" /f

echo:
