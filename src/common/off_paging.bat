:: SPDX-License-Identifier: MIT
:: https://social.technet.microsoft.com/forums/windowsserver/ru-ru/708da424-3a7c-404d-8f54-f989ed62d323/command-for-changeing-the-page-file
@echo off

:: Need reboot after this tweak
echo Disable Paging files and delete pagefile.sys:
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t reg_multi_sz /d "\0" /f
echo:
