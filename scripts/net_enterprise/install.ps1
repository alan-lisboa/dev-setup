Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
$client = New-Object System.Net.WebClient;

# Chocolatey
Write-Host 'Chocolatey' -ForegroundColor 'Blue'
Invoke-Expression ($client.DownloadString('https://community.chocolatey.org/install.ps1'));
Write-Host 

# .NET 4.8
Write-Host '.NET 4.8' -ForegroundColor 'Blue'
Invoke-Expression 'choco install netfx-4.8-devpack -y'
Write-Host 

# SQL Server
Write-Host 'SQL Server' -ForegroundColor 'Blue'
Invoke-Expression 'choco install sql-server-2022 -y'
Write-Host 

# SSMS
Write-Host 'SSMS' -ForegroundColor 'Blue'
Invoke-Expression 'choco install sql-server-management-studio -y'
Write-Host 

# Azure Data Studio
Write-Host 'Azure Data Studio' -ForegroundColor 'Blue'
Invoke-Expression 'choco install azure-data-studio'
Write-Host 

# Notepad++
Write-Host 'Notepad++' -ForegroundColor 'Blue'
Invoke-Expression 'choco install notepadplusplus -y'
Write-Host 

# VSCode
Write-Host 'VSCode' -ForegroundColor 'Blue'
Invoke-Expression 'choco install vscode -y'
Write-Host 

# Git
Write-Host 'Git' -ForegroundColor 'Blue'
Invoke-Expression 'choco install git -y'
Write-Host 

# NodeJS
Write-Host 'NodeJS' -ForegroundColor 'Blue'
Invoke-Expression 'choco install nodejs-lts -y'
Write-Host 

# Windows Terminal
Write-Host 'Windows Terminal' -ForegroundColor 'Blue'
Invoke-Expression 'choco install microsoft-windows-terminal -y'
Write-Host 

Write-Host 'Visual Studio 2022' -ForegroundColor 'Blue'
$location = Get-Location
$temp = Join-Path $Env:Temp $(New-Guid)
New-Item -Type Directory -Path $temp | Out-Null

$client.DownloadFile('https://download.visualstudio.microsoft.com/download/pr/9a62f360-5491-46e0-b370-3b90f2545317/a129931752b3d0b3e022ffe0a9191f4b554565613ec1ba6be258b0c3a46d9dc9/vs_Enterprise.exe', "${temp}\vs_Enterprise.exe");
$client.DownloadFile('https://raw.githubusercontent.com/alan-lisboa/dev-setup/main/scripts/net_enterprise/vs2022.vsconfig', "${temp}\vs2022.vsconfig");

S\vsLEnttrontse.exS\vsLEnttrontse.ex
Set-Locatione$locati-ntione$localionti-ntion $location
.\vs_Enterprise.exe --config "${temp}\vs2022.vsconfig"
Set-Location $location