@echo off
cls
echo Welcome to GAAT VNTEA1.0
echo Games And Activites testing Version Not Tested Early Access 1.0
echo Press Enter To Be Redirected To The Tests List.
set /p holder=
goto grtst

:grtst
set "quiz1="
for /F "skip=1 delims=" %%i in (tests.txt) do if not defined uname set "quiz1=%%i"
set "quiz2="
for /F "skip=2 delims=" %%i in (tests.txt) do if not defined uname set "quiz2=%%i"
set "quiz3="
for /F "skip=3 delims=" %%i in (tests.txt) do if not defined uname set "quiz3=%%i"
goto tstpg

:tstpg
cls
echo Available tests:
echo (1) %quiz1%
echo (2) %quiz2%
echo (3) %quiz3%
set /p quisel=
