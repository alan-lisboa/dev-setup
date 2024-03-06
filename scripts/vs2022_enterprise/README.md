# Visual Studio 2022 Enterprise
This script will install the following softwares:

- .NET Framework 4.8
- SQL Server Express 2022
- SQL Server Management Studio 
- Notepad++
- Visual Studio Code
- Git
- Node JS (LTS)
- Visual Studio 2022 Enterprise


## How to Install

1. First, ensure that you are using an [administrative shell](https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-10/)

2. Open powershell typing `powershell`

```cmd
powershell
```

 With PowerShell, you must ensure `Get-ExecutionPolicy` is not *Restricted*. We suggest using Bypass to bypass the policy to get things installed or *AllSigned* for quite a bit more security.
 Run `Get-ExecutionPolicy`. If it returns *Restricted*, then run `Set-ExecutionPolicy AllSignebd` or `Set-ExecutionPolicy Bypass -Scope Process`.

3. Now run the following command:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/alan-lisboa/dev-setup/main/scripts/vs2022_enterprise/install.ps1'))
```