:: SPDX-License-Identifier: MIT
:: more details see: https://www.sevenforums.com/tutorials/1908-visual-effects-settings-change.html
@echo off


SETLOCAL
set HKCU_EXPLORER=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer


echo Visual effects:
:: 3 - Manual Settings
REG ADD "%HKCU_EXPLORER%\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 3 /f

REG ADD "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9032078010000000 /f

::Disable Animate Windows when Minimizing and Maximizing
REG ADD "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f

::Disable Animations in the taskbar and Start Menu
REG ADD "%HKCU_EXPLORER%\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 0 /f

::Disable Aero peek
REG ADD "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d 0 /f

::Disable Show window contents while dragging
REG ADD "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f


echo:
ENDLOCAL
