@ECHO OFF

RD /S /Q "%APPDATA%\vlc" 2>NUL
XCOPY "%SETTINGS%\vlc" "%APPDATA%\vlc" /i /y
