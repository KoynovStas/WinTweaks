:: SPDX-License-Identifier: MIT
@echo off


SETLOCAL
set HKLM_EXPLORER=HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer
set HKCU_EXPLORER=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer


:: --- Desktop ---
echo Show Computer shortcut on desktop:
REG ADD "%HKCU_EXPLORER%\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
echo:

echo Show Recucled shortcut on Desktop:
REG ADD "%HKCU_EXPLORER%\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 /f
echo:

echo Hide arrow on desktop shortcuts:
copy %~dp0\noarrow.ico %windir%\
REG ADD "%HKLM_EXPLORER%\Shell Icons" /v "29" /d "%windir%\noarrow.ico" /f
echo:

echo No add word "link": for desktop shortcuts:
REG ADD "%HKCU_EXPLORER%" /v "link" /t REG_BINARY /d 00000000 /f


echo:
ENDLOCAL
