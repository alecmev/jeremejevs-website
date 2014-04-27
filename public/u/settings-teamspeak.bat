@ECHO OFF

RD /S /Q "%APPDATA%\TS3Client" 2>NUL
MKLINK /D "%APPDATA%\TS3Client" "%DROPBOX%\settings\teamspeak"
