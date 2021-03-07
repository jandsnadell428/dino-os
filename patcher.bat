@shift /0
@echo off
title Dino OS Patcher
echo Welcome to the Dino OS Patcher.
echo If you're ready,
pause
echo Downloading...
echo I will start Google Chrome so you can change the folder to your USB drive that you download to. When you are ready to change,
pause
echo Do you have Google Chrome? [y\n]
set input=
set /p input= Choice: 
if %input%==y goto start
if %input%==n goto chromeinstall 
:start
cd C:\Program Files\Google\Chrome\Application
chrome
D:
md dino
echo When you are ready,
pause	
start https://bit.ly/3u5bgym
start https://bit.ly/3k1PeI9
timeout /t 10
echo Downloading...Done 
echo Transferring...
timeout /t 20
goto rest
:chromeinstall
start https://bit.ly/3bhs0tK
echo Starting...Done
cd Downloads
ChromeSetup
timeout /t 300
goto start
:rest
echo Transferring...Done
timeout /t 10
echo Patching...
timeout /t 20
cd dino
echo @echo off >> dinos.bat
echo start dinexplorer.exe >> dinos.bat
echo taskkill /f /im explorer.exe >> dinos.bat
echo ©2021 Nadell Corporation >> readme.txt
echo Note: This is required for Dino OS to run. >> readme.txt
echo For 32 Bit Windows: >> readme.txt
echo Extract the zip and copy the files to %SystemRoot%\System32. >> readme.txt

echo For 64 Bit Windows: >> readme.txt
echo Extract the zip and copy the files to BOTH %SystemRoot%\System32 and %SystemRoot%\SysWOW64. >> readme.txt


echo We hope you have fun in: Dino OS! >> readme.txt
echo Now we are done patching, so now we are going to exit. See you again soon!
timeout /t 10 

