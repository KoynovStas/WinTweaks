:: SPDX-License-Identifier: MIT
@echo off

echo Disable and delete search and indexes:
DEL "%ProgramData%\Microsoft\Search\Data\Applications\Windows\Windows.edb" /s
DEL "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl" /s
ATTRIB -r "%ProgramData%\Microsoft\Search\Data\Applications\Windows\Windows.edb"
ECHO "" >  %ProgramData%\Microsoft\Search\Data\Applications\Windows\Windows.edb
ATTRIB +r "%ProgramData%\Microsoft\Search\Data\Applications\Windows\Windows.edb"
ATTRIB -r "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl"
ECHO "" >  %ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
ATTRIB +r "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl"
echo:
