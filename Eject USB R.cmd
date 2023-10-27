rem Eject USB R.cmd

rem @ECHO OFF
rem run a powershell script that has the same name as this batch file, in this folder
rem RunAs - if user does not have elevated privileges then UAC kicks in - so syncback is ok as elevated, and running manually we are prompted
rem -ExecutionPolicy Bypass allows the script to be run
rem  -NoProfile ignore any local profiles that may muddy the waters
rem https://www.howtogeek.com/204088/how-to-use-a-batch-file-to-make-powershell-scripts-easier-to-run/

rem you need to run this as an admin 

PowerShell.exe  -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"

rem PAUSE