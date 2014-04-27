@ECHO OFF

RD /S /Q "%APPDATA%\vlc" 2>NUL
XCOPY "%DROPBOX%\settings\vlc" "%APPDATA%\vlc" /i /y
