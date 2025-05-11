@echo off
setlocal EnableDelayedExpansion

cls
echo ===============================================================================
echo                              DWEMER DYNAMICS                               
echo                           CHIM SERVER UPDATER                           
echo ===============================================================================
echo.
echo  Are you sure you want to continue with the update?
echo  If not, close this window.
echo.
echo  Press any key to begin the update process...
pause > nul

cls
echo ===============================================================================
echo                              DWEMER DYNAMICS                               
echo                            CHIM SERVER UPDATER                           
echo ===============================================================================
echo.

echo [*] STEP 1: Updating CHIM distro...
echo.
echo     - Running git operations and update script...
wsl -d DwemerAI4Skyrim3 -u dwemer -- bash -c "cd /home/dwemer/dwemerdistro && git fetch origin && git reset --hard origin/main && chmod +x update.sh && echo 'dwemer' | sudo -S ./update.sh"
echo     + CHIM distro update complete

echo.
echo [*] STEP 2: Updating CHIM server...
echo.
echo     - Executing server update...
wsl -d DwemerAI4Skyrim3 -u dwemer -- /usr/local/bin/update_gws
echo     + Server update complete

echo.
echo ===============================================================================
echo                         UPDATE PROCESS COMPLETE!                        
echo ===============================================================================
echo.
echo  Press any key to exit...
pause > nul