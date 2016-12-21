::
:: File:    monitor.bat
:: Author:  Tong Shen
:: Create:  12/20/2016
:: Update:  12/20/2016
:: Version: 0.2
::

:: Interval is 600 seconds.
@SET DFTIMER=600
@SET DFUSR=
@SET DFPWD=

@IF NOT "%1" == "" SET DFTIMER=%1
@IF NOT "%2" == "" SET DFUSR=%2
@IF NOT "%3" == "" SET DFPWD=%3

@CALL login.bat %DFUSR% %DFPWD% >NUL 2>NUL
@PING -n 5 127.1 >NUL 2>NUL

:turn
@PING -n 2 baidu.com >NUL 2>NUL && GOTO tagon || GOTO tagoff

:tagon
@ECHO Online ...
@PING -n %DFTIMER% 127.1 >NUL 2>NUL
@GOTO turn

:tagoff
@ECHO Offline ...
@CALL login.bat %DFUSR% %DFPWD% >NUL 2>NUL
@GOTO turn
