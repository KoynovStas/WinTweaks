:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKCU_OFFICE_15=HKCU\SOFTWARE\Policies\Microsoft\office\15.0
set HKCU_OFFICE_16=HKCU\SOFTWARE\Policies\Microsoft\office\16.0

echo Disable MS Office telemetry:

REG ADD "%HKCU_OFFICE_15%\osm" /v "enablefileobfuscation" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_15%\osm" /v "enablelogging" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_15%\osm" /v "enableupload" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common" /v "qmenable" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common" /v "sendcustomerdata" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common" /v "updatereliabilitydata" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common\feedback" /v "enabled" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common\feedback" /v "includescreenshot" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common\internet" /v "useonlinecontent" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\common\ptwatson" /v "ptwoptin" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\osm" /v "enablefileobfuscation" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm" /v "enablelogging" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\osm" /v "enableupload" /t REG_DWORD /d 0 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "accesssolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "olksolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "onenotesolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "pptsolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "projectsolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "publishersolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "visiosolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "wdsolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedapplications" /v "xlsolution" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedsolutiontypes" /v "agave" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\osm\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\excel\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\outlook\security" /v "level" /t REG_DWORD /d 2 /f
REG ADD "%HKCU_OFFICE_16%\powerpoint\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 1 /f
REG ADD "%HKCU_OFFICE_16%\word\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 0 /f

echo:
ENDLOCAL
