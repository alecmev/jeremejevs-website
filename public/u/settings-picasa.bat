@ECHO OFF

DEL /F /Q "%LOCALAPPDATA%\Google\Picasa2Albums\watchedfolders.txt" 2>NUL
MKLINK "%LOCALAPPDATA%\Google\Picasa2Albums\watchedfolders.txt" "%GOOGLE%\settings\picasa\watchedfolders.txt"
