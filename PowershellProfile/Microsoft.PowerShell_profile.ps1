if (!(Get-Module -ListAvailable -Name posh-git)) {
    try {
        Install-Module -Name posh-git -Confirm:$false -Force
    }
    catch [Exception] {
        $_.message 
        exit
    }
}

if (!(Get-Module -ListAvailable -Name oh-my-posh)) {
    try {
        Install-Module -Name oh-my-posh -Confirm:$false -Force
    }
    catch [Exception] {
        $_.message 
        exit
    }
}

if (!(Get-Module -ListAvailable -Name Terminal-Icons)) {
    try {
        Install-Module -Name Terminal-Icons -Confirm:$false -Force
    }
    catch [Exception] {
        $_.message 
        exit
    }
}


Import-Module -Name posh-git
Import-Module -Name oh-my-posh
Import-Module -Name Terminal-Icons


if (!(Get-Module -ListAvailable -Name PSReadLine)) {
    try {
        Install-Module -Name PSReadLine -Confirm:$false -AllowPrerelease -Force
    }
    catch [Exception] {
        $_.message 
        exit
    }
}

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows


Write-Host "                                ..," -ForegroundColor DarkCyan
Write-Host "                    ....,,:;+ccllll" -ForegroundColor DarkCyan
Write-Host "      ...,,+:;  cllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host ",cclllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host ""
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "llllllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "``'ccllllllllll  lllllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "       ``'\\*::  :ccllllllllllllllll" -ForegroundColor DarkCyan
Write-Host "                       ````````''*::cll" -ForegroundColor DarkCyan
Write-Host "                                 ````" -ForegroundColor DarkCyan

Set-PoshPrompt Agnoster

# Import-Module MSTerminalSettings
# $msTermProfileName = 'PowerShell' # Replace with whatever Terminal profile name you're using
# $msTermProfile     = Get-MSTerminalProfile -Name $msTermProfileName
# $script:bombThrown = $false
# function prompt {
#     if ($? -eq $false) {
#         # RED ALERT!!!
#         # Only do this if we're using Microsoft Terminal
#         if ((Get-Process -Id $PID).Parent.ProcessName -eq 'WindowsTerminal') {
#             Set-MSTerminalProfile -Name $msTermProfile.name -BackgroundImage '%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\oh-no.gif' -UseAcrylic:$false -BackgroundImageStretchMode "fill" -BackgroundImageAlignment "center"
#             $script:bombThrown = $true
#         }
#     } else {
#         # Reset to previous settings
#         if ($script:bombThrown) {
#             Set-MSTerminalProfile -Name $msTermProfile.name -BackgroundImage $msTermProfile.backgroundImage -UseAcrylic:$msTermProfile.useAcrylic -BackgroundImageStretchMode $msTermProfile.backgroundImageStretchMode -BackgroundImageAlignment $msTermProfile.backgroundImageAlignment
#             $script:bombThrown = $false
#         }
#     }
# }


