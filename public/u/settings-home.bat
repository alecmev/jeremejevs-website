@ECHO OFF

RD /S /Q "%USERPROFILE%\.ssh" 2>NUL
RD /S /Q "%USERPROFILE%\Links" 2>NUL
DEL "%USERPROFILE%\.jshintrc"
DEL "%USERPROFILE%\.gitconfig"
DEL "%USERPROFILE%\.pylintrc"
DEL "%USERPROFILE%\cmdrc.bat"

MKLINK /D "%USERPROFILE%\.ssh" "%GOOGLE%\settings\home\.ssh"
MKLINK /D "%USERPROFILE%\Links" "%GOOGLE%\settings\home\Links"
MKLINK "%USERPROFILE%\.jshintrc" "%GOOGLE%\settings\home\.jshintrc"
MKLINK "%USERPROFILE%\.gitconfig" "%GOOGLE%\settings\home\.gitconfig"
MKLINK "%USERPROFILE%\.pylintrc" "%GOOGLE%\settings\home\.pylintrc"
MKLINK "%USERPROFILE%\cmdrc.bat" "%GOOGLE%\settings\home\cmdrc.bat"

SET HOME=%USERPROFILE%
SETX HOME "%HOME%" >NUL

"%~dp0\cmdrc.reg"
