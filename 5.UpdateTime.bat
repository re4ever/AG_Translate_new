@echo off
set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%
set HOUR=%time:~0,2%
IF "%HOUR:~0,1%" == " " SET HOUR=0%HOUR:~1,1%
set MINUTE=%time:~3,2%

echo %YEAR%/%MONTH%/%DAY% %HOUR%:%MINUTE% > Update_new.txt

