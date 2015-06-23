@ECHO OFF

DEL /F /Q "%APPDATA%\SumatraPDF\SumatraPDF-settings.txt" 2>NUL
MKLINK "%APPDATA%\SumatraPDF\SumatraPDF-settings.txt" "%GOOGLE%\settings\sumatra\SumatraPDF-settings.txt"
