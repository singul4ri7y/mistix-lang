@echo off

rem Check OS bit type and set interpreter.
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

rem Set interpreter path based on OS.
set interpreter=

if %OS% == 64BIT set interpreter="bin\win\promit-64bit.exe"
if %OS% == 32BIT set interpreter="bin\win\promit-32bit.exe"

rem Verify interpreter path validity and provide clear error message
if not exist "%interpreter%" (
    echo Error: Promit interpreter not found! Exiting...
    pause
    exit /b 1
)

rem Run Bootstrap.promit with error handling and informative messages
%interpreter% "Bootstrap.promit" %*

if errorlevel 1 (
    pause
    exit /b 1
)

exit /b 0
