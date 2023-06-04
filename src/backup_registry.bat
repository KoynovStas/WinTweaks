:: SPDX-License-Identifier: MIT
@echo off

echo Start registry backup:
set CUR_TIME_STR=
for /f %%D in ('powershell get-date -format "{yyyyMMdd_HH.mm.ss}"') do set CUR_TIME_STR=%%D
set REGISTRY_BACKUP_FILE_NAME=%systemdrive%\backup_%CUR_TIME_STR%.reg
regedit /e %REGISTRY_BACKUP_FILE_NAME%
echo Registry backup to %REGISTRY_BACKUP_FILE_NAME% done
echo:
