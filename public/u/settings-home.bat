@ECHO OFF

RD /S /Q "%USERPROFILE%\.ssh" 2>NUL
RD /S /Q "%USERPROFILE%\Links" 2>NUL
DEL "%USERPROFILE%\.jshintrc"
DEL "%USERPROFILE%\.gitconfig"
DEL "%USERPROFILE%\.pylintrc"
DEL "%USERPROFILE%\cmdrc.bat"

MKLINK /D "%USERPROFILE%\.ssh" "%SETTINGS%\home\.ssh"
MKLINK /D "%USERPROFILE%\Links" "%SETTINGS%\home\Links"
MKLINK "%USERPROFILE%\.jshintrc" "%SETTINGS%\home\.jshintrc"
MKLINK "%USERPROFILE%\.gitconfig" "%SETTINGS%\home\.gitconfig"
MKLINK "%USERPROFILE%\.pylintrc" "%SETTINGS%\home\.pylintrc"
MKLINK "%USERPROFILE%\cmdrc.bat" "%SETTINGS%\home\cmdrc.bat"

SET HOME=%USERPROFILE%
SETX HOME "%HOME%" >NUL

"%~dp0\cmdrc.reg"
