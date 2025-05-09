@echo off
set /p userResponse=Are you sure you want to uninstall DwemerDistro [Y/N]?

REM Check if the user's response is 'Y' or 'y' for "yes"
if /i "%userResponse%"=="Y" (
    echo Uninstalling DwemerDistro...
    wsl --unregister DwemerAI4Skyrim3 
    echo "Done, you can now delete files"
    @pause
) else (
    echo Canceled uninstallation.
    @pause
)

