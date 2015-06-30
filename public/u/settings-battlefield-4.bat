@ECHO OFF

RD /S /Q "%USERPROFILE%\Documents\Battlefield 4\settings" 2>NUL
MKLINK /D "%USERPROFILE%\Documents\Battlefield 4\settings" "%SETTINGS%\battlefield-4"
