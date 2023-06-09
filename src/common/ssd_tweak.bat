:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_MM=HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management


:: --- SSD tweaks ---
echo Disable Prefetch: 
REG ADD "%HKLM_MM%\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f
echo:

echo Disable Superfetch:
REG ADD "%HKLM_MM%\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f
echo:

echo Kernel only in memory:
REG ADD "%HKLM_MM%" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
echo:

echo Enable Trim for SSD:
fsutil behavior set DisableDeleteNotify 0


echo:
ENDLOCAL
