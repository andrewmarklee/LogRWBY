@echo off
REM set PATH
set oldpath=%PATH%
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"

set a=%1
set b=%2
REM ildasm %a% /OUT=%b%
echo Batch names: %a% %b%

python rename_labels.py %a% %b%

REM ildasm "C:\Users\Andrew\Projects\MyRWBY\LogValues\LogValues\bin\Debug\LogValues.dll" /OUT=%a%
REM ildasm "C:\Users\Andrew\Projects\MyRWBY\LogValues\LogValues\bin\Debug\LogValues.dll" /output=%a%
REM 1>&2 pyUnlabelOutput.txt

REM reset PATH
set PATH=%oldpath%