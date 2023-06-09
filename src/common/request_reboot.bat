:: SPDX-License-Identifier: MIT
@echo off

:choice
choice /C:YN /M:"Reboot system now?"
if %ERRORLEVEL% EQU 1 SHUTDOWN -r -t 00
if %ERRORLEVEL% EQU 2 GOTO :EOF
goto :choice
