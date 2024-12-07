@echo off
setlocal

:: Ask for Xenia location
set /p xeniaPath="Enter the full path to the Xenia executable folder: "

:: Set the Burnout Paradise location
set burnoutPath="%xeniaPath%\Burnout_tcartwright\BURNOUT_X360_ARTIST.XEX"

:: Create the arguments string
set args="\"%burnoutPath%\" --fullscreen"

:: Create a shortcut on the desktop
set shortcutPath="%USERPROFILE%\Desktop\Burnout Paradise 1.0 Xenia.lnk"

:: URL of the icon
set iconUrl="https://www.adriwin.fr/cloud/For_Programs/tcartwright_logo.ico"
set iconPath="%TEMP%\tcartwright.ico"

:: Download the icon
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%iconUrl%', '%iconPath%')"

:: Create the shortcut with the icon
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%shortcutPath%');$s.TargetPath='%xeniaPath%\xenia_burnout5.exe';$s.Arguments='%args%';$s.WorkingDirectory='%xeniaPath%';$s.IconLocation='%iconPath%';$s.Save()"

echo Shortcut created on your desktop with an icon.
pause