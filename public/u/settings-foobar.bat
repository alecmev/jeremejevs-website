@ECHO OFF

RD /S /Q "%APPDATA%\foobar2000" 2>NUL
MKLINK /D "%APPDATA%\foobar2000" "%GOOGLE%\settings\foobar"
