@ECHO OFF

SET DROPBOX=D:\Dropbox

MKLINK /D "%APPDATA%\Sublime Text 3\Installed Packages" "%DROPBOX%\Sublime Text 3\Installed Packages"
MKLINK /D "%APPDATA%\Sublime Text 3\Packages" "%DROPBOX%\Sublime Text 3\Packages"
MKLINK /D "%APPDATA%\Sublime Text 3\Batch File.sublime-package" "%DROPBOX%\Sublime Text 3\Batch File.sublime-package"
