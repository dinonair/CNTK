@echo off
@REM
@REM Copyright (c) Microsoft. All rights reserved.
@REM Licensed under the MIT license. See LICENSE.md file in the project root for full license information.
@REM

:loop
  if /I "%1"=="-h" goto :helpMsg
  if /I "%1"=="/h" goto :helpMsg
  if /I "%1"=="-help" goto :helpMsg
  if /I "%1"=="/help" goto :helpMsg
  if "%1"=="-?" goto :helpMsg
  if "%1"=="/?" goto :helpMsg
  shift
if not "%~1"=="" goto loop

powershell -NoProfile -NoLogo -ExecutionPolicy RemoteSigned %~d0%~p0\ps\install.ps1 -Execute:$false %allArgs%

goto :EOF

:helpMsg
@echo.
@echo. CNTK Binary Install Script
@echo.
@echo More help can be found at: 
@echo     https://github.com/Microsoft/CNTK/wiki/Setup-Windows-Binary-Script
@echo.
@echo An overview of the available command line options can be found at:
@echo     https://github.com/Microsoft/CNTK/wiki/Setup-Windows-Binary-Script-Options
@echo.
