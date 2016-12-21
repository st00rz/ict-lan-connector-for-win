::
:: File:    logout.bat
:: Author:  Tong Shen
:: Create:  12/19/2016
:: Update:  12/20/2016
:: Version: 0.2
::


:: It's temporary
@SET PATH="%SystemRoot%\system32\windowspowershell\v1.0\";%PATH%

@ECHO Loging out ...
@PowerShell.exe -File core.ps1 logout
