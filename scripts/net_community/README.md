# .NET Stack (Visual Studio 2022 Community)
This script was created to attend the .net stack development for web and desktop applications. 

It will install the following softwares:

- Chocolatey
- .NET Framework 4.8 (DevPack)
- .NET Framework 8
- SQL Server 2022 (Developer Edition)
- SQL Server Management Studio
- Azure Data Studio
- Notepad++
- Visual Studio Code
- Git
- Node JS (LTS)
- Windows Terminal
- Visual Studio 2022 Community (Web + Desktop)

## How to Install

1. First, ensure that you are using an [administrative shell](https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-10/)

2. Open powershell typing `powershell`

```cmd
powershell
```

 With PowerShell, you must ensure `Get-ExecutionPolicy` is not *Restricted*. We suggest using *Bypass* to bypass the policy to get things installed or *AllSigned* for quite a bit more security.
 Run `Get-ExecutionPolicy`. If it returns *Restricted*, then run `Set-ExecutionPolicy AllSignebd` or `Set-ExecutionPolicy Bypass -Scope Process`.

3. Now paste the following command:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/alan-lisboa/dev-setup/main/scripts/net_enterprise/install.ps1'))
```

4. And press `ENTER` to run, wait a few minutes.