@ECHO OFF

DEL /F /Q "%APPDATA%\vlc\vlc-qt-interface.ini" 2>NUL
MKLINK "%APPDATA%\vlc\vlc-qt-interface.ini" "%DROPBOX%\settings\vlc\vlc-qt-interface.ini"
