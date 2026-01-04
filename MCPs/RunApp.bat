@echo off
REM Batch file to run Python with a parameter

if "%~1"=="" (
    echo Error: No parameter provided
    echo Usage: %~nx0 paramName
    exit /b 1
)

python %~1

if errorlevel 1 (
    echo Error: Python execution failed
    exit /b 1
)

exit /b 0