:: SPDX-License-Identifier: MIT
@echo off


echo Clean temp files and thumbcache:
taskkill /f /im explorer.exe
powershell -nop -c "& {sleep 2}"

DEL /f /s /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db >nul 2>&1
DEL /f /s /q %systemdrive%\$Recycle.Bin\*.* >nul 2>&1
DEL /f /s /q %systemdrive%\*.tmp            >nul 2>&1
DEL /f /s /q %systemdrive%\*._mp            >nul 2>&1
DEL /f /s /q %systemdrive%\*.log            >nul 2>&1
DEL /f /s /q %systemdrive%\*.gid            >nul 2>&1
DEL /f /s /q %systemdrive%\*.chk            >nul 2>&1
DEL /f /s /q %systemdrive%\*.old            >nul 2>&1
DEL /f /s /q %windir%\*.bak                 >nul 2>&1


:: delete folders
SETLOCAL
set list="%userprofile%\Favorites"
set list=%list% "%userprofile%\Contacts"
set list=%list% "%userprofile%\Music"
set list=%list% "%userprofile%\Pictures"
set list=%list% "%userprofile%\Saved Games"
set list=%list% "%userprofile%\Searches"
set list=%list% "%userprofile%\Videos"

set list=%list% "%PUBLIC%\Libraries"

set list=%list% "%LocalAppData%\Microsoft\Feeds"
set list=%list% "%LocalAppData%\Microsoft\PlayReady"
set list=%list% "%LocalAppData%\Microsoft\Feeds Cache"
set list=%list% "%LocalAppData%\Microsoft\Media Player"
set list=%list% "%LocalAppData%\Microsoft\Windows Mail"
set list=%list% "%LocalAppData%\Microsoft\Windows Media"
set list=%list% "%LocalAppData%\Microsoft\Windows Sidebar"
set list=%list% "%LocalAppData%\Microsoft\Windows\Ringtones"
set list=%list% "%LocalAppData%\Microsoft\Windows\GameExplorer"

set list=%list% "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Games"
set list=%list% "%ProgramData%\Microsoft\Windows\GameExplorer"
set list=%list% "%ProgramData%\Microsoft\Windows\Ringtones"
set list=%list% "%ProgramData%\Microsoft\Windows NT\MSFax"
set list=%list% "%ProgramData%\Microsoft\Media Player"
set list=%list% "%ProgramData%\Microsoft\SmsRouter"
set list=%list% "%ProgramData%\Microsoft\XboxLive"

set list=%list% "%systemdrive%\PerfLogs"
set list=%list% "%systemdrive%\Users\Public\Documents"
set list=%list% "%systemdrive%\Users\Public\Downloads"
set list=%list% "%systemdrive%\Users\Public\Music"
set list=%list% "%systemdrive%\Users\Public\Pictures"
set list=%list% "%systemdrive%\Users\Public\Recorded TV"
set list=%list% "%systemdrive%\Users\Public\Videos"

set list=%list% "%ProgramFiles%\Windows Media Player"


for %%s in (%list%) do (
    RD /s /q %%s  >nul 2>&1
)
ENDLOCAL


:: clean folders
SETLOCAL
set list="%windir%\Temp"
set list=%list% "%windir%\Prefetch"
set list=%list% "%windir%\System32\dllcache"
set list=%list% "%userprofile%\Recent"
set list=%list% "%userprofile%\Cookies"
set list=%list% "%userprofile%\Local Settings\Temp"
set list=%list% "%userprofile%\Local Settings\History"
set list=%list% "%userprofile%\Local Settings\Temporary Internet Files"
set list=%list% "%LocalAppData%\Microsoft\Windows\WebCache"
set list=%list% "%LocalAppData%\Microsoft\Windows\History"
set list=%list% "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger"


for %%s in (%list%) do (
    DEL /f /s /q %%s\*.* >nul 2>&1
    RD     /s /q %%s     >nul 2>&1
    MD           %%s     >nul 2>&1
)
ENDLOCAL


powershell -nop -c "& {sleep 2}"
start explorer.exe
echo:
