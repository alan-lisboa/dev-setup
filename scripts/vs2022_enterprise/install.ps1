Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
$client = New-Object System.Net.WebClient;

# Chocolatey
Invoke-Expression ($client.DownloadString('https://community.chocolatey.org/install.ps1'));

# .NET 4.8
Invoke-Expression 'choco install netfx-4.8-devpack -y'

# SQL Server
Invoke-Expression 'choco install sql-server-express -y'

# SSMS
Invoke-Expression 'choco install sql-server-management-studio -y'

# Notepad++
Invoke-Expression 'choco install notepadplusplus -y'

# VSCode
Invoke-Expression 'choco install vscode -y'

# Git
Invoke-Expression 'choco install git -y'

# NodeJS
Invoke-Expression 'choco install nodejs-lts -y'

# # Visual Studio 2022
$location = Get-Location
$temp = Join-Path $Env:Temp $(New-Guid)
New-Item -Type Directory -Path $temp | Out-Null

$client.DownloadFile('https://download.visualstudio.microsoft.com/download/pr/9a62f360-5491-46e0-b370-3b90f2545317/a129931752b3d0b3e022ffe0a9191f4b554565613ec1ba6be258b0c3a46d9dc9/vs_Enterprise.exe', "${temp}\vs_Enterprise.exe");
$client.DownloadFile('https://raw.githubusercontent.com/alan-lisboa/dev-setup/main/scripts/vs2022_enterprise/vs2022enterprise.vsconfig', "${temp}\vs2022enterprise.vsconfig");

Set-Location $temp
.\vs_Enterprise.exe --config "${temp}\vs2022enterprise.vsconfig"
Set-Location $location