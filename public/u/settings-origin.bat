@ECHO OFF

RD /S /Q "%APPDATA%\Origin" 2>NUL
MKLINK /D "%APPDATA%\Origin" "%GOOGLE%\settings\origin"
