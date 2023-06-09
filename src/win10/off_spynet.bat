:: SPDX-License-Identifier: MIT
@echo off


echo Disable SpyNet:

REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet"          /v " SpyNetReporting"      /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet"          /v " SubmitSamplesConsent" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting"       /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent"  /t REG_DWORD /d 2 /f

echo:
