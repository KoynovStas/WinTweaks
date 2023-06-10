:: SPDX-License-Identifier: MIT
@echo off


echo Disable tasks:
::If the task does not exist, then disabling it will have no effect.
::This allows you to have a common script and task list for any version of Windows.
::for show all tasks run: schtasks /query /fo LIST


:: Win 10 tasks for Windows Update (scan, shedul ....) see set_win_auto_update_options.bat
::set list=%list% "Microsoft\Windows\WindowsUpdate\Scheduled Start"
::set list=%list% "Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
::set list=%list% "Microsoft\Windows\UpdateOrchestrator\Schedule Work"
::set list=%list% "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task"

SETLOCAL
set list="Microsoft\Windows\AppID\SmartScreenSpecific"
set list=%list% "Microsoft\Windows\Application Experience\AitAgent"
set list=%list% "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
set list=%list% "Microsoft\Windows\Application Experience\ProgramDataUpdater"
set list=%list% "Microsoft\Windows\Application Experience\StartupAppTask"
set list=%list% "Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup"
set list=%list% "Microsoft\Windows\Autochk\Proxy"
set list=%list% "Microsoft\Windows\CertificateServicesClient\UserTask-Roam"
set list=%list% "Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
set list=%list% "Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
set list=%list% "Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
set list=%list% "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
set list=%list% "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
set list=%list% "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
set list=%list% "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
set list=%list% "Microsoft\Windows\DiskFootprint\Diagnostics"
set list=%list% "Microsoft\Windows\Feedback\Siuf\DmClient"
set list=%list% "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
set list=%list% "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync"
set list=%list% "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync"
set list=%list% "Microsoft\Windows\FileHistory\File History (maintenance mode)"
set list=%list% "Microsoft\Windows\InstallService\ScanForUpdates"
set list=%list% "Microsoft\Windows\InstallService\ScanForUpdatesAsUser"
set list=%list% "Microsoft\Windows\InstallService\SmartRetry"
set list=%list% "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates"
set list=%list% "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates"
set list=%list% "Microsoft\Windows\Maintenance\WinSAT"
set list=%list% "Microsoft\Windows\Maps\MapsToastTask"
set list=%list% "Microsoft\Windows\Maps\MapsUpdateTask"
set list=%list% "Microsoft\Windows\NetTrace\GatherNetworkInfo"
set list=%list% "Microsoft\Windows\PI\Sqm-Tasks"
set list=%list% "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
set list=%list% "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask"
set list=%list% "Microsoft\Windows\SettingSync\BackgroundUploadTask"
set list=%list% "Microsoft\Windows\SettingSync\NetworkStateChangeTask"
set list=%list% "Microsoft\Windows\Shell\FamilySafetyMonitor"
set list=%list% "Microsoft\Windows\Shell\FamilySafetyRefresh"
set list=%list% "Microsoft\Windows\Shell\FamilySafetyUpload"
set list=%list% "Microsoft\Windows\Shell\IndexerAutomaticMaintenance"
set list=%list% "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask"
set list=%list% "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon"
set list=%list% "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork"
set list=%list% "Microsoft\Windows\Sysmain\ResPriStaticDbSync"
set list=%list% "Microsoft\Windows\Sysmain\WsSwapAssessmentTask"
set list=%list% "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
set list=%list% "Microsoft\Windows\Time Synchronization\SynchronizeTime"
set list=%list% "Microsoft\Windows\UpdateOrchestrator\Report policies"
set list=%list% "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker"
set list=%list% "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask"
set list=%list% "Microsoft\Windows\WDI\ResolutionHost"
set list=%list% "Microsoft\Windows\WOF\WIM-Hash-Management"
set list=%list% "Microsoft\Windows\WOF\WIM-Hash-Validation"
set list=%list% "Microsoft\Windows\WS\WSTask"
set list=%list% "Microsoft\Windows\WaaSMedic\PerformRemediation"
set list=%list% "Microsoft\Windows\Windows Error Reporting\QueueReporting"
set list=%list% "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange"
set list=%list% "Microsoft\Windows\WindowsUpdate\Automatic App Update"
set list=%list% "Microsoft\Windows\WindowsUpdate\sih"
set list=%list% "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization"
set list=%list% "Microsoft\Windows\Work Folders\Work Folders Maintenance Work"

:: Office telemetry
set list=%list% "Microsoft\Office\OfficeTelemetryAgentLogOn"
set list=%list% "Microsoft\Office\OfficeTelemetryAgentFallBack"
set list=%list% "Microsoft\Office\OfficeTelemetryAgentFallBack2016"
set list=%list% "Microsoft\Office\OfficeTelemetryAgentLogOn2016"
set list=%list% "Microsoft\Office\Office 15 Subscription Heartbeat"

:: Vivaldi
set list=%list% "VivaldiUpdateCheck-36df5baf47e3bb77"

:: Яндекс.Браузер
set list=%list% "Восстановление сервиса обновлений Яндекс.Браузера"
set list=%list% "Обновление Браузера Яндекс"
set list=%list% "Системное обновление Браузера Яндекс"

:: Edge
set list=%list% "MicrosoftEdgeUpdateTaskMachineCore"
set list=%list% "MicrosoftEdgeUpdateTaskMachineUA"

:: Nvidia telemetry
set list=%list% "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
set list=%list% "NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
set list=%list% "NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"


for %%s in (%list%) do (
   echo Disable task: %%s
   schtasks /Change /TN %%s /Disable
   echo:
)


echo:
ENDLOCAL
