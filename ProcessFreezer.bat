@echo off
title Elf's Process Freezer



set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cls
set path=C:\Windows\System32
cls
set url=https://cdn.discordapp.com/attachments/870518005010956288/913110660588650586/pssuspend.exe >nul
set file=pssuspend.exe >nul
certutil -urlcache -split -f %url% %file% >nul
cls
move %file% %path%\%file% >nul
cls


echo  SET THE PROCESS NAME HERE! (process.exe)
set /p processname=

cls
echo Press any key to freeze the process! (%processname%)
pause>nul


:scan
pssuspend.exe %processname% >nul
cls
echo ATTEMPTING TO FREEZE %processname%!

::Delay
ping 1.1.1.1 -n 1 -w 1 > nul
::End Delay

goto scan

