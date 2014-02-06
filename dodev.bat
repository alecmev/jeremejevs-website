@ECHO OFF

CALL CSCRIPT /T:300 "%~dp0do.js" %* | "%~dp0misc\cmdcolor.exe"
