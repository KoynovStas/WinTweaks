:: SPDX-License-Identifier: MIT
@echo off

echo Set Active code page: 65001(UTF-8) to AutoRun for console:
REG ADD "HKLM\Software\Microsoft\Command Processor" /v "AutoRun" /d "@chcp 65001 >nul" /f
echo:
