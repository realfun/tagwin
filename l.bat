@echo off
set FILE="%~dp0dglt.list"
if not exist %FILE% (
  echo.
  goto :EOF
)
echo.
echo Tagged Folders
echo --------------
type %FILE%
echo.

:EOF
