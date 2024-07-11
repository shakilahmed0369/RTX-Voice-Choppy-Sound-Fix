:: This script will start the rtx voice and set
:: process priority to High automatically.

@echo off
:: Change the directory to where NVIDIA RTX Voice is located
cd "C:\Program Files\NVIDIA Corporation\NVIDIA RTX Voice"

:: Start NVIDIA RTX Voice
start "" "NVIDIA RTX Voice.exe"

:: Wait for a few seconds to ensure the application has started
timeout /t 10 /nobreak >nul

:: Set the process priority to High
wmic process where name="NVIDIA RTX Voice.exe" CALL setpriority "128"

exit