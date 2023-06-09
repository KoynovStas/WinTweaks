:: SPDX-License-Identifier: MIT
@echo off


echo Turn OFF Sticky Keys when SHIFT is pressed 5 times
REG ADD "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo:

echo Turn OFF Filter Keys when SHIFT is pressed for 8 seconds
REG ADD "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo:

echo Set ENG like default Keyboard Layout:
REG ADD "HKCU\Keyboard Layout\Preload" /v "1" /t REG_SZ /d "00000409" /f
REG ADD "HKCU\Keyboard Layout\Preload" /v "2" /t REG_SZ /d "00000419" /f
echo:
