::
:: File:    login.bat
:: Author:  Tong Shen
:: Create:  12/20/2016
:: Update:  12/20/2016
:: Version: 0.2
::

@SET DFUSR="xxxx"
@SET DFPWD="xxxx"

@IF NOT "%1" == "" SET DFUSR=%1
@IF NOT "%2" == "" SET DFPWD=%2

:: It's temporary
@SET PATH="%SystemRoot%\system32\windowspowershell\v1.0\";%PATH%

@ECHO Loging in ...
@PowerShell.exe -File core.ps1 login %DFUSR% %DFPWD%
