:: SPDX-License-Identifier: MIT
@echo off

echo ---- Windows 7 tweaks ----


:: set const
set COMMON_DIR=%~dp0.\common
set WIN7_DIR=%~dp0.\win7



echo Set Active code page: 65001(UTF-8)
@chcp 65001
echo:


CALL %COMMON_DIR%\auto_chcp_UTF8.bat
CALL %COMMON_DIR%\off_uac.bat
CALL %COMMON_DIR%\off_autoplay.bat
CALL %COMMON_DIR%\desktop_tweak.bat
CALL %COMMON_DIR%\power_config.bat
CALL %COMMON_DIR%\set_pc_name.bat
CALL %COMMON_DIR%\on_mute_mode.bat
CALL %COMMON_DIR%\set_explorer_config.bat
CALL %COMMON_DIR%\set_keyboard_config.bat
CALL %COMMON_DIR%\off_skype_telemetry.bat
CALL %COMMON_DIR%\off_ex_services.bat
CALL %COMMON_DIR%\off_tasks.bat
CALL %COMMON_DIR%\off_log.bat
CALL %COMMON_DIR%\ie_tweak.bat
CALL %COMMON_DIR%\ssd_tweak.bat
CALL %COMMON_DIR%\set_big_ico_on_control_panel.bat
CALL %COMMON_DIR%\Libraries_Feature\off_libraries_feature.bat


CALL %WIN7_DIR%\set_visual_effects.bat
CALL %WIN7_DIR%\start_menu_config.bat
CALL %WIN7_DIR%\delete_components.bat
CALL %WIN7_DIR%\off_hibernate.bat
CALL %WIN7_DIR%\off_services.bat


CALL %COMMON_DIR%\del_search_indexes.bat
CALL %COMMON_DIR%\clean.bat


::Set the new Temp folder must take place after the start of the explorer (in clean.bat).
::Reason: Script set_temp_dir will add an operation to delete the old Temp folder.
::Through RanOnce, which starts at the start of the explorer,
::but other applications may not allow you to delete the folder completely!
CALL %COMMON_DIR%\set_temp_dir.bat



echo ---- Done ----
echo Warning: some tweaks require a system reboot!
echo:

CALL %COMMON_DIR%\request_reboot.bat
