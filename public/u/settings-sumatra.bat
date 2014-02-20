@ECHO OFF

DEL /F /Q "%LOCALAPPDATA%\SumatraPDF\SumatraPDF-settings.txt" 2>NUL
MKLINK "%LOCALAPPDATA%\SumatraPDF\SumatraPDF-settings.txt" "%DROPBOX%\settings\sumatra\SumatraPDF-settings.txt"
