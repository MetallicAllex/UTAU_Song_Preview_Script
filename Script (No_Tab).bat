# I'm not finished it yet. ;-) 
# This is Abridged version.
# Now I'm making Full version.
# Because it was written in Notepad, no tabs were used. (but there will be a full version, and the full version will be written in vs Code)
******************************************************************************Dividing line**************************************************************************************
@echo off
echo Welcome to utau audio export script.
ping -n 5 127.1>nul
echo *******************************
ping -n 2 127.1>nul
echo author：MetallicAllex
ping -n 2 127.1>nul
echo *******************************
ping -n 3 127.1>nul
cls
echo First, you need to run utau, then click the 'play' button.
ping -n 5 127.1>nul
echo If you click the play button and don't clean up the "%temp%" folder, you can go to the next step.
ping -n 3 127.1>nul
pause
cls
cd %temp%\utau1
echo Follow the prompts when you are ready.
ping -n 2 127.1>nul
pause
cls
echo We need to create a temporary folder on your desktop to store WAV files.
ping -n 2 127.1>nul
echo (1/5)Creating...
ping -n 2 127.1>nul
md %Userprofile%\Desktop\temporary
ping -n 1 127.1>nul
cls
echo Folder are created.
ping -n 2 127.1>nul
cls
echo When ready, follow the prompts to start.
ping -n 2 127.1>nul
pause
ping -n 3 127.1>nul
cls
echo (2/5)Delete previous WAV files (all contents in the temporary folder on the desktop)...
ping -n 2 127.1>nul
del /f /s /q %temp%\utau1\temp.wav
del /f /s /q %Userprofile%\Desktop\temporary\*.*
cls
echo Completed.
ping -n 3 127.1>nul
echo (3/5)Copy the file and start temp.bat with PowerShell...
robocopy %temp%\utau1\ %Userprofile%\Desktop\temporary\
ping -n 1 127.1>nul
start /MAX %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe %Userprofile%\Desktop\temporary\temp.bat 
ping -n 2 127.1>nul
cls
echo Attention! Do not delete any related files until the script is finished.
ping -n 2 127.1>nul
echo And wait for the command to complete in the Powershell window.
ping -n 5 127.1>nul
cls
echo When the operation is complete, follow the prompts to continue.
ping -n 2 127.1>nul
pause
cls
echo Start a second time to avoid the problem of file not generated.
start /MAX %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe %Userprofile%\Desktop\temporary\temp.bat 
ping -n 3 127.1>nul
echo When the operation is complete, follow the prompts to continue.
ping -n 2 127.1>nul
pause
cls
echo Completed。
ping -n 3 127.1>nul
echo (4/5)Copy the wav file to the "temporary" folder...
ping -n 2 127.1>nul
robocopy temp.wav %Userprofile%\Desktop\temporary
cls
echo Completed.
ping -n 3 127.1>nul
echo (5/5)Calling Windows media player to play wav file...
ping -n 2 127.1>nul
start temp.wav
echo Completed.
ping -n 3 127.1>nul
cls
echo If you need to delete the wav file in “%temp%” , please follow the prompt to continue.
ping -n 3 127.1>nul
pause
del /f /s /q %temp%\utau1\temp.wav
cls
echo This script will close automatically in 5 seconds.
ping -n 5 127.1>nul
echo See you next time.
ping -n 3 127.1>nul
echo *******************************
ping -n 2 127.1>nul
echo 	   author：MetallicAllex
ping -n 2 127.1>nul
echo *******************************
ping -n 5 127.1>nul
cls
exit
