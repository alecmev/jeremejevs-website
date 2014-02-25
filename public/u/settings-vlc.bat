@ECHO OFF

RD /S /Q "%APPDATA%\vlc" 2>NUL
MKLINK /D "%APPDATA%\vlc" "%DROPBOX%\settings\vlc"
