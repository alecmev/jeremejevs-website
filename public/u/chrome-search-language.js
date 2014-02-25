var fs = new ActiveXObject('Scripting.FileSystemObject');
var shell = new ActiveXObject('WScript.Shell');
var env = shell.Environment('PROCESS');

var path = (
    env('LOCALAPPDATA') + 
    '\\Google\\Chrome\\User Data\\Default\\Preferences'
);
var file = fs.OpenTextFile(path, 1);
var tmp = file.ReadAll();
file.close();

tmp = tmp.replace(
    /(\"last\_known\_google\_url\"\:\s\"[\w]+\:\/\/www\.google\.)[\w]+(\/\")/,
    '$1com$2'
);

file = fs.CreateTextFile(path, true);
file.Write(tmp);
file.close();
