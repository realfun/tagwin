@echo off

REM !!!NOTICE the TABs used in this script!!!

if .%1.==.. (
  "%~dp0dglt.bat"
  goto :EOF
)

set FILE="%~dp0dglt.list"
set TEMP_FILE="%~dp0dglt.list.tmp"
REM
REM remove if exists
REM
if exist %TEMP_FILE% del %TEMP_FILE%
if exist %FILE% (
  for /F "usebackq tokens=1,2 delims=	" %%G IN (%FILE%) DO (
    if not "%%G"=="%1" (
      echo %%G	%%H>>%TEMP_FILE%
    )
  )
)
if exist %FILE% del %FILE%
if exist %TEMP_FILE% move %TEMP_FILE% %FILE%
echo.
