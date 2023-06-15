:: SPDX-License-Identifier: MIT
@echo off

:: Need reboot after this tweak
echo Disable Hibernate and delete hiberfil.sys:
powercfg /h off
echo:
