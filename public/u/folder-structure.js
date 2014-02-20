var fs = new ActiveXObject('Scripting.FileSystemObject');
var shell = new ActiveXObject('WScript.Shell');
var env = shell.Environment('PROCESS');

var LINKS = env('USERPROFILE') + '\\Links\\';
var STORAGE = env('STORAGE') + '\\';

function deleteShortcut(what) {
    try {
        fs.DeleteFile(LINKS + what + '.lnk', true);
    }
    catch (e) {
    }
}

function capitalize(word) {
    return word.charAt(0).toUpperCase() + word.substr(1);
}

function createShortcut(what, md) {
    var tmpshortcut = shell.CreateShortcut(LINKS + capitalize(what) + '.lnk');
    tmpshortcut.TargetPath = STORAGE + what;
    if (md && !fs.FolderExists(tmpshortcut.TargetPath)) {
        fs.CreateFolder(tmpshortcut.TargetPath);
    }

    tmpshortcut.Save();
}

shell.Run('cmd /c mkdir "' + STORAGE + '"', 0, true);

deleteShortcut('desktop');
deleteShortcut('recentplaces');

createShortcut('music', true);
createShortcut('pictures', true);
createShortcut('videos', true);
createShortcut('software', true);
createShortcut('stuff', true);
createShortcut('downloads', true);
createShortcut('dropbox', false);
