@ECHO OFF

RD /S /Q "%USERPROFILE%\.ssh" 2>NUL
DEL "%USERPROFILE%\.gitconfig"
MKLINK /D "%USERPROFILE%\.ssh" "%DROPBOX%\settings\git"
MKLINK "%USERPROFILE%\.gitconfig" "%USERPROFILE%\.ssh\.gitconfig"
