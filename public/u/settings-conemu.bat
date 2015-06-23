@ECHO OFF

DEL /F /Q "%APPDATA%\ConEmu.xml" 2>NUL
MKLINK "%APPDATA%\ConEmu.xml" "%GOOGLE%\settings\conemu\ConEmu.xml"
