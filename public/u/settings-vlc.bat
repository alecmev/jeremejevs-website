@ECHO OFF

RD /S /Q "%APPDATA%\vlc" 2>NUL
XCOPY "%GOOGLE%\settings\vlc" "%APPDATA%\vlc" /i /y
