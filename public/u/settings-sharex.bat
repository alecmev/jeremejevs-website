@ECHO OFF

RD /S /Q "%USERPROFILE%\Documents\ShareX" 2>NUL
MKLINK /D "%USERPROFILE%\Documents\ShareX" "%SETTINGS%\sharex"
