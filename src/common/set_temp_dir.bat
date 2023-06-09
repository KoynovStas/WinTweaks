:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_RUNONCE=HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce

:: --- Temp dir ---
set NEW_TEMP_DIR=%windir%\Temp
set OLD_TMP_DIR=%TMP%
set OLD_TEMP_DIR=%TEMP%

echo Change TMP and TEMP dir to %NEW_TEMP_DIR%:
REG ADD "HKCU\Environment" /v TMP  /t REG_EXPAND_SZ /d "%NEW_TEMP_DIR%" /f
REG ADD "HKCU\Environment" /v TEMP /t REG_EXPAND_SZ /d "%NEW_TEMP_DIR%" /f
if %OLD_TMP_DIR%  NEQ %NEW_TEMP_DIR% REG ADD "%HKCU_RUNONCE%" /v DelOldTmp  /t REG_SZ /d "cmd.exe /c RD /s /q %OLD_TMP_DIR%  >nul 2>&1" /f
if %OLD_TEMP_DIR% NEQ %NEW_TEMP_DIR% REG ADD "%HKCU_RUNONCE%" /v DelOldTemp /t REG_SZ /d "cmd.exe /c RD /s /q %OLD_TEMP_DIR% >nul 2>&1" /f


echo:
ENDLOCAL
