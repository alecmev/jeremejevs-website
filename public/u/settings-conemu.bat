@ECHO OFF

DEL /F /Q "%APPDATA%\ConEmu.xml" 2>NUL
MKLINK "%APPDATA%\ConEmu.xml" "%SETTINGS%\conemu\ConEmu.xml"
