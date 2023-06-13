:: SPDX-License-Identifier: MIT
@echo off


:: --- Services ---
:: for show all services run: sc query type= service state= all
SETLOCAL enableDelayedExpansion
set list=ALG
set list=%list% AppIDSvc
set list=%list% Appinfo
set list=%list% AppMgmt
set list=%list% aspnet_state
set list=%list% AxInstSV
set list=%list% BDESVC
set list=%list% BITS
set list=%list% Browser
set list=%list% bthserv
set list=%list% CertPropSvc
set list=%list% COMSysApp
set list=%list% CscService
set list=%list% DiagTrack
set list=%list% dot3svc
set list=%list% EapHost
set list=%list% EFS
set list=%list% FDResPub
set list=%list% hkmsvc
set list=%list% HomeGroupListener
set list=%list% HomeGroupProvider
set list=%list% idsvc
set list=%list% IEEtwCollectorService
set list=%list% IPBusEnum
set list=%list% KeyIso
set list=%list% KtmRm
set list=%list% lltdsvc
set list=%list% MpsSvc
set list=%list% MSDTC
set list=%list% MSiSCSI
set list=%list% Netlogon
set list=%list% NetMsmqActivator
set list=%list% NetPipeActivator
set list=%list% NetTcpActivator
set list=%list% NetTcpPortSharing
set list=%list% p2pimsvc
set list=%list% p2psvc
set list=%list% PeerDistSvc
set list=%list% PerfHost
set list=%list% pla
set list=%list% PNRPAutoReg
set list=%list% PNRPsvc
set list=%list% ProtectedStorage
set list=%list% RasAuto
set list=%list% RasMan
set list=%list% RemoteAccess
set list=%list% RemoteRegistry
set list=%list% RpcLocator
set list=%list% SCardSvr
set list=%list% SCPolicySvc
set list=%list% SDRSVC
set list=%list% seclogon
set list=%list% SensrSvc
set list=%list% SessionEnv
set list=%list% SharedAccess
set list=%list% SNMPTRAP
set list=%list% Spooler
set list=%list% SSDPSRV
set list=%list% sppuinotify
set list=%list% stisvc
set list=%list% StorSvc
set list=%list% swprv
set list=%list% SysMain
set list=%list% TabletInputService
set list=%list% TapiSrv
set list=%list% TermService
set list=%list% UI0Detect
set list=%list% UmRdpService
set list=%list% upnphost
set list=%list% VaultSvc
set list=%list% VSS
set list=%list% W32Time
set list=%list% wbengine
set list=%list% WbioSrvc
set list=%list% WcsPlugInService
set list=%list% WebClient
set list=%list% Wecsvc
set list=%list% wercplsupport
set list=%list% WerSvc
set list=%list% WiaRpc
set list=%list% WinRM
set list=%list% Wlansvc
set list=%list% WinHttpAutoProxySvc
set list=%list% wmiApSrv
set list=%list% WPCSvc
set list=%list% WPDBusEnum
set list=%list% wscsvc
set list=%list% wuauserv
set list=%list% wudfsvc
set list=%list% WwanSvc
set list=%list% WSearch


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
