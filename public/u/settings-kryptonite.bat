@ECHO OFF

RD /S /Q "%APPDATA%\Project Kryptonite" 2>NUL
MKLINK /D "%APPDATA%\Project Kryptonite" "%DROPBOX%\settings\kryptonite"
