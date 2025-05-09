@echo off
setlocal enabledelayedexpansion


echo This script will export and then import your current distro, and will recover some space.
echo This may take a long time.
echo Please close any window/application thet could be locking the VM (file explorer window, any app using \\wsl.localhost)
pause
wsl --shutdown
echo Exporting current distro
wsl --export DwemerAI4Skyrim3 DwemerAI4Skyrim3Custom.tar

set /p userResponse=Are you sure you want to compact virtual drive? If the previous command failed, you should say no [Y/N]: 

if /i "%userResponse%"=="Y" (
    echo Unregistering and re-importing the WSL distro...

    wsl --unregister DwemerAI4Skyrim3
    wsl --import DwemerAI4Skyrim3 . DwemerAI4Skyrim3Custom.tar

    echo Done
    pause
) else (
    echo Canceled
    pause
)

endlocal