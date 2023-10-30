@echo off
setlocal enabledelayedexpansion


rem Get the current date and time, but do stuff
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set datetime=!datetime:~0,4!_!datetime:~4,2!_!datetime:~6,2!_!datetime:~8,2!_!datetime:~10,2!_!datetime:~12,2!


set a=Autocommit
set msg=!a! and !datetime!


git add *
git commit -m "%msg%"
git push

endlocal
