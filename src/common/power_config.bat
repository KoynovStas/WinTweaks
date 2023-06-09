:: SPDX-License-Identifier: MIT
@echo off

:: --- Power ---
echo Set Power Config:
:: Disable Hibernate see in SSD tweaks
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /change monitor-timeout-ac  20
powercfg /change monitor-timeout-dc  5
powercfg /change disk-timeout-ac     20
powercfg /change disk-timeout-dc     10
:: Never go to standby
powercfg /change standby-timeout-ac  0
powercfg /change standby-timeout-dc  0
echo:
