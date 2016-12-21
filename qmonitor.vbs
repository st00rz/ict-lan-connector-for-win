'
' File:    qmonitor.vbs
' Author:  Tong Shen
' Create:  12/20/2016
' Update:  12/20/2016
' Version: 0.2
'
set ws = WScript.CreateObject("WScript.Shell")
ws.Run "monitor.bat >NUL 2>NUL", 0