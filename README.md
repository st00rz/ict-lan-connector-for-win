# 说明书

## 文件说明

aaa|aaa|aaa
---|---|---
bb|bb|bbbb

说明书
  |
  +-- 文件说明
  |     |
  |     +-- core.ps1
  |     |     登录和退出的核心脚本文件。 Windows PowerShell 脚本，无需管理员权限。
  |     |     core.ps1 <login|logout> [username [password]] 或双击运行（无参数）。
  |     |
  |     +-- login.bat
  |     |     登录联网脚本文件。 Windows 批处理脚本，无需管理员权限。
  |     |     实为 core.ps1 的封装，
  |     |     login.bat [username [password]] 或双击运行（无参数）。
  |     |
  |     +-- logout.bat
  |     |     停止联网脚本文件。 Windows 批处理脚本，无需管理员权限。
  |     |     实为 core.ps1 的封装，
  |     |     logout.bat 或双击运行。
  |     |
  |     +-- monitor.bat
  |     |     监视网络脚本文件。Windows 批处理脚本，无需管理员权限。
  |     |     monitor.bat [interval [username [password]]] 或双击运行（无参数）。
  |     |
  |     +-- qmonitor.vbs
  |     |     后台监视脚本文件。Windows VBScript 脚本，无需管理员权限。
  |     |     实为 monitor.bat 的封装。
  |     |     双击运行（运行前请配置好相应参数）。
  |     |
  |     +-- SETUP-use-admin.cmd
  |     |     初始化设置脚本文件。Windows 批处理脚本，需管理员权限。
  |     |     只需执行一次，无需多次执行。
  |     |     右键以管理员权限运行。
  |     |
  |     +-- README.md
  |           说明书。
  |
  +-- 使用说明
        |
        +-- 初始化设置脚本运行环境
        |     以管理员身份运行一次 SETUP-use-admin.cmd 即可。
        |
        +-- 设置默认参数
        |     在 login.bat 中设置好您的用户名和密码（DFUSR及DFPWD）。
        |
        +-- 始终不断线
        |     鼠标双击 qmonitor.vbs 即可。若失败，请检查物理连接或默认参数是否正确。
        |
        +-- 单次连接（免去开浏览器的麻烦）
        |     鼠标双击 login.bat 即可。若失败，请检查物理连接或默认参数是否正确。
        |
        +-- 其他功能。
              请自行研究发掘。
