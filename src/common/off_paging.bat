:: SPDX-License-Identifier: MIT
@echo off

:: Need reboot after this tweak
echo Disable Paging files and delete pagefile.sys:
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t reg_multi_sz /d "\0" /f
echo:
