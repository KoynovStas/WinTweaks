:: SPDX-License-Identifier: MIT
@echo off

:: Need reboot after this tweak
echo Disable Hibernate and delete hiberfil.sys:
powercfg -h off  >nul 2>&1 rem windows 7
powercfg /h off  >nul 2>&1 rem windows 10/11
echo:
