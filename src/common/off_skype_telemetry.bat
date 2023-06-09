:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_TRACING_SKYPE=HKCU\Software\Microsoft\Tracing\WPPMediaPerApp\Skype

echo Disable Skype telemetry:
REG ADD "%HKCU_TRACING_SKYPE%\ETW" /v "TraceLevelThreshold" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_TRACING_SKYPE%"     /v "EnableTracing"       /t REG_DWORD /d 0 /f
REG ADD "%HKCU_TRACING_SKYPE%\ETW" /v "EnableTracing"       /t REG_DWORD /d 0 /f
REG ADD "%HKCU_TRACING_SKYPE%"     /v "WPPFilePath"         /t REG_SZ    /d "%TEMP%\Tracing\WPPMedia" /f
REG ADD "%HKCU_TRACING_SKYPE%\ETW" /v "WPPFilePath"         /t REG_SZ    /d "%TEMP%\WPPMedia" /f

echo:
ENDLOCAL
