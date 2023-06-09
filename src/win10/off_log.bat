:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_AUTOLOG=HKLM\System\CurrentControlSet\Control\WMI\Autologger

echo Disable logging:

REG ADD "%HKLM_AUTOLOG%\WiFiSession"                    /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\WdiContextLog"                  /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\UBPM"                           /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\TCPIPLOGGER"                    /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\SQMLogger"                      /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\ReadyBoot"                      /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\NtfsLog"                        /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\LwtNetLog"                      /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\FaceUnlock"                     /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\FaceRecoTel"                    /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\EventLog-System"                /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\EventLog-Security"              /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\DefenderAuditLogger"            /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\DefenderApiLogger"              /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\AutoLogger-Diagtrack-Listener"  /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\Audio"                          /v "Start" /t REG_DWORD /d 0 /f
REG ADD "%HKLM_AUTOLOG%\AppModel"                       /v "Start" /t REG_DWORD /d 0 /f

echo:
ENDLOCAL
