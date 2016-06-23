@echo off
set oldpath=%PATH%
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
set outputPath="C:\Users\Andrew\Projects\MyRWBY\LogValuesIL\"

REM set fileSrc="C:\Users\Andrew\Projects\MyRWBY\LogValues\LogValues\bin\Debug\LogValues.dll"
REM set file1=LogValuesDisassembled.il
REM set file2=LogValuesLabelsRenamed.il
REM call ildasm %fileSrc% /out=%file1%
REM call rename_labels %file1% %file2%

REM set fileSrc="C:\Users\Andrew\Projects\MyRWBY\LogValues\CallLogValues\bin\Debug\CallLogValues.exe"
REM set file1=CallLogValuesDisassembled.il
REM set file2=CallLogValuesLabelsRenamed.il
REM call ildasm %fileSrc% /out=%file1%
REM call rename_labels %file1% %file2%

REM set fileSrc="C:\Users\Andrew\Projects\MyRWBY\LogValues\SetupMoves\bin\Debug\SetupMoves.dll"
REM set file1=SetupMovesDisassembled.il
REM set file2=SetupMovesLabelsRenamed.il
REM call ildasm %fileSrc% /out=%file1%
REM call rename_labels %file1% %file2%

set fileSrc="C:\Users\Andrew\Projects\MyRWBY\LogValues\MyGameplayDatabase\bin\Debug\MyGameplayDatabase.dll"
set file1=MyGameplayDatabaseDissasembled.il
set file2=MyGameplayDatabaseLabelsRenamed.il
set file3=RubyDesignGPD.il
call ildasm %fileSrc% /out=%file1%
call rename_labels %file1% %file2%

set fileSrc="C:\Users\Andrew\Projects\MyRWBY\LogValues\Ruby\bin\Debug\Ruby.dll"
set file1=RubyDissasembled.il
set file2=RubyLabelsRenamed.il
call ildasm %fileSrc% /out=%file1%
call rename_labels %file1% %file2%


python insert_gamplayDB_initialize.py
REM %file3%


REM reset PATH
@set PATH=%oldpath%