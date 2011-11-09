@echo off
REM !!!NOTICE the TABs used in this script!!!

if .%1.==.. (
  "%~dp0dglt.bat"
  goto :EOF
)

set FILE="%~dp0dglt.list"
if exist %FILE% (
  for /F "usebackq tokens=1,2 delims=	" %%G IN (%FILE%) DO (
    if "%%G"=="%1" (
      pushd "%%H"
      goto :EOF
    )
  )
)

REM try current folders (how to handle spaces? double quote fails)
if exist %cd%\%1\NUL (
  pushd "%1"
) else (
  echo.
)

:EOF

