$backupDate = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

# Back up RoamingState, remove whats possible (if WT is in use and images are being used, this may fail to remove those images), then copy (again, if overwriting images, it will fail if open in WT) 
Copy-Item $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState.$backupDate.bak
Get-ChildItem -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState -File -Recurse | Remove-Item -Force
Copy-Item RoamingState $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\ -Force -Recurse

# Back up settings, then copy new settings
Rename-Item -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -NewName settings.json.$backupDate.bak -Force
Copy-Item settings.json -Destination $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json