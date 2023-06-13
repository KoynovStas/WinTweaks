:: SPDX-License-Identifier: MIT
:: https://win10tweaker.ru/twikinarium/services
@echo off


:: --- Services ---
:: for show all services run: sc query type= service state= all
SETLOCAL enableDelayedExpansion

set list=AJRouter
set list=%list% ALG
set list=%list% AppIDSvc
set list=%list% Appinfo  rem need for WSL and Simple User
set list=%list% AppMgmt
set list=%list% AssignedAccessManagerSvc
set list=%list% autotimesvc
set list=%list% AxInstSV
set list=%list% BDESVC
::set list=%list% bits  rem see set_win_auto_update_options.bat
set list=%list% BTAGService
set list=%list% BthAvctpSvc
set list=%list% bthserv
set list=%list% CDPSvc
set list=%list% CertPropSvc
set list=%list% ClipSVC  rem need for WSL and Store
set list=%list% cloudidsvc
set list=%list% COMSysApp
set list=%list% CscService
set list=%list% diagnosticshub.standardcollector.service
set list=%list% diagsvc
set list=%list% DiagTrack
set list=%list% DispBrokerDesktopSvc
set list=%list% dmwappushservice
::set list=%list% DoSvc  rem see set_win_auto_update_options.bat
set list=%list% dot3svc
set list=%list% DPS
set list=%list% DsSvc
set list=%list% DusmSvc
set list=%list% Eaphost
set list=%list% edgeupdate
set list=%list% edgeupdatem
set list=%list% EFS
set list=%list% EntAppSvc
set list=%list% Fax
set list=%list% FDResPub
set list=%list% fhsvc
set list=%list% KeyIso
set list=%list% KtmRm
set list=%list% lfsvc
set list=%list% mpssvc  rem need for WSL and Simple User
set list=%list% MSDTC
set list=%list% MSiSCSI
set list=%list% NcbService
set list=%list% Netlogon
set list=%list% NetTcpPortSharing
set list=%list% p2pimsvc
set list=%list% p2psvc
set list=%list% PeerDistSvc
set list=%list% PerfHost
set list=%list% PhoneSvc
set list=%list% pla
set list=%list% PNRPAutoReg
set list=%list% PNRPsvc
set list=%list% RasAuto
set list=%list% RasMan
set list=%list% RemoteAccess
set list=%list% RemoteRegistry
set list=%list% RmSvc
set list=%list% RpcLocator
set list=%list% SCardSvr
set list=%list% ScDeviceEnum
set list=%list% SCPolicySvc
set list=%list% SDRSVC
set list=%list% seclogon
set list=%list% SensrSvc
set list=%list% SgrmBroker
set list=%list% SessionEnv
set list=%list% SharedAccess
set list=%list% SNMPTRAP
set list=%list% Spooler
set list=%list% SSDPSRV
set list=%list% stisvc
set list=%list% StorSvc
set list=%list% swprv
set list=%list% SysMain
set list=%list% TabletInputService
set list=%list% TapiSrv
set list=%list% TermService
set list=%list% TrkWks
set list=%list% tzautoupdate
set list=%list% UmRdpService
set list=%list% upnphost
::set list=%list% UsoSvc   rem see set_win_auto_update_options.bat
set list=%list% VaultSvc
set list=%list% VSS
set list=%list% W32Time
set list=%list% WaaSMedicSvc
set list=%list% wbengine
set list=%list% WbioSrvc
set list=%list% wcncsvc
set list=%list% WebClient
set list=%list% Wecsvc
set list=%list% wercplsupport
set list=%list% WerSvc
set list=%list% WiaRpc
set list=%list% WinHttpAutoProxySvc
set list=%list% WinRM
set list=%list% WlanSvc
set list=%list% wmiApSrv
set list=%list% WMPNetworkSvc
set list=%list% WpcMonSvc
set list=%list% WPDBusEnum
set list=%list% wscsvc
set list=%list% WSearch
::set list=%list% wuauserv rem see set_win_auto_update_options.bat
set list=%list% WwanSvc


set HKLM_SERVICES=HKLM\SYSTEM\CurrentControlSet\Services

echo ---- Disable services ----
echo:


:: Windows has a number of restrictions (protection) for managing some services.
:: Even using ADMINISTRATOR or even SYSTEM rights does not allow you to disable
:: some services (such as UsoSvc) through the sc config command.
:: BUT we can disable the service through the registry!
:: 0 = Boot
:: 1 = System
:: 2 = Automatic
:: 3 = Manual
:: 4 = Disabled
:: 5 and more = Unknown

for %%s in (%list%) do (
    echo --- Disable service %%s:
    sc stop %%s

    REG QUERY "%HKLM_SERVICES%\%%s" /v "Start" >nul 2>nul
    if !errorlevel! EQU 0 ( rem Service is exist!
        REG ADD "%HKLM_SERVICES%\%%s" /v "Start" /t REG_DWORD /d 4 /f
    )

    echo:
)


echo:
ENDLOCAL
