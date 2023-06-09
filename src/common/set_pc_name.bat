:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set My_PC_Name=%1
if not defined My_PC_Name set My_PC_Name=xxx-pc


echo Rename PC to %My_PC_Name%:
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName"       /v ComputerName  /t REG_SZ /d %My_PC_Name% /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName  /t REG_SZ /d %My_PC_Name% /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters"               /v Hostname      /t REG_SZ /d %My_PC_Name% /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters"               /v "NV Hostname" /t REG_SZ /d %My_PC_Name% /f


echo:
ENDLOCAL
