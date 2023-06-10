:: SPDX-License-Identifier: MIT
@echo off


:: --- Services ---
:: for show all services run: sc query type= service state= all
SETLOCAL enableDelayedExpansion
set HKLM_SERVICES=HKLM\SYSTEM\CurrentControlSet\Services

set list="EpicOnlineServices"
set list=%list% "Origin Client Service"
set list=%list% "Origin Web Helper Service"

:: Google
set list=%list% "GoogleChromeElevationService"
set list=%list% "gupdate"
set list=%list% "gupdatem"



echo ---- Disable Ex services ----
echo:


for %%s in (%list%) do (
    echo --- Disable service %%s:
    sc stop %%s

    set sname=%%s
    rem delete quotes
    set sname=!sname:~1,-1!

    REG QUERY "%HKLM_SERVICES%\!sname!" /v "Start" >nul 2>nul
    if !errorlevel! EQU 0 ( rem Service is exist!
        REG ADD "%HKLM_SERVICES%\!sname!" /v "Start" /t REG_DWORD /d 4 /f
    )

    echo:
)


echo:
ENDLOCAL
