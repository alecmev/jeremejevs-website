@ECHO OFF

DEL /F /Q "%LOCALAPPDATA%\uTorrent\settings.dat" 2>NUL
MKLINK "%APPDATA%\uTorrent\settings.dat" "%DROPBOX%\settings\utorrent\settings.dat"
