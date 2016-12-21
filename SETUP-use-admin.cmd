::
:: File:    SETUP-use-admin.cmd
:: Author:  Tong Shen
:: Create:  12/19/2016
:: Update:  12/20/2016
:: Version: 0.2
::

@ECHO off

:: Set the default program and that is permanent
FTYPE Microsoft.Powershellscript.1="%SystemRoot%\system32\windowspowershell\v1.0\powershell.exe" "%1"

:: It's temporary
SET PATH="%SystemRoot%\system32\windowspowershell\v1.0\";%PATH%

:: Initiate the PowerShell
powershell Set-ExecutionPolicy Bypass

ECHO Initiation is OK.
PAUSE

@ECHO on