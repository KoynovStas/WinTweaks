:: SPDX-License-Identifier: MIT
@echo off


:: Need reboot after this tweak
echo Disable and delete swapfile.sys for METRO Apps:
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "SwapfileControl" /t REG_DWORD /d 0 /f
echo:
