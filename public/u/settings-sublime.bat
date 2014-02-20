@ECHO OFF

SET TMPDST=%APPDATA%\Sublime Text 3
SET TMPSRC=%DROPBOX%\settings\sublime

RD /S /Q "%TMPDST%\Installed Packages" 2>NUL
RD /S /Q "%TMPDST%\Packages" 2>NUL
RD /S /Q "%TMPDST%\Batch File.sublime-package" 2>NUL

MKLINK /D "%TMPDST%\Installed Packages" "%TMPSRC%\Installed Packages"
MKLINK /D "%TMPDST%\Packages" "%TMPSRC%\Packages"
MKLINK /D "%TMPDST%\Batch File.sublime-package" "%TMPSRC%\Batch File.sublime-package"
