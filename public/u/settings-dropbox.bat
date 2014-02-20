@ECHO OFF

TASKKILL /F /IM Dropbox.exe >NUL 2>NUL
RENAME "%STORAGE%\Dropbox" dropbox
START /B CMD /C "%APPDATA%\Dropbox\bin\Dropbox.exe"

SET DROPBOX=%STORAGE%\dropbox
SETX DROPBOX "%DROPBOX%" >NUL
