@echo off
echo 欢迎使用此UTAU音频导出小脚本。
ping -n 5 127.1>nul
echo *******************************
ping -n 2 127.1>nul
echo 作者：MetallicAllex
ping -n 2 127.1>nul
echo *******************************
ping -n 3 127.1>nul
cls
echo 首先,你需要运行UTAU,然后点击 '播放' 按钮。
ping -n 5 127.1>nul
echo 如果你点过 "播放" 按钮且未清理 "%temp%" 文件夹, 你就可以进行下一步了。
ping -n 3 127.1>nul
pause
cls
cd %temp%\utau1
echo 准备好时按提示操作。
ping -n 2 127.1>nul
pause
cls
echo 我们需要在你的桌面上创建一个临时文件夹以存放wav文件。
ping -n 2 127.1>nul
echo (1/5)创建中...
ping -n 2 127.1>nul
cls
echo [#****]
ping -n 1 127.1>nul
cls
ping -n 1 127.1>nul
echo [##***]
ping -n 1 127.1>nul
cls
ping -n 1 127.1>nul
echo [###**]
ping -n 1 127.1>nul
cls
echo [####*]
ping -n 1 127.1>nul
cls
echo [#####]
ping -n 1 127.1>nul
md C:\Users\MetallicAllex\Desktop\temporary
ping -n 1 127.1>nul
cls
echo 文件夹已创建。
ping -n 2 127.1>nul
cls
echo 准备好时按提示操作开始。
ping -n 2 127.1>nul
pause
ping -n 3 127.1>nul
cls
echo (2/5)删除以前的wav文件(桌面上"temporary"文件夹内的全部内容)...
ping -n 2 127.1>nul
del /f /s /q %temp%\utau1\temp.wav
del /f /s /q C:\Users\MetallicAllex\Desktop\temporary\*.*
cls
echo 完成。
ping -n 3 127.1>nul
echo (3/5)复制文件并且使用Powershell启动temp.bat...
robocopy %temp%\utau1\ C:\Users\MetallicAllex\Desktop\temporary\
ping -n 1 127.1>nul
start /MAX %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe C:\Users\MetallicAllex\Desktop\temporary\temp.bat 
ping -n 2 127.1>nul
cls
echo 注意!在脚本执行完操作前请勿删除相关的任何文件。
ping -n 2 127.1>nul
echo 并且等待Powershell窗口完成命令。
ping -n 5 127.1>nul
cls
echo 操作完成时按提示操作。
ping -n 2 127.1>nul
pause
echo 第二次启动, 以避免文件未生成的问题。
start /MAX %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe C:\Users\MetallicAllex\Desktop\temporary\temp.bat 
ping -n 3 127.1>nul
echo 操作完成时按提示操作。
ping -n 2 127.1>nul
pause
cls
echo 完成。
ping -n 3 127.1>nul
echo (4/5)复制wav文件到 "temporary" 文件夹...
ping -n 2 127.1>nul
robocopy temp.wav C:\Users\MetallicAllex\Desktop\temporary
cls
echo 完成。
ping -n 3 127.1>nul
echo (5/5)正在调用Windows Media Player播放wav文件...
ping -n 2 127.1>nul
start temp.wav
echo 完成。
ping -n 3 127.1>nul
cls
echo 如果你需要删除wav文件, 请按提示操作。
ping -n 3 127.1>nul
pause
del /f /s /q %temp%/utau1\temp.wav
cls
echo 此脚本将在5秒后自动关闭。
ping -n 5 127.1>nul
echo 下次见！
ping -n 3 127.1>nul
echo *******************************
ping -n 2 127.1>nul
echo 	   作者：MetallicAllex
ping -n 2 127.1>nul
echo *******************************
ping -n 5 127.1>nul
cls
exit
